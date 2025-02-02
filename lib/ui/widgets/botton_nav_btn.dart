import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moniepoint_test/config/router/routes.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';

class BottomNavBtn extends StatefulWidget {
  final IconData icon;
  final int index;
  final int currentIndex;
  final Function(int) onPress;

  const BottomNavBtn({
    Key? key,
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onPress,
  }) : super(key: key);

  @override
  _BottomNavBtnState createState() => _BottomNavBtnState();
}

class _BottomNavBtnState extends State<BottomNavBtn>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> BottomNavBtn;
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

    BottomNavBtn = Tween<double>(begin: 0, end: 4) // Set a thinner border
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _backgroundColorAnimation = ColorTween(
      begin: widget.currentIndex == widget.index
          ? AppColors.primary
          : AppColors
              .darkShade20, // Set the default background color based on currentIndex
      end: AppColors.darkShade20, // Color when pressed (animation)
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

    _rotationAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onPress(widget.index);

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

            if (widget.index == 0) {
              context.goNamed(AppRoutes.searchView.name);
            } else if (widget.index == 2) {
              context.goNamed(AppRoutes.homeView.name);
            }
          });
        });
      },
      child: Container(
        width: AppSizes.blockSizeHorizontal * 16,
        height: AppSizes.blockSizeHorizontal * 12,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:
              BorderRadius.circular(100), // Ensures perfectly round shape
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(
            color: _isAnimating
                ? AppColors
                    .darkShade20 // During animation, background color changes
                : (widget.currentIndex == widget.index
                    ? AppColors
                        .primary // Keep primary color for the current index
                    : AppColors.darkShade20), // Default background color
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
            child: Icon(
              widget.icon,
              color: AppColors.pW100,
              size: AppSizes.blockSizeHorizontal * 6,
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
