import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import 'payment_method_request.dart';

part 'payment_intent.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentIntent {
  PaymentMethodRequest paymentMethod;
  String paymentMethodId;
  String returnURL;
  String clientSecret;
  final Map<String, dynamic> metadata;

  PaymentIntent({
    this.paymentMethod,
    this.paymentMethodId,
    this.returnURL,
    @required this.clientSecret,
    this.metadata,
  });

  factory PaymentIntent.fromJson(Map<String, dynamic> json) => _$PaymentIntentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}
