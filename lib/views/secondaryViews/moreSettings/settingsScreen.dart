import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
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
        title: defaultText(text: ' الإعدادت ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            defaultText(text: ' البيومترية (تمكين / تعطيل) ', fontSize: 16),
            const Divider(),
            verticalSpace,
            defaultText(text: ' اللغة '),
            verticalSpace,
            multiChois(
              items: ['', 'عربي', 'English'],
              onChanged: () {},
            ),
            const Divider(),
            defaultText(text: ' الحسابات الافتراضي ', fontSize: 16),
            verticalSpace,
            multiChois(
              items: ['', 'الحسابات الافتراضي '],
              onChanged: () {},
            ),
            const Divider(),
            defaultText(text: ' أختر مدة الجلسة ', fontSize: 16),
            verticalSpace,
            multiChois(
              items: ['', '2 ثواني ', '5 دقائق'],
              onChanged: () {},
            ),
            const Divider(),
            defaultText(text: ' إنشاء رمز التعريف الشخصي ', fontSize: 16),
            multiChois(
              items: [
                '',
                'إنشاء رمز التعريف الشخصي ',
              ],
              onChanged: () {},
            ),
            const Divider(),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            defaultTextButton(
                title: 'موافق',
                onPressed: () {},
                context: context,
                textColor: Colors.white,
                buttonWidth: double.infinity,
                fontSize: 20,
                radiusValue: 9,
                buttonColor: primaryColor)
          ],
        ),
      ),
    );
  }
}
