import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:os_project/features/auth/login/bloc/login_bloc.dart";
import "package:os_project/features/auth/login/login_page.dart";
import "package:os_project/features/auth/registrantion/registration_page.dart";
import "package:os_project/features/client/home/homa_page.dart";
import "package:os_project/features/owner/create_post/create_post_page.dart";
import "package:os_project/features/owner/home/homa_page.dart";
import "package:os_project/features/sys_admin/check_post/check_post_page.dart";
import "package:os_project/features/sys_admin/home/homa_page.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../core/local_source/local_source.dart";
import "../features/client/post_detail/detail_page.dart";
import "../features/splash/splash_page.dart";
import "../service_locator.dart";

part "name_routes.dart";

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final LocalSource localSource = sl<LocalSource>();

// final Chuck chuck = Chuck(navigatorKey: rootNavigatorKey);

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: Routes.splash,
  routes: <RouteBase>[
    /// splash
    GoRoute(
      path: Routes.splash,
      name: Routes.splash,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const SplashPage(),
    ),

    /// auth
    GoRoute(
      path: Routes.registration,
      name: Routes.registration,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const RegistrationPage(),
      //     BlocProvider(
      //   create: (_) => sl<HomeBloc>(),
      //   child: const HomePage(),
      // ),
    ),
    GoRoute(
      path: Routes.login,
      name: Routes.login,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => BlocProvider(
        create: (context) => sl<LoginBloc>(),
        child: const LoginPage(),
      ),
    ),

    /// owner
    GoRoute(
      path: Routes.ownerHome,
      name: Routes.ownerHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const OwnerHomePage(),
    ),
    GoRoute(
      path: Routes.createPost,
      name: Routes.createPost,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const CreatePostPage(),
    ),

    /// client
    GoRoute(
      path: Routes.clientHome,
      name: Routes.clientHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const ClientHomePage(),
    ),
    GoRoute(
      path: Routes.clientPostDetail,
      name: Routes.clientPostDetail,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const ClientPostDetailPage(),
    ),

    /// sys-admin
    GoRoute(
      path: Routes.sysAdminHome,
      name: Routes.sysAdminHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const SysAdminHomePage(),
    ),
    GoRoute(
      path: Routes.checkPost,
      name: Routes.checkPost,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, __) => const CheckPostPage(),
    ),

    // GoRoute(
    //   path: Routes.cities,
    //   name: Routes.cities,
    //   parentNavigatorKey: rootNavigatorKey,
    //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
    //     context: context,
    //     state: state,
    //     child: MultiBlocProvider(
    //       providers: [
    //         BlocProvider.value(value: sl<HomeBloc>()),
    //         BlocProvider(create: (_) => sl<CitiesBloc>())
    //       ],
    //       child: const CitiesPage(),
    //     ),
    //   ),
    // ),

    // StatefulShellRoute.indexedStack(
    //   parentNavigatorKey: rootNavigatorKey,
    //   builder: (
    //     _,
    //     GoRouterState state,
    //     StatefulNavigationShell navigationShell,
    //   ) =>
    //       BlocProvider<MainBloc>(
    //     key: state.pageKey,
    //     create: (_) => sl<MainBloc>(),
    //     child: MainPage(
    //       key: state.pageKey,
    //       navigationShell: navigationShell,
    //     ),
    //   ),
    //   branches: <StatefulShellBranch>[
    //     StatefulShellBranch(
    //       initialLocation: Routes.home,
    //       routes: <RouteBase>[
    //         GoRoute(
    //           path: Routes.home,
    //           name: Routes.home,
    //           builder: (_, __) => const HomePage(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       initialLocation: Routes.tv,
    //       routes: <RouteBase>[
    //         GoRoute(
    //           path: Routes.tv,
    //           name: Routes.tv,
    //           builder: (_, __) => const TvPage(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       initialLocation: Routes.catalog,
    //       routes: <RouteBase>[
    //         GoRoute(
    //           path: Routes.catalog,
    //           name: Routes.catalog,
    //           builder: (_, __) => const CatalogPage(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       initialLocation: Routes.favorites,
    //       routes: <RouteBase>[
    //         GoRoute(
    //           path: Routes.favorites,
    //           name: Routes.favorites,
    //           builder: (_, __) => const FavoritesPage(),
    //         ),
    //       ],
    //     ),
    //     StatefulShellBranch(
    //       initialLocation: Routes.profile,
    //       routes: <RouteBase>[
    //         GoRoute(
    //           path: Routes.profile,
    //           name: Routes.profile,
    //           builder: (_, __) => const ProfilePage(),
    //         ),
    //       ],
    //     ),
    //   ],
    // ),

    /// home features
    // GoRoute(
    //   path: Routes.story,
    //   name: Routes.story,
    //   parentNavigatorKey: rootNavigatorKey,
    //   builder: (_, __) => const StoryPage(),
    // ),
  ],
);
