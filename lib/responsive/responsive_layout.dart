
import 'package:ban_ao/responsive/desktop_layout.dart';
import 'package:ban_ao/responsive/mobile_layout.dart';
import 'package:ban_ao/responsive/tablet_layout.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
   ResponsiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        if (constraint.maxWidth < 500) {
          return MobileLayout();
        } else if (constraint.maxWidth < 1100) {
          return TabletLayout();
        } else {
          return DesktopLayout();
        }
      },
    );
  }
}
