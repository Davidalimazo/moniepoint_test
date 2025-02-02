import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/config/router/routes.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';

class AnimatedCustomeBtn extends StatefulWidget {
  final String icon;
  final Function() onPress;

  const AnimatedCustomeBtn({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  @override
  _AnimatedCustomeBtnState createState() => _AnimatedCustomeBtnState();
}

class _AnimatedCustomeBtnState extends State<AnimatedCustomeBtn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> AnimatedCustomeBtn;
  late Animation<Color?> _backgroundColorAnimation;
  late Animation<double> _rotationAnimation;
  bool _isAnimating = false; // Track animation state

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    )..addListener(() {
        setState(() {});
      });

    AnimatedCustomeBtn = Tween<double>(begin: 0, end: 4) // Set a thinner border
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _backgroundColorAnimation = ColorTween(
      begin: AppColors.darkShade73.withOpacity(
          0.8), // Set the default background color based on currentIndex
      end: AppColors.darkShade20, // Color when pressed (animation)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _rotationAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPress();

        // Start animation only when button is tapped
        setState(() {
          _isAnimating = true;
        });

        _controller.forward().then((value) {
          // After the animation finishes, reverse it to get back to the original state
          Future.delayed(const Duration(milliseconds: 500), () {
            _controller.reverse();
            setState(() {
              _isAnimating = false;
            });
          });
        });
      },
      child: Container(
        width: 60.w,
        height: 60.h,
        padding: EdgeInsets.all(5.w),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:
              BorderRadius.circular(100), // Ensures perfectly round shape
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: _isAnimating
                ? AppColors.pW100 // During animation, background color changes
                : AppColors.darkShade73.withOpacity(0.8),
            shape: BoxShape.circle,
            boxShadow: _controller.isAnimating
                ? [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      blurRadius: 8,
                      spreadRadius: 3,
                      offset: Offset(0, 2), // Add shadow during animation
                    ),
                  ]
                : [], // No shadow when no animation is active
          ),
          child: Transform.rotate(
            angle:
                _rotationAnimation.value * 2 * 3.14159, // 360 degree rotation
            child: SvgPicture.asset(
              widget.icon,
              width: 20.w,
              height: 20.h,
              fit: BoxFit.scaleDown,
              color: _isAnimating
                  ? AppColors.darkShade73.withOpacity(0.8)
                  : AppColors.pW100,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
