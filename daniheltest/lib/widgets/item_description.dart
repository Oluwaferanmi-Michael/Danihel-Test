import 'package:daniheltest/injection_container.dart';
import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {
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
                        Text('Pacer Backpack 20L', style: $appTextStyles.h2),
                        Text('\$59.99', style: $appTextStyles.h2_2),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          Color.fromRGBO(255, 255, 255, .4),
                        ),
                        foregroundColor: WidgetStateProperty.all(Colors.white),
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
                    'Our bag features chest and hip straps, a pack away rain cover and convenient multiple pockets including a bottom compartment with a separate opening.',
                    style: $appTextStyles.paragraph,
                  ),
                ),

                //
                Wrap(
                  spacing: 6,
                  children: category
                      .map(
                        (e) => Chip(
                          label: Text(e, style: $appTextStyles.smallTag),
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

final category = ['20L Size', 'Solar Orange', '8 Pockets'];
