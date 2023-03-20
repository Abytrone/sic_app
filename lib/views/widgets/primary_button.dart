import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';

class PrimaryButtton extends StatelessWidget {
  const PrimaryButtton({Key? key, required this.label, this.onPressed})
      : super(key: key);
  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(300, 70)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          )),
          padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
          backgroundColor: MaterialStateProperty.all(kPrimaryColor),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
