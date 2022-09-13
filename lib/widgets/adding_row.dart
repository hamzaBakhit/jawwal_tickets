import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jawwal_tickets/presintation/resources/color_manager.dart';

class Adding_row extends StatelessWidget {
   Adding_row({
    required this.Title,
    Key? key,
  }) : super(key: key);
  final String Title;

  final Color customColor = ColorManager.primary;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title, style: GoogleFonts.cairo()),
        Spacer(),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle,
                  color: customColor,
                )),
            Text(
              '11',
              style: GoogleFonts.cairo(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: customColor),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_circle,
                color: customColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
