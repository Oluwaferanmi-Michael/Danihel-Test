import 'package:daniheltest/core/providers/product_provider.dart';
import 'package:daniheltest/core/providers/user_provider.dart';

import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:daniheltest/widgets/shared/app_chips.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final productDetail = context.watch<ProductProvider>().product;
    final userFavourites = context.watch<UserProvider>().favourites;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -18,
            child: SizedBox(
              child: Image.asset('assets/images/bag_item.png', scale: 1.5),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(productDetail.title, style: $appTextStyles.h2),
                        Text(
                          '\$${productDetail.price}',
                          style: $appTextStyles.h2_2,
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<UserProvider>().updateFavourite(
                          productDetail,
                        );
                      },
                      icon: userFavourites.contains(productDetail)
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_border_outlined),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Color.fromRGBO(255, 255, 255, .4),
                        ),
                        foregroundColor: WidgetStateProperty.all(
                          AppColors.white,
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .6,
                  child: Text(
                    productDetail.description,
                    style: $appTextStyles.paragraph,
                  ),
                ),

                //
                Wrap(
                  spacing: 6,
                  children: productDetail.productTags
                      .map(
                        (e) => AppChips(
                          label: e,
                          backgroundColor: AppColors.whiteBackground80,
                          labelColor: AppColors.tagColor,
                          labelStyle: $appTextStyles.smallTag,
                          labelPadding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                        ),
                      )
                      .toList(),
                ),

                //

                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
