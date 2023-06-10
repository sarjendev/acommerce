import 'package:acommerce/screens/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:acommerce/constants/routes.dart';
import 'package:acommerce/firebase_helper/firebase_auth_helper.dart';
import 'package:acommerce/screens/about_us.dart';
import 'package:acommerce/screens/change_password.dart';
import 'package:acommerce/screens/edit_profile.dart';
import 'package:acommerce/screens/favourite_screen.dart';
import 'package:acommerce/screens/order_screen.dart';
import 'package:acommerce/widgets/primary_button.dart';

import '../provider/app_provider.dart';

class UserDetailsBar extends StatefulWidget {
  const UserDetailsBar({super.key});

  @override
  State<UserDetailsBar> createState() => _UserDetailsBarState();
}

class _UserDetailsBarState extends State<UserDetailsBar> {
  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(
      context,
    );

    return Column(
      children: [
        Row(
          children: [
            Text(
              "Welcome 👋 ${appProvider.getUserInformation.name}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.place_rounded),
                ],
              ),
            ),
            Text(
              "Delivery to: ${appProvider.getUserInformation.address}",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
    //     Text("Deliver to :"),
    //     Text(
    //       appProvider.getUserInformation.name,
    //       style: const TextStyle(
    //         fontSize: 12,
    //         fontWeight: FontWeight.bold,
    //         color: Colors.black,
    //       ),
    //     ),
    //     Text(" - "),
    //     Text(
    //       appProvider.getUserInformation.address.toString(),
    //       style: const TextStyle(
    //         fontSize: 12,
    //         fontWeight: FontWeight.bold,
    //         color: Colors.black,
    //       ),
    //     ),
    //   ],
    // ),
  }
}
