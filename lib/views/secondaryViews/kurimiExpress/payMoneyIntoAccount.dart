// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class PayMoneyIntoAccount extends StatefulWidget {
  const PayMoneyIntoAccount({super.key});

  @override
  State<PayMoneyIntoAccount> createState() => _PayMoneyIntoAccountState();
}

class _PayMoneyIntoAccountState extends State<PayMoneyIntoAccount> {
  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
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
        title:
            defaultText(text: 'دفع الحوالة إلى حساب', textColor: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          verticalSpace,
          defaultText(text: ' الحساب المراد الايداع إليه ', fontSize: 15),
          verticalSpace,
          multiChois(
              items: [
                '',
                'الحساب المراد الايداع اليه',
              ],
              onChanged: () {
                setState(() {});
              },
              value: ''),
          verticalSpace,
          const SizedBox(
            height: 20,
          ),
          defaultForm(
              textController: amountController,
              hintText: 'أدخل المبلغ',
              contentPadding: false,
              border: false,
              prefixIcon: 'amount_icons.webp'),
          verticalSpace,
          defaultForm(
            textController: amountController,
            hintText: ' أسم المستفيد ',
            contentPadding: false,
            border: false,
          ),
          const SizedBox(
            height: 20,
          ),
          verticalSpace,
          defaultForm(
            textController: amountController,
            hintText: ' أسم المستفيد ',
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
