import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pertemuan_v/modules/home_screen/home_screen.dart';
import 'package:pertemuan_v/modules/news_detail_screen/news_detail_screen.dart';
import 'package:pertemuan_v/modules/splash_screen/splash_screen.dart';

import '../models/news.dart';
import '../models/user.dart';

class AppRoutes {
  static const String splash = "splash";
  static const String home = "home";
  static const String newsDetail = "news-detail";

  static Page _splahScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _homeScreenBuilder(BuildContext context, GoRouterState state) {
    late User user;
    if (state.extra != null && state.extra is User) {
      user = state.extra! as User;
    } else {
      user = User(
        id: 2006179,
        name: "Ahmad Sanusi",
        username: "Nursanusi",
        email: "2006179@itg.ac.id",
        profilePhoto:
          "https://instagram.fcgk4-6.fna.fbcdn.net/v/t51.2885-19/317781967_668697141470486_6899652056192968667_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcgk4-6.fna.fbcdn.net&_nc_cat=102&_nc_ohc=MKJbVyfr1QkAX8j1eIk&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AfBp-I2C6CDRuKC1P6lXqXWq7cweuop6T5VDrau77oWHUg&oe=642A9347&_nc_sid=8fd12b",
        phoneNumber: "08579341801",
      );
    }
    return MaterialPage(
      child: HomeScreen(
        user: user,
      ),
    );
  }

  static Page _newsDetailScreenBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return MaterialPage(
      child: NewsDetailScreen(
        id: state.params["id"]!,
        news: state.extra as News,
      ),
    );
  }

  static final GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: "/splash",
        pageBuilder: _splahScreenBuilder,
      ),
      GoRoute(
        name: home,
        path: "/home",
        pageBuilder: _homeScreenBuilder,
        routes: [
          GoRoute(
            name: newsDetail,
            path: "news-detail:id",
            pageBuilder: _newsDetailScreenBuilder,
          ),
        ],
      ),
    ],
    initialLocation: "/splash",
  );
}
