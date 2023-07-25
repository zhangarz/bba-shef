import 'package:flutter/material.dart';

import '../../app/custom_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    PageWidgets page = PageWidgets();

    page.body = Placeholder();

    return page.scaffold(context);
  }
}
