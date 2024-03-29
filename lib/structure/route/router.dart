import 'package:auto_route/auto_route.dart';
import 'package:my_instrument/src/presentation/pages/auth/forgot_password_page/forgot_password.dart';
import 'package:my_instrument/src/presentation/pages/auth/forgot_password_verification_page/forgot_passsword_verification_page.dart';
import 'package:my_instrument/src/presentation/pages/auth/login_page/login_page.dart';
import 'package:my_instrument/src/presentation/pages/auth/register_page/register_page.dart';
import 'package:my_instrument/src/presentation/pages/auth/reset_password_page/reset_password_page.dart';
import 'package:my_instrument/src/presentation/pages/base/error_page.dart';
import 'package:my_instrument/src/presentation/pages/main/fav_page/fav.dart';
import 'package:my_instrument/src/presentation/pages/main/home_page/home_page.dart';
import 'package:my_instrument/src/presentation/pages/main/listing_page/listing_page.dart';
import 'package:my_instrument/src/presentation/pages/main/main_page.dart';
import 'package:my_instrument/src/presentation/pages/main/chatting_page/chatting_page.dart';
import 'package:my_instrument/src/presentation/pages/main/messages_page/messages_page.dart';
import 'package:my_instrument/src/presentation/pages/main/new_listing_page/new_listing_page.dart';
import 'package:my_instrument/src/presentation/pages/main/onboard_page/onboard_page.dart';
import 'package:my_instrument/src/presentation/pages/main/profile/about_page/about_page.dart';
import 'package:my_instrument/src/presentation/pages/main/profile/general_settings_page/general_settings_page.dart';
import 'package:my_instrument/src/presentation/pages/main/profile/general_settings_page/language_page/langauge_page.dart';
import 'package:my_instrument/src/presentation/pages/main/profile/user_settings_page/user_page.dart';
import 'package:my_instrument/src/presentation/pages/main/shopping_cart_page/shopping_cart_page.dart';
import 'package:my_instrument/src/presentation/pages/main/splash_page/splash_page.dart';
import 'package:my_instrument/src/presentation/pages/main/product_list_page/product_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/auth/',
      name: 'AuthRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: 'login', page: LoginPage),
        CupertinoRoute(path: 'register/:email:name', page: RegisterPage, ),
        CupertinoRoute(path: 'forgot-password', page: ForgotPasswordPage, ),
        CupertinoRoute(path: 'reset-password', page: ResetPasswordPage),
        CupertinoRoute(path: 'forgot-password-verification', page: ForgotPasswordVerificationPage),
        RedirectRoute(path: '*', redirectTo: 'login'),
      ]
    ),
    AutoRoute(
      path: '/',
      name: 'BaseRouter',
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: 'main/',
          page: MainPage,
          children: [
            AutoRoute(path: '', page: HomePage),
            AutoRoute(path: 'favorites', page: FavPage),
            AutoRoute(path: 'messages', page: MessagesPage),
            AutoRoute(path: 'profile/', name: 'ProfileRoute', page: UserPage, ),
            AutoRoute(path: 'blank', name: 'BlankRoute', page: EmptyRouterPage),
            RedirectRoute(path: '*', redirectTo: '')
          ]
        ),
        CupertinoRoute(
          path: 'about/',
          page: AboutPage,
        ),
        CupertinoRoute(
          path: 'general-settings/',
          page: EmptyRouterPage,
          children: [
            CupertinoRoute(path: '', page: GeneralSettingsPage, ),
            CupertinoRoute(path: 'language', page: LanguagePage, ),
            RedirectRoute(path: '*', redirectTo: ''),
          ]
        ),
        AutoRoute(path: 'chat/:userId', page: ChattingPage),
        CupertinoRoute(path: 'listing/:listingId', page: ListingPage),
        CupertinoRoute(path: 'new-listing/', page: NewListingPage, ),
        CupertinoRoute(path: 'cart', page: ShoppingCartPage),
        CupertinoRoute(path: 'products', page: ProductListPage),
        RedirectRoute(path: '*', redirectTo: '/main/'),
      ]
    ),
    AutoRoute(path: '/error', page: ErrorPage),
    AutoRoute(path: '/splash', page: SplashPage),
    AutoRoute(path: '/onboard', page: OnBoardPage)
  ],
)
class $AppRouter {}