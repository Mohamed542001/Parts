// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/intro_screen/intro_screen_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_code/verify_code_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i9;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.Splash());
    },
    LoginRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.Login());
    },
    IntroScreenRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.IntroScreen());
    },
    RegisterRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.Register());
    },
    ActiveAccountRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i5.ActiveAccount());
    },
    VerifyCodeRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.VerifyCode());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.ResetPassword());
    },
    ForgetPasswordRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i8.ForgetPassword());
    },
    TermsRoute.name: (routeData) {
      return _i10.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i9.Terms());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(SplashRoute.name, path: '/'),
        _i10.RouteConfig(LoginRoute.name, path: '/Login'),
        _i10.RouteConfig(IntroScreenRoute.name, path: '/intro-screen'),
        _i10.RouteConfig(RegisterRoute.name, path: '/Register'),
        _i10.RouteConfig(ActiveAccountRoute.name, path: '/active-account'),
        _i10.RouteConfig(VerifyCodeRoute.name, path: '/verify-code'),
        _i10.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i10.RouteConfig(ForgetPasswordRoute.name, path: '/forget-password'),
        _i10.RouteConfig(TermsRoute.name, path: '/Terms')
      ];
}

/// generated route for
/// [_i1.Splash]
class SplashRoute extends _i10.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.Login]
class LoginRoute extends _i10.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/Login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i3.IntroScreen]
class IntroScreenRoute extends _i10.PageRouteInfo<void> {
  const IntroScreenRoute()
      : super(IntroScreenRoute.name, path: '/intro-screen');

  static const String name = 'IntroScreenRoute';
}

/// generated route for
/// [_i4.Register]
class RegisterRoute extends _i10.PageRouteInfo<void> {
  const RegisterRoute() : super(RegisterRoute.name, path: '/Register');

  static const String name = 'RegisterRoute';
}

/// generated route for
/// [_i5.ActiveAccount]
class ActiveAccountRoute extends _i10.PageRouteInfo<void> {
  const ActiveAccountRoute()
      : super(ActiveAccountRoute.name, path: '/active-account');

  static const String name = 'ActiveAccountRoute';
}

/// generated route for
/// [_i6.VerifyCode]
class VerifyCodeRoute extends _i10.PageRouteInfo<void> {
  const VerifyCodeRoute() : super(VerifyCodeRoute.name, path: '/verify-code');

  static const String name = 'VerifyCodeRoute';
}

/// generated route for
/// [_i7.ResetPassword]
class ResetPasswordRoute extends _i10.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i8.ForgetPassword]
class ForgetPasswordRoute extends _i10.PageRouteInfo<void> {
  const ForgetPasswordRoute()
      : super(ForgetPasswordRoute.name, path: '/forget-password');

  static const String name = 'ForgetPasswordRoute';
}

/// generated route for
/// [_i9.Terms]
class TermsRoute extends _i10.PageRouteInfo<void> {
  const TermsRoute() : super(TermsRoute.name, path: '/Terms');

  static const String name = 'TermsRoute';
}