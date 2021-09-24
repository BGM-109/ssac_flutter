import 'package:flutter/material.dart';

class TabMenu extends StatelessWidget {
  const TabMenu({
    Key? key,
    required this.menuName,
  }) : super(key: key);

  final String menuName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Tab(
        text: menuName,
      ),
    );
  }
}