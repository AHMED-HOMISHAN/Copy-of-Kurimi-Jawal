import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class ActivateHasbeScreen extends StatefulWidget {
  const ActivateHasbeScreen({super.key});

  @override
  State<ActivateHasbeScreen> createState() => _ActivateHasbeScreenState();
}

class _ActivateHasbeScreenState extends State<ActivateHasbeScreen> {
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
        title: defaultText(
            text: ' بيانات مزودي خدمة الدفع الالكتروني ',
            textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 215, 215, 215),
                  borderRadius: BorderRadius.circular(7)),
              child: const Row(
                children: [
                  Spacer(),
                  Icon(
                    IconlyBroken.search,
                    color: primaryColor,
                  ),
                ],
              ),
            ),
            verticalSpace,
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              children: [
                for (int index = 0;
                    index < activateHasbItems.length;
                    index++) ...{
                  defaultCard(
                      index: index,
                      context: context,
                      items: activateHasbItems,
                      onTap: () {})
                }
              ],
            ))
          ],
        ),
      ),
    );
  }
}
