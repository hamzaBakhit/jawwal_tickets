import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/assets_manager.dart';

import '../../widgets/app_text_field.dart';
import '../../widgets/default_button.dart';
class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
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
                height: 99.h,
                child: Image.asset(
                  ImageAssets.booking,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 16),
                child: Align(
                  child: Text(
                    'التحقق من رقم الجوال',
                    style: GoogleFonts.cairo(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, right: 16,bottom: 20),
                child: Align(
                  child: Text(
                    'لقد أرسلنا إليك رسالة نصية قصيرة تحتوي على رمز التحقق إلى رقمك 9665211043+ تعديل',
                    style: GoogleFonts.cairo(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF000000),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: AppTextField(
                  hint: "ادخل كود التحقق",
                  prefixIcon: Icons.phone_android_outlined,
                  keyboardType: TextInputType.phone,
                  controller: _mobileTextController,
                ),
              ),

              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 20),
                    child: DefaultButton(
                      text: "ابدا",
                      press: () {

                        Navigator.pushNamed(context, '/btn_navigation_screen');
                      },
                    ),
                  ),
                  // SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                              text: 'اعادة الارسال',
                              style: GoogleFonts.cairo(
                                color: Colors.grey.shade700,
                              ),
                              children: [
                                TextSpan(text: ''),
                              ]),
                        ),

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
}
