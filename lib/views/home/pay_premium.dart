import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/widgets/dropdown_form_field.dart';
import 'package:sic_app/views/widgets/input_field.dart';
import 'package:sic_app/views/widgets/primary_button.dart';

class PayPremium extends StatelessWidget {
  const PayPremium({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('Pay Premium'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  MyDropDownFormField(
                    hintText: 'Select product',
                    options: const [
                      'Education Plan',
                      'Keyman Assurance',
                      'Mortgage Plan'
                    ],
                    onChanged: (newValue) {},
                  ),
                  const InputField(label: 'Amount (Ghc)'),
                  MyDropDownFormField(
                    hintText: 'Payment Method',
                    options: const [
                      'MTN Mobile Money',
                      'Vodafone Cash',
                      'AirtelTigo Money',
                      'Debit Card'
                    ],
                    onChanged: (newValue) {},
                  ),
                  const PrimaryButtton(label: 'Proceed'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
