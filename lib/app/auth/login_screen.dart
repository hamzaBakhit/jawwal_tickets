import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/assets_manager.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';
import 'package:jawwal_tickets/presintation/resources/values_manager.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/default_button.dart';
import '../../widgets/helpers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _mobileTextController;

  @override
  void initState() {
    super.initState();
    _mobileTextController = TextEditingController();
  }

  @override
  void dispose() {
    _mobileTextController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: AppSize.s462.h,
                child: Image.asset(
                  ImageAssets.splashLogo,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppSize.s24, right: AppSize.s16),
                child: Align(
                  alignment: Alignment.centerRight,
                  child:  Text(
                    'رقم الهاتف',
                    style: GoogleFonts.cairo(
                      fontSize: AppSize.s16.sp,
                      fontWeight: FontWeight.bold,
                      color: ColorManager.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: AppSize.s16, vertical: AppSize.s8),
                child: AppTextField(
                  hint: "ادخل رقم الجوال",
                  prefixIcon: Icons.phone_android_outlined,
                  keyboardType: TextInputType.phone,
                  controller: _mobileTextController,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppSize.s8),
                    child: DefaultButton(
                      text: "تسجيل دخول",
                      press: () => _performLogin(),
                    ),
                  ),
                  // SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/create_screen');
                            },
                            child: Text('تسجيل جديد ')),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _performLogin() async {
    if (_checkData()) {
      await _login();
    }
  }

  bool _checkData() {
    if (_mobileTextController.text.isNotEmpty) {
      return true;
    }

    showSnackBar(context, message: 'أدخل البيانات المطلوبة', error: true);

    return false;
  }

  Future<void> _login() async {
    Navigator.pushNamed(context, '/otp_screen');
  }
}
