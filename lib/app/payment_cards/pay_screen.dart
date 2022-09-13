import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/payments_way.dart';



class PayScreen extends StatefulWidget {
  const PayScreen({Key? key}) : super(key: key);

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        title: Text('كيف تحب ان تدفع؟',
            style:
                GoogleFonts.cairo(color: Color(0xFF000637), fontSize: 16.sp)),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          children: [
            Text(
              'انت على بعد خطوة من حجز جلسة المساج',
              style:
                  GoogleFonts.cairo(color: Color(0xFF000637), fontSize: 16.sp),
            ),
            SizedBox(height: 14.h),

            Text('كيف تحب ان تدفع؟',
                style: GoogleFonts.cairo(
                    color: Color(0xFF000637), fontSize: 14.sp)),
            SizedBox(height: 24.h),
            PaymentsWay(
              leadingtitle: 'بطاقة الائتمان',
              widget: InkWell(
                child: Text('اضافة بطاقة',
                    style: GoogleFonts.cairo(
                        color: Color(0xFF0012AA), fontSize: 10.sp)),
                onTap: () {
                  Navigator.pushNamed(context, '/new_payments_screen');
                },
              ),
            ),
            // PayScreen()
            SizedBox(
              height: 24.h,
            ),
            PaymentsWay(
                leadingtitle: 'الكاش',
                widget: Text(
                  'الدفع قبل 48 ساعة من الحفل',
                  style: GoogleFonts.cairo(
                      color: Color(0xFF0012AA), fontSize: 10.sp),
                )),

            // Container(height: 48.h/*,width: 343.w*/,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.r),color: Color(0xFFFFFFFF)),
            //   child: Padding(
            //     padding:  EdgeInsets.symmetric(horizontal: 15.h , vertical: 15.w),
            //     child: Row(
            //       children: [
            //         Container(width:18.w ,height: 18.h,
            //           decoration: BoxDecoration(
            //             color:Color(0xFFFFFFFF),
            //             borderRadius: BorderRadius.circular(50),
            //           ),
            //         ),
            //         SizedBox(width: 12.w,),
            //         Text('الكاش',style: GoogleFonts.cairo(color: Color(0xFF000000),fontSize: 14.sp)),
            //         Spacer(),
            //         Text('الدفع قبل 48 ساعة من الحفل' ,style: GoogleFonts.cairo(color: Color(0xFF0012AA),fontSize: 10.sp),),
            //
            //
            //       ],),
            //   ),
            // ),

            SizedBox(
              height: 24.h,
            ),
            PaymentsWay(
              leadingtitle: 'Pay',
              widget: Text(''),
            ),

            // Container(height: 48.h/*,width: 343.w*/,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.r),
            //     color:Color(0xFFFFFFFF),
            //   ),
            //   child: Padding(
            //     padding:  EdgeInsets.symmetric(horizontal: 15.h , vertical: 15.w),
            //     child: Row(
            //       children: [
            //         Container(width:18.w ,height: 18.h,
            //           decoration: BoxDecoration(
            //             color:Color(0xFFDDE1FF),
            //             borderRadius: BorderRadius.circular(50),
            //           ),
            //         ),
            //         SizedBox(width: 12.w,),
            //         Text('بطاقة الائتمان',style: GoogleFonts.cairo(color: Color(0xFF000000),fontSize: 14.sp)),
            //         Spacer(),
            //         Text('اضافة بطاقة' ,style: GoogleFonts.cairo(color: Color(0xFF0012AA),fontSize: 10.sp),),
            //
            //
            //       ],),
            //   ),
            // ),
            Spacer(),
            ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(343.w, 48.h),
                    primary: Color(0xff2940FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r))),
                child: Text(
                  'شراء التذاكر 60 ',
                  style: GoogleFonts.nunito(
                      fontSize: 16.sp,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.bold),
                )),
            // SizedBox(height: 34.h,)
          ],
        ),
      ),
    );
  }
}
