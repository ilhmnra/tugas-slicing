import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class OnboardingScreenTwoScreen extends StatelessWidget {
  const OnboardingScreenTwoScreen({Key? key})
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
                imagePath: ImageConstant.imgIllustrationGray50235x324,
                height: 235.v,
                width: 324.h,
              ),
              SizedBox(height: 51.v),
              Text(
                "Konseling Online Praktis",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 7.v),
              SizedBox(
                width: 222.h,
                child: Text(
                  "Terhubung dengan terapis melalui konseling online yang sederhana.",
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
                  activeIndex: 2,
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
              _buildRowregister(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowregister(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomOutlinedButton(
            text: "Register",
            margin: EdgeInsets.only(right: 7.h),
            buttonTextStyle: CustomTextStyles.titleSmallGray900,
          ),
        ),
        Expanded(
          child: CustomElevatedButton(
            text: "Login",
            margin: EdgeInsets.only(left: 7.h),
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
        )
      ],
    );
  }
}
