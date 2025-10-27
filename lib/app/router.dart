import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";
import "package:loader_overlay/loader_overlay.dart";
import "package:riverpod_annotation/riverpod_annotation.dart";
import "package:vp_kuljetus_driver_app/models/authentication/authentication.dart";
import "package:vp_kuljetus_driver_app/providers/app_authentication/app_authentication_providers.dart";
import "package:vp_kuljetus_driver_app/providers/app_authentication/authemtication_store_utilities.dart";
import "package:vp_kuljetus_driver_app/services/store/store.dart";
import "package:vp_kuljetus_driver_app/views/drive_log/driver_log_app_bar.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_page.dart";
import "package:vp_kuljetus_driver_app/views/employee/employee_screen.dart";
import "package:vp_kuljetus_driver_app/views/login/client_app_confirm_screen.dart";
import "package:vp_kuljetus_driver_app/views/login/client_app_screen.dart";
import "package:vp_kuljetus_driver_app/views/login/driver_login_screen.dart";
import "package:vp_kuljetus_driver_app/views/login/employee_login_screen.dart";
import "package:vp_kuljetus_driver_app/views/login/login_screen_shell.dart";
import "package:vp_kuljetus_driver_app/views/login/login_selection_screen.dart";
import "package:vp_kuljetus_driver_app/views/main_tabs/main_tabs_view.dart";
import "package:vp_kuljetus_driver_app/views/route_tasks/route_tasks_screen.dart";
import "package:vp_kuljetus_driver_app/views/routes/routes_screen.dart";
import "package:vp_kuljetus_driver_app/views/splash/splash_screen.dart";
import "package:vp_kuljetus_driver_app/views/task_details/task_details_screen.dart";
import "package:vp_kuljetus_driver_app/views/vehicle/vehicle_screen.dart";
import "package:vp_kuljetus_driver_app/widgets/hardware_back_handler.dart";

part "router.g.dart";

@riverpod
GoRouter router(final Ref ref) {
  final navigatorKey = GlobalKey<NavigatorState>(debugLabel: "navigatorKey");
  final appAuthProvider = ref.watch(appAuthNotifierProvider);

  final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: "/",
    refreshListenable: appAuthProvider.value?.accessToken != null
        ? ValueNotifier<bool>(true)
        : ValueNotifier<bool>(false),
    debugLogDiagnostics: true,
    redirect: (final context, final state) => handleRedirect(
      context,
      state,
      appAuthProvider,
      ref.read(appAuthNotifierProvider.notifier),
    ),
    routes: [
      GoRoute(
        path: "/",
        name: "splash",
        pageBuilder: (final context, final state) =>
            const NoTransitionPage(child: SplashScreen()),
      ),
      ShellRoute(
        pageBuilder: (final context, final state, final child) =>
            NoTransitionPage(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: LoaderOverlay(
                  child: LoginScreenShell(
                    navigateBackVisible:
                        state.uri.toString() != "/login" &&
                        !state.uri.toString().startsWith("/client-app"),
                    child: child,
                  ),
                ),
              ),
            ),
        routes: [
          GoRoute(
            path: "/client-app",
            name: "clientApp",
            pageBuilder: (final context, final state) =>
                const NoTransitionPage(child: ClientAppScreen()),
            routes: [
              GoRoute(
                path: ":deviceId/confirm",
                name: "confirmClientApp",
                pageBuilder: (final context, final state) {
                  final deviceId = state.pathParameters["deviceId"]!;
                  final clientAppName =
                      state.uri.queryParameters["clientAppName"];

                  return NoTransitionPage(
                    child: ConfirmClientAppScreen(
                      deviceId: deviceId,
                      clientAppName: clientAppName,
                    ),
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: "/login",
            name: "login",
            pageBuilder: (final context, final state) =>
                const NoTransitionPage(child: LoginSelectionScreen()),
            routes: [
              GoRoute(
                path: "driver",
                name: "driverLogin",
                pageBuilder: (final context, final state) =>
                    const NoTransitionPage(child: DriverLoginScreen()),
              ),
              GoRoute(
                path: "employee",
                name: "employeeLogin",
                pageBuilder: (final context, final state) =>
                    const NoTransitionPage(child: EmployeeLoginScreen()),
              ),
            ],
          ),
        ],
      ),
      ShellRoute(
        pageBuilder: EmployeePage.builder,
        routes: [
          GoRoute(
            path: "/employee",
            name: "employee",
            pageBuilder: (final context, final state) =>
                const NoTransitionPage(child: EmployeeScreen()),
          ),
        ],
      ),
      ShellRoute(
        pageBuilder: (final context, final state, final child) {
          final statusBarHeight = MediaQuery.of(context).viewPadding.top;
          final defaultPanelHeight = statusBarHeight + 54;
          final contentHeight =
              MediaQuery.of(context).size.height - defaultPanelHeight;

          return NoTransitionPage(
            child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  const DriverLogAppBar(),
                  Container(
                    constraints: BoxConstraints.loose(
                      Size.fromHeight(contentHeight),
                    ),
                    child: child,
                  ),
                ],
              ),
            ),
          );
        },
        routes: [
          ShellRoute(
            pageBuilder: (final context, final state, final child) =>
                NoTransitionPage(child: MainTabsView(child: child)),
            routes: [
              GoRoute(
                name: "vehicle",
                path: "/vehicle",
                redirect: handleRedirectIfOngoingTasks,
                pageBuilder: (final context, final state) =>
                    const NoTransitionPage(child: VehicleScreen()),
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
                        const NoTransitionPage(
                          child: HardwareBackHandler(
                            gotoPath: "/routes",
                            child: RouteTasksScreen(),
                          ),
                        ),
                    routes: [
                      GoRoute(
                        name: "taskDetails",
                        path: "task-details",
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

Future<String?> handleRedirect(
  final BuildContext context,
  final GoRouterState state,
  final AsyncValue<AuthenticationState?> authState,
  final AppAuthNotifier appAuthNotifier,
) async {
  final sessionType = await readLastSessionType();
  final lastRefreshToken = await readRefreshToken();

  // Force redirect to client app creation if it's not created
  if (!getClientAppCreated()) return "/client-app";
  if (state.uri.toString().startsWith("/client-app")) {
    return state.uri.toString();
  }

  final loginPaths = ["/login", "/login/driver", "/login/employee"];
  final mainViewPaths = ["/vehicle", "/employee", "/"];
  if (!mainViewPaths.contains(state.uri.toString()) &&
      !loginPaths.contains(state.uri.toString())) {
    return null;
  }

  // Redirect to login if not authenticated or authentication is loading or has error
  if (authState.unwrapPrevious().hasError ||
      authState.isLoading ||
      !authState.hasValue) {
    return "/login";
  }

  if (authState.value?.isExpired == false && sessionType != null) {
    if (sessionType == SessionType.driver) {
      return "/vehicle";
    } else if (sessionType == SessionType.terminal) {
      return "/employee";
    }
  }

  final auth = authState.value != null;

  final currentRoute = state.uri.toString();
  // Redirect to login if we're going to splash
  if (currentRoute == "/") return "/login";
  // Don't redirect if we're already on a login path
  if (loginPaths.contains(currentRoute) || sessionType == null) return null;

  return switch (sessionType) {
    // Redirect to driver login if not authenticated
    SessionType.driver => auth ? null : "/login/driver",
    // Redirect to employee login if not authenticated
    SessionType.terminal => auth ? null : "/login/employee",
    // Don't redirect if in loginPaths, otherwise redirect to login if last session type is unknown
    _ => loginPaths.contains(currentRoute) ? null : "/login",
  };
}

String? handleRedirectIfOngoingTasks(
  final BuildContext context,
  final GoRouterState state,
) {
  final ongoingTaskData = store.getStringList(ongoingTaskDataStoreKey);
  if (ongoingTaskData == null) return null;

  final routeId = ongoingTaskData[0];
  final taskIds = ongoingTaskData.slice(1);

  return Uri(
    path: "/routes/$routeId/tasks/task-details",
    queryParameters: {"taskIds": taskIds},
  ).toString();
}
