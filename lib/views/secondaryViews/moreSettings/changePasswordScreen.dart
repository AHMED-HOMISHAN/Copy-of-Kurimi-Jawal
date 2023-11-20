import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController passwordController = TextEditingController();
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
            defaultText(text: '  تغيير كلمة المرور ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            defaultForm(
                textController: passwordController,
                hintText: 'أدخل كلمة المرور القديمة',
                border: false,
                contentPadding: false,
                prefixIcon: IconlyBroken.hide),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            defaultForm(
                textController: passwordController,
                hintText: 'أدخل كلمة المرور جديدة',
                border: false,
                contentPadding: false,
                prefixIcon: IconlyBroken.hide),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            defaultForm(
                textController: passwordController,
                hintText: 'أدخل  تأكيد كلمة المرور ',
                border: false,
                contentPadding: false,
                prefixIcon: IconlyBroken.hide),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            defaultTextButton(
                title: 'موافق',
                onPressed: () {},
                context: context,
                textColor: Colors.white,
                buttonColor: primaryColor,
                buttonWidth: double.infinity)
          ],
        ),
      ),
    );
  }
}
