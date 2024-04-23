import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class ChangePasswordOneScreen extends StatelessWidget {
  const ChangePasswordOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 323.v,
                  width: 281.h,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: EdgeInsets.only(right: 112.h),
                          decoration: AppDecoration.fillBlueGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder84,
                          ),
                          child: Container(
                            height: 169.v,
                            width: 168.h,
                            padding: EdgeInsets.symmetric(
                              horizontal: 51.h,
                              vertical: 43.v,
                            ),
                            decoration:
                                AppDecoration.outlineBlack900012.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder84,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup,
                              height: 78.v,
                              width: 62.h,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3,
                        height: 188.v,
                        width: 165.h,
                        alignment: Alignment.topRight,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 60.v),
              Container(
                decoration: AppDecoration.outlineBlack900013,
                child: Text(
                  "Password Changed",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 45.v),
              SizedBox(
                width: 247.h,
                child: Text(
                  "You’ve succesfully changed your password. Proceed to login into your account.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
              SizedBox(height: 54.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Log in",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.labelLargeWhiteA70002SemiBold,
                onPressed: () {
                  onTapLogin(context);
                },
              ),
              SizedBox(height: 29.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse5,
                height: 162.adaptSize,
                width: 162.adaptSize,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }
}
