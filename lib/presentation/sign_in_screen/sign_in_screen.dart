
import 'package:flutter/material.dart';
import 'package:flutter_1/core/utils/image_constant.dart';
import 'package:flutter_1/core/utils/size_utils.dart';
import 'package:flutter_1/routes/app_routes.dart';
import 'package:flutter_1/theme/app_decoration.dart';
import 'package:flutter_1/theme/custom_text_style.dart';
import 'package:flutter_1/theme/theme_helper.dart';
import 'package:flutter_1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:flutter_1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_1/widgets/custom_image_view.dart';
import 'package:flutter_1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  TextEditingController countrycodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 82.v),
                      Padding(
                          padding: EdgeInsets.only(left: 84.h),
                          child: Text(" साइन इन करें ",
                              style: theme.textTheme.headlineLarge)),
                      SizedBox(height: 57.v),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text("अपना मोबाइल नंबर दर्ज करें",
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h),
                          child: Text("हम आपको एक पुष्टिकरण कोड भेजेंगे",
                              style: theme.textTheme.bodyMedium)),
                      SizedBox(height: 20.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h, right: 33.h),
                          child: CustomTextFormField(
                              controller: countrycodeController,
                              hintText: "+91",
                              hintStyle: theme.textTheme.titleLarge!,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center)),
                      SizedBox(height: 46.v),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapOne(context);
                              },
                              child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 63.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 38.h, vertical: 15.v),
                                  decoration: AppDecoration.outlineBlack
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                  child: Text("ओटीपी उत्पन्न करें",
                                      style: CustomTextStyles
                                          .headlineSmallWhiteA700)))),
                      SizedBox(height: 86.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage17,
                          height: 228.v,
                          width: 360.h)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgImage3,
          margin: EdgeInsets.symmetric(horizontal: 16.h))
    ]);
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.otpScreen);
  }
}
