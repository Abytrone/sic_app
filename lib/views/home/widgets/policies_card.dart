import 'package:flutter/material.dart';
import 'package:sic_app/models/policies_model.dart';
import 'package:sic_app/services/constants.dart';

class PoliciesCard extends StatelessWidget {
  const PoliciesCard({Key? key, required this.policiesModel}) : super(key: key);
  final PoliciesModel policiesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white,
        border: Border.all(
          width: 1,
          color: kPrimaryColor.withOpacity(0.3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: 50,
            image: AssetImage(
              policiesModel.icon,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            policiesModel.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: kContentColorLightTheme,
            ),
          ),
        ],
      ),
    );
  }
}
