import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.label,
    this.controller,
    this.onTap,
    this.readOnly,
    this.hintText,
    this.maxLines,
  }) : super(key: key);
  final String label;
  final TextEditingController? controller;
  final void Function()? onTap;
  final bool? readOnly;
  final String? hintText;
  final int? maxLines;

  // final GlobalKey<FormState>? formKey = GlobalKey<FormState>();

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
            hintText: hintText,
          ),
          // textAlignVertical: TextAlignVertical.center,
          controller: controller,
          maxLines: maxLines ?? 1,
          onTap: onTap,
          readOnly: readOnly == null ? false : true,
        ),
      ),
    );
  }
}
