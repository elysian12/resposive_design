import 'package:flutter/material.dart';

import '../common/info_container.dart';

class Section1 extends StatelessWidget {
  const Section1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InfoContainer(
          color: Color(0xff2D4225),
          text:
              'The main species in the canopy are Balsam Fir and Red Maple as well as some scattered old White Pine trees. Due to the short lifespan of the Balsam Fir, there are lots of dead and fallen trees that offer a habitat for an abundance of insects and fungi. This Zone is located right on the shore of Haley Lake and winds have further opened up the canopy. Many red maple and white pine trees offer with their cavities, seams and broken branches nesting opportunities for multiple species of birds. The multi-storied canopy is well structured and in the open areas lots of regeneration (fir, spruce, pine, some larch) has been established. Aside from the different types of shrubs and herbs (e.g. blueberry, huckleberry, lambkill etc.) many different types of moss and lichen have been found. What makes this zone special is the high abundance of old man’s beard.',
          isTabView: false,
        ),
        const SizedBox(
          height: 37,
        ),
        Image.asset('assets/tree.png'),
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
