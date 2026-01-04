import 'package:clothes_project/core/resources/app_images.dart';
import 'package:clothes_project/features/logout/view.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,

        centerTitle: true,
        title: Text(
          "Account",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),

        leading: SizedBox.shrink(),
      ),

      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 20,
                indent: 5,
                endIndent: 5,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.shopping_bag_sharp, size: 30),
                      Text(
                        "My Orders",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFB3B3B3)),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 25,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.person_pin_rounded, size: 30),
                      Text(
                        "My Details",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFB3B3B3)),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 25,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.home_sharp, size: 30),
                      Text(
                        "Address Book",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFB3B3B3)),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 25,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.help_outline, size: 30),
                      Text(
                        "FAQs",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFB3B3B3)),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                height: 25,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Icon(Icons.headset_mic, size: 30),
                      Text(
                        "Help Center",
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios, color: Color(0xFFB3B3B3)),
                ],
              ),
              Divider(color: Colors.grey.shade400, thickness: 5, height: 50),
              SizedBox(height: 96),
              GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        content: const LogoutScreen(),
                      );
                    },
                  );
                },
                child: Row(
                  spacing: 8,
                  children: [
                    Transform.flip(
                      flipX: true,
                      child: Icon(Icons.logout, color: Colors.red),
                    ),
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Color(0xFFED1010),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
