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
  });

  final Color primaryBackgroundColor,
      secondaryBackgroundColor,
      primaryForegroundColor,
      secondaryForegroundColor,
      accentColor,
      errorColor;

  factory IOSTheme.fromJson(Map<dynamic, dynamic> json) {
    return IOSTheme(
      primaryBackgroundColor: json["primaryBackgroundColor"] != null ? Color(json["primaryBackgroundColor"]) : null,
      secondaryBackgroundColor: json["primaryBackgroundColor"] != null ? Color(json["secondaryBackgroundColor"]) : null,
      primaryForegroundColor: json["primaryBackgroundColor"] != null ? Color(json["primaryForegroundColor"]) : null,
      secondaryForegroundColor: json["primaryBackgroundColor"] != null ? Color(json["secondaryForegroundColor"]) : null,
      accentColor: json["primaryBackgroundColor"] != null ? Color(json["accentColor"]) : null,
      errorColor: json["primaryBackgroundColor"] != null ? Color(json["errorColor"]) : null,
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
    };
  }
}
