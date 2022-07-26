import 'package:flutter/material.dart';
import 'package:space/theme.dart';

class HomePopularItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final EdgeInsets margin;
  final int price;
  final bool isWishlist;

  const HomePopularItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    this.margin = EdgeInsets.zero,
    required this.price,
    required this.isWishlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: margin,
        child: Column(
          children: [
            Container(
              width: 200,
              height: 180,
              decoration: BoxDecoration(
                color: kWhiteGreyColor,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Image.asset(
                  imageUrl,
                  width: 160,
                ),
              ),
            ),
            Container(
              width: 200,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              child: Column(
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$$price',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Image.asset(
                        isWishlist
                            ? 'assets/button_wishlist_active.png'
                            : 'assets/button_wishlist.png',
                        width: 44,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
