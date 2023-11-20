import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';

class SocialMediaScreen extends StatefulWidget {
  const SocialMediaScreen({super.key});

  @override
  State<SocialMediaScreen> createState() => _SocialMediaScreenState();
}

class _SocialMediaScreenState extends State<SocialMediaScreen> {
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
        title: defaultText(
            text: '  صفحتنا على شبكات التواصل الاجتماعي  ',
            textColor: Colors.white),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            defaultText(text: ' صفحتنا على شبكات التواصل الاجتماعي '),
            verticalSpace,
            verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/facebook.webp',
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/twitter.webp',
                  ),
                ),
                Spacer(),
              ],
            ),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            verticalSpace,
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/telegram.webp',
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 35,
                  backgroundImage: AssetImage(
                    'assets/images/youtube.webp',
                  ),
                ),
                Spacer(),
              ],
            ),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            defaultTextButton(
                textColor: Colors.white,
                buttonColor: primaryColor,
                fontSize: 15,
                buttonWidth: 150,
                title: 'قدم ملاحظتك أو مقترحك',
                onPressed: () {},
                context: context),
            verticalSpace,
            verticalSpace,
            defaultText(
                text: ' دعوة صديق للاشتراك بالتطبيق ', textColor: Colors.black),
            verticalSpace,
            verticalSpace,
            verticalSpace,
            const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              backgroundImage: AssetImage(
                'assets/images/refer.webp',
              ),
            ),
            verticalSpace,
          ],
        ),
      ),
    );
  }
}
