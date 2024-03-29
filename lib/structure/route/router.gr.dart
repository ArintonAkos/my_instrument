// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i23;

import '../../src/data/models/view_models/filter_data.dart' as _i24;
import '../../src/presentation/pages/auth/forgot_password_page/forgot_password.dart'
    as _i7;
import '../../src/presentation/pages/auth/forgot_password_verification_page/forgot_passsword_verification_page.dart'
    as _i9;
import '../../src/presentation/pages/auth/login_page/login_page.dart' as _i5;
import '../../src/presentation/pages/auth/register_page/register_page.dart'
    as _i6;
import '../../src/presentation/pages/auth/reset_password_page/reset_password_page.dart'
    as _i8;
import '../../src/presentation/pages/base/error_page.dart' as _i2;
import '../../src/presentation/pages/main/chatting_page/chatting_page.dart'
    as _i12;
import '../../src/presentation/pages/main/fav_page/fav.dart' as _i18;
import '../../src/presentation/pages/main/home_page/home_page.dart' as _i17;
import '../../src/presentation/pages/main/listing_page/listing_page.dart'
    as _i13;
import '../../src/presentation/pages/main/main_page.dart' as _i10;
import '../../src/presentation/pages/main/messages_page/messages_page.dart'
    as _i19;
import '../../src/presentation/pages/main/new_listing_page/new_listing_page.dart'
    as _i14;
import '../../src/presentation/pages/main/onboard_page/onboard_page.dart'
    as _i4;
import '../../src/presentation/pages/main/product_list_page/product_list_page.dart'
    as _i16;
import '../../src/presentation/pages/main/profile/about_page/about_page.dart'
    as _i11;
import '../../src/presentation/pages/main/profile/general_settings_page/general_settings_page.dart'
    as _i21;
import '../../src/presentation/pages/main/profile/general_settings_page/language_page/langauge_page.dart'
    as _i22;
import '../../src/presentation/pages/main/profile/user_settings_page/user_page.dart'
    as _i20;
import '../../src/presentation/pages/main/shopping_cart_page/shopping_cart_page.dart'
    as _i15;
import '../../src/presentation/pages/main/splash_page/splash_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i23.GlobalKey<_i23.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    BaseRouter.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    ErrorRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.ErrorPage());
    },
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SplashPage(key: args.key));
    },
    OnBoardRoute.name: (routeData) {
      final args = routeData.argsAs<OnBoardRouteArgs>(
          orElse: () => const OnBoardRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.OnBoardPage(key: args.key));
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.LoginPage(key: args.key));
    },
    RegisterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => RegisterRouteArgs(
              email: pathParams.optString('email'),
              name: pathParams.optString('name')));
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i6.RegisterPage(
              key: args.key, email: args.email, name: args.name));
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.ForgotPasswordPage());
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>();
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i8.ResetPasswordPage(
              key: args.key,
              email: args.email,
              resetPasswordToken: args.resetPasswordToken));
    },
    ForgotPasswordVerificationRoute.name: (routeData) {
      final args = routeData.argsAs<ForgotPasswordVerificationRouteArgs>();
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i9.ForgotPasswordVerificationPage(
              key: args.key,
              email: args.email,
              resetPasswordId: args.resetPasswordId));
    },
    MainRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.MainPage());
    },
    AboutRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i11.AboutPage());
    },
    EmptyRouterRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    ChattingRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChattingRouteArgs>(
          orElse: () =>
              ChattingRouteArgs(userId: pathParams.getString('userId')));
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.ChattingPage(key: args.key, userId: args.userId));
    },
    ListingRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ListingRouteArgs>(
          orElse: () =>
              ListingRouteArgs(id: pathParams.getString('listingId')));
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i13.ListingPage(key: args.key, id: args.id));
    },
    NewListingRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i14.NewListingPage());
    },
    ShoppingCartRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i15.ShoppingCartPage());
    },
    ProductListRoute.name: (routeData) {
      final args = routeData.argsAs<ProductListRouteArgs>();
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData,
          child:
              _i16.ProductListPage(key: args.key, filterData: args.filterData));
    },
    HomeRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.HomePage());
    },
    FavRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.FavPage());
    },
    MessagesRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.MessagesPage());
    },
    ProfileRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.UserPage());
    },
    BlankRoute.name: (routeData) {
      return _i1.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EmptyRouterPage());
    },
    GeneralSettingsRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i21.GeneralSettingsPage());
    },
    LanguageRoute.name: (routeData) {
      return _i1.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i22.LanguagePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthRouter.name, path: '/auth/', children: [
          _i1.RouteConfig(LoginRoute.name,
              path: 'login', parent: AuthRouter.name),
          _i1.RouteConfig(RegisterRoute.name,
              path: 'register/:email:name', parent: AuthRouter.name),
          _i1.RouteConfig(ForgotPasswordRoute.name,
              path: 'forgot-password', parent: AuthRouter.name),
          _i1.RouteConfig(ResetPasswordRoute.name,
              path: 'reset-password', parent: AuthRouter.name),
          _i1.RouteConfig(ForgotPasswordVerificationRoute.name,
              path: 'forgot-password-verification', parent: AuthRouter.name),
          _i1.RouteConfig('*#redirect',
              path: '*',
              parent: AuthRouter.name,
              redirectTo: 'login',
              fullMatch: true)
        ]),
        _i1.RouteConfig(BaseRouter.name, path: '/', children: [
          _i1.RouteConfig(MainRoute.name,
              path: 'main/',
              parent: BaseRouter.name,
              children: [
                _i1.RouteConfig(HomeRoute.name,
                    path: '', parent: MainRoute.name),
                _i1.RouteConfig(FavRoute.name,
                    path: 'favorites', parent: MainRoute.name),
                _i1.RouteConfig(MessagesRoute.name,
                    path: 'messages', parent: MainRoute.name),
                _i1.RouteConfig(ProfileRoute.name,
                    path: 'profile/', parent: MainRoute.name),
                _i1.RouteConfig(BlankRoute.name,
                    path: 'blank', parent: MainRoute.name),
                _i1.RouteConfig('*#redirect',
                    path: '*',
                    parent: MainRoute.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i1.RouteConfig(AboutRoute.name,
              path: 'about/', parent: BaseRouter.name),
          _i1.RouteConfig(EmptyRouterRoute.name,
              path: 'general-settings/',
              parent: BaseRouter.name,
              children: [
                _i1.RouteConfig(GeneralSettingsRoute.name,
                    path: '', parent: EmptyRouterRoute.name),
                _i1.RouteConfig(LanguageRoute.name,
                    path: 'language', parent: EmptyRouterRoute.name),
                _i1.RouteConfig('*#redirect',
                    path: '*',
                    parent: EmptyRouterRoute.name,
                    redirectTo: '',
                    fullMatch: true)
              ]),
          _i1.RouteConfig(ChattingRoute.name,
              path: 'chat/:userId', parent: BaseRouter.name),
          _i1.RouteConfig(ListingRoute.name,
              path: 'listing/:listingId', parent: BaseRouter.name),
          _i1.RouteConfig(NewListingRoute.name,
              path: 'new-listing/', parent: BaseRouter.name),
          _i1.RouteConfig(ShoppingCartRoute.name,
              path: 'cart', parent: BaseRouter.name),
          _i1.RouteConfig(ProductListRoute.name,
              path: 'products', parent: BaseRouter.name),
          _i1.RouteConfig('*#redirect',
              path: '*',
              parent: BaseRouter.name,
              redirectTo: '/main/',
              fullMatch: true)
        ]),
        _i1.RouteConfig(ErrorRoute.name, path: '/error'),
        _i1.RouteConfig(SplashRoute.name, path: '/splash'),
        _i1.RouteConfig(OnBoardRoute.name, path: '/onboard')
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class AuthRouter extends _i1.PageRouteInfo<void> {
  const AuthRouter({List<_i1.PageRouteInfo>? children})
      : super(AuthRouter.name, path: '/auth/', initialChildren: children);

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class BaseRouter extends _i1.PageRouteInfo<void> {
  const BaseRouter({List<_i1.PageRouteInfo>? children})
      : super(BaseRouter.name, path: '/', initialChildren: children);

  static const String name = 'BaseRouter';
}

/// generated route for
/// [_i2.ErrorPage]
class ErrorRoute extends _i1.PageRouteInfo<void> {
  const ErrorRoute() : super(ErrorRoute.name, path: '/error');

  static const String name = 'ErrorRoute';
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i1.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i23.Key? key})
      : super(SplashRoute.name,
            path: '/splash', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OnBoardPage]
class OnBoardRoute extends _i1.PageRouteInfo<OnBoardRouteArgs> {
  OnBoardRoute({_i23.Key? key})
      : super(OnBoardRoute.name,
            path: '/onboard', args: OnBoardRouteArgs(key: key));

  static const String name = 'OnBoardRoute';
}

class OnBoardRouteArgs {
  const OnBoardRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'OnBoardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.LoginPage]
class LoginRoute extends _i1.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({_i23.Key? key})
      : super(LoginRoute.name, path: 'login', args: LoginRouteArgs(key: key));

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({this.key});

  final _i23.Key? key;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.RegisterPage]
class RegisterRoute extends _i1.PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({_i23.Key? key, String? email, String? name})
      : super(RegisterRoute.name,
            path: 'register/:email:name',
            args: RegisterRouteArgs(key: key, email: email, name: name),
            rawPathParams: {'email': email, 'name': name});

  static const String name = 'RegisterRoute';
}

class RegisterRouteArgs {
  const RegisterRouteArgs({this.key, this.email, this.name});

  final _i23.Key? key;

  final String? email;

  final String? name;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, email: $email, name: $name}';
  }
}

/// generated route for
/// [_i7.ForgotPasswordPage]
class ForgotPasswordRoute extends _i1.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'forgot-password');

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i8.ResetPasswordPage]
class ResetPasswordRoute extends _i1.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute(
      {_i23.Key? key,
      required String email,
      required String resetPasswordToken})
      : super(ResetPasswordRoute.name,
            path: 'reset-password',
            args: ResetPasswordRouteArgs(
                key: key,
                email: email,
                resetPasswordToken: resetPasswordToken));

  static const String name = 'ResetPasswordRoute';
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs(
      {this.key, required this.email, required this.resetPasswordToken});

  final _i23.Key? key;

  final String email;

  final String resetPasswordToken;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email, resetPasswordToken: $resetPasswordToken}';
  }
}

/// generated route for
/// [_i9.ForgotPasswordVerificationPage]
class ForgotPasswordVerificationRoute
    extends _i1.PageRouteInfo<ForgotPasswordVerificationRouteArgs> {
  ForgotPasswordVerificationRoute(
      {_i23.Key? key, required String email, required String resetPasswordId})
      : super(ForgotPasswordVerificationRoute.name,
            path: 'forgot-password-verification',
            args: ForgotPasswordVerificationRouteArgs(
                key: key, email: email, resetPasswordId: resetPasswordId));

  static const String name = 'ForgotPasswordVerificationRoute';
}

class ForgotPasswordVerificationRouteArgs {
  const ForgotPasswordVerificationRouteArgs(
      {this.key, required this.email, required this.resetPasswordId});

  final _i23.Key? key;

  final String email;

  final String resetPasswordId;

  @override
  String toString() {
    return 'ForgotPasswordVerificationRouteArgs{key: $key, email: $email, resetPasswordId: $resetPasswordId}';
  }
}

/// generated route for
/// [_i10.MainPage]
class MainRoute extends _i1.PageRouteInfo<void> {
  const MainRoute({List<_i1.PageRouteInfo>? children})
      : super(MainRoute.name, path: 'main/', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i11.AboutPage]
class AboutRoute extends _i1.PageRouteInfo<void> {
  const AboutRoute() : super(AboutRoute.name, path: 'about/');

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class EmptyRouterRoute extends _i1.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i1.PageRouteInfo>? children})
      : super(EmptyRouterRoute.name,
            path: 'general-settings/', initialChildren: children);

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i12.ChattingPage]
class ChattingRoute extends _i1.PageRouteInfo<ChattingRouteArgs> {
  ChattingRoute({_i23.Key? key, required String userId})
      : super(ChattingRoute.name,
            path: 'chat/:userId',
            args: ChattingRouteArgs(key: key, userId: userId),
            rawPathParams: {'userId': userId});

  static const String name = 'ChattingRoute';
}

class ChattingRouteArgs {
  const ChattingRouteArgs({this.key, required this.userId});

  final _i23.Key? key;

  final String userId;

  @override
  String toString() {
    return 'ChattingRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i13.ListingPage]
class ListingRoute extends _i1.PageRouteInfo<ListingRouteArgs> {
  ListingRoute({_i23.Key? key, required String id})
      : super(ListingRoute.name,
            path: 'listing/:listingId',
            args: ListingRouteArgs(key: key, id: id),
            rawPathParams: {'listingId': id});

  static const String name = 'ListingRoute';
}

class ListingRouteArgs {
  const ListingRouteArgs({this.key, required this.id});

  final _i23.Key? key;

  final String id;

  @override
  String toString() {
    return 'ListingRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i14.NewListingPage]
class NewListingRoute extends _i1.PageRouteInfo<void> {
  const NewListingRoute() : super(NewListingRoute.name, path: 'new-listing/');

  static const String name = 'NewListingRoute';
}

/// generated route for
/// [_i15.ShoppingCartPage]
class ShoppingCartRoute extends _i1.PageRouteInfo<void> {
  const ShoppingCartRoute() : super(ShoppingCartRoute.name, path: 'cart');

  static const String name = 'ShoppingCartRoute';
}

/// generated route for
/// [_i16.ProductListPage]
class ProductListRoute extends _i1.PageRouteInfo<ProductListRouteArgs> {
  ProductListRoute({_i23.Key? key, required _i24.FilterData filterData})
      : super(ProductListRoute.name,
            path: 'products',
            args: ProductListRouteArgs(key: key, filterData: filterData));

  static const String name = 'ProductListRoute';
}

class ProductListRouteArgs {
  const ProductListRouteArgs({this.key, required this.filterData});

  final _i23.Key? key;

  final _i24.FilterData filterData;

  @override
  String toString() {
    return 'ProductListRouteArgs{key: $key, filterData: $filterData}';
  }
}

/// generated route for
/// [_i17.HomePage]
class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i18.FavPage]
class FavRoute extends _i1.PageRouteInfo<void> {
  const FavRoute() : super(FavRoute.name, path: 'favorites');

  static const String name = 'FavRoute';
}

/// generated route for
/// [_i19.MessagesPage]
class MessagesRoute extends _i1.PageRouteInfo<void> {
  const MessagesRoute() : super(MessagesRoute.name, path: 'messages');

  static const String name = 'MessagesRoute';
}

/// generated route for
/// [_i20.UserPage]
class ProfileRoute extends _i1.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile/');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i1.EmptyRouterPage]
class BlankRoute extends _i1.PageRouteInfo<void> {
  const BlankRoute() : super(BlankRoute.name, path: 'blank');

  static const String name = 'BlankRoute';
}

/// generated route for
/// [_i21.GeneralSettingsPage]
class GeneralSettingsRoute extends _i1.PageRouteInfo<void> {
  const GeneralSettingsRoute() : super(GeneralSettingsRoute.name, path: '');

  static const String name = 'GeneralSettingsRoute';
}

/// generated route for
/// [_i22.LanguagePage]
class LanguageRoute extends _i1.PageRouteInfo<void> {
  const LanguageRoute() : super(LanguageRoute.name, path: 'language');

  static const String name = 'LanguageRoute';
}
