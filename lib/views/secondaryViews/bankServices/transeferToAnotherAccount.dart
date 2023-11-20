import 'package:flutter/material.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class TranseferToAnotherAccount extends StatefulWidget {
  const TranseferToAnotherAccount({super.key});

  @override
  State<TranseferToAnotherAccount> createState() =>
      _TranseferToAnotherAccountState();
}

class _TranseferToAnotherAccountState extends State<TranseferToAnotherAccount> {
  @override
  Widget build(BuildContext context) {
    TextEditingController amountController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
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
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultTextButton(
                  title: 'QRمسح ال',
                  fontSize: 15,
                  buttonColor: primaryColor,
                  textColor: Colors.white,
                  onPressed: () {},
                  context: context,
                  buttonWidth: MediaQuery.sizeOf(context).width * 0.29),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.6,
                child: defaultForm(
                  textController: amountController,
                  hintText: ' إالى رقم الحساب ',
                  contentPadding: false,
                  border: false,
                ),
              ),
            ],
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
