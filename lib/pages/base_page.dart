import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flw_app/home/domain/bloc/home_bloc.dart';
import 'package:flw_app/login/auth_provider.dart';
import 'package:flw_app/login/login_page.dart';
import 'package:heroicons/heroicons.dart';
import 'package:provider/provider.dart';

import '../app/router/app_router.dart';
import '../core/widgets/bottom_vavigation_bar_custom.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('build base page');
    var isAuth = context.watch<AuthProvider>().logged;
    return !isAuth
        ? LoginPage()
        : AutoTabsRouter(
            routes: const [TripRoute(), ProfileRoute()],
            builder: (context, child, animation) {
              final tabsRouter = AutoTabsRouter.of(context);
              return Scaffold(
                body: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
                bottomNavigationBar: BottomNavigationBarCustom(
                  currentIndex: tabsRouter.activeIndex,
                  onTap: (index) {
                    // here we switch between tabs
                    tabsRouter.setActiveIndex(index);
                    if (index == 0) {
                      context.read<HomeBloc>().add(HomeEvent.read());
                    }
                  },
                  items: [
                    BottomNavigationBarItemCustom(
                      icon: HeroIcons.home,
                      label: 'Главная',
                    ),
                    BottomNavigationBarItemCustom(
                      icon: HeroIcons.identification,
                      label: 'Профиль',
                    )
                  ],
                ),
              );
            },
          );
  }
}
