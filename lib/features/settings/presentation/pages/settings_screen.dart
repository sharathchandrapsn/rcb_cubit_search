import 'package:flutter/material.dart';
import 'package:rcb_cubit_search/core/widgets/drawer_widget.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWithDrawer(
      appbarTitle: "Settings",
      child: Center(child: Text("Setting under construction...")),
    );
  }
}
