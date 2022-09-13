import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

class CancelScreen extends StatelessWidget {
  const CancelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: [
          ExpansionPanelList(
              // لون الخط الفاصل
              dividerColor: Colors.grey,

              // عند العرض يكون في حركة
              animationDuration: const Duration(seconds: 1),
              expandedHeaderPadding: EdgeInsets.zero,
              elevation: 4,
              // هاي علشان نعرف شو حالة الضغطة ونحولها من شغالة لطافية
              expansionCallback: (panelIndex, isExpanded) {},
              // خليت العناصر الي موودة في الليستة اعرضها عنا
              children: [
                ExpansionPanel(

                    // expansionCallbackهنا لتفعيل السهم لعرض الاجابة  من
                    isExpanded: true,
                    // لتفعيل فتح الاجابة عند الضغط على كل العنصر
                    canTapOnHeader: true,
                    backgroundColor: Colors.white,
                    headerBuilder: (context, isExpanded) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          Text(
                            'فعالية واحد',
                            style: GoogleFonts.cairo(),
                          ),
                          Text(
                            '10/10/1010',
                            style: GoogleFonts.cairo(),
                          ),
                        ],
                      );
                    },
                    body: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "images/contents.png",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'التاريخ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'الموعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '10/10/1010',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: ColorManager.primary),
                              ),
                              Text(
                                '8:30 ص',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: ColorManager.primary),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'نوع التذكرة ',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'رقم المقعد',
                                style: GoogleFonts.cairo(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'عادية ',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: ColorManager.primary),
                              ),
                              Text(
                                'A1',
                                style: GoogleFonts.cairo(
                                    fontSize: 14, color: ColorManager.primary),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            'العنوان',
                            style: GoogleFonts.cairo(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'غزة النصر , شارع جمال باشة ',
                            style: GoogleFonts.cairo(
                                fontSize: 14, color: ColorManager.primary),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    )),
              ]),
        ],
      ),
    );
  }
}
