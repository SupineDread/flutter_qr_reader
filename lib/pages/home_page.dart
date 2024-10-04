import 'package:flutter/material.dart';
import 'package:flutter_qr/pages/directions_page.dart';
import 'package:flutter_qr/pages/maps_page.dart';
import 'package:flutter_qr/providers/db_provider.dart';
import 'package:flutter_qr/providers/ui_provider.dart';
import 'package:flutter_qr/widgets/custom_floating_action_button.dart';
import 'package:flutter_qr/widgets/custom_nav_bottom_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('History'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () {},
          ),
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: const CustomNavBottomBar(),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    // Get the selected menu opt
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOption;
    DBProvider.db.database;

    switch (currentIndex) {
      case 0:
        return const MapsPage();
      case 1:
        return const DirectionsPage();
      default:
        return const MapsPage();
    }
  }
}
