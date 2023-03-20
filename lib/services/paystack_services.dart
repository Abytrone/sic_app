import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:sic_app/models/paystack_model.dart';
import 'package:sic_app/services/constants.dart';

class PaystackServices {
  /// Makes HTTP Request to Paystack for access to make payment.
  Future<PaystackRequestResponse> makePaymentRequest({
    required String secretKey,
    required String email,
    required String amount,
    // required String reference,
    required String currency,
    // required String metadata,
    // required String paymentChannel,
  }) async {
    var response;
    try {
      /// Sending Data to paystack.
      response = await http.post(
        /// Url to send data to
        Uri.parse('https://api.paystack.co/charge'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $secretKey',
        },

        /// Data to send to the URL.
        body: jsonEncode({
          "email": email,
          "amount": amount,
          // "reference": reference,
          "currency": currency,
          "mobile_money": {
            'phone': '',
            '0559133666'
                'provider': 'mtn'
          },
          // "channels": paymentChannel
        }),
      );
      print(response.body);
    } on Exception catch (_) {
      /// In the event of an exception, take the user back and show a SnackBar error.
      // Navigator.pop(context);
      // ScaffoldMessenger.of(context).hideCurrentSnackBar();
      // var snackBar = const SnackBar(
      //     content: Text("Fatal error occurred, Please check your internet"));
      // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Get.snackbar(
        'Error Message',
        'Fatal error occurred, Please check your internet',
        colorText: Colors.white,
        maxWidth: 350,
        backgroundColor: kErrorColor,
        borderRadius: 5,
        margin: const EdgeInsets.only(bottom: 30),
        snackPosition: SnackPosition.BOTTOM,
      );
    }

    if (response.statusCode == 200) {
      /// Response code 200 means OK.
      /// Send data to the POJO Class if 200.
      return PaystackRequestResponse.fromJson(jsonDecode(response.body));
    } else {
      /// Anything else means there is an issue.
      throw Exception(
          "Response Code: ${response.statusCode}, Response Body${response.body}");
    }
  }
}
