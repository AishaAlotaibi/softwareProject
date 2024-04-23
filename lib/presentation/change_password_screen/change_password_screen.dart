import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController edittextController = TextEditingController();

  TextEditingController edittextoneController = TextEditingController();

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
              CustomImageView(
                imagePath: ImageConstant.imgEllipse3,
                height: 188.v,
                width: 171.h,
                alignment: Alignment.centerRight,
              ),
              Text(
                "Create New Password",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 331.h,
                margin: EdgeInsets.only(
                  left: 27.h,
                  right: 15.h,
                ),
                child: Text(
                  "Your new Passeord must be different from previously used one",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodySmall12,
                ),
              ),
              SizedBox(height: 41.v),
              _buildChangePasswordColumnNewPasswo(context),
              SizedBox(height: 18.v),
              _buildChangePasswordColumnRepeatPas(context),
              SizedBox(height: 55.v),
              CustomElevatedButton(
                width: 227.h,
                text: "Submit",
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.labelLargeWhiteA70002SemiBold,
                onPressed: () {
                  onTapSubmit(context);
                },
              ),
              SizedBox(height: 29.v),
              CustomImageView(
                imagePath: ImageConstant.imgEllipse5,
                height: 188.v,
                width: 171.h,
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePasswordColumnNewPasswo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              "New Password",
              style: CustomTextStyles.bodySmall12,
            ),
          ),
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: edittextController,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: true,
            fillColor: appTheme.whiteA70001,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePasswordColumnRepeatPas(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Text(
              "Repeat Password",
              style: CustomTextStyles.bodySmall12,
            ),
          ),
          SizedBox(height: 11.v),
          CustomTextFormField(
            controller: edittextoneController,
            textInputAction: TextInputAction.done,
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineDeepPurple,
            filled: true,
            fillColor: appTheme.whiteA70001,
          )
        ],
      ),
    );
  }

  /// Navigates to the changePasswordOneScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePasswordOneScreen);
  }
}
