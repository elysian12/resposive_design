import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/tab/tab_section1.dart';
import 'package:flutter_application_1/widgets/tab/tab_section2.dart';
import 'package:flutter_application_1/widgets/tab/tab_section3.dart';
import 'package:flutter_application_1/widgets/tab/tab_section4.dart';
import 'package:flutter_application_1/widgets/tab/tab_section5.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 39,
                right: 33,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SvgPicture.asset('assets/top.svg'),
                  const SizedBox(
                    height: 10.8,
                  ),
                  Text(
                    'Ocean Sanctury',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff03303D),
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                      height: 39.92 / 36,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Nova Scotia',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff03303D).withOpacity(0.55),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 17.74 / 16,
                      letterSpacing: 2.5,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Zone 1- Spruce Hemlock Forest',
                    style: GoogleFonts.montserrat(
                      color: const Color(0xff03303D),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 19.92 / 18,
                      letterSpacing: 2.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/dotline.svg',
                        ),
                      ),
                      Column(
                        children: const [
                          TabSection1(),
                          SizedBox(
                            height: 160,
                          ),
                          TabSection2(),
                          SizedBox(
                            height: 160,
                          ),
                          TabSection3(),
                          SizedBox(
                            height: 160,
                          ),
                          TabSection4(),
                          SizedBox(
                            height: 160,
                          ),
                          TabSection5(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 160,
                  ),
                  SvgPicture.asset('assets/bottom.svg'),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
