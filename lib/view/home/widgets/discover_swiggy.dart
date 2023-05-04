import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../../utils/hex_color.dart';
import '../../widget/text.dart';
import 'const.dart';

class DiscoverSwiggy extends StatelessWidget {
  const DiscoverSwiggy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: double.infinity,
      decoration: BoxDecoration(color: xGrey.withOpacity(0.2)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                    width: 30,
                    child: Divider(
                      color: xGrey,
                      thickness: 2,
                    )),
                TextTitle(
                  title: "Discover Swiggy",
                  ls: 0,
                  color: HexColor("00796B"),
                  fontwght: FontWeight.bold,
                  fontsz: 18,
                ),
                const SizedBox(
                    width: 30,
                    child: Divider(
                      color: xGrey,
                      thickness: 2,
                    )),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 230,
                        decoration: BoxDecoration(
                          color: xWhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            dbannerList[index],
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 15,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 300,
                            child: RawMaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              padding: const EdgeInsets.all(15),
                              fillColor: colorList[index],
                              onPressed: () {},
                              child: TextTitle(
                                  title: bottunTextList[index],
                                  color: xWhite,
                                  ls: 0,
                                  fontwght: FontWeight.bold,
                                  fontsz: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
