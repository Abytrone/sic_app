import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sic_app/models/policies_model.dart';
import 'package:sic_app/services/constants.dart';

class PoliciesScreen extends StatelessWidget {
  const PoliciesScreen({Key? key, required this.policy}) : super(key: key);
  final PoliciesModel policy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(policy.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: policy.products.title.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: ListTile(
              title: Text(policy.products.title[index]),
              trailing: const Icon(Iconsax.arrow_right_2),
              tileColor: kPrimaryColor.withOpacity(.1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          );
        },
      ),
    );
  }
}
