import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class CreateVouchersScreen extends StatefulWidget {
  const CreateVouchersScreen({super.key});

  @override
  State<CreateVouchersScreen> createState() => _CreateVouchersScreenState();
}

class _CreateVouchersScreenState extends State<CreateVouchersScreen> {
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
        title: defaultText(text: '  إنشاء قسيمة ', textColor: Colors.white),
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
                  'SAR -   ${balanceSAR.values.first} - ${balanceSAR.values.elementAt(1)}',
                  'USA -   ${balanceUSA.values.first} - ${balanceUSA.values.elementAt(1)}',
                  'YER -   ${balanceYER.values.first} - ${balanceYER.values.elementAt(1)}',
                ],
                onChanged: () {
                  setState(() {});
                },
                value: ''),
            const SizedBox(
              height: 20,
            ),
            verticalSpace,
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
            defaultTextButton(
                title: ' انشاء قسيمة ',
                buttonWidth: double.infinity,
                textColor: Colors.white,
                onPressed: () {},
                fontSize: 17,
                context: context,
                buttonColor: primaryColor)
          ],
        ),
      ),
    );
  }
}
