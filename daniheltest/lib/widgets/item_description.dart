import 'package:daniheltest/util/common/barrel.dart';

@immutable
class AppStrings {
  const AppStrings._();
}

class ItemDescription extends StatelessWidget {
  const ItemDescription({super.key});

  @override
  Widget build(BuildContext context) {

    // Listen to Provider States
    final productDetail = context.watch<ProductProvider>().product;
    final userFavourites = context.watch<UserProvider>().favourites;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.whiteBackground40,
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -18,
            child: SizedBox(
              child: Image.asset(AppImages.bag.assetPath, scale: 1.5),
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
                        /// Check if Product item is included in user favourites
                        /// add if not, remove if so, makes the iconButton responsive
                        context.read<UserProvider>().updateFavourite(
                          productDetail,
                        );
                      },

                      /// change icon if favourite conditions are met or not
                      icon: userFavourites.contains(productDetail)
                          ? Icon(Icons.favorite)
                          : Icon(Icons.favorite_border_outlined),
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.whiteBackground40,
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
                  width: MediaQuery.sizeOf(context).width * .5,
                  child: Text(
                    productDetail.description,
                    style: $appTextStyles.paragraph,
                  ),
                ),

                /// Used Wrap Layout Widget to "Future proof UI", if more tags
                /// are addded, they will wrap to the next line
                Wrap(
                  spacing: 6,
                  children: productDetail.productTags
                      .map(
                        (tags) => AppChips(
                          label: tags,
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
