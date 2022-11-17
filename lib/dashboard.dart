import 'package:flutter/material.dart';
import 'package:new_login_signup/social_forms.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  bool isCollapse = true;

  void toggleSideBar() {
    setState(() {
      isCollapse = !isCollapse;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: [
              NavigationRail(
                selectedIndex: _selectedIndex,
                extended: isCollapse,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.dashboard),
                    label: Text('Dashboard'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person),
                    label: Text('Profile'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.school),
                    label: Text('Test'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.notifications),
                    label: Text('Notification'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.pages),
                    // selectedIcon: Icon(Icons.pages),
                    label: Text('Resume'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.logout),
                    // selectedIcon: Icon(Icons.logout),
                    label: Text('Logout'),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: toggleSideBar,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 12,
                    ),
                    child: Icon(!isCollapse
                        ? Icons.arrow_forward_ios
                        : Icons.arrow_back_ios),
                  ),
                ),
              ),
            ],
          ),

          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(child: SocialForm(() {})),
        ],
      ),
    );
  }
}
