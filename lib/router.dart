import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/screens/dashboard_screen.dart';
import 'package:myapp/screens/loading_screen.dart';
import 'package:myapp/screens/login_screen.dart';
import 'package:myapp/screens/welcome_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      path: '/loading',
      builder: (context, state) => const LoadingScreen(),
    ),
  ],
  redirect: (context, state) {
    final user = FirebaseAuth.instance.currentUser;
    final isLoggingIn = state.matchedLocation == '/login';
    final isWelcoming = state.matchedLocation == '/';

    // Show a loading screen during async operations
    if (state.matchedLocation == '/loading') return null;

    if (user == null) {
      if (isLoggingIn || isWelcoming) return null;
      return '/';
    }

    if (isLoggingIn || isWelcoming) {
      return '/dashboard';
    }

    return null;
  },
);
