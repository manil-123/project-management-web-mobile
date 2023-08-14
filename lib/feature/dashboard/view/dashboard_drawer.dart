import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:project_management_web_and_mobile/app/constants/app_colors.dart';
import 'package:project_management_web_and_mobile/app/routing/app_router.gr.dart';
import 'package:project_management_web_and_mobile/app/theme/text_styles.dart';
import 'package:project_management_web_and_mobile/feature/auth/provider/auth_provider.dart';
import 'package:project_management_web_and_mobile/providers/dependency_providers.dart';
import 'package:project_management_web_and_mobile/utils/extensions/padding_extension.dart';

final selectedScreenProvider = StateProvider<int>((ref) => 0);

class DashboardDrawer extends HookConsumerWidget {
  const DashboardDrawer({
    super.key,
    required this.contentRouter,
    this.scaffoldKey,
  });

  final GlobalKey<AutoRouterState> contentRouter;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userDetailFuture = useMemoized(
      () => ref.read(userDaoProvider).getUserDetails(),
    );
    final userRef = useFuture(userDetailFuture);

    final selectedScreenIndex = ref.watch(selectedScreenProvider);

    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
              ).pR(10),
              Text(
                userRef.data != null ? userRef.data!.username : '',
                style: const TextStyle(color: Colors.white),
              )
            ],
          ).pX(20).pB(20),
          DrawerItem(
            icon: Icons.dashboard,
            title: 'Projects',
            onTap: () {
              ref.read(selectedScreenProvider.notifier).state = 0;
              final router = contentRouter.currentState!.controller;
              router?.replace(
                const ProjectsRoute(),
              );
              toggleDrawer();
            },
            isSelected: selectedScreenIndex == 0,
          ),
          DrawerItem(
            icon: Icons.task,
            title: 'Tasks',
            onTap: () {
              ref.read(selectedScreenProvider.notifier).state = 1;
              final router = contentRouter.currentState?.controller;
              router?.replace(
                const TasksRoute(),
              );
              toggleDrawer();
            },
            isSelected: selectedScreenIndex == 1,
          ),
          DrawerItem(
            icon: Icons.settings,
            title: 'Settings',
            onTap: () {
              toggleDrawer();
              ref.read(selectedScreenProvider.notifier).state = 2;
              final router = contentRouter.currentState?.controller;
              router?.replace(
                const SettingsRoute(),
              );
            },
            isSelected: selectedScreenIndex == 2,
          ),
          DrawerItem(
            icon: Icons.logout,
            title: 'Log out',
            onTap: () {
              _logOut(context, ref);
            },
            isSelected: selectedScreenIndex == 3,
          ).pT(100),
        ],
      ).pY(30).pB(30),
    );
  }

  void _logOut(BuildContext context, WidgetRef ref) {
    Future(
      () => showCupertinoModalPopup<void>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Do you want to log out?'),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.kRedColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              ),
              onPressed: () {
                ref.read(authProvider.notifier).logOut();
                ref.invalidate(selectedScreenProvider);
                ref.read(loginDaoProvider).clear();
                ref.invalidate(authProvider);
                ctx.router.pushAndPopUntil(
                  AuthRoute(),
                  predicate: (route) => false,
                );
              },
              child: const Text('Confirm'),
            ),
          ],
        ),
      ),
    );
  }

  toggleDrawer() async {
    if (!kIsWeb) {
      if (scaffoldKey!.currentState!.isDrawerOpen) {
        scaffoldKey!.currentState!.openEndDrawer();
      } else {
        scaffoldKey!.currentState!.openDrawer();
      }
    }
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  });

  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      selectedTileColor: Colors.red,
      hoverColor: Colors.red.withOpacity(0.5),
      leading: Icon(
        icon,
        color: Colors.white,
      ).pL(24),
      title: Text(
        title,
        style: AppTextStyle.semiBoldText14.copyWith(color: Colors.white),
      ).pL(12),
      onTap: () => onTap(),
    );
  }
}
