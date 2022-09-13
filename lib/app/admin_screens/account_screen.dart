import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 51),
        child: Text(
          "حسابي",
          textAlign: TextAlign.center,
          style: GoogleFonts.cairo(
            fontSize: 20.sp,
            fontWeight: FontWeight.w800,
            color: Color(0xFF000000),
          ),
        ),
      ),
      Container(
        height: 120.h,
        color: Colors.grey.shade200,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(

                backgroundImage: AssetImage("assets/images/account.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("محمد محمد"),
                  SizedBox(
                    height: 12.h,
                  ),
                  Text("+9665211043"),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: IconButton(
                onPressed: () {},
                color: ColorManager.primary,
                icon: Icon(
                  Icons.edit,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          height: 48,
          color: Colors.grey.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  color:ColorManager.primary,
                  icon: Icon(
                    Icons.credit_card,
                  ),
                ),
                Text('وسائل دفع'),
              ],
            ),
          ),
        ),
      ),
      Container(
        height: 48,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: ColorManager.primary,
                icon: Icon(
                  Icons.credit_card,
                ),
              ),
              Text('بطاقات سحب'),
            ],
          ),
        ),
      ),
      Container(
        height: 48,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color:ColorManager.primary,
                icon: Icon(
                  Icons.settings_outlined,
                ),
              ),
              Text('الاعدادات'),
              Spacer(),
              IconButton(
                onPressed: () {},
                color: Colors.grey.shade500,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        height: 48,
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                color: ColorManager.primary,
                icon: Icon(
                  Icons.wallet_sharp,
                ),
              ),
              Text('المحفظة'),
              Spacer(),
              IconButton(
                onPressed: () {},
                color: Colors.grey.shade500,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 180.h),
      TextButton(

        style: TextButton.styleFrom(

          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),

          backgroundColor: Colors.grey.shade200,
        ),
        onPressed: (){},
        child: Text(
          "تسجيل خروج",
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black87,

          ),
        ),
      )
    ]);

  }



}
