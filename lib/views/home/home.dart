import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sic_app/models/policies_model.dart';
import 'package:sic_app/models/product_model.dart';
import 'package:sic_app/models/transaction_model.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/home/widgets/home_top_menu.dart';
import 'package:sic_app/views/home/widgets/policies_card.dart';
import 'package:sic_app/views/home/widgets/product_card.dart';
import 'package:sic_app/views/home/widgets/transaction_card.dart';
import 'package:sic_app/views/widgets/app_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Container(
          height: 100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/app_icon/logo.jpg'),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.notification),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: false,
        child: ListView(
          // shrinkWrap: true,
          children: [
            SizedBox(
              height: 250,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.separated(
                  itemCount: ProductModel.product.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return const SizedBox(width: 10);
                  },
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: ProductModel.product[index],
                    );
                  },
                ),
              ),
            ),
            const Divider(thickness: .5),
            const HomeTopMenu(),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Our Policies',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                  GridView.count(
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      childAspectRatio: 1,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      physics: const NeverScrollableScrollPhysics(),
                      children: List.generate(PoliciesModel.policies.length,
                          (int index) {
                        return PoliciesCard(
                          policiesModel: PoliciesModel.policies[index],
                        );
                      })),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Most Recent',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'See more',
                        style: TextStyle(color: kPrimaryColor),
                      ),
                    ],
                  ),
                  ListView.builder(
                    itemCount: TransactionModel.transction.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, index) {
                      return TransactionCard(
                        transaction: TransactionModel.transction[index],
                      );
                    },
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
