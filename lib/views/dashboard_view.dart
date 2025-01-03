import 'package:admin_dashboard/views/widgets/adaptive_layout.dart';
import 'package:admin_dashboard/views/widgets/custom_drawer.dart';
import 'package:admin_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:admin_dashboard/views/widgets/dashboard_mobile_layout.dart';
import 'package:admin_dashboard/views/widgets/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashBoardMobileLayout(),
          tabletLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
