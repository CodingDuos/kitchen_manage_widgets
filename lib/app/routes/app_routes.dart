// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const ADD_CREDIT = _Paths.ADD_CREDIT;
  static const kITCHEN = _Paths.kITCHEN;
  static const PROMOTION = _Paths.PROMOTION;
  static const WEBSETTINGS = _Paths.WEBSETTINGS;
  static const FOODHUB = _Paths.FOODHUB;
  static const WEBSETTINGSV1 = _Paths.WEBSETTINGSV1;
  static const DISPLAY_LEVEL_SETTINGS = _Paths.DISPLAY_LEVEL_SETTINGS;
  static const DISCOUNTS = _Paths.DISCOUNTS;
  static const MainLayOutPagesScreen = _Paths.MainLayOutPagesScreen;
  static const CUSTOM_DELIVERY_CHARGES = _Paths.CUSTOM_DELIVERY_CHARGES;
  static const FEEDBACK = _Paths.FEEDBACK;
  static const REPORT = _Paths.REPORT;
  static const APPOINTMENT = _Paths.APPOINTMENT;
  static const THEME_SELECT = _Paths.THEME_SELECT;
  static const INCOMING_ORDER = _Paths.INCOMING_ORDER;
}

abstract class _Paths {
  _Paths._();
  static const MainLayOutPagesScreen = '/mainlayout';
  static const kITCHEN = '/kitchen';
  static const PROMOTION = '/promotion';
  static const WEBSETTINGS = '/websettings';
  static const FOODHUB = '/foodhub';
  static const WEBSETTINGSV1 = '/websettingsv1';
  static const DISPLAY_LEVEL_SETTINGS = '/display-level-settings';
  static const DISCOUNTS = '/discounts';
  static const ADD_CREDIT = '/add-credit';
  static const CUSTOM_DELIVERY_CHARGES = '/custom-delivery-charges';
  static const FEEDBACK = '/feedback';
  static const REPORT = '/report';
  static const APPOINTMENT = '/appointment';
  static const THEME_SELECT = '/theme-select';
  static const INCOMING_ORDER = '/incoming-order';
}
