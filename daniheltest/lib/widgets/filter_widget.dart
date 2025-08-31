import 'package:daniheltest/core/domain/enums/enums.dart';
import 'package:daniheltest/core/providers/filter_providers.dart';
import 'package:daniheltest/injection_container.dart';
import 'package:daniheltest/util/styles/colors.dart';
import 'package:daniheltest/widgets/shared/app_chips.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filters', style: $appTextStyles.h2),
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Category', style: $appTextStyles.h3),

              //
              Wrap(
                spacing: 6,
                runSpacing: 6,
                children: DeveloperCategory.values.map((e) {
                  final categories = context
                      .watch<DeveloperCategoryProvider>()
                      .categories;

                  Color color = categories.contains(e)
                      ? AppColors.greenCTA
                      : AppColors.whiteBackground80;

                  Color labelColor = categories.contains(e)
                      ? AppColors.white
                      : AppColors.tagColor;

                  return AppChips(
                    onTap: () {
                      context.read<DeveloperCategoryProvider>().addCategories(
                        e,
                      );
                    },
                    label: e.name,
                    backgroundColor: color,
                    labelColor: labelColor,
                    labelStyle: $appTextStyles.mediumTag,
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 8,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),

          //
          Text('Salary Range', style: $appTextStyles.h3),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider(
                padding: EdgeInsets.zero,
                value: context.watch<SalaryRangeProvider>().salaryValue,
                onChanged: (value) {
                  context.read<SalaryRangeProvider>().changeSalary(value);
                },
                divisions: 7,
                min: 0,
                max: 100,
                activeColor: AppColors.white,
                secondaryActiveColor: Color.fromRGBO(255, 255, 255, 0.4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('0', style: $appTextStyles.paragraph),
                  Text('100', style: $appTextStyles.paragraph),
                ],
              ),
            ],
          ),

          //
          Text('Level', style: $appTextStyles.h3),
          Wrap(
            children: Level.values
                .map(
                  (e) => RadioGroup<Level>(
                    groupValue: context.watch<LevelProvider>().level,
                    onChanged: (value) {
                      context.read<LevelProvider>().changeLevel(value);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Radio(value: e),
                        Text(e.name, style: $appTextStyles.paragraph),
                      ],
                    ),
                  ),
                )
                .toList(),
          ),

          //
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel', style: $appTextStyles.button),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      Color.fromRGBO(23, 40, 37, 0.8),
                    ),
                    foregroundColor: WidgetStateProperty.all(AppColors.white),
                    shape: WidgetStateProperty.all(StadiumBorder()),
                  ),
                  child: Text('Save', style: $appTextStyles.button),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

