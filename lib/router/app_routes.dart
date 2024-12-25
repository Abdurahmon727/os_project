import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:os_project/src/auth/login/bloc/login_bloc.dart";
import "package:os_project/src/auth/login/login_page.dart";
import "package:os_project/src/auth/registrantion/bloc/registration_bloc.dart";
import "package:os_project/src/auth/registrantion/registration_page.dart";
import "package:os_project/src/client/home/bloc/client_home_bloc.dart";
import "package:os_project/src/client/home/home_page.dart";
import "package:os_project/src/client/post_detail/bloc/post_detail_bloc.dart";
import "package:os_project/src/owner/create_post/bloc/create_post_bloc.dart";
import "package:os_project/src/owner/create_post/create_post_page.dart";
import "package:os_project/src/owner/home/homa_page.dart";
import "package:os_project/src/sys_admin/check_post/bloc/check_post_bloc.dart";
import "package:os_project/src/sys_admin/check_post/check_post_page.dart";
import "package:os_project/src/sys_admin/home/homa_page.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "../core/local_source/local_source.dart";
import "../data/posts/post_model.dart";
import "../src/client/post_detail/detail_page.dart";
import "../src/owner/home/bloc/owner_home_bloc.dart";
import "../src/splash/splash_page.dart";
import "../src/sys_admin/home/bloc/sys_admin_home_bloc.dart";
import "../service/service_locator.dart";

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
      builder: (_, state) => BlocProvider(
        create: (_) => sl<RegistrationBloc>(),
        child: const RegistrationPage(),
      ),
    ),
    GoRoute(
      path: Routes.login,
      name: Routes.login,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) => BlocProvider(
        create: (_) => sl<LoginBloc>(),
        child: const LoginPage(),
      ),
    ),

    /// owner
    GoRoute(
      path: Routes.ownerHome,
      name: Routes.ownerHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) => BlocProvider(
        create: (_) => sl<OwnerHomeBloc>()..add(const OwnerHomeEvent.init()),
        child: const OwnerHomePage(),
      ),
    ),
    GoRoute(
      path: Routes.createPost,
      name: Routes.createPost,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) => BlocProvider(
        create: (_) => sl<CreatePostBloc>(),
        child: const CreatePostPage(),
      ),
    ),

    /// client
    GoRoute(
      path: Routes.clientHome,
      name: Routes.clientHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) => BlocProvider(
        create: (_) => sl<ClientHomeBloc>()..add(ClientHomeEvent.init()),
        child: const ClientHomePage(),
      ),
    ),
    GoRoute(
      path: Routes.clientPostDetail,
      name: Routes.clientPostDetail,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) {
        final post = state.extra as PostModel;
        return BlocProvider(
          create: (_) => sl<PostDetailBloc>(),
          child: PostDetailPage(post: post),
        );
      },
    ),

    /// sys-admin
    GoRoute(
      path: Routes.sysAdminHome,
      name: Routes.sysAdminHome,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) => BlocProvider(
        create: (_) => sl<SysAdminHomeBloc>()..add(const SysAdminHomeEvent.init()),
        child: const SysAdminHomePage(),
      ),
    ),
    GoRoute(
      path: Routes.checkPost,
      name: Routes.checkPost,
      parentNavigatorKey: rootNavigatorKey,
      builder: (_, state) {
        final post = state.extra as PostModel;
        return BlocProvider(
          create: (_) => sl<CheckPostBloc>(),
          child: CheckPostPage(post: post),
        );
      },
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

    /// home feature
    // GoRoute(
    //   path: Routes.story,
    //   name: Routes.story,
    //   parentNavigatorKey: rootNavigatorKey,
    //   builder: (_, __) => const StoryPage(),
    // ),
  ],
);
