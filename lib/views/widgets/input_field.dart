import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key, required this.label}) : super(key: key);
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.1),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            label: Text(label),
          ),
        ),
      ),
    );
  }
}
