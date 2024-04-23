import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
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
                child: Padding(
                  padding: EdgeInsets.only(left: 79.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 115.v,
                          bottom: 48.v,
                        ),
                        child: Text(
                          "welcome",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3,
                        height: 188.v,
                        width: 166.h,
                        margin: EdgeInsets.only(left: 36.h),
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                width: 227.h,
                text: "teacher",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleLargeWhiteA70001,
                onPressed: () {
                  onTapTeacher(context);
                },
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                width: 227.h,
                text: "parents",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleLargePrimaryContainer,
                onPressed: () {
                  onTapParents(context);
                },
              ),
              SizedBox(height: 39.v),
              Text(
                "Student",
                style: CustomTextStyles.titleLargePrimaryContainer,
              ),
              SizedBox(height: 87.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse2,
                height: 188.v,
                width: 168.h,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 20.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginOneScreen when the action is triggered.
  onTapTeacher(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginOneScreen);
  }

  onTapParents(BuildContext context) {}
}
