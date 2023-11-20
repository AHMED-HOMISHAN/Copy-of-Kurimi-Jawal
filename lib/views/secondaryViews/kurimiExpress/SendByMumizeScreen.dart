// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class SendByMumizeScreen extends StatefulWidget {
  const SendByMumizeScreen({super.key});

  @override
  State<SendByMumizeScreen> createState() => _SendByMumizeScreenState();
}

class _SendByMumizeScreenState extends State<SendByMumizeScreen> {
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
              hintText: 'أدخل المبلغ',
              contentPadding: false,
              border: false,
              prefixIcon: 'amount_icons.webp'),
          const SizedBox(
            height: 20,
          ),
          defaultForm(
              textController: amountController,
              hintText: 'أدخل رقم المميز',
              contentPadding: false,
              border: false,
              prefixIcon: 'id_icons.webp'),
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
