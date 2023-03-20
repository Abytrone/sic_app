import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';

class SubmitClaim extends StatelessWidget {
  const SubmitClaim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Submit Claim'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(),
    );
  }
}
