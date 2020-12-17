import 'package:flutter/material.dart';

/// See: https://stripe.dev/stripe-ios/docs/Classes/STPTheme.html
/// See: https://stripe.com/docs/mobile/ios/basic#theming
class IOSTheme {
  IOSTheme({
    this.primaryBackgroundColor,
    this.secondaryBackgroundColor,
    this.primaryForegroundColor,
    this.secondaryForegroundColor,
    this.accentColor,
    this.errorColor,
    this.font,
    this.emphasisFont,
  });

  final Color primaryBackgroundColor,
      secondaryBackgroundColor,
      primaryForegroundColor,
      secondaryForegroundColor,
      accentColor,
      errorColor;
  final IOSThemeFont font, emphasisFont;

  factory IOSTheme.fromJson(Map<dynamic, dynamic> json) {
    return IOSTheme(
      primaryBackgroundColor: json["primaryBackgroundColor"] != null ? Color(json["primaryBackgroundColor"]) : null,
      secondaryBackgroundColor: json["primaryBackgroundColor"] != null ? Color(json["secondaryBackgroundColor"]) : null,
      primaryForegroundColor: json["primaryBackgroundColor"] != null ? Color(json["primaryForegroundColor"]) : null,
      secondaryForegroundColor: json["primaryBackgroundColor"] != null ? Color(json["secondaryForegroundColor"]) : null,
      accentColor: json["primaryBackgroundColor"] != null ? Color(json["accentColor"]) : null,
      errorColor: json["primaryBackgroundColor"] != null ? Color(json["errorColor"]) : null,
      font: json["font"] != null ? IOSThemeFont.fromJson(json["font"]) : null,
      emphasisFont: json["emphasisFont"] != null ? IOSThemeFont.fromJson(json["emphasisFont"]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (primaryBackgroundColor != null) "primaryBackgroundColor": primaryBackgroundColor.value,
      if (secondaryBackgroundColor != null) "secondaryBackgroundColor": secondaryBackgroundColor.value,
      if (primaryForegroundColor != null) "primaryForegroundColor": primaryForegroundColor.value,
      if (secondaryForegroundColor != null) "secondaryForegroundColor": secondaryForegroundColor.value,
      if (accentColor != null) "accentColor": accentColor.value,
      if (errorColor != null) "errorColor": errorColor.value,
      if (font != null) "font": font.toJson(),
      if (emphasisFont != null) "emphasisFont": emphasisFont.toJson(),
    };
  }
}

class IOSThemeFont {
  IOSThemeFont({@required this.asset, @required this.name, @required this.size});

  final String asset;

  /// Font name. Take it from Font Book.app
  final String name;
  final double size;

  factory IOSThemeFont.fromJson(Map<dynamic, dynamic> json) {
    return IOSThemeFont(
      asset: json["asset"],
      name: json["name"],
      size: json["size"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "asset": asset,
      "name": name,
      "size": size,
    };
  }
}
