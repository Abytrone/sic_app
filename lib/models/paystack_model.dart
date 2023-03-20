/// from the paystack API.
class PaystackRequestResponse {
  final bool status;
  final String authUrl;
  final String reference;

  const PaystackRequestResponse(
      {required this.authUrl, required this.status, required this.reference});

  factory PaystackRequestResponse.fromJson(Map<String, dynamic> json) {
    return PaystackRequestResponse(
      status: json['status'],
      authUrl: json['data']["authorization_url"],
      reference: json['data']["reference"],
    );
  }
}
