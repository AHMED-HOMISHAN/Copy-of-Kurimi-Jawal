import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class VouchersListScreen extends StatefulWidget {
  const VouchersListScreen({super.key});

  @override
  State<VouchersListScreen> createState() => _VouchersListScreenState();
}

class _VouchersListScreenState extends State<VouchersListScreen> {
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
          title: defaultText(text: ' قائمة القسائم ', textColor: Colors.white),
        ),
        body: Container(
          padding: const EdgeInsets.all(10.0),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 99, 98, 98),
                    blurRadius: 3.0,
                    spreadRadius: 0.1),
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      defaultText(text: ' : إلى تاريخ '),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200]),
                        child: Row(children: [
                          Image.asset(
                            'assets/images/list_of_partitons.webp',
                            width: 30,
                          )
                        ]),
                      ),
                      verticalSpace,
                      defaultText(text: ' دفعت القسيمة بواسطتي  ', fontSize: 15)
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      defaultText(text: ' : من تاريخ '),
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[200]),
                        child: Row(children: [
                          Image.asset(
                            'assets/images/list_of_partitons.webp',
                            width: 30,
                          )
                        ]),
                      ),
                      verticalSpace,
                      defaultText(text: ' منشأ بواسطتي ', fontSize: 15)
                    ],
                  ),
                ],
              ),
              defaultTextButton(
                  title: ' بحث ',
                  buttonWidth: 100,
                  textColor: Colors.white,
                  onPressed: () {},
                  context: context,
                  fontSize: 15,
                  buttonColor: primaryColor)
            ],
          ),
        ));
  }
}
