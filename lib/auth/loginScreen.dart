// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kuraimijawal/auth/forgetPasswordScreen.dart';
import 'package:kuraimijawal/components/components.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/layoutScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Variables
    TextEditingController mumizeController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          'assets/images/change_lang_icon.webp',
        ),
        title: Image.asset(
          'assets/images/logo.webp',
          width: 250,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              padding: EdgeInsets.zero,
              color: primaryColor,
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      'assets/images/ad1.png',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/images/ad2.png',
                      fit: BoxFit.fill,
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 17 / 10,
                    viewportFraction: 1.0,
                  )),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  defaultText(text: 'رقم المميز'),
                  defaultForm(
                    keyboardType: TextInputType.number,
                    textController: mumizeController,
                    hintText: 'أدخل رقم المميز',
                  ),
                  defaultText(text: 'كلمة المرور'),
                  defaultForm(
                    prefixIcon: Icons.visibility_off,
                    textController: passwordController,
                    hintText: 'أدخل كلمة المرور',
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/north.webp', width: 60),
                      const Spacer(),
                      defaultTextButton(
                          title: 'دخول',
                          onPressed: () => navigateToReplacement(
                              context: context, screen: const LayoutScreen()),
                          context: context),
                    ],
                  ),
                  verticalSpace,
                  InkWell(
                    onTap: () {
                      navigateTo(
                          context: context,
                          screen: const ForgetPasswordScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          defaultText(
                              text: 'هل نسيت كلمة المرور ', fontSize: 15),
                          const Icon(
                            Icons.lock_outline_rounded,
                            color: primaryColor,
                            size: 17,
                          )
                        ],
                      ),
                    ),
                  ),
                  verticalSpace,
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Column(children: [
                        const Icon(
                          Icons.keyboard_arrow_up_outlined,
                          color: primaryColor,
                        ),
                        defaultText(text: 'المزيد', fontSize: 15)
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomSheet: Row(
        children: [
          const Spacer(),
          defaultText(text: 'T24 V 71', fontSize: 10),
        ],
      ),
    );
  }
}
