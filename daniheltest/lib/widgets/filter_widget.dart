import 'package:daniheltest/injection_container.dart';
import 'package:flutter/material.dart';

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
          Text('Category', style: $appTextStyles.h3),

          //
          Wrap(
            spacing: 6,
            runSpacing: 1,
            children: category
                .map(
                  (e) => FilterChip(
                    backgroundColor: Color.fromRGBO(255, 255, 255, .4),
                    onSelected: (value) {},
                    label: Text(e, style: $appTextStyles.mediumTag),
                  ),
                )
                .toList(),
          ),

          //
          Text('Salary Range', style: $appTextStyles.h3),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Slider(
                padding: EdgeInsets.zero,
                value: 25,
                onChanged: (value) {},
                divisions: 7,
                min: 0,
                max: 100,
                activeColor: Colors.white,
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
            children: level
                .map(
                  (e) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(
                        value: e,
                        // activeColor: Colors.white,

                        // fillColor: WidgetStatePropertyAll(Colors.white),
                        // enabled: true,
                      ),
                      Text(e, style: $appTextStyles.paragraph),
                    ],
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
                    foregroundColor: WidgetStateProperty.all(Colors.white),
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

final category = ['iOS', 'Android', 'Frontend', 'backend', 'Network', 'UI/UX'];
final level = ['Entry', 'Mid', 'Staff', 'Senior', 'Manager'];
