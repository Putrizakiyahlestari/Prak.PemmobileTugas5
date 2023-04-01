import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tugas05/configs/app_routes.dart';
import 'package:tugas05/models/user.dart';

import 'home_screen_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  late Size size;

  tapBottomItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: HeaderWidget(
                user: widget.user,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: SearchFieldWidget(),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: SectionTitle(
                    label: "Hotest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: InkWell(
                    onTap: () {
                      GoRouter.of(context).goNamed(
                        AppRoutes.newsDetailHot,
                      );
                    },
                    child: HotestNewsCard(
                      size: size,
                      newsTitle:
                          "Selalu Bahagia!",
                      pictureUrl:
                          "data:image/jpeg;base64,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",
                      onTap: () {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: SectionTitle(
                    label: "Latest News",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: LatestNewsIndexCardSection(
                    size: size,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: tapBottomItem,
        items: [
          bottomMenuItem(
            "Home",
            Icons.home_rounded,
          ),
          bottomMenuItem(
            "News",
            Icons.newspaper_rounded,
          ),
          bottomMenuItem(
            "Menu",
            Icons.menu_rounded,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomMenuItem(
    String label,
    IconData iconData,
  ) {
    return BottomNavigationBarItem(
      label: label,
      icon: Icon(
        iconData,
      ),
    );
  }
}
