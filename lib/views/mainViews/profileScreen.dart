// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 99, 98, 98),
                      blurRadius: 6.0,
                      spreadRadius: 1.0),
                ],
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                defaultText(text: 'أسم كامل', textColor: Colors.black),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  foregroundColor: Colors.white,
                  backgroundColor: secondaryColor,
                  maxRadius: 25,
                  child: Icon(IconlyBroken.profile),
                ),
              ],
            ),
          ),
          verticalSpace,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 99, 98, 98),
                      blurRadius: 6.0,
                      spreadRadius: 1.0),
                ],
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    defaultText(
                        text: ' 02/01/2001 ',
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17),
                    const Spacer(),
                    defaultText(
                        text: 'تاريخ الميلاد',
                        textColor: const Color.fromARGB(255, 62, 62, 62),
                        fontSize: 15),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    defaultText(
                        text: ' تعز - ماوية',
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17),
                    const Spacer(),
                    defaultText(
                        text: 'مكان الميلاد',
                        textColor: const Color.fromARGB(255, 62, 62, 62),
                        fontSize: 15),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    defaultText(
                        text: '  Yemen ',
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17),
                    const Spacer(),
                    defaultText(
                        text: ' الجنسية  ',
                        textColor: const Color.fromARGB(255, 62, 62, 62),
                        fontSize: 15),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    defaultText(
                        text: '  7******** ',
                        textColor: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 17),
                    const Spacer(),
                    defaultText(
                        text: ' رقم الجوال  ',
                        textColor: const Color.fromARGB(255, 62, 62, 62),
                        fontSize: 15),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
