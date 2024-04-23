import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController edittextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse3,
                height: 188.v,
                width: 171.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 93.v),
              Padding(
                padding: EdgeInsets.only(left: 61.h),
                child: Text(
                  "Forgot Password",
                  style: theme.textTheme.labelLarge,
                ),
              ),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "If you need help to reset your password, we can help you by sending a link to reset it.",
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 54.v),
              _buildEmailSection(context),
              SizedBox(height: 55.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Send",
                buttonTextStyle: theme.textTheme.labelSmall!,
                onPressed: () {
                  onTapSend(context);
                },
                alignment: Alignment.center,
              ),
              SizedBox(height: 33.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse5,
                height: 188.v,
                width: 171.h,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 38.h),
            child: Text(
              "Email ",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 21.v),
          CustomTextFormField(
            controller: edittextController,
            textInputAction: TextInputAction.done,
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Navigates to the changePasswordScreen when the action is triggered.
  onTapSend(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordScreen);
  }
}
