// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class SaveNewCustomerScreen extends StatefulWidget {
  const SaveNewCustomerScreen({super.key});

  @override
  State<SaveNewCustomerScreen> createState() => _SaveNewCustomerScreenState();
}

class _SaveNewCustomerScreenState extends State<SaveNewCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        defaultTextButton(
            title: 'أضافة مستفيد',
            fontSize: 12,
            textColor: Colors.white,
            buttonColor: primaryColor,
            onPressed: () {},
            context: context,
            buttonWidth: 150)
      ],
    );
  }
}
