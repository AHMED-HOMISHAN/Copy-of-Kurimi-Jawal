import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class TransferingIntoMfloosScreen extends StatefulWidget {
  const TransferingIntoMfloosScreen({super.key});

  @override
  State<TransferingIntoMfloosScreen> createState() =>
      _TransferingIntoMfloosScreenState();
}

class _TransferingIntoMfloosScreenState
    extends State<TransferingIntoMfloosScreen> {
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
        title: defaultText(
            text: 'التحويل  الى حساب ام فلوس', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            verticalSpace,
            defaultText(text: ' الحساب المراد التحويل منه ', fontSize: 15),
            verticalSpace,
            multiChois(
                items: [
                  '',
                  'الحساب المراد التحويل منه',
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
              hintText: ' رقم حساب المحفظة /رقم الوكيل ',
              contentPadding: false,
              border: false,
            ),
            verticalSpace,
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
