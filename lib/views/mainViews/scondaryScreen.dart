// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/views/secondaryViews/404.dart';

class SecondaryScreen extends StatefulWidget {
  final Map<String, dynamic> items;
  const SecondaryScreen({super.key, required this.items});

  @override
  State<SecondaryScreen> createState() => _SecondaryScreenState();
}

class _SecondaryScreenState extends State<SecondaryScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      childAspectRatio: 19 / 21,
      children: [
        for (int index = 0; index < widget.items.length; index++) ...{
          defaultCard(
              index: index,
              context: context,
              items: widget.items,
              onTap: () {
                navigateTo(
                    context: context,
                    screen: widget.items == kurimiExpressMap
                        ? kurimiExpressScreens[index]
                        : widget.items == bankservicesMap
                            ? bankServicesScreens[index]
                            : widget.items == hasebMap
                                ? hasebScreens[index]
                                : widget.items == vouchersMap
                                    ? voucherScreens[index]
                                    : widget.items == mfloosMap
                                        ? mfloosScreens[index]
                                        : widget.items == moreSettingsMap
                                            ? moreSettingScreens[index]
                                            : const NotFoundScreens());
              }),
        }
      ],
    );
  }
}
