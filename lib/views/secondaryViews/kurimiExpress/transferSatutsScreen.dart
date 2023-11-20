import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class TransferSatutsScreen extends StatefulWidget {
  const TransferSatutsScreen({super.key});

  @override
  State<TransferSatutsScreen> createState() => _TransferSatutsScreenState();
}

class _TransferSatutsScreenState extends State<TransferSatutsScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController transferNumberController = TextEditingController();
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
        title: defaultText(text: 'حالة الحوالة', textColor: Colors.white),
      ),
      body: Column(
        children: [
          verticalSpace,
          defaultForm(
            textController: transferNumberController,
            hintText: ' إدخل رقم كريمي اكسبرس ',
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
