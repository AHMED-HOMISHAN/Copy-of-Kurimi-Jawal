// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class CancelTranseferScreen extends StatefulWidget {
  const CancelTranseferScreen({super.key});

  @override
  State<CancelTranseferScreen> createState() => _CancelTranseferScreenState();
}

class _CancelTranseferScreenState extends State<CancelTranseferScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController transferNumberController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            maxRadius: 10,
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(IconlyBroken.arrowLeft)),
          ),
        ),
        backgroundColor: primaryColor,
        title: defaultText(text: 'إلغاء الحوالة', textColor: Colors.white),
      ),
      body: Column(
        children: [
          verticalSpace,
          defaultForm(
            textController: transferNumberController,
            hintText: ' إدخل رقم كريمي اكسبرس ',
            contentPadding: false,
            border: false,
          ),
          const SizedBox(
            height: 20,
          ),
          defaultTextButton(
              title: 'موافق',
              buttonWidth: double.infinity,
              textColor: Colors.white,
              onPressed: () {},
              context: context,
              buttonColor: primaryColor)
        ],
      ),
    );
  }
}
