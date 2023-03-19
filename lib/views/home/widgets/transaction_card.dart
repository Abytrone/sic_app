import 'package:flutter/material.dart';
import 'package:sic_app/models/transaction_model.dart';
import 'package:sic_app/services/constants.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.name,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kContentColorLightTheme,
                    ),
                  ),
                  Text('Balance: ${transaction.balance}'),
                  const SizedBox(height: 10),
                  Text(
                    transaction.timeDate,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Ghc ${transaction.amount}',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: transaction.type == Type.debit
                          ? kErrorColor
                          : kPrimaryColor,
                    ),
                  ),
                  Text(transaction.paymentMethod),
                  const SizedBox(height: 10),
                  Text(
                    transaction.status,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: transaction.type == Type.debit
                          ? kErrorColor
                          : kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
