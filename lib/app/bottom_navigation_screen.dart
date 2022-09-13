import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/app/praymary_screen/settings_screen.dart';
import 'package:jawwal_tickets/app/screen/home_screen.dart';
import 'package:jawwal_tickets/app/praymary_screen/main_screen.dart';
import 'package:jawwal_tickets/app/praymary_screen/reservations.dart';
import 'package:jawwal_tickets/app/ticket/add_events_screen.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

import '../model/ui_model/screen_model.dart';
import 'admin_screens/events_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedPageIndex = 0;

  // هذا جاي من ملف المودل علشان نعمل استدعاء للصفحات حسب الضغط على البوتن
  final List<BnScreen> _screens = <BnScreen>[
    BnScreen(title: 'اهلا وسهلا بك', widget: MainScreen()),
    BnScreen(title: 'حجوزاتي', widget: ReservationScreen()),
    BnScreen(title: 'الاحصائيات', widget: EventsScreen()),
    BnScreen(title: 'صفحة ', widget: AddEventScreen()),
    BnScreen(title: 'الاعدادات', widget: SettingsScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffF5F5F5),
      body: _screens[_selectedPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedPageIndex) {
          setState(() => _selectedPageIndex = selectedPageIndex);
        },
        // هان تعرف اي index  انت موجود بناءا على تغير الحالة في ال set State
        currentIndex: _selectedPageIndex,
        backgroundColor: Color(0xffFBFBFB),
        selectedItemColor: ColorManager.primary,
        // هاي بتاثر على لون ال  icon
        selectedIconTheme: IconThemeData(color: ColorManager.primary),
        //  هاي الخاصية بتغير على نوع الخط ما بتغيرعلى لون الخط
        selectedLabelStyle: GoogleFonts.cairo(
            // color: Colors.black,

            fontWeight: FontWeight.w400),
        //*********************************
        // لا يوجد fixed في ال un selected
        unselectedItemColor: Colors.grey.shade400,
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
          // الاثر هنا لحجم الايقونة اكبر ما يكون
          size: 24,
        ),
        unselectedLabelStyle: GoogleFonts.cairo(
          fontWeight: FontWeight.w300,
          // الفعالية هنا اقوى شوية
          fontSize: 11,
        ),
        // الاثر هنا اقل من الي بالقرب من االايقونة
        iconSize: 24,
        // فعالية الحجم بتكون اكبر لما تكون اقرب من هاي
        unselectedFontSize: 12,
        // selectedIconTheme: ,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Color(0xff48d83b),
              ),
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.category,
                color: Color(0xff48d83b),
              ),
              icon: Icon(Icons.category),
              label: 'حجوزاتي'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.ac_unit,
                color: Color(0xff48d83b),
              ),
              icon: Icon(Icons.ac_unit),
              label: 'فعاليات'),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.account_box,
                color: Color(0xff48d83b),
              ),
              icon: Icon(Icons.account_box),
              label: 'اخرى '),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.settings,
                color: Color(0xff48d83b),
              ),
              icon: Icon(Icons.settings_outlined),
              label: 'الاعدادات'),
        ],
      ),
    );
  }

  void _confirmLogoutDialog() async {
    bool? result = await showDialog<bool>(
      context: context,
      // barrierColor: Colors.red.shade100.withOpacity(0.5),
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'kkk',
          ),
          titleTextStyle: GoogleFonts.cairo(
            fontSize: 16,
            color: Colors.black,
          ),
          content: Text(
            'confirm logout',
          ),
          contentTextStyle: GoogleFonts.cairo(
            fontSize: 13,
            color: Colors.black45,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, true);
              },
              child: Text(
                'confirm',
                style: GoogleFonts.cairo(color: Colors.red),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, false);
              },
              child: Text(
                'cancel',
                style: GoogleFonts.cairo(),
              ),
            ),
          ],
        );
      },
    );
    if (result ?? false) {
      // bool cleared = await SharedPrefController().removeValueFor(PrefKeys.loggedIn.name);
      //  bool cleared = await SharedPrefController().clear();
      //  if (cleared) {
      Navigator.pushReplacementNamed(context, '/login_screen');
      //  }
    }
  }
}
