import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../common/info_container.dart';

class TabSection5 extends StatelessWidget {
  const TabSection5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Zone 5: Intertidal zone',
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
            const InfoContainer(
              color: Color(0xff2D4225),
              text:
                  'This rocky shore is home to a great diversity of plants and animals. The plants that are most common on the rocky shore are the macroscopic (visible with the eye) algae or seaweed. These are classified according to their colour - brown, green, or red - and the specific locations in which they are found. Vascular plants such as Seaside-Plantain are found at the sea/ land interface. One such plant, Eelgrass, may be found inter-tidally in tide pools if the pools have accumulated enough sediments for the plants to take root. Other plants of the rocky shore are the attached micro-algae. The most common animals include snails like the periwinkles, whelks, nudibranchs (naked molluscs), limpets, and chitons; Blue Mussels and Horse Mussels; crustaceans such as crabs, shrimp, barnacles, amphipods and isopods; sea stars, sea urchins and sea cucumbers. A variety of worms can also be found intertidally, especially....',
              isTabView: false,
            ),
            const SizedBox(
              width: 35,
            ),
            Expanded(child: Image.asset('assets/tree5.png')),
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
              child: Image.asset(
                'assets/scene.png',
                height: 269,
              ),
            ),
          )),
        ),
      ],
    );
  }
}
