// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/saveNewCustomerScreen.dart';

class KurimiExpressLayoutScreen extends StatefulWidget {
  final String firstTabName;
  final String secondTabName;
  final Widget screen;
  const KurimiExpressLayoutScreen(
      {super.key,
      required this.firstTabName,
      required this.secondTabName,
      required this.screen});

  @override
  State<KurimiExpressLayoutScreen> createState() =>
      _KurimiExpressLayoutScreenState();
}

class _KurimiExpressLayoutScreenState extends State<KurimiExpressLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
              defaultText(text: widget.firstTabName, textColor: Colors.white),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 40),
            child: Material(
              color: primaryColor,
              child: TabBar(
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 1.8,
                indicatorColor: secondaryColor,
                labelStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                unselectedLabelStyle: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
                isScrollable: false,
                tabs: [
                  Tab(
                    child: Text(
                      widget.firstTabName,
                    ),
                  ),
                  Tab(
                    child: Text(
                      widget.secondTabName,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [widget.screen, const SaveNewCustomerScreen()],
        ),
      ),
    );
  }
}
