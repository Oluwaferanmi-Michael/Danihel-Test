import 'package:daniheltest/widgets/filter_widget.dart';
import 'package:daniheltest/widgets/shared/app_scaffold.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

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
        actions: [Icon(Icons.menu, color: Colors.white)],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Highly packable, weatherproof outdoor equipment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  height: 1,
                ),
              ),
            ),
            FilterWidget(),
          ],
        ),
      ),
    );
  }
}
