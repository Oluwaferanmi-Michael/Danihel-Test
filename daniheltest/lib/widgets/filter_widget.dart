import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Filters'),
          Text('Category'),

          //
          Wrap(children: category.map((e) => Chip(label: Text(e))).toList()),

          //
          Text('Salary Range'),
          Slider.adaptive(
            value: .4,
            onChanged: (value) {},
            divisions: 7,
            min: 0,
            max: 100,
          ),

          //
          Text('Level'),
          Wrap(
            children: level
                .map(
                  (e) => Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Radio(value: e),
                      Text(e),
                    ],
                  ),
                )
                .toList(),
          ),

          //
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(onPressed: () {}, child: Text('Cancel')),
                TextButton(onPressed: () {}, child: Text('Save')),
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
