import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sic_app/models/product_model.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/home/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key, required this.product}) : super(key: key);
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kPrimaryColor,
                Colors.green,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.id,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                product.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Total Contributions',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Ghc ${product.amount}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Date: ${product.date}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 6),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => Product(product: product));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text(
                    'View Plan',
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Positioned(
        //   right: 5,
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Iconsax.money_add,
        //       color: Colors.white,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
