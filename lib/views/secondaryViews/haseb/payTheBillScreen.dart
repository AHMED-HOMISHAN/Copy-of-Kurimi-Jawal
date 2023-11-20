import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class PayTheBillScreen extends StatefulWidget {
  const PayTheBillScreen({super.key});

  @override
  State<PayTheBillScreen> createState() => _PayTheBillScreenState();
}

class _PayTheBillScreenState extends State<PayTheBillScreen> {
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
            defaultText(text: ' دفع قيمة المشتريات ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
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
            defaultForm(
                textController: amountController,
                hintText: 'أدخل المبلغ',
                contentPadding: false,
                border: false,
                prefixIcon: 'amount_icons.webp'),
            const SizedBox(
              height: 20,
            ),
            verticalSpace,
            defaultForm(
              textController: amountController,
              hintText: ' أدخل رقم نقطة حاسب ',
              contentPadding: false,
              border: false,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: defaultText(text: ' أو ')),
            verticalSpace,
            defaultTextButton(
                title: ' QRمسح ال ',
                buttonWidth: double.infinity,
                textColor: Colors.white,
                onPressed: () {},
                fontSize: 15,
                context: context,
                buttonColor: primaryColor),
            verticalSpace,
            defaultText(text: ' ملاحظة /رقم المشترك '),
            verticalSpace,
            defaultForm(
              textController: amountController,
              hintText: '',
            ),
            verticalSpace,
            defaultTextButton(
                title: ' دفع ',
                buttonWidth: double.infinity,
                textColor: Colors.white,
                fontSize: 15,
                onPressed: () {},
                context: context,
                buttonColor: primaryColor),
          ],
        ),
      ),
    );
  }
}
