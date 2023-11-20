import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class HasebListScreen extends StatefulWidget {
  const HasebListScreen({super.key});

  @override
  State<HasebListScreen> createState() => _HasebListScreenState();
}

class _HasebListScreenState extends State<HasebListScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: defaultText(text: ' حاسب QR  قائمة ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            defaultText(text: 'الحساب المراد التحويل منه', fontSize: 15),
            verticalSpace,
            multiChois(
                items: [
                  '',
                  'SAR -   ${balanceSAR.values.first} - ${balanceSAR.values.elementAt(1)}',
                  'USA -   ${balanceUSA.values.first} - ${balanceUSA.values.elementAt(1)}',
                  'YER -   ${balanceYER.values.first} - ${balanceYER.values.elementAt(1)}',
                ],
                onChanged: () {
                  setState(() {});
                },
                value: ''),
            verticalSpace,
          ],
        ),
      ),
    );
  }
}
