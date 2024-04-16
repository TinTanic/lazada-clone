import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool rememberMeCheckBox = false;

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
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 46.h,
                  vertical: 45.v,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 23.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage2,
                      height: 183.adaptSize,
                      width: 183.adaptSize,
                    ),
                    SizedBox(height: 10.v),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.outlineBlack,
                      child: Column(
                        children: [
                          SizedBox(height: 10.v),
                          _buildEmailInputField(context),
                          SizedBox(height: 32.v),
                          _buildPasswordInputField(context),
                          SizedBox(height: 17.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot Password?",
                              style: CustomTextStyles
                                  .bodySmallOpenSansPrimaryContainer,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          _buildRememberMeCheckBox(context),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            text: "Sign in",
                            buttonTextStyle: theme.textTheme.labelLarge!,
                            onPressed: () {
                              onTapSignin(context);
                            },
                          ),
                          SizedBox(height: 29.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12.v,
                                  bottom: 8.v,
                                ),
                                child: SizedBox(
                                  width: 13.h,
                                  child: Divider(),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text(
                                  "OR",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12.v,
                                  bottom: 8.v,
                                ),
                                child: SizedBox(
                                  width: 21.h,
                                  child: Divider(
                                    indent: 8.h,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 31.v),
                          Text(
                            "Sign in with",
                            style: CustomTextStyles.labelLarge12,
                          ),
                          SizedBox(height: 22.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                onTap: () {
                                  onTapBtnGooglewithapp(context);
                                },
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGoogleWithApp,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: CustomIconButton(
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  onTap: () {
                                    onTapBtnIconbutton(context);
                                  },
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgFacebookCircle,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30.h),
                                child: CustomIconButton(
                                  height: 50.adaptSize,
                                  width: 50.adaptSize,
                                  onTap: () {
                                    onTapBtnGooglewithapp1(context);
                                  },
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgGoogleWithApp50x50,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 45.v),
                    GestureDetector(
                      onTap: () {
                        onTapTxtDonthaveanaccount(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Don’t have an Account? ",
                              style: CustomTextStyles
                                  .bodyMediumOpenSansPrimaryContainer,
                            ),
                            TextSpan(
                              text: "Sign up",
                              style: CustomTextStyles
                                  .titleSmallOpenSansPrimaryContainer,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: CustomTextStyles.titleSmallInterBluegray10003,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "Enter your Email",
          textInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 14.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildPasswordInputField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: CustomTextStyles.titleSmallInterBluegray10003,
        ),
        SizedBox(height: 4.v),
        CustomTextFormField(
          controller: passwordController,
          hintText: "********",
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 14.v, 12.h, 14.v),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowdown,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 48.v,
          ),
          obscureText: true,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomCheckboxButton(
        alignment: Alignment.centerLeft,
        text: "Remember me",
        value: rememberMeCheckBox,
        padding: EdgeInsets.symmetric(vertical: 3.v),
        onChange: (value) {
          rememberMeCheckBox = value;
        },
      ),
    );
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapBtnGooglewithapp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapBtnIconbutton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the homeContainerScreen when the action is triggered.
  onTapBtnGooglewithapp1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtDonthaveanaccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
