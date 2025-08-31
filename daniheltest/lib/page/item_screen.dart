import 'package:daniheltest/core/domain/enums/enums.dart';
import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:daniheltest/widgets/filter_widget.dart';
import 'package:daniheltest/widgets/item_description.dart';
import 'package:daniheltest/widgets/shared/app_chips.dart';
import 'package:daniheltest/widgets/shared/app_scaffold.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  const ItemScreen({super.key});

  @override
  State<ItemScreen> createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  late final TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(0, 0, 0, .2),
        actionsPadding: EdgeInsets.only(right: 15),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset('assets/images/target_logo_white.png'),
        ),
        leadingWidth: 48,
        actions: [Icon(Icons.menu, color: AppColors.white)],
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 15,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Highly packable, weatherproof outdoor equipment',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: TextField(
                    controller: searchController,
                    keyboardType: TextInputType.text,
                    cursorColor: AppColors.white,
                    style: $appTextStyles.paragraph,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      isDense: false,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(32),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: AppColors.white,
                      hintText: 'Search...',
                      hintStyle: $appTextStyles.paragraph,
                      fillColor: Color.fromRGBO(255, 255, 255, 0.4),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width,
                  margin: EdgeInsets.only(left: 15, top: 15, bottom: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 10,
                      children: ProductCategory.values
                          .map((e) => AppChips(label: e.name))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            ItemDescription(),
            FilterWidget(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
