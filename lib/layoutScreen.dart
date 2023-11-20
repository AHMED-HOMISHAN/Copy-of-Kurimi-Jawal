// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/notificationScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/settingsScreen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        PopupMenuButton<int>(
          icon: const Icon(
            Icons.more_vert_rounded,
            color: primaryColor,
          ),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Row(
                children: [
                  Icon(IconlyBroken.setting, color: primaryColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "إعدادات",
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
            ),
            const PopupMenuItem(
              value: 2,
              child: Row(
                children: [
                  Icon(IconlyBroken.logout, color: primaryColor),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "خروج",
                    style: TextStyle(color: primaryColor),
                  )
                ],
              ),
            ),
          ],
          offset: const Offset(0, 5),
          color: Colors.white,
          elevation: 2,
          onSelected: (value) {
            if (value == 1) {
              navigateTo(context: context, screen: const SettingsScreen());
            } else if (value == 2) {
              Navigator.of(context).pop();
            }
          },
        ),
        InkWell(
          child: Image.asset('assets/images/bell64.webp', width: 25),
          onTap: () {
            navigateTo(context: context, screen: const NotificationScreen());
          },
        ),
        const Spacer(),
        Column(
          children: [
            defaultText(
                text: 'ألاسم كامل', fontSize: 20, textColor: Colors.black),
            defaultText(
                text: 'مرحبا بك',
                fontSize: 15,
                textColor: const Color.fromARGB(255, 55, 55, 55))
          ],
        ),
        const CircleAvatar(
          foregroundColor: Colors.white,
          backgroundColor: secondaryColor,
          maxRadius: 35,
          child: Icon(IconlyBroken.profile),
        ),
      ]),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (currindex) {
            setState(() {
              index = currindex;
              tempMap = {};
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.profile), label: 'بيانتي'),
            BottomNavigationBarItem(
                icon: Icon(IconlyBroken.home), label: 'الرئيسية'),
          ]),
    );
  }
}
