import 'package:flutter/material.dart';
import 'package:sic_app/views/widgets/input_field.dart';
import 'package:sic_app/views/widgets/primary_button.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/app_icon/logo.jpg'),
                ),
              ),
            ),
            const Text(
              'Help Center',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Address',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'No. 1 Jones Nelson Road,\nAdabraka Freetown, Accra.\nP. O. Box CT3242',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Phone Number',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '+233-302-750151 / 307-021257/8',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const Text(
              'Website',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'www.siclife.com.gh',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Contact Form',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  InputField(label: 'Name', hintText: 'Enter your name'),
                  InputField(label: 'Email', hintText: 'Enter your email'),
                  InputField(
                    label: 'Message',
                    hintText: 'Enter your message',
                    maxLines: 5,
                  ),
                  PrimaryButtton(label: 'Submit'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
