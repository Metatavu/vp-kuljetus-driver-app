import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:vp_kuljetus_driver_app/providers/authentication/authentication_providers.dart";
import "package:vp_kuljetus_driver_app/views/drive_log/driver_log_app_bar.dart";
import "package:vp_kuljetus_driver_app/views/login/login_screen.dart";
import "package:vp_kuljetus_driver_app/views/main_tabs/main_tabs_view.dart";
import "package:vp_kuljetus_driver_app/views/route_tasks/route_tasks_screen.dart";
import "package:vp_kuljetus_driver_app/views/routes/routes_screen.dart";
import "package:vp_kuljetus_driver_app/views/splash/splash_screen.dart";
import "package:vp_kuljetus_driver_app/views/task_details/task_details_screen.dart";
import "package:vp_kuljetus_driver_app/views/vehicle/vehicle_screen.dart";

part "router.g.dart";

@riverpod
GoRouter router(final RouterRef ref) {
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: "navigatorKey");
  final authenticated = ValueNotifier(const AsyncValue<bool>.loading());

  ref
    ..onDispose(authenticated.dispose)
    ..listen(
      authNotifierProvider.select(
        (final value) => value.whenData((final value) => value != null),
      ),
      (final _, final next) => authenticated.value = next,
    );

  final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: "/",
    refreshListenable: authenticated,
    debugLogDiagnostics: true,
    redirect: (final context, final state) =>
        handleRedirect(context, state, authenticated),
    routes: [
      GoRoute(
        path: "/",
        name: "splash",
        pageBuilder: (final context, final state) => const NoTransitionPage(
          child: SplashScreen(),
        ),
      ),
      GoRoute(
        path: "/login",
        name: "login",
        pageBuilder: (final context, final state) => const NoTransitionPage(
          child: LoginScreen(),
        ),
      ),
      ShellRoute(
        pageBuilder: (
          final context,
          final state,
          final child,
        ) =>
            NoTransitionPage(
          child: Scaffold(
            appBar: AppBar(titleSpacing: 0, title: const DriverLogAppBar()),
            body: child,
          ),
        ),
        routes: [
          ShellRoute(
            pageBuilder: (
              final context,
              final state,
              final child,
            ) =>
                NoTransitionPage(child: MainTabsView(child: child)),
            routes: [
              GoRoute(
                name: "vehicle",
                path: "/vehicle",
                pageBuilder: (final context, final state) =>
                    const NoTransitionPage(child: VehiclePage()),
              ),
              GoRoute(
                name: "routes",
                path: "/routes",
                pageBuilder: (final context, final state) =>
                    const NoTransitionPage(child: RoutesScreen()),
                routes: [
                  GoRoute(
                    name: "routeTasks",
                    path: ":routeId/tasks",
                    pageBuilder: (final context, final state) =>
                        const NoTransitionPage(child: RouteTasksScreen()),
                    routes: [
                      GoRoute(
                        name: "taskDetails",
                        path: ":taskId",
                        pageBuilder: (final context, final state) =>
                            const NoTransitionPage(child: TaskDetailsScreen()),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );

  ref.onDispose(router.dispose);

  return router;
}

String? handleRedirect(
  final BuildContext context,
  final GoRouterState state,
  final ValueNotifier<AsyncValue<bool>> authenticatedNotifier,
) {
  if (authenticatedNotifier.value.unwrapPrevious().hasError) return "/login";

  if (authenticatedNotifier.value.isLoading ||
      !authenticatedNotifier.value.hasValue) {
    return "/";
  }

  final auth = authenticatedNotifier.value.requireValue;

  final isSplash = state.uri.path == "/";
  if (isSplash) return auth ? "/vehicle" : "/login";

  final isLoggingIn = state.uri.path == "/login";
  if (isLoggingIn) return auth ? "/vehicle" : null;

  return auth ? null : "/login";
}
