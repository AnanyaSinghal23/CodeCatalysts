import 'package:flutter_1/core/app_export.dart';
import 'package:flutter_1/core/utils/image_constant.dart';
import 'package:flutter_1/core/utils/size_utils.dart';
import 'package:flutter_1/theme/theme_helper.dart';
import 'package:flutter_1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/widgets/custom_image_view.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 30.v),
              _buildTwenty(context),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgImage19,
                height: 235.v,
                width: 360.h,
              ),
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
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTwenty(BuildContext context) {
    return SizedBox(
      height: 358.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage16,
            height: 297.v,
            width: 360.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "सफलतापूर्वक",
                style: theme.textTheme.headlineLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "आपका खाता साइन इन हो गया है",
              style: theme.textTheme.headlineSmall,
            ),
          ),
        ],
      ),
    );
  }
}
