import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterfinal/features/authentication/create_account_screen.dart.dart';
import 'package:flutterfinal/features/authentication/login_screen.dart';
import 'package:flutterfinal/features/authentication/repos/authentication_repo.dart';
import 'package:flutterfinal/features/authentication/sign_up_screen.dart';
import 'package:flutterfinal/features/home/home_screen.dart';
import 'package:go_router/go_router.dart';

final routerProvider = Provider((ref) {
  ref.watch(authState);
  return GoRouter(
    initialLocation: "/",
    redirect: (context, state) {
      final isLoggedIn = ref.read(authRepo).isLoggedIn;
      if (!isLoggedIn) {
        if (state.matchedLocation != SignUpScreen.routeURL &&
            state.matchedLocation != LoginScreen.routeURL) {
          return SignUpScreen.routeURL;
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        name: SignUpScreen.routeName,
        path: SignUpScreen.routeURL,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        name: LoginScreen.routeName,
        path: LoginScreen.routeURL,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: CreateAccountScreen.routeName,
        path: CreateAccountScreen.routeURL,
        builder: (context, state) => const CreateAccountScreen(),
      ),
      GoRoute(
        name: HomeScreen.routeName,
        path: HomeScreen.routeURL,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
});
