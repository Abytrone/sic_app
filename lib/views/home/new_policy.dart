import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/widgets/dropdown_form_field.dart';
import 'package:sic_app/views/widgets/input_field.dart';
import 'package:sic_app/views/widgets/primary_button.dart';

class NewPolicy extends StatefulWidget {
  const NewPolicy({Key? key}) : super(key: key);

  @override
  State<NewPolicy> createState() => _NewPolicyState();
}

class _NewPolicyState extends State<NewPolicy> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  DateTime issuedDate = DateTime.now();

  Future<void> _issuedDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: issuedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != issuedDate) {
      setState(() {
        issuedDate = picked;
      });
    }
  }

  DateTime effectiveDate = DateTime.now();

  Future<void> _effectiveDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: effectiveDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != effectiveDate) {
      setState(() {
        effectiveDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('New Policy'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          child: ListView(
            children: [
              const Text(
                'Employment Information',
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const InputField(label: 'Sector', hintText: 'Enter Sector'),
              const InputField(
                  label: 'Employers Name', hintText: 'Enter Employers Name'),
              const InputField(
                  label: 'Organisation', hintText: 'Enter Organisation'),
              const InputField(
                  label: 'Occupation', hintText: 'Enter Occupation'),
              const InputField(label: 'Staff ID', hintText: 'Enter Staff ID'),
              InputField(
                label: 'Date Employed',
                onTap: () {
                  _selectDate(context);
                },
                controller: TextEditingController(
                    text: DateFormat('yyyy-MM-dd')
                        .format(selectedDate.toLocal())),
                readOnly: true,
              ),
              const SizedBox(height: 20),
              const Text(
                'Insurance Plan',
                style: TextStyle(
                  fontSize: 20,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MyDropDownFormField(
                hintText: 'Business Class',
                options: const [
                  'Life Individual',
                  'Term Life',
                ],
                onChanged: (newValue) {},
              ),
              MyDropDownFormField(
                hintText: 'Insurance Plan',
                options: const [
                  'Education Plus Plan',
                  'Ultimate Family Security Plan',
                ],
                onChanged: (newValue) {},
              ),
              MyDropDownFormField(
                hintText: 'Payment Plan',
                options: const [
                  'Monthly',
                  'Quarterly',
                  'Yearly',
                ],
                onChanged: (newValue) {},
              ),
              const InputField(
                  label: 'Basic Premium', hintText: 'Enter Annual Premium'),
              const InputField(
                  label: 'Annual Premium', hintText: 'Enter Annual Premium'),
              InputField(
                label: 'Issued Date',
                onTap: () {
                  _issuedDate(context);
                },
                controller: TextEditingController(
                    text:
                        DateFormat('yyyy-MM-dd').format(issuedDate.toLocal())),
                readOnly: true,
              ),
              InputField(
                label: 'Issued Date',
                onTap: () {
                  _effectiveDate(context);
                },
                controller: TextEditingController(
                    text: DateFormat('yyyy-MM-dd')
                        .format(effectiveDate.toLocal())),
                readOnly: true,
              ),
              const PrimaryButtton(label: 'Submit'),
            ],
          ),
        ),
      ),
    );
  }
}
