import 'package:e_com/app/extensions/localization_extention.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../app/app_colors.dart';
import '../provider/main_nav_provider.dart';


class MainNavHolderScreen extends StatefulWidget {
  const MainNavHolderScreen({super.key});

  static const String name = '/main-nav-holder';

  @override
  State<MainNavHolderScreen> createState() => _MainNavHolderScreenState();
}

class _MainNavHolderScreenState extends State<MainNavHolderScreen> {
  final List<Widget> _screens = [
    SizedBox(),
    SizedBox(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainNavProvider>(
        builder: (context, mainNavProvider, _) {
          return Scaffold(
            body: _screens[mainNavProvider.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: AppColors.themeColor,
              unselectedItemColor: Colors.grey,
              showUnselectedLabels: true,
              onTap: mainNavProvider.setIndex,
              currentIndex: mainNavProvider.selectedIndex,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),
                    label:context.l10n.home),
                BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard),
                  label:context.l10n.category,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: context.l10n.carts,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline),
                  label:context.l10n.wishlist,
                ),
              ],
            ),
          );
        }
    );
  }
}