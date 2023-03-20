import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sic_app/models/home_menu.dart';

class HomeTopMenu extends StatelessWidget {
  const HomeTopMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<HomeMenue> homeMenueItem = [
      HomeMenue(
        icon: 'assets/best-seller.png',
        title: 'Pay Premium',
        route: 'paypremium',
      ),
      // HomeMenue(
      //   icon: 'assets/renewable.png',
      //   title: 'Renew Policy',
      //   route: '',
      // ),
      HomeMenue(
        icon: 'assets/insurance.png',
        title: 'New Policy',
        route: '',
      ),
      HomeMenue(
        icon: 'assets/claim.png',
        title: 'Submit Claim',
        route: '',
      ),
    ];
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          itemCount: homeMenueItem.length,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return Container(width: 10);
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Get.toNamed('paypremium');
              },
              child: Container(
                // height: 200,
                // width: 150,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10.0,
                      color: Colors.black12,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(homeMenueItem[index].icon),
                      height: 70,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      homeMenueItem[index].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: kDefaultIconDarkColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
