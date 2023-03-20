import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sic_app/services/constants.dart';
import 'package:sic_app/views/account/account.dart';
import 'package:sic_app/views/help/help.dart';
import 'package:sic_app/views/home/home.dart';
import 'package:sic_app/views/news/news.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            const HomeScreen(),
            const NewsScreen(),
            const HelpScreen(),
            // Container(),
            const AccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController!.jumpToPage(index);
        },
        selectedItemColor: kPrimaryColor,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                Iconsax.home,
                color: _currentIndex == 0
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                Iconsax.book,
                color: _currentIndex == 1
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                Iconsax.info_circle,
                color: _currentIndex == 2
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            label: 'Help',
          ),
          // BottomNavigationBarItem(
          //   icon: Padding(
          //     padding: const EdgeInsets.only(bottom: 3.0),
          //     child: Icon(
          //       Iconsax.alarm,
          //       color: _currentIndex == 3
          //           ? Theme.of(context).colorScheme.primary
          //           : const Color.fromRGBO(153, 153, 153, 1),
          //     ),
          //   ),
          //   label: 'Emergency',
          // ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                Iconsax.user,
                color: _currentIndex == 3
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
