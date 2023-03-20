import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sic_app/models/product_model.dart';
import 'package:sic_app/services/constants.dart';

class Product extends StatelessWidget {
  const Product({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(product.name),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border:
                    Border.all(width: 1, color: kPrimaryColor.withOpacity(.3)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Full Name'),
                      Text(
                        'Yahaya Abdul Basit',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Client Type'),
                      Text(
                        'Individual',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Date Of Birth'),
                      Text(
                        '05 July, 1999',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Address'),
                      Text(
                        'K625, Ward K, Tamale',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Contact'),
                      Text(
                        '055 913 3666',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                border:
                    Border.all(width: 1, color: kPrimaryColor.withOpacity(.3)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Policy No.'),
                      Text(
                        product.id,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Business Class'),
                      Text(
                        'Life Individual',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Policy Date'),
                      Text(
                        product.date,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Basic Premium'),
                      Text(
                        'Ghc 30.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Total Contribution'),
                      Text(
                        'Ghc ${product.amount}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Policy Type'),
                      Text(
                        'Univeral Life',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Payment Frequency'),
                      Text(
                        'Monthly Premium Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Annual Premium'),
                      Text(
                        'Ghc 360.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Number of Contributions'),
                      Text(
                        '25',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kPrimaryColor),
                      ),
                    ],
                  ),
                  // const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1),
            // const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Beneficiaries',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(kPrimaryColor)),
                  child: const Text(
                    'Add New',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            const SizedBox(height: 5),
            ListTile(
              title: const Text('Rayaan Yahaya'),
              subtitle: const Text('Brother'),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: badges.Badge(
                  badgeContent: const Text(
                    '35%',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: kPrimaryColor,
                    shape: badges.BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    elevation: 0,
                  ),
                ),
              ),
              tileColor: kPrimaryColor.withOpacity(.1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Fatahiya Yahaya'),
              subtitle: const Text('Daughter'),
              trailing: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: badges.Badge(
                  badgeContent: const Text(
                    '50%',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: kPrimaryColor,
                    shape: badges.BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    elevation: 0,
                  ),
                ),
              ),
              tileColor: kPrimaryColor.withOpacity(.1),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
