import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 48.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame1,
                height: 48.v,
                width: 184.h,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgIllustration,
                height: 235.v,
                width: 233.h,
              ),
              SizedBox(height: 51.v),
              Text(
                "Teman Ngobrol Sejati",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              Container(
                width: 257.h,
                margin: EdgeInsets.only(
                  left: 41.h,
                  right: 43.h,
                ),
                child: Text(
                  "Jadilah dirimu sendiri dengan dukungan penuh dari sahabat setia.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 45.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: appTheme.cyan500,
                    dotColor: appTheme.gray300,
                    dotHeight: 8.v,
                    dotWidth: 32.h,
                  ),
                ),
              ),
              SizedBox(height: 57.v),
              _buildRowlewati(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowlewati(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: "Lewati",
            margin: EdgeInsets.only(right: 7.h),
            buttonTextStyle: CustomTextStyles.titleSmallGray900,
            onPressed: () {
              onTapLewati(context);
            },
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Lanjut",
            margin: EdgeInsets.only(left: 7.h),
            buttonTextStyle: theme.textTheme.titleSmall!,
            onPressed: () {
              onTapLanjut(context);
            },
          ),
        )
      ],
    );
  }

  /// Navigates to the onboardingScreenTwoScreen when the action is triggered.
  onTapLewati(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreenTwoScreen);
  }

  /// Navigates to the onboardingScreenOneScreen when the action is triggered.
  onTapLanjut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen);
  }
}
