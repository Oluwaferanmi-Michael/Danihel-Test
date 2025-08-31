import 'package:daniheltest/util/common/barrel.dart';
import 'package:daniheltest/widgets/filter_widget.dart';
import 'package:daniheltest/widgets/item_description.dart';

@immutable
class AppStrings {
  const AppStrings._();
}

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  // create text editing controller for search widget
  late final TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  // dispose controller after use during end of state lifecycle
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: $insets.x15),
          child: Image.asset(AppImages.logo.assetPath),
        ),

        actions: [Icon(Icons.menu, color: AppColors.white)],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: $insets.x15,
          children: [
            // Heading
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Highly packable, weatherproof outdoor equipment',
                style: $appTextStyles.h1,
              ),
            ),

            // Body
            Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),

                  // Search Widget
                  child: TextField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.white,
                    style: $appTextStyles.paragraph,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),

                      hintText: 'Search...',
                    ),
                  ),
                ),

                // Product Filters
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 39,
                  margin: EdgeInsets.only(left: $insets.x15, top: $insets.x15, bottom: $insets.x15),
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: $insets.x10),
                    scrollDirection: Axis.horizontal,
                    itemCount: ProductCategory.values.length,
                    itemBuilder: (context, index) {
                      final category = ProductCategory.values;
                      final productCategoryIndex = context
                          .watch<ProductCategoryProvider>()
                          .indexSelected;

                      /// See [AppChips] in widgets/shared/app_chips.dart
                      return AppChips(
                        onTap: () =>
                            context
                                    .read<ProductCategoryProvider>()
                                    .indexSelected =
                                index,
                        label: category[index].properName,
                        backgroundColor: productCategoryIndex == index
                            ? AppColors.greenCTA
                            : AppColors.whiteBackground40,
                      );
                    },
                  ),
                ),
              ],
            ),

            // Main Body Elements
            ItemDescription(),
            FilterWidget(),
            SizedBox(height: $insets.x10),
          ],
        ),
      ),
    );
  }
}
