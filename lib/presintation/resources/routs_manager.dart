import 'package:flutter/material.dart';
import 'package:jawwal_tickets/core/launch_screen.dart';
import 'package:jawwal_tickets/onboarding/onboarding_screen.dart';

import '../../app/auth/login_screen.dart';
import '../../app/auth/register_screen.dart';



mixin Routs {
  static const String launchRoute = "/";
  static const String onboardingScreen = "/on_boarding_screen";
  static const String loginScreen = "/login_screen";
  static const String register = "/register_screen";
  static const String contactUs = "/contact_us_screen";
  static const String inviteFriend = "/invite_friend_screen";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.launchRoute:
        return MaterialPageRoute(builder: (_) => const LaunchScreen());
      case Routs.onboardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routs.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case Routs.register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      // case Routs.contactUs:
      //   return MaterialPageRoute(builder: (_) => const ContactUs());
      // case Routs.inviteFriend:
      //   return MaterialPageRoute(builder: (_) =>  const InviteFriendScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('NO ROUTE FOUND'),
        ),
        body: const Text('NO ROUTE FOUND'),
      ),
    );
  }
}
