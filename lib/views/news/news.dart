import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/widgets/app_drawer.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: appDrawer(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text('News'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/UMB-SICL-homepage-slider.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'UMB Launches 2 New Life Insurance\nProducts with SIC Life',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const Text(
                          'Two leaders in Ghanaian financial services, Universal Merchant Bank and SIC Life Insurance LTD on Friday, 27th January, 2023 launched two new life insurance solutions, namely the UMB Education Plan and the UMB Funeral plan.',
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.heart),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.message),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
