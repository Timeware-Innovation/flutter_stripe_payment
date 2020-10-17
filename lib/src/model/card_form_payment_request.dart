import 'package:stripe_payment/src/model/ios_theme.dart';

import 'prefilled_information.dart';

class CardFormPaymentRequest {
  final PrefilledInformation prefilledInformation;
  final String requiredBillingAddressFields;
  final IOSTheme iOSTheme;

  /// * [primaryBackgroundColor] sets navigation bar hairline color
  /// * [secondaryBackgroundColor] sets navigation bar tint color
  /// * [primaryForegroundColor] sets title color
  /// * [accentColor] sets buttons color
  final IOSTheme iOSNavigationBarTheme;

  CardFormPaymentRequest({
    this.prefilledInformation,
    this.requiredBillingAddressFields,
    this.iOSTheme,
    this.iOSNavigationBarTheme,
  });

  factory CardFormPaymentRequest.fromJson(Map<dynamic, dynamic> json) {
    return CardFormPaymentRequest(
      prefilledInformation:
          json['prefilledInformation'] != null ? PrefilledInformation.fromJson(json['prefilledInformation']) : null,
      requiredBillingAddressFields: json['requiredBillingAddressFields'],
      iOSTheme: json[_iOSThemeJsonKey] != null ? IOSTheme.fromJson(json[_iOSThemeJsonKey]) : null,
      iOSNavigationBarTheme:
          json[_iOSNavigationBarThemeJsonKey] != null ? IOSTheme.fromJson(json[_iOSNavigationBarThemeJsonKey]) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requiredBillingAddressFields != null) if (this.requiredBillingAddressFields != null)
      data['requiredBillingAddressFields'] = this.requiredBillingAddressFields;
    if (this.prefilledInformation != null) {
      data['prefilledInformation'] = this.prefilledInformation.toJson();
    }
    if (this.iOSTheme != null) {
      data[_iOSThemeJsonKey] = this.iOSTheme.toJson();
    }
    if (this.iOSNavigationBarTheme != null) {
      data[_iOSNavigationBarThemeJsonKey] = this.iOSNavigationBarTheme.toJson();
    }
    return data;
  }
}

String _iOSThemeJsonKey = "theme";
String _iOSNavigationBarThemeJsonKey = "nav_bar_theme";
