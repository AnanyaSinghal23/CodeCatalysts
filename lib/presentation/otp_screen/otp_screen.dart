
import 'package:flutter/material.dart';
import 'package:flutter_1/core/utils/image_constant.dart';
import 'package:flutter_1/core/utils/size_utils.dart';
import 'package:flutter_1/theme/custom_text_style.dart';
import 'package:flutter_1/theme/theme_helper.dart';
import 'package:flutter_1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_1/widgets/custom_image_view.dart';
import 'package:flutter_1/widgets/custom_pin_code_text_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          height: 729.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 23.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSendFile,
                height: 90.adaptSize,
                width: 90.adaptSize,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 255.v,
                  right: 31.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage14,
                height: 300.v,
                width: 356.h,
                alignment: Alignment.topCenter,
              ),
              _buildNine(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage3,
          margin: EdgeInsets.symmetric(horizontal: 17.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 5.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ओटीपी दर्ज करें",
                style: theme.textTheme.headlineSmall,
              ),
            ),
            SizedBox(height: 20.v),
            CustomPinCodeTextField(
              context: context,
              onChanged: (value) {},
            ),
            SizedBox(height: 12.v),
            Padding(
              padding: EdgeInsets.only(
                left: 25.h,
                right: 28.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ओटीपी प्राप्त नहीं हुआ ?",
                    style: theme.textTheme.bodyLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "ओटीपी पुनः भेजें",
                      style: CustomTextStyles.bodyLargeBluegray700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
