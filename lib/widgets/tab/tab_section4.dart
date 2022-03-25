import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/info_container.dart';

class TabSection4 extends StatelessWidget {
  const TabSection4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Zone 4: Wet Coniferous & Deciduous Forest and Wetland ',
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
        Row(
          children: [
            Expanded(child: Image.asset('assets/tree4.png')),
            const SizedBox(
              height: 35,
            ),
            const InfoContainer(
              color: Color(0xff539579),
              text:
                  'This zone covers several micro ecosystems that are all influenced by one common feature: water. Due to the topography, a swamp/ wetland has formed in the western side of this area that drains via a brook eastwards. The swamp is surrounded by several different vegetation types flourishing with the abundance of fresh water supply. These types of forests make important contributions to landscape diversity, carbon and water budgets. This area provides habitat for numerous plants, lichens, invertebrates and vertebrates (including moose, spruce grouse, rusty blackbird, swamp and Lincoln’s sparrows, wood turtle and several amphibians). ',
              isTabView: false,
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
