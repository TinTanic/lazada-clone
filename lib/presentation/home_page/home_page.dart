import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/productcard_item_widget.dart';
import 'widgets/sliderview_item_widget.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  int sliderIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Column(
            children: [
              _buildRowSearch(context),
              SizedBox(height: 26.v),
              _buildSliderView(context),
              SizedBox(height: 21.v),
              _buildRowCoinsTwo(context),
              SizedBox(height: 22.v),
              Container(
                height: 10.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.blueGray10003,
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "New User Exclusive!!",
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildProductCard(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgTelevision,
        margin: EdgeInsets.only(
          left: 22.h,
          top: 16.v,
          bottom: 15.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 58.h),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "Coins",
              margin: EdgeInsets.only(
                top: 6.v,
                bottom: 11.v,
              ),
            ),
            AppbarTitle(
              text: "HOME",
              margin: EdgeInsets.only(left: 3.h),
            )
          ],
        ),
      ),
      actions: [
        AppbarSubtitle(
          text: "LazLive",
          margin: EdgeInsets.only(
            top: 14.v,
            right: 8.h,
            bottom: 12.v,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.only(
            left: 44.h,
            top: 8.v,
            right: 23.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildRowSearch(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomSearchView(
              controller: searchController,
              hintText: "Search...",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillSecondaryContainer,
              child: CustomImageView(
                imagePath: ImageConstant.imgFilter,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSliderView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 208.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index, reason) {
            sliderIndex = index;
          },
        ),
        itemCount: 1,
        itemBuilder: (context, index, realIndex) {
          return SliderviewItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowCoinsTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 29.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                Container(
                  width: 130.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage6,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            radius: BorderRadius.circular(
                              15.h,
                            ),
                          ),
                          SizedBox(height: 5.v),
                          Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text(
                              "LazMall",
                              style: theme.textTheme.labelMedium,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Coins",
                              textAlign: TextAlign.center,
                              style: theme.textTheme.titleSmall,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: _buildColumnPresale(
                          context,
                          image: ImageConstant.imgImage7,
                          text: "Topping\nDiscounts",
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 11.v),
                SizedBox(
                  width: 130.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 15.h,
                            bottom: 13.v,
                          ),
                          child: _buildColumnPresale(
                            context,
                            image: ImageConstant.imgImage12,
                            text: "PreSale",
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: _buildColumnPresale(
                            context,
                            image: ImageConstant.imgImage13,
                            text: "LazLook\nFashion",
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 81.v,
              bottom: 87.v,
            ),
            child: Text(
              "Coins",
              textAlign: TextAlign.center,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Column(
              children: [
                Container(
                  width: 210.h,
                  margin: EdgeInsets.only(left: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildColumnPresale(
                        context,
                        image: ImageConstant.imgImage9,
                        text: "Free\nShipping",
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.v),
                        child: _buildColumnPresale(
                          context,
                          image: ImageConstant.imgImage10,
                          text: "9Baht",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage11,
                              height: 50.adaptSize,
                              width: 50.adaptSize,
                              radius: BorderRadius.circular(
                                15.h,
                              ),
                            ),
                            SizedBox(height: 4.v),
                            Text(
                              "CashBack",
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  width: 213.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 1.v,
                          bottom: 16.v,
                        ),
                        child: _buildColumnPromotion(
                          context,
                          imageSixteen: ImageConstant.imgImage14,
                          promotionText: "LazBEAUTY",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 16.v),
                        child: _buildColumnPresale(
                          context,
                          image: ImageConstant.imgImage15,
                          text: "LazHome",
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: _buildColumnPromotion(
                          context,
                          imageSixteen: ImageConstant.imgImage16,
                          promotionText: "Promotion\nUpdate",
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProductCard(BuildContext context) {
    return SizedBox(
      height: 101.v,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 30.h,
          );
        },
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductcardItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildColumnPresale(
    BuildContext context, {
    required String image,
    required String text,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: image,
          height: 50.adaptSize,
          width: 50.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        SizedBox(height: 6.v),
        Text(
          text,
          style: theme.textTheme.labelMedium!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildColumnPromotion(
    BuildContext context, {
    required String imageSixteen,
    required String promotionText,
  }) {
    return Column(
      children: [
        CustomImageView(
          imagePath: imageSixteen,
          height: 50.adaptSize,
          width: 50.adaptSize,
          radius: BorderRadius.circular(
            15.h,
          ),
        ),
        SizedBox(height: 5.v),
        SizedBox(
          width: 53.h,
          child: Text(
            promotionText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: theme.textTheme.labelMedium!.copyWith(
              color: appTheme.black900,
              height: 1.30,
            ),
          ),
        )
      ],
    );
  }
}
