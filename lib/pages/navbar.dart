import 'package:bloc_test/blocs/show_singleton.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';
import 'secpage.dart';

class NavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: PageController(keepPage: true),
      children: [
        HomePage(),
        SecPage()
      ],
    );
  }
}