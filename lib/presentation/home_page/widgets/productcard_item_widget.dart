import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ProductcardItemWidget extends StatelessWidget {
  const ProductcardItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1,
            height: 70.adaptSize,
            width: 70.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 2.v),
          Container(
            width: 48.h,
            margin: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Boat Headphones\n",
                    style: CustomTextStyles.robotoBlack900Regular,
                  ),
                  TextSpan(
                    text: "75\n",
                    style: CustomTextStyles.robotoBlack900Regular.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  TextSpan(
                    text: "50",
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
              textAlign: TextAlign.left,
            ),
          )
        ],
      ),
    );
  }
}
