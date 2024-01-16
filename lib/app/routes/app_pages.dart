import 'package:get/get.dart';

import '../modules/bookingorder/bindings/bookingorder_binding.dart';
import '../modules/bookingorder/views/bookingorder_view.dart';
import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/community_view.dart';
import '../modules/community_contribution/bindings/community_contribution_binding.dart';
import '../modules/community_contribution/views/community_contribution_view.dart';
import '../modules/community_post/bindings/community_post_binding.dart';
import '../modules/community_post/views/community_post_view.dart';
import '../modules/foodDetails/bindings/food_details_binding.dart';
import '../modules/foodDetails/views/food_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/mainWrapper/bindings/main_wrapper_binding.dart';
import '../modules/mainWrapper/views/main_wrapper_view.dart';
import '../modules/orders/bindings/orders_binding.dart';
import '../modules/orders/views/orders_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => const IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_WRAPPER,
      page: () => MainWrapperView(),
      binding: MainWrapperBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.ORDERS,
      page: () => const OrdersView(),
      binding: OrdersBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY,
      page: () => const CommunityView(),
      binding: CommunityBinding(),
    ),
    GetPage(
      name: _Paths.FOOD_DETAILS,
      page: () => FoodDetailsView(),
      binding: FoodDetailsBinding(),
    ),
    GetPage(
      name: _Paths.BOOKINGORDER,
      page: () => const BookingorderView(),
      binding: BookingorderBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY_POST,
      page: () => const CommunityPostView(),
      binding: CommunityPostBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY_CONTRIBUTION,
      page: () => const CommunityContributionView(),
      binding: CommunityContributionBinding(),
    ),
  ];
}
