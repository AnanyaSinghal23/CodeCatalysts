
import 'package:flutter/material.dart';
import 'package:flutter_1/core/utils/image_constant.dart';
import 'package:flutter_1/core/utils/size_utils.dart';
import 'package:flutter_1/theme/theme_helper.dart';
import 'package:flutter_1/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_1/widgets/custom_elevated_button.dart';
import 'package:flutter_1/widgets/custom_image_view.dart';
import 'package:flutter_1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController emailIdController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController middleNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray200,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 63.v),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "यूजर पंजीकरण",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 58.v),
              _buildMobileNumber(context),
              SizedBox(height: 25.v),
              _buildEmailId(context),
              SizedBox(height: 21.v),
              _buildFirstName(context),
              SizedBox(height: 23.v),
              _buildMiddleName(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 26.h),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text(
                        "उपनाम",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "(वैकलिप्क) ",
                        style: theme.textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 183.h,
                child: Divider(
                  indent: 26.h,
                ),
              ),
              SizedBox(height: 41.v),
              _buildEight(context),
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
        Container(
          height: 59.adaptSize,
          width: 59.adaptSize,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 59.adaptSize,
                width: 59.adaptSize,
                alignment: Alignment.center,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage3,
                height: 59.adaptSize,
                width: 59.adaptSize,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: mobileNumberController,
        hintText: "मोबाइल नंबर",
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailId(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 26.h,
        right: 17.h,
      ),
      child: CustomTextFormField(
        controller: emailIdController,
        hintText: "ईमेल आईडी",
        alignment: Alignment.center,
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.h),
      child: CustomTextFormField(
        width: 121.h,
        controller: firstNameController,
        hintText: "प्रथम नाम ",
      ),
    );
  }

  /// Section Widget
  Widget _buildMiddleName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 26.h),
      child: CustomTextFormField(
        width: 133.h,
        controller: middleNameController,
        hintText: "मध्य  नाम:",
        textInputAction: TextInputAction.done,
      ),
    );
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return SizedBox(
      height: 266.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomElevatedButton(
            width: 112.h,
            text: "आगे बढ़ें",
            rightIcon: Container(
              child: CustomImageView(
                imagePath: ImageConstant.imgForward,
                height: 22.v,
                width: 23.h,
              ),
            ),
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage18,
            height: 245.v,
            width: 360.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
