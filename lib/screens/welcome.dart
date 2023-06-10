import 'package:flutter/material.dart';
import 'package:acommerce/constants/asset_images.dart';
import 'package:acommerce/constants/routes.dart';
import 'package:acommerce/screens/login.dart';
import 'package:acommerce/widgets/primary_button.dart';
import 'package:acommerce/widgets/top_titles.dart';

import 'sign_up.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                  child: const TopTitles(
                      subtitle: "Shop with Confidence with ACommerce! ",
                      title: "Welcome")),
            ),
            Center(
              child: Image.asset(
                AssetsImages.instance.welcomeImage,
                scale: 1,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () {
                Routes.instance.push(widget: const Login(), context: context);
              },
            ),
            const SizedBox(
              height: 18.0,
            ),
            PrimaryButton(
              title: "Sign Up",
              onPressed: () {
                Routes.instance.push(widget: const SignUp(), context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
