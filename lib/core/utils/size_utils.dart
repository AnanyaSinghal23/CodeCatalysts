import 'dart:ui' as ui;
import 'package:flutter/material.dart';

const num FIGMA_DESIGN_WIDTH = 360;
const num FIGMA_DESIGN_HEIGHT = 800;
const num FIGMA_DESIGN_STATUS_BAR = 0;

typedef ResponsiveBuild = Widget Function(
  BuildContext context,
  Orientation orientation,
  DeviceType deviceType,
);

class Sizer extends StatelessWidget {
  const Sizer({
    Key? key,
    required this.builder,
  }) : super(key: key);

  final ResponsiveBuild builder;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeUtils.setScreenSize(constraints, orientation);
        return builder(context, orientation!, SizeUtils.deviceType!); // Added null assertion (!) here
      });
    });
  }
}

class SizeUtils {
  static BoxConstraints? boxConstraints;
  static Orientation? orientation;
  static DeviceType? deviceType;
  static double? height;
  static double? width;

  static void setScreenSize(
    BoxConstraints constraints,
    Orientation currentOrientation,
  ) {
    boxConstraints = constraints;
    orientation = currentOrientation;

    if (boxConstraints != null && orientation != null) {
      if (orientation == Orientation.portrait) {
        width = boxConstraints!.maxWidth.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
        height = boxConstraints!.maxHeight.isNonZero();
      } else {
        width = boxConstraints!.maxHeight.isNonZero(defaultValue: FIGMA_DESIGN_WIDTH);
        height = boxConstraints!.maxWidth.isNonZero();
      }
      deviceType = DeviceType.mobile;
    }
  }
}

extension ResponsiveExtension on num {
  num get _width => SizeUtils.width ?? FIGMA_DESIGN_WIDTH;
  num get _height => SizeUtils.height ?? FIGMA_DESIGN_HEIGHT;

  double get h => ((this * _width) / FIGMA_DESIGN_WIDTH);
  double get v => (this * _height) / (FIGMA_DESIGN_HEIGHT - FIGMA_DESIGN_STATUS_BAR);

  double get adaptSize => v < h ? v.toDoubleValue() : h.toDoubleValue();
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(this.toStringAsFixed(fractionDigits));
  }

  double isNonZero({num defaultValue = 0.0}) {
    return this > 0 ? this : defaultValue.toDouble();
  }
}

enum DeviceType { mobile, tablet, desktop }
