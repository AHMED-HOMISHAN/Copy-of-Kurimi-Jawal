import 'package:flutter/material.dart';
import 'package:kuraimijawal/views/mainViews/homeScreen.dart';
import 'package:kuraimijawal/views/mainViews/profileScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/404.dart';
import 'package:kuraimijawal/views/secondaryViews/bankServices/transeferBettweenAccountsScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/bankServices/transeferToAnotherAccount.dart';
import 'package:kuraimijawal/views/secondaryViews/haseb/activateHasbeScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/haseb/hasebListScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/haseb/hasebRecoveryScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/haseb/payTheBillScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/haseb/paymentServicesScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/SendByMumizeScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/SendByNameScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/cancelTranseferScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/kurimiExpressLayout.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/payMoneyIntoAccount.dart';
import 'package:kuraimijawal/views/secondaryViews/kurimiExpress/transferSatutsScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/mfloos/camcelMfloosScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/mfloos/getFromMfloosScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/mfloos/transferingIntoMfloosScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/changePasswordScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/reminderScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/settingsScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/moreSettings/socialMediaScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/vouchers/createVouchersScreen.dart';
import 'package:kuraimijawal/views/secondaryViews/vouchers/vouchersListScreen.dart';

const Color primaryColor = Color.fromARGB(255, 111, 98, 154);
const Color secondaryColor = Color.fromARGB(255, 235, 167, 99);
const Color thirdColor = Color.fromARGB(255, 89, 73, 141);
const Color fourthColor = Color.fromARGB(129, 111, 98, 154);

const Widget verticalSpace = SizedBox(
  height: 10,
);

const Widget horizantelSpacing = SizedBox(
  width: 30,
);

int index = 1;

List screens = const [
  ProfileScreen(),
  HomeScreen(),
];

const Map<String, dynamic> hasebMap = {
  'دفع قيمة المشتريات': 'haseb_logo2.png',
  'خدمة التسديد': 'bill_payment.webp',
  'تفعيل التسوق الإلكتروني': 'epayment_logo.png',
  'استرجاع حاسب': 'hasib_retern.png',
  'قائمة QR  حاسب': 'hasib_qr_list.png',
};

const Map<String, dynamic> bankservicesMap = {
  ' التحويل الى الحساب عميل في بنك الكريمي ': 'transfer_customer.webp',
  ' التحويل بين الحسابات ': 'transfer_accounts.webp',
};

const Map<String, dynamic> kurimiExpressMap = {
  ' دفع حوالة الى الحساب ': 'receive_remittance.webp',
  ' الإرسال الى اسم': 'transfer_to_name.webp',
  ' الارسال الى رقم المميز ': 'transfer_to_momiaz.webp',
  ' حالة الحوالة ': 'remittance_status.webp',
  ' إالغاء الحوالة ': 'cancel_remittance.webp',
};

const Map<String, dynamic> vouchersMap = {
  ' قائمة القسائم ': 'vouchers_list.png',
  // ' ': '',
  ' إنشاء قسيمة ': 'create_voucher.png',
};

const Map<String, dynamic> partitionMap = {
  ' قائمة الاقساط ': 'pay_partition.webp',
  '  سداد الاقساط ': 'list_of_partitons.webp',
};

const Map<String, dynamic> mfloosMap = {
  '  إالغاء عملية السحب النقدي ': 'cancel_mfloos.webp',
  ' السحب النقدي من وكيل ام فلوس ': 'cash_withdraw.webp',
  ' التحويل الى حساب ام فلوس ': 'desosit_mfloos_account.webp',
  ' الغاء حوالة ام فلوس ': 'cancel_mfloos.webp',
  ' ارسال حوالات ام فلوس ': 'transfer_mfloo_remittance.webp',
};

const Map<String, dynamic> prepaidMap = {
  '  بطاقة ايدي': 'mastercard_prepaid.png',
};

const Map<String, dynamic> moreSettingsMap = {
  ' موقعنا على الانترنت ': 'web_icon.webp',
  ' تغيير كلمة السر ': 'change_password_settings.webp',
  ' الموقع ': 'location_settings.webp',
  ' إضافة تنبية ': 'reminder.webp',
  ' الإعدادات ': 'g_settings.webp',
  ' صفحتنا على شبكات التواصل الاجتماعي ': 'social_media_settings.webp',
};

Map<String, dynamic> tempMap = {};

const Map<String, dynamic> serviceItems = {
  'خدمات الدفع والسداد (حاسب)': 'epayment_logo.png',
  ' الخدمات البنكية ': Icons.account_balance_outlined,
  'كريمي أكسبرس': 'KurimiExpress.png',
  ' خدمات القسيمة ': 'qr_menu.png',
  ' خدمة التمويل  ': 'finance_logo.webp',
  ' خدمات ام فلوس  ': 'qr_icon.png',
  ' خدمة البطائق ': 'ic_replace_card.png',
  'خدمات أخرى  ': 'g_settings.webp',
};

const Map<String, dynamic> activateHasbItems = {
  ' توصيل ': 'twsile.webp',
  ' تساهيل': 'tsahil.webp',
  ' بازاري ': 'bazary.webp',
  ' موكا ': 'moka.webp',
  ' تسوق بادلني ': 'badleny.webp',
  ' إيمحلات ': 'emahlat.webp',
  ' مياة حدة ': 'hada.webp',
  ' العزب ': 'alazab.webp',
  ' مياة شملان ': 'shamlan.webp',
  ' كليك': 'klik.webp',
  ' جفتاك': 'yourgift.webp',
  ' رحال تاكسي': 'rahal.webp',
  '  سوق الجملة اليمني ': 'yemenishop.webp',
  '  يمن جفت كاردز ': 'gift.png',
  ' اعلانات الصحفية ': 'ads.jpg',
};

const Map<String, dynamic> paymentServicesItems = {
  'يمن موبايل': 'y_mobile.webp',
  ' يو ': 'mtn_yemen.webp',
  ' واي ': 'y_gms_payment.webp',
  ' سبافون ': 'sabafon_icon.webp',
  ' الكهرباء ': 'electricy_icon.webp',
  ' الماء ': 'water_icon.webp',
  ' الهاتف الثابت ': 'y_land_line.webp',
  ' ADSL الانترنت ': 'yemen_payment_logo.webp',
  ' باقات نت يمن موبايل ': 'yemen_moblie_internet.webp',
  ' باقات يو ': 'mtn_pacakge.webp',
  ' عدن نت ': 'aden_bill.png',
  ' يمن فورجي ': 'yemen_4g.png',
};

const List hasebScreens = [
  PayTheBillScreen(),
  PaymentServicesScreen(),
  ActivateHasbeScreen(),
  HasebRecoveryScreen(),
  HasebListScreen(),
];

const List bankServicesScreens = [
  KurimiExpressLayoutScreen(
    firstTabName: ' التحويل إلى حساب عميل في بنك الكريمي ',
    secondTabName: 'تحويل إالى مستفيد',
    screen: TranseferToAnotherAccount(),
  ),
  TranseferBetweenAccountsScreen(),
];

const List kurimiExpressScreens = [
  PayMoneyIntoAccount(),
  KurimiExpressLayoutScreen(
    firstTabName: 'إرسال الى اسم',
    secondTabName: 'تحويل إلى مستفيد',
    screen: SendByNameScreen(),
  ),
  KurimiExpressLayoutScreen(
    firstTabName: 'إرسال الى مميز',
    secondTabName: 'تحويل إلى مستفيد',
    screen: SendByMumizeScreen(),
  ),
  TransferSatutsScreen(),
  CancelTranseferScreen(),
];

const List voucherScreens = [
  VouchersListScreen(),
  CreateVouchersScreen(),
];

const List mfloosScreens = [
  CancelMfloosScreen(),
  GetFromMfloosScreen(),
  TransferingIntoMfloosScreen(),
  NotFoundScreens(),
  NotFoundScreens()
];

const List moreSettingScreens = [
  NotFoundScreens(),
  ChangePasswordScreen(),
  NotFoundScreens(),
  ReminderScreen(),
  SettingsScreen(),
  SocialMediaScreen(),
];

String selected = '';

Map<dynamic, dynamic> balanceUSA = {
  'accountNumber': '6************',
  'accountType': 'جاري',
  'balanceAmount': '*****',
  'balanceType': 'USA',
};

Map<dynamic, dynamic> balanceSAR = {
  'accountNumber': '7************',
  'accountType': 'توفير',
  'balanceAmount': '*****',
  'balanceType': 'SAR',
};

Map<dynamic, dynamic> balanceYER = {
  'accountNumber': '3************',
  'accountType': 'جاري',
  'balanceAmount': '*****',
  'balanceType': 'YER',
};
