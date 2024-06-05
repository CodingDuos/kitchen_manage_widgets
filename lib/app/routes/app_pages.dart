import 'package:get/get.dart';
import '../layoutassigned/binding/mainlayout_binding.dart';
import '../layoutassigned/view/main_layout_view.dart';
import '../modules/add_credit/bindings/add_credit_binding.dart';
import '../modules/add_credit/views/add_credit_view.dart';
import '../modules/appointment/bindings/appointment_binding.dart';
import '../modules/appointment/views/appointment_view.dart';
import '../modules/custom_delivery_charges/bindings/custom_delivery_charges_binding.dart';
import '../modules/custom_delivery_charges/views/custom_delivery_charges_view.dart';
import '../modules/discounts/bindings/discounts_binding.dart';
import '../modules/discounts/views/discounts_view.dart';
import '../modules/display_level_settings/bindings/display_level_settings_binding.dart';
import '../modules/display_level_settings/views/display_level_settings_view.dart';
import '../modules/display_level_settings_New/bindings/websettingsv1_binding.dart';
import '../modules/display_level_settings_New/views/websettingsv1_view.dart';
import '../modules/feedback/bindings/feedback_binding.dart';
import '../modules/feedback/views/feedback_view.dart';
import '../modules/foodhub/bindings/foodhub_binding.dart';
import '../modules/foodhub/views/foodhub_view.dart';
import '../modules/incoming_order/bindings/incoming_order_binding.dart';
import '../modules/incoming_order/views/incoming_order_view.dart';
import '../modules/kitchen/bindings/kitchen_binding.dart';
import '../modules/kitchen/views/kitchen_view.dart';
import '../modules/promotion/bindings/promotion_binding.dart';
import '../modules/promotion/views/promotion_view.dart';
import '../modules/report/bindings/report_binding.dart';
import '../modules/report/views/report_view.dart';
import '../modules/theme_select/bindings/theme_select_binding.dart';
import '../modules/theme_select/views/theme_select_view.dart';
import '../modules/websettings/bindings/websettings_binding.dart';
import '../modules/websettings/views/websettings_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const iNITIAL = Routes.MainLayOutPagesScreen;

  static final routes = [
    GetPage(
        name: _Paths.MainLayOutPagesScreen,
        page: () => const MainLayOutPagesScreens(),
        binding: MainLayoutBinding()),
    GetPage(
      name: _Paths.kITCHEN,
      page: () => KitchenView(),
      binding: KitchenBinding(),
    ),
    GetPage(
      name: _Paths.PROMOTION,
      page: () => const PromotionView(),
      binding: PromotionBinding(),
    ),
    GetPage(
      name: _Paths.WEBSETTINGS,
      page: () => const WebsettingsView(),
      binding: WebsettingsBinding(),
    ),
    GetPage(
      name: _Paths.FOODHUB,
      page: () => const FoodhubView(),
      binding: FoodhubBinding(),
    ),
    GetPage(
      name: _Paths.WEBSETTINGSV1,
      page: () => const Websettingsv1View(),
      binding: Websettingsv1Binding(),
    ),
    GetPage(
      name: _Paths.DISPLAY_LEVEL_SETTINGS,
      page: () => const DisplayLevelSettingsView(),
      binding: DisplayLevelSettingsBinding(),
    ),
    GetPage(
      name: _Paths.DISCOUNTS,
      page: () => const DiscountsView(),
      binding: DiscountsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CREDIT,
      page: () => const AddCreditView(),
      binding: AddCreditBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_DELIVERY_CHARGES,
      page: () => const CustomDeliveryChargesView(),
      binding: CustomDeliveryChargesBinding(),
    ),
    GetPage(
      name: _Paths.FEEDBACK,
      page: () => const FeedbackView(),
      binding: FeedbackBinding(),
    ),
    GetPage(
      name: _Paths.REPORT,
      page: () => const ReportView(),
      binding: ReportBinding(),
    ),
    GetPage(
      name: _Paths.APPOINTMENT,
      page: () => const AppointmentView(),
      binding: AppointmentBinding(),
    ),
    GetPage(
      name: _Paths.THEME_SELECT,
      page: () => const ThemeSelectView(),
      binding: ThemeSelectBinding(),
    ),
    GetPage(
      name: _Paths.INCOMING_ORDER,
      page: () => const IncomingOrderView(),
      binding: IncomingOrderBinding(),
    ),
  ];
}
