import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class LazadaScreen extends StatelessWidget {
  const LazadaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
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
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 5.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 250.adaptSize,
                  width: 250.adaptSize,
                  onTap: () {
                    onTapImgImagetwoone(context);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapImgImagetwoone(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}
