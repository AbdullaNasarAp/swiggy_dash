import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../../widget/text.dart';
import 'const.dart';

class Categ extends StatelessWidget {
  const Categ({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  width: 87,
                  height: 87,
                  decoration: BoxDecoration(
                      color: xGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        imageList[index],
                        width: 85,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                sizedBox,
                TextTitle(
                    title: nameList[index],
                    ls: 0,
                    fontwght: FontWeight.bold,
                    fontsz: 14)
              ],
            );
          },
        ),
      ),
    );
  }
}
