import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/info_container.dart';

class TabSection2 extends StatelessWidget {
  const TabSection2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Zone 2- Intolerant Hardwood',
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
          height: 37,
        ),
        Row(
          children: [
            Expanded(child: Image.asset('assets/tree2.png')),
            const SizedBox(
              width: 37,
            ),
            const InfoContainer(
              color: Color(0xff539579),
              text:
                  'This zone covers the entire hill and slope section of the area, which is most likely of glacial deposition. Although the soil is on the poorer end, hardwood trees like red oak, white birch and red maple dominate. The Red oak tree offers valuable support for wildlife species including small mammals, bear, ruffed grouse and deer. Red maple regenerates quickly as coppice and is a favored browse by deer and moose. Mature red maple flowers provide one of the most important early and abundant pollen and nectar sources for a wide range of insects. Oak is the preferred host of maitake mushroom. Ericaceous shrubs, as well as mayflower, teaberry, round leaf pyrola, bracken fern, pink lady’s slipper and princes’-pine are abundant in the area.',
              isTabView: true,
            ),
          ],
        ),
        const SizedBox(
          height: 160,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            5,
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
