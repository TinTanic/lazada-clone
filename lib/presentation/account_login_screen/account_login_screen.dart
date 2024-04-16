import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../home_page/home_page.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AccountLoginScreen extends StatelessWidget {
  AccountLoginScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        body: SizedBox(
          height: 794.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 32.v,
                  ),
                  decoration: AppDecoration.gradientRedToBlueGray,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildPasswordStack(context),
                      SizedBox(height: 28.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 13.v),
                            child: Column(
                              children: [
                                Container(
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 13.h,
                                    vertical: 4.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9001.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder19,
                                  ),
                                  child: Text(
                                    "0",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                Text(
                                  "My Wishlist",
                                  style: theme.textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20.h),
                            child: Column(
                              children: [
                                Container(
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 13.h,
                                    vertical: 4.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder19,
                                  ),
                                  child: Text(
                                    "0",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 12.v),
                                SizedBox(
                                  width: 44.h,
                                  child: Text(
                                    "Followed\nStores",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style:
                                        theme.textTheme.labelMedium!.copyWith(
                                      height: 1.30,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 26.h,
                              bottom: 12.v,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 12.h,
                                    vertical: 4.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder19,
                                  ),
                                  child: Text(
                                    "4",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 13.v),
                                Text(
                                  "Recently",
                                  style: theme.textTheme.labelMedium,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 23.h,
                              bottom: 13.v,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  width: 40.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 13.h,
                                    vertical: 4.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack9002.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder19,
                                  ),
                                  child: Text(
                                    "0",
                                    style: theme.textTheme.titleLarge,
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                Text(
                                  "Vouchers",
                                  style: theme.textTheme.labelMedium,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 11.v),
                      _buildStackviewallord(context),
                      SizedBox(height: 9.v),
                      _buildBoldMoneyRow(context),
                      SizedBox(height: 62.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage30,
                        height: 124.v,
                        width: 380.h,
                        radius: BorderRadius.circular(
                          15.h,
                        ),
                      ),
                      SizedBox(height: 62.v)
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle193,
                height: 10.v,
                width: 430.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 341.v),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray5002,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Container(
        height: 60.v,
        width: 350.h,
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.outlineBlack900.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(
                  left: 32.h,
                  bottom: 8.v,
                ),
                decoration: AppDecoration.outlineBlack,
                child: Text(
                  "*******************",
                  style: CustomTextStyles.titleSmallOnPrimary,
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgEllipse47,
              height: 38.adaptSize,
              width: 38.adaptSize,
              radius: BorderRadius.circular(
                19.h,
              ),
              alignment: Alignment.centerLeft,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackviewallord(BuildContext context) {
    return SizedBox(
      height: 99.v,
      width: 370.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              decoration: AppDecoration.outlineBlack9003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 15.v),
                  Text(
                    "View All Orders >>",
                    style: CustomTextStyles.labelMediumOnPrimary,
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 7.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: 15.h,
                              bottom: 5.v,
                            ),
                            child: _buildColumnlineduoto(
                              context,
                              text: "To Pay",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 15.h,
                              bottom: 5.v,
                            ),
                            child: _buildColumnlineduoto(
                              context,
                              text: "To Ship",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 15.h,
                              bottom: 6.v,
                            ),
                            child: _buildColumnlineduoto(
                              context,
                              text: "To Receive",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              right: 15.h,
                              bottom: 6.v,
                            ),
                            child: _buildColumnlineduoto(
                              context,
                              text: "To Review",
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 15.h),
                            child: _buildColumnlineduoto(
                              context,
                              text: "Return &\nCancellation",
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              margin: EdgeInsets.only(top: 14.v),
              decoration: AppDecoration.outlineBlack,
              child: Text(
                "My Orders",
                style: CustomTextStyles.titleSmallOnPrimary,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBoldMoneyRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 11.h),
      padding: EdgeInsets.symmetric(
        horizontal: 54.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 1.v,
            ),
            child: _buildColumnlineduoto(
              context,
              text: "Voucher\nChannel",
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(9.h),
                  decoration: IconButtonStyleHelper.outlineBlackTL101,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup25,
                  ),
                ),
                SizedBox(height: 11.v),
                Text(
                  "Daily Cashback",
                  style: CustomTextStyles.poppinsBlack900,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: Column(
              children: [
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.outlineBlackTL101,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBoldMoneyDollar,
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  height: 9.v,
                  width: 27.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "My Coins",
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "My Coins",
                          style: CustomTextStyles.poppinsBlack900,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 11.v),
            child: _buildColumnlineduoto(
              context,
              text: "Free\nShipping",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildColumnlineduoto(
    BuildContext context, {
    required String text,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 40.adaptSize,
          width: 40.adaptSize,
          padding: EdgeInsets.all(7.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgLineDuotoneMoneyBlueGray900,
          ),
        ),
        SizedBox(height: 3.v),
        Text(
          text,
          style: CustomTextStyles.poppinsBlack900.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Setting:
        return "/";
      case BottomBarEnum.Messages:
        return "/";
      case BottomBarEnum.Cart:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      default:
        return DefaultWidget();
    }
  }
}
