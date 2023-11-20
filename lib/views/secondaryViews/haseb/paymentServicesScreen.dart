import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class PaymentServicesScreen extends StatefulWidget {
  const PaymentServicesScreen({super.key});

  @override
  State<PaymentServicesScreen> createState() => _PaymentServicesState();
}

class _PaymentServicesState extends State<PaymentServicesScreen> {
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
        title: defaultText(text: ' خدمة التسديد ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            verticalSpace,
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              children: [
                for (int index = 0;
                    index < paymentServicesItems.length;
                    index++) ...{
                  defaultCard(
                      index: index,
                      context: context,
                      items: paymentServicesItems,
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
