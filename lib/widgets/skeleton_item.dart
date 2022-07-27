import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:space/theme.dart';

class SkeletonItem extends StatelessWidget {
  const SkeletonItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: (MediaQuery.of(context).size.width - 82) / 2,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Shimmer.fromColors(
              baseColor: kLineDarkColor,
              highlightColor: kWhiteGreyColor,
              child: Container(
                width: double.infinity,
                height: 122,
                color: kLineDarkColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Shimmer.fromColors(
              baseColor: kLineDarkColor,
              highlightColor: kWhiteGreyColor,
              child: Container(
                width: double.infinity,
                height: 22,
                color: kLineDarkColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Shimmer.fromColors(
                  baseColor: kLineDarkColor,
                  highlightColor: kWhiteGreyColor,
                  child: Container(
                    width: 62,
                    height: 25,
                    color: kLineDarkColor,
                  ),
                ),
                Shimmer.fromColors(
                  baseColor: kLineDarkColor,
                  highlightColor: kWhiteGreyColor,
                  child: Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kLineDarkColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
