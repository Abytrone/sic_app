import 'package:flutter/material.dart';
import 'package:sic_app/services/constants.dart';

class MyDropDownFormField extends StatefulWidget {
  final String hintText;
  final List<String> options;
  final Function(String) onChanged;

  const MyDropDownFormField({
    super.key,
    required this.hintText,
    required this.options,
    required this.onChanged,
  });

  @override
  _MyDropDownFormFieldState createState() => _MyDropDownFormFieldState();
}

class _MyDropDownFormFieldState extends State<MyDropDownFormField> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor.withOpacity(.1),
          borderRadius: const BorderRadius.all(Radius.circular(15)),
        ),
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
          value: _selectedOption,
          items: widget.options
              .map((option) => DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  ))
              .toList(),
          onChanged: (newValue) {
            setState(() {
              _selectedOption = newValue;
            });
            widget.onChanged(newValue!);
          },
        ),
      ),
    );
  }
}
