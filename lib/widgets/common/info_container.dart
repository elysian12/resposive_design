import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InfoContainer extends StatelessWidget {
  final Color color;
  final String text;
  final bool isTabView;

  const InfoContainer({
    Key? key,
    required this.color,
    required this.text,
    required this.isTabView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isTabView ? 450 : 311,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 13,
          top: 23,
          right: 15,
          bottom: 36,
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 1,
            height: 17.07 / 14,
          ),
        ),
      ),
    );
  }
}
