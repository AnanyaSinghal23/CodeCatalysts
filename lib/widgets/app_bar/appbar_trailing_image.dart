// ignore: depend_on_referenced_packages
// import 'package:ansh_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_1/core/utils/size_utils.dart';
import 'package:flutter_1/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class AppbarTrailingImage extends StatelessWidget {
  AppbarTrailingImage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 59.adaptSize,
          width: 59.adaptSize,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
