import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
        title: defaultText(text: '  إخطارات ', textColor: Colors.white),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: primaryColor),
                  boxShadow: const [
                    BoxShadow(
                        blurRadius: 18,
                        spreadRadius: .4,
                        color: Color.fromARGB(126, 0, 0, 0))
                  ]),
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconlyBroken.delete,
                        color: Colors.redAccent,
                      )),
                  const Spacer(),
                  defaultText(
                      text: 'YER تم سداد 4000 جوال  7******* رصيدك هو  600000',
                      fontSize: 13)
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => verticalSpace,
          itemCount: 2),
    );
  }
}
