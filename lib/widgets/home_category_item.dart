import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomeCategoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const HomeCategoryItem({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 123,
      width: MediaQuery.of(context).size.width - (2 * 24),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 102,
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        subtitle,
                        style: greyTextStyle.copyWith(
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            imageUrl,
            height: 122,
          ),
        ],
      ),
    );
  }
}
