import 'package:flutter/material.dart';

import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class SendByNameScreen extends StatefulWidget {
  const SendByNameScreen({super.key});

  @override
  State<SendByNameScreen> createState() => _SendByNameScreenState();
}

class _SendByNameScreenState extends State<SendByNameScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
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
          defaultText(text: 'أختر المنطقة', fontSize: 15),
          verticalSpace,
          multiChois(
              image: 'yemen_map_icon.webp',
              items: ['', 'صنعاء', 'تعز', 'عدن'],
              onChanged: () {
                setState(() {});
              },
              value: ''),
          verticalSpace,
          verticalSpace,
          defaultText(text: 'أختر الفرع', fontSize: 15),
          verticalSpace,
          multiChois(
              image: 'select_branch.webp',
              items: ['', 'الحصبة', 'الجا معة', ' حدة '],
              onChanged: () {
                setState(() {});
              },
              value: ''),
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
              hintText: ' رقم موبايل المستفيد',
              contentPadding: false,
              border: false,
              prefixIcon: 'id_icons.webp'),
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
    );
  }
}
