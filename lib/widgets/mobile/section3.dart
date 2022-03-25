import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/info_container.dart';

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Zone 3: Open Woodland ',
          style: GoogleFonts.montserrat(
            color: const Color(0xff03303D),
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 19.92 / 18,
            // letterSpacing: 2.5,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const InfoContainer(
          color: Color(0xff2D4225),
          text:
              'This woodland is at the bottom of the slope and is characterized by scattered black spruce, white and red pine, exposed bedrock, stony and shallow soils and prominent reindeer lichen. The Black spruce / Lambkill / Reindeer lichen ecosystem  is unique to the east coast and is relatively rare in Nova Scotia.',
          isTabView: false,
        ),
        const SizedBox(
          height: 35,
        ),
        Image.asset('assets/tree3.png'),
        const SizedBox(
          height: 51,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            3,
            (index) => Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 5,
              ),
              child: Image.asset('assets/demotree.png'),
            ),
          )),
        ),
      ],
    );
  }
}
