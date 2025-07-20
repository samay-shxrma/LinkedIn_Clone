import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/common/assets/assets.dart';
import 'package:myapp/common/color/colors.dart';
import 'package:myapp/modules/create%20post/view/create-post.screen.dart';
import 'package:myapp/modules/home/view/home_screen.dart';
import 'package:myapp/modules/home/my%20networks/view/my-networks.screen.dart';
import 'package:myapp/modules/jobs/view/jobs.dart';
import 'package:myapp/modules/notifications/view/notifications.screen.dart';

class MainPageViewScreen extends StatefulWidget {
  const MainPageViewScreen({super.key});

  @override
  State<MainPageViewScreen> createState() => _MainPageViewScreenState();
}

class _MainPageViewScreenState extends State<MainPageViewScreen> {
  List<Widget> _screens = const [
    HomeScreen(),
    MyNetworksScreen(),
    SizedBox(),
    NotificationsScreen(),
    JobsScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: _bottomBar(),
    );
  }

  BottomNavigationBar _bottomBar() {
    return BottomNavigationBar(
      fixedColor: Colors.black,
      showUnselectedLabels: true,
      unselectedItemColor: AppColors.grey,
      currentIndex: selectedIndex,
      onTap: (index) {
        if (index == 2) {
          Navigator.of(
            context,
          ).push(SwipeUpPageRoute(page: const CreatePostScreen()));
          return;
          // Navigator.push(
          //   context,
          // MaterialPageRoute(
          // builder:(context)=> const  CreatePostScreen(),
          // ),);
        }

        setState(() {
          selectedIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.white,
          label: "Home",
          icon: Image.asset(AppAssets.home),
        ),
        BottomNavigationBarItem(
          label: "My Network",
          icon: Image.asset(AppAssets.myNetwork),
        ),
        BottomNavigationBarItem(
          label: "Post",
          icon: Image.asset(AppAssets.post),
        ),
        BottomNavigationBarItem(
          label: "Notification",
          icon: Image.asset(AppAssets.notification),
        ),
        BottomNavigationBarItem(
          label: "Jobs",
          icon: Image.asset(AppAssets.jobs),
        ),
      ],
    );
  }
}

class SwipeUpPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  SwipeUpPageRoute({required this.page})
    : super(
        transitionDuration: const Duration(milliseconds: 200),
        // reverseTransitionDuration: const Duration(milliseconds: 250),
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final offsetAnimation = Tween<Offset>(
            begin: const Offset(0, 1), // From bottom
            end: Offset.zero, // To center
          ).animate(
            CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
          );

          final fadeAnimation = CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          );

          return FadeTransition(
            opacity: fadeAnimation,
            child: SlideTransition(position: offsetAnimation, child: child),
          );
        },
      );
}
