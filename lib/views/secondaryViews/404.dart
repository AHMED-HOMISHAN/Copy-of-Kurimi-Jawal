import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class NotFoundScreens extends StatefulWidget {
  const NotFoundScreens({super.key});

  @override
  State<NotFoundScreens> createState() => _NotFoundScreensState();
}

class _NotFoundScreensState extends State<NotFoundScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              IconlyBroken.infoCircle,
              color: primaryColor,
              size: 80,
            ),
            defaultText(text: 'Check Your Network', fontSize: 50),
          ],
        ),
      ),
    );
  }
}
