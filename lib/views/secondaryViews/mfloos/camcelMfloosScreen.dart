import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class CancelMfloosScreen extends StatefulWidget {
  const CancelMfloosScreen({super.key});

  @override
  State<CancelMfloosScreen> createState() => _CancelMfloosScreenState();
}

class _CancelMfloosScreenState extends State<CancelMfloosScreen> {
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
            text: '  إالغاء عملية السحب النقدي ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            verticalSpace,
            defaultForm(
              textController: amountController,
              hintText: ' ادخل رقم عملية السحب النقدي ',
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
      ),
    );
  }
}
