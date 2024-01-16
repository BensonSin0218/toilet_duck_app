import "package:toilet_duck/bindings/form_binding.dart";
import "package:toilet_duck/bindings/other_platform_sign_method_binding.dart";
import "package:toilet_duck/bindings/p0/introduction/introduction_page_binding.dart";
import "package:toilet_duck/bindings/p0/sign_in/sign_in_page_binding.dart";
import "package:toilet_duck/bindings/p0/sign_up/sign_up_page_binding.dart";
import "package:toilet_duck/bindings/splash/splash_page_binding.dart";
import "package:toilet_duck/pages/not_found/not_found_page.dart";
import "package:toilet_duck/pages/p0/introduction/introduction_page.dart";
import "package:toilet_duck/pages/p0/sign_in/sign_in_page.dart";
import "package:toilet_duck/pages/p0/sign_up/sign_up_page.dart";
import "package:toilet_duck/pages/p1/home/home_page.dart";
import "package:toilet_duck/pages/splash/splash_page.dart";

import "package:get/get.dart";

part "app_routes.dart";

class AppPages {
  static const String init = AppRoutes.splash;

  static final List<GetPage> routes = [
    GetPage(
        name: AppRoutes.splash,
        page: () => SplashPage(),
        binding: SplashPageBinding(),
        transition: Transition.downToUp),
    GetPage(
        name: AppRoutes.introduction,
        page: () => IntroductionPage(),
        binding: IntroductionPageBinding(),
        transition: Transition.fadeIn),
    GetPage(
        name: AppRoutes.signIn,
        page: () => SignInPage(),
        bindings: [
          SignInPageBinding(),
          FormBinding(),
          OtherPlatformSignMethodBinding()
        ],
        transition: Transition.downToUp),
    GetPage(
        name: AppRoutes.signUp,
        page: () => SignUpPage(),
        bindings: [
          SignUpPageBinding(),
          FormBinding(),
          OtherPlatformSignMethodBinding()
        ],
        transition: Transition.downToUp),
    GetPage(
        name: AppRoutes.home,
        page: () => HomePage(),
        transition: Transition.fadeIn)
  ];

  static final GetPage notFound = GetPage(
      name: AppRoutes.notFound,
      page: () => NotFoundPage(),
      transition: Transition.fadeIn);
}
