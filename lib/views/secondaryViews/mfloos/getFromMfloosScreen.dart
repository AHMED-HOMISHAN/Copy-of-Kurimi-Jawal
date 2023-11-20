import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class GetFromMfloosScreen extends StatefulWidget {
  const GetFromMfloosScreen({super.key});

  @override
  State<GetFromMfloosScreen> createState() => _GetFromMfloosScreenState();
}

class _GetFromMfloosScreenState extends State<GetFromMfloosScreen> {
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
            text: '  السحب النقدي من وكيل ام فلوس   ', textColor: Colors.white),
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
              hintText: ' أدخل رقم وكيل ام فلوس ',
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
