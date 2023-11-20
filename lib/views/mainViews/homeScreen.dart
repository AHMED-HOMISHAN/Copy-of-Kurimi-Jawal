// ignore_for_file: file_names

import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/views/mainViews/scondaryScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Timer.periodic(const Duration(milliseconds: 5), (timer) {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Column(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.35,
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * 0.1,
                color: secondaryColor,
              ),
              CarouselSlider(
                items: [
                  balanceCard(
                      accountNumber: balanceYER.values.first,
                      accountType: balanceYER.values.elementAt(1),
                      balanceAmount: balanceYER.values.elementAt(2),
                      balanceType: balanceYER.values.elementAt(3),
                      context: context),
                  balanceCard(
                      accountNumber: balanceSAR.values.first,
                      accountType: balanceSAR.values.elementAt(1),
                      balanceAmount: balanceSAR.values.elementAt(2),
                      balanceType: balanceSAR.values.elementAt(3),
                      context: context),
                  balanceCard(
                      accountNumber: balanceUSA.values.first,
                      accountType: balanceUSA.values.elementAt(1),
                      balanceAmount: balanceUSA.values.elementAt(2),
                      balanceType: balanceUSA.values.elementAt(3),
                      context: context),
                ],
                options: CarouselOptions(
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  height: MediaQuery.sizeOf(context).height * 0.29,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: defaultForm(
              textController: searchController,
              hintText: '... خذني الى ',
              hintAlign: TextAlign.center,
              suffixIcon: IconlyBroken.search,
              suffixIconSize: 25,
              borderRadiusValue: 13),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: tempMap.isEmpty
                  ? GridView.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      children: [
                        for (int index = 0;
                            index < serviceItems.length;
                            index++) ...{
                          serviceCard(
                              onTap: () {
                                setState(() {
                                  tempMap = index == 0
                                      ? hasebMap
                                      : index == 1
                                          ? bankservicesMap
                                          : index == 2
                                              ? kurimiExpressMap
                                              : index == 3
                                                  ? vouchersMap
                                                  : index == 4
                                                      ? partitionMap
                                                      : index == 5
                                                          ? mfloosMap
                                                          : index == 6
                                                              ? prepaidMap
                                                              : index == 7
                                                                  ? moreSettingsMap
                                                                  : {};
                                });
                              },
                              id: index,
                              context: context,
                              name: serviceItems.keys.elementAt(index),
                              textColor: (index % 2 == 0 || index == 2)
                                  ? Colors.white
                                  : thirdColor,
                              icon: serviceItems.values.elementAt(index),
                              containerColor: index == 2
                                  ? Colors.redAccent
                                  : (index % 2 == 0 && index != 2)
                                      ? thirdColor
                                      : fourthColor)
                        }
                      ],
                    )
                  : SecondaryScreen(items: tempMap)),
        )
      ],
    );
  }
}
