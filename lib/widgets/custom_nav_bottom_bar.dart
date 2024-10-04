import 'package:flutter/material.dart';
import 'package:flutter_qr/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomNavBottomBar extends StatelessWidget {
  const CustomNavBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenuOption;

    return BottomNavigationBar(
      onTap: (index) {
        uiProvider.selectedMenuOption = index;
      },
      elevation: 0,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Addresses',
        ),
      ],
    );
  }
}
