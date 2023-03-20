import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/widgets/drawer_item.dart';

Drawer appDrawer() {
  return Drawer(
    child: Column(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          color: kPrimaryColor,
          padding: const EdgeInsets.all(10),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1518020382113-a7e8fc38eac9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=717&q=80'),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Yahaya Abdul-Basit',
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 15,
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Customer',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        const DrawreItem(
            text: 'Pay Premium', icon: Iconsax.wallet_add, color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Buy Policy',
            icon: Iconsax.wallet_money,
            color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'History', icon: Iconsax.clock, color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Submit Claim',
            icon: Iconsax.money_recive,
            color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Notification',
            icon: Iconsax.notification,
            color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Support Ticket', icon: Iconsax.ticket, color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Terms and Conditions',
            icon: Iconsax.document_text,
            color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Privacy Policy',
            icon: Iconsax.security_user,
            color: Colors.black),
        const Divider(thickness: 0.5),
        const DrawreItem(
            text: 'Rate us', icon: Iconsax.star, color: Colors.black),
        const Divider(thickness: 0.5),
        const SizedBox(height: 15),
        const DrawreItem(
            text: 'Logout', icon: Iconsax.logout, color: Colors.red),
      ],
    ),
  );
}
