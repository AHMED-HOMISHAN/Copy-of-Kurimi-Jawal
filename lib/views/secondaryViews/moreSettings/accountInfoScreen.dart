import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class AccountInfoScreen extends StatefulWidget {
  const AccountInfoScreen({super.key});

  @override
  State<AccountInfoScreen> createState() => _AccountInfoScreenState();
}

class _AccountInfoScreenState extends State<AccountInfoScreen> {
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
        title: defaultText(text: ' تفاصيل الحساب ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 270,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(163, 0, 0, 0),
                  blurRadius: 20,
                  spreadRadius: 2.0,
                )
              ]),
          child: Column(children: [
            Row(
              children: [
                const Spacer(),
                defaultText(
                    text: ' ريال يمني ', fontSize: 20, textColor: Colors.black),
                const Spacer(),
                defaultText(text: ' عملة الحساب  ', fontSize: 14),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Spacer(),
                defaultText(
                    text: ' 4************ ',
                    fontSize: 20,
                    textColor: Colors.black),
                const Spacer(),
                defaultText(text: '  رقم الحساب  ', fontSize: 14),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Spacer(),
                defaultText(
                    text: ' Sana\'a Zone ',
                    fontSize: 20,
                    textColor: Colors.black),
                const Spacer(),
                defaultText(text: '   المنطقة  ', fontSize: 14),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Spacer(),
                defaultText(
                    text: ' فرع حدة ', fontSize: 20, textColor: Colors.black),
                const Spacer(),
                defaultText(text: '   رمز الفرع  ', fontSize: 14),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Spacer(),
                defaultText(text: '   ', fontSize: 20, textColor: Colors.black),
                const Spacer(),
                defaultText(text: '    الحساب الاساسي  ', fontSize: 14),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
