import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:moniepoint_test/config/theme/app_colors.dart';
import 'package:moniepoint_test/config/theme/dimensions.dart';
import 'package:moniepoint_test/gen/assets.gen.dart';
import 'package:moniepoint_test/main.dart';
import 'package:moniepoint_test/ui/home/home_provider.dart';
import 'package:moniepoint_test/ui/widgets/text_input.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moniepoint_test/ui/widgets/widget_utils.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  static const LatLng _latlng = LatLng(59.9502, 30.3120);
  BitmapDescriptor? customIcon;

  Future<void> _loadCustomIcon() async {
    try {
      customIcon = await BitmapDescriptor.asset(
        const ImageConfiguration(size: Size(48, 48)),
        Assets.images.png.marker.path,
      );
    } catch (e) {
      customIcon = BitmapDescriptor.defaultMarker;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _loadCustomIcon();
  }

  @override
  Widget build(BuildContext context) {
    AppSizes().initSizes(context: context);
    final currentIndex = ref.watch(homeViewModelProvider);
    final homeViewModel = ref.watch(homeViewModelProvider.notifier);
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.darkShade18,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 75.h, left: 25.w),
        child: Theme(
          data: Theme.of(context).copyWith(
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              extendedSizeConstraints:
                  BoxConstraints.tightFor(width: 160.w, height: 50.h),
              backgroundColor: AppColors.darkShade73.withOpacity(0.8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r),
              ),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: SvgPicture.asset(
                      Assets.images.svg.stack,
                      width: 24.w,
                      height: 24.h,
                      color: AppColors.pW100,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  FloatingActionButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    child: SvgPicture.asset(
                      Assets.images.svg.direction,
                      width: 24.w,
                      height: 24.h,
                      color: AppColors.pW100,
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
              FloatingActionButton.extended(
                onPressed: () {},
                label: Row(
                  children: [
                    SvgPicture.asset(
                      Assets.images.svg.list,
                      width: 15.w,
                      height: 15.h,
                      color: AppColors.pW100,
                    ),
                    SizedBox(width: 10.h),
                    Text(
                      l10n!.listVariants,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.pW100,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition:
                  const CameraPosition(target: _latlng, zoom: 12),
              markers: <Marker>{
                Marker(
                  markerId: const MarkerId('_currentLocation'),
                  position: const LatLng(59.9734, 30.2500),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                     onTap: () {
                    
                  },
                ),
                Marker(
                  markerId: const MarkerId('PeterAndPaulFortress'),
                  position: const LatLng(59.9502, 30.3120),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                     onTap: () {
                    
                  },
                ),
                Marker(
                  markerId: const MarkerId('HermitageMuseum'),
                  position: const LatLng(59.9398, 30.3146),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                  onTap: () {
                    
                  },
                ),
                Marker(
                  markerId: const MarkerId('PalaceSquare'),
                  position: const LatLng(59.9343, 30.3351),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                     onTap: () {
                    
                  },
                ),
                Marker(
                  markerId: const MarkerId('NevskyProspect'),
                  position: const LatLng(59.9343, 30.3220),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                     onTap: () {
                    
                  },
                ),
                Marker(
                  markerId: const MarkerId('CatherinePalace'),
                  position: const LatLng(59.7242, 30.4310),
                  icon: customIcon ?? BitmapDescriptor.defaultMarker,
                     onTap: () {
                    
                  },
                ),
              },
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 40.h),
              child: Row(
                children: [
                  // Wrap the TextField with an Expanded widget to give it a finite width
                  Expanded(
                    child: textInput(
                      fillColor: AppColors.pW100,
                      isFilled: true,
                      allowSpace: true,
                      maxLength: 50,
                      hint: 'Saint Petersburg',
                      icon: SvgPicture.asset(
                        Assets.images.svg.search,
                        width: 24.w,
                        height: 24.h,
                        fit: BoxFit.scaleDown,
                      ),
                      context: context,
                      validate: (val) {},
                    ),
                  ),
                  10.horizontalSpace, // Space between the TextField and the action button
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                        child: SvgPicture.asset(
                          Assets.images.svg.pageInfo,
                          width: 15.w,
                          height: 15.h,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomNavigationbar(
              currentIndex: currentIndex,
              onPress: (val) {
                homeViewModel.setCurrentIndex(index: val);
              },
            ),
          ),
        ],
      ),
    );
  }
}
