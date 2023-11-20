import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class TranseferBetweenAccountsScreen extends StatefulWidget {
  const TranseferBetweenAccountsScreen({super.key});

  @override
  State<TranseferBetweenAccountsScreen> createState() =>
      _TranseferBetweenAccountsScreenState();
}

class _TranseferBetweenAccountsScreenState
    extends State<TranseferBetweenAccountsScreen> {
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
            defaultText(text: 'التحويل بين الحسابات', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace,
            defaultText(text: ' من رقم الحساب ', fontSize: 15),
            verticalSpace,
            multiChois(
                items: [
                  '',
                  ' من رقم الحساب ',
                ],
                onChanged: () {
                  setState(() {});
                },
                value: ''),
            const SizedBox(
              height: 20,
            ),
            verticalSpace,
            defaultText(text: ' الى رقم الحساب ', fontSize: 15),
            verticalSpace,
            multiChois(
                items: [
                  '',
                  ' الى رقم الحساب ',
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
      ),
    );
  }
}
