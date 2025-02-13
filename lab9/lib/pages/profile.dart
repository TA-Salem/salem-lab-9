import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:lab9/components/buttonbar.dart';
import 'package:lab9/components/orders.dart';
import 'package:lab9/components/profilebtns.dart';
import 'package:lab9/components/sales.dart';
import 'package:lab9/components/spacing.dart';
import 'package:lab9/main.dart';
import 'package:lab9/pages/changepwd.dart';
import 'package:lab9/pages/signin.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacing(height: 70),
            CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
              radius: 70,
            ),
            Spacing(height: 15),
            Text(
              "Itoh",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Spacing(height: 9),
            Text("+1 11229382748"),
            Profilebtns(btnName: "My Profile"),
            InkWell(
                onTap: () {
                  Get.to(CPwd());
                },
                child: Profilebtns(btnName: "Change Password")),
            Profilebtns(btnName: "Payment Settings"),
            Profilebtns(btnName: "My Voucher"),
            Profilebtns(btnName: "Notification"),
            Profilebtns(btnName: "About us"),
            Profilebtns(btnName: "Contact us"),
            Spacing(
              height: 55,
            ),
            InkWell(
              onTap: () {
                Get.offAll(Signin());
              },
              child: Bbar(
                bname: "Sign Out",
                textcolor: Colors.black,
                bcolor: lightgrey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
