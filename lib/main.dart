import 'package:flutter/material.dart';
import 'package:train_ticket_buying_app/module/dashboard/view/ProfilePage.dart';
import 'package:train_ticket_buying_app/module/dashboard/view/TicketPage.dart';
import 'package:train_ticket_buying_app/shared/widgets/LoginPage.dart';
import 'package:train_ticket_buying_app/shared/widgets/SignUp.dart';
import 'core.dart';
import 'shared/theme/theme_ticket_booking.dart';
import 'state_util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = getTicketBookingTheme();
    return MaterialApp(
      title: 'Train Ticket Booking',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      home:  SignUpPage(),
      routes: {
      '/myTickets': (context) => MyTicketsPage(),
      '/profile': (context) => ProfilePage(),
      '/home': (context) => MainNavigationView(),
    },
    );
  }
}
