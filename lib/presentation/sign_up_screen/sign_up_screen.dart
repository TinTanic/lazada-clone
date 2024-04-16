import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.blue800,
            border: Border.all(
              color: appTheme.lightBlueA700,
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              )
            ],
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLazada,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 16.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildRowArrowLeft(context),
                      SizedBox(height: 7.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: AppDecoration.outlineBlack,
                          child: Text(
                            "Sign up",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 49.v),
                      _buildInputFieldEmail(context),
                      SizedBox(height: 22.v),
                      _buildInputFieldPassword(context),
                      SizedBox(height: 22.v),
                      _buildInputFieldConfirmPassword(context),
                      SizedBox(height: 40.v),
                      CustomElevatedButton(
                        height: 56.v,
                        text: "Log in",
                        margin: EdgeInsets.symmetric(horizontal: 27.h),
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle: CustomTextStyles.titleMediumInter,
                        onPressed: () {
                          onTapLogin(context);
                        },
                      ),
                      SizedBox(height: 31.v),
                      GestureDetector(
                        onTap: () {
                          onTapTxtAlreadyhavean(context);
                        },
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Already have an account? ",
                                style: CustomTextStyles.bodyMediumBlack900,
                              ),
                              TextSpan(
                                text: "Log in",
                                style: CustomTextStyles.titleSmallInter,
                              )
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      SizedBox(height: 89.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage4,
                        height: 68.v,
                        width: 261.h,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowArrowLeft(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 25.v),
            child: CustomIconButton(
              height: 39.adaptSize,
              width: 39.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.outlineBlueGray,
              onTap: () {
                onTapBtnArrowleftone(context);
              },
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowLeft,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSave,
            height: 44.v,
            width: 46.h,
            margin: EdgeInsets.only(top: 20.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldEmail(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: CustomTextStyles.titleSmallInterMedium,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: emailController,
            hintText: "example@gmail.com",
            textInputType: TextInputType.emailAddress,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 14.v,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldPassword(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Creat a password",
            style: CustomTextStyles.titleSmallInterMedium,
          ),
          SizedBox(height: 3.v),
          CustomTextFormField(
            controller: passwordController,
            hintText: "must be 8 characters",
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 17.v, 14.h, 18.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 13.v,
                width: 17.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldConfirmPassword(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 27.h),
      decoration: AppDecoration.outlineBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 1.v),
          Text(
            "Confirm password",
            style: CustomTextStyles.titleSmallInterMedium,
          ),
          SizedBox(height: 3.v),
          CustomTextFormField(
            controller: confirmpasswordController,
            hintText: "repeat password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: Container(
              margin: EdgeInsets.fromLTRB(30.h, 18.v, 14.h, 17.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 13.v,
                width: 17.h,
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 48.v,
            ),
            obscureText: true,
          )
        ],
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapTxtAlreadyhavean(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
