import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => RreportScreenState();
}

class RreportScreenState extends State<ReportScreen> {
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
        title: defaultText(text: '  عرض كشف الحساب ', textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    defaultText(text: '5***********', textColor: Colors.white),
                    defaultText(
                        text: 'نوع الحساب : جاري',
                        textColor: Colors.white,
                        fontSize: 13),
                    const Divider(
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        const Spacer(),
                        defaultTextButton(
                            title: 'مشاركة',
                            onPressed: () {},
                            context: context,
                            buttonWidth: 100,
                            textColor: Colors.white,
                            buttonColor: primaryColor,
                            fontSize: 15),
                        const Spacer(),
                        defaultTextButton(
                            title: 'تنزيل',
                            textColor: Colors.white,
                            buttonColor: primaryColor,
                            onPressed: () {},
                            fontSize: 15,
                            context: context,
                            buttonWidth: 100),
                        const Spacer(),
                      ],
                    ),
                  ]),
            ),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            width: double.infinity,
                            height: 40,
                            decoration: const BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5))),
                            child: defaultText(
                                text: '2023-11-20 5:02PM',
                                textColor: Colors.white),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: primaryColor,
                                ),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                defaultText(
                                    text: 'YER المبلغ :1999 ', fontSize: 15),
                                defaultText(
                                    text: ' FT233333SLL : رقم المرجع ',
                                    fontSize: 15),
                                defaultText(
                                    align: TextAlign.end,
                                    text:
                                        ' وصف  العملية : مقابل عملية سحب من الصرا ف الالي رقم 110656 عملية 332017246172',
                                    fontSize: 15),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) => verticalSpace,
                    itemCount: 3))
          ],
        ),
      ),
    );
  }
}
