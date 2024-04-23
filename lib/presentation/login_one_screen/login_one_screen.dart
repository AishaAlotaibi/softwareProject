import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {
  LoginOneScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController edittextController = TextEditingController();

  TextEditingController eyeController = TextEditingController();

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
            children: [
              _buildWelcomeBackStack(context),
              SizedBox(height: 74.v),
              _buildUsernameStack(context),
              SizedBox(height: 27.v),
              _buildPasswordStack(context),
              SizedBox(height: 69.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Sign In",
                buttonTextStyle: theme.textTheme.labelSmall!,
                onPressed: () {
                  onTapSignin(context);
                },
              ),
              SizedBox(height: 47.v),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 188.v,
                  width: 229.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            onTapTxtForgotpassword(context);
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: Text(
                              "Forgot Password?",
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse2,
                        height: 188.v,
                        width: 168.h,
                        alignment: Alignment.centerLeft,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackStack(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 50.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 122.v,
                bottom: 6.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 37.v,
                    width: 119.h,
                    margin: EdgeInsets.only(left: 2.h),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 119.h,
                            decoration: AppDecoration.outlineBlack900011,
                            child: Text(
                              "Welcome Back",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.labelLarge,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Welcome Back",
                            textAlign: TextAlign.center,
                            style: theme.textTheme.labelLarge,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    "Sign in Now",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumBlack90001,
                  )
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse3,
              height: 188.v,
              width: 166.h,
              margin: EdgeInsets.only(left: 35.h),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameStack(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10.v,
            width: 42.h,
            margin: EdgeInsets.only(left: 27.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "User Name",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "User Name",
                    style: theme.textTheme.bodySmall,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: CustomTextFormField(
              controller: edittextController,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordStack(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 39.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Text(
              "Password",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 22.h),
            child: CustomTextFormField(
              controller: eyeController,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 13.v,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgEye,
                  height: 15.v,
                  width: 21.h,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 47.v,
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  onTapSignin(BuildContext context) {}

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotpassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }
}
