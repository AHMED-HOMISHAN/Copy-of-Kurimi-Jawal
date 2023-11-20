import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:kuraimijawal/components/constants.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/accountInfoScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/reportScreen.dart';

void navigateToReplacement(
    {required BuildContext context, required Widget screen}) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => screen));
}

void navigateTo({required BuildContext context, required Widget screen}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
}

Widget defaultText({
  required String text,
  double fontSize = 20,
  Color textColor = primaryColor,
  TextAlign align = TextAlign.center,
}) {
  return Text(
    textAlign: align,
    softWrap: true,
    maxLines: 3,
    text,
    style: TextStyle(
        color: textColor, fontSize: fontSize, fontWeight: FontWeight.bold),
  );
}

Widget defaultForm({
  required TextEditingController textController,
  bool isPassword = false,
  required String hintText,
  TextInputType keyboardType = TextInputType.text,
  double borderRadiusValue = 30,
  dynamic prefixIcon,
  double prefixIconSize = 15,
  dynamic suffixIcon,
  double suffixIconSize = 15,
  TextAlign hintAlign = TextAlign.right,
  bool border = true,
  String? label,
  bool contentPadding = true,
}) {
  return TextFormField(
    scrollPadding: EdgeInsets.zero,
    textAlign: hintAlign,
    controller: textController,
    obscureText: isPassword,
    keyboardType: keyboardType,
    decoration: InputDecoration(
        contentPadding:
            contentPadding ? const EdgeInsets.symmetric(horizontal: 10) : null,
        prefixIcon: prefixIcon != null
            ? prefixIcon.runtimeType.toString() == 'String'
                ? Image.asset('assets/images/$prefixIcon')
                : Icon(
                    prefixIcon,
                    size: prefixIconSize,
                  )
            : null,
        suffixIcon: suffixIcon != null
            ? suffixIcon.runtimeType.toString() == 'String'
                ? Image.asset('assets/images/$suffixIcon')
                : Icon(
                    suffixIcon,
                    size: suffixIconSize,
                  )
            : null,
        alignLabelWithHint: true,
        label: label != null ? defaultText(text: label) : null,
        prefixIconColor: primaryColor,
        hintText: hintText,
        border: border
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadiusValue))
            : null),
  );
}

Widget defaultTextButton(
    {required String title,
    required Function() onPressed,
    required BuildContext context,
    Color buttonColor = Colors.amber,
    double fontSize = 20,
    double radiusValue = 30,
    Color textColor = primaryColor,
    double? buttonWidth}) {
  return TextButton(
      onPressed: onPressed,
      child: Container(
        width: buttonWidth ?? MediaQuery.sizeOf(context).width * 0.6,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(radiusValue)),
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontWeight: FontWeight.bold),
        ),
      ));
}

Widget balanceCard({
  required BuildContext context,
  required String accountNumber,
  required String accountType,
  required String balanceType,
  required String balanceAmount,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 10),
    width: MediaQuery.sizeOf(context).width * 0.85,
    decoration: BoxDecoration(
        color: primaryColor, borderRadius: BorderRadius.circular(10)),
    child: Column(
      children: [
        Image.asset(
          'assets/images/logo.webp',
          height: 30,
          width: MediaQuery.sizeOf(context).width * 0.5,
          color: Colors.white,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/share_account.png',
              width: 20,
              color: Colors.white,
            ),
            const SizedBox(
              width: 13,
            ),
            defaultText(
                text: accountNumber, textColor: Colors.white, fontSize: 15),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        defaultText(text: accountType, fontSize: 15, textColor: Colors.white),
        const SizedBox(
          height: 5,
        ),
        defaultText(
            text: 'الرصيد المتاح', fontSize: 15, textColor: Colors.white),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyBroken.hide,
                  color: Colors.white,
                )),
            defaultText(text: balanceAmount, textColor: Colors.white),
            const SizedBox(
              width: 5,
            ),
            defaultText(
              text: balanceType,
              textColor: Colors.white,
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.account_balance_outlined,
              color: Color.fromARGB(255, 189, 189, 189),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: Container(
            color: thirdColor,
            width: double.infinity,
            padding: EdgeInsets.zero,
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      navigateTo(
                          context: context, screen: const ReportScreen());
                    },
                    child: const Text(
                      'عرض البيان',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                const Spacer(),
                IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 45,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.qr_code_2_outlined,
                      color: Colors.white,
                    )),
                const Spacer(),
                TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      navigateTo(
                          context: context, screen: const AccountInfoScreen());
                    },
                    child: const Text(
                      ' خدمات ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
                const Spacer(),
              ],
            ),
          ),
        )
      ],
    ),
  );
}

Widget serviceCard({
  required Function() onTap,
  required int id,
  required BuildContext context,
  required String name,
  required dynamic icon,
  Color containerColor = Colors.red,
  Color textColor = Colors.white,
}) {
  return InkWell(
    onTap: onTap,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon.runtimeType.toString() == 'IconData' ||
                icon.runtimeType.toString() == 'IconlyBrokenData'
            ? Icon(
                icon,
                size: 30,
                color: primaryColor,
              )
            : Image.asset(
                'assets/images/$icon',
                width: 70,
                height: 50,
                color: icon == 'ic_replace_card.png' ? primaryColor : null,
              ),
        Container(
          width: 110,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(7),
          ),
          child: defaultText(text: name, fontSize: 14, textColor: textColor),
        )
      ],
    ),
  );
}

Widget multiChois({
  String? value,
  required Function() onChanged,
  required List<String> items,
  String? image,
}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color.fromARGB(255, 99, 98, 98),
              blurRadius: 3.0,
              spreadRadius: 0.1),
        ],
        borderRadius: BorderRadius.circular(50)),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: DropdownButton<String>(
          value: selected,

          onChanged: (currvalue) {
            value = currvalue;
            selected = currvalue.toString();
            onChanged();
          },
          hint: Center(
              child: Text(
            selected.toString(),
            style: const TextStyle(color: primaryColor),
          )),
          // Hide the default underline
          underline: Container(),
          // set the color of the dropdown menu
          dropdownColor: Colors.white,
          icon: image != null
              ? Image.asset('assets/images/$image')
              : const Icon(
                  Icons.arrow_downward,
                  color: primaryColor,
                ),

          isExpanded: true,

          // The list of options
          items: items
              .map((value) => DropdownMenuItem(
                    value: value,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Center(
                        child: Text(
                          value,
                          style: const TextStyle(
                              fontSize: 18, color: primaryColor),
                        ),
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    ),
  );
}

Widget defaultCard({
  required BuildContext context,
  required Map<String, dynamic> items,
  required Function() onTap,
  required int index,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(208, 0, 0, 0),
            width: .1,
          ),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(157, 76, 75, 75),
              blurRadius: 2.0,
              spreadRadius: 1.0,
            )
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/${items.values.elementAt(index)}',
            width: 50,
          ),
          defaultText(text: items.keys.elementAt(index), fontSize: 15)
        ],
      ),
    ),
  );
}
