import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:jawwal_tickets/prefs/prefs.dart';
import 'package:jawwal_tickets/presintation/resources/routs_manager.dart';
import 'package:jawwal_tickets/presintation/resources/theme_manager.dart';
 import 'app/admin_screens/account_screen.dart';
import 'app/admin_screens/edit_account.dart';
import 'app/admin_screens/home_user_screen.dart';
import 'app/auth/create_aprofile_screen.dart';
import 'app/auth/login_screen.dart';
import 'app/auth/otp.dart';
import 'app/auth/register_screen.dart';
import 'app/bottom_navigation_screen.dart';
import 'app/screen/reservations/effectivene_screen.dart';
 import 'app/screen/reservations/reservations_first.dart';
import 'core/launch_screen.dart';
import 'datebase/db_controller.dart';
import 'onboarding/onboarding_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPreferences();
  await DbController().initDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: getApplicationTheme(),
          debugShowCheckedModeBanner: false,
          //********************* LOCALIZATION START *********************
          localizationsDelegates:  const [

            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],

          supportedLocales: const [
            Locale('ar'),
            Locale('en'),
          ],
          // localizationsDelegates: AppLocalizations.localizationsDelegates,
          // supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('ar'),

          initialRoute: Routs.launchRoute,
          onGenerateRoute: RouteGenerator.getRoute,
        );
      },
    );
  }
}

/**
 * height: 31
 * design Height: 812 = 8.12
 * current device height: 812 = 8.12
 *
 * Height on same (812) size: (31 * 8.12) / 8.12 = 31
 * Height on same (740) size: (31 * 7.4) / 8.12 = 28
 */
