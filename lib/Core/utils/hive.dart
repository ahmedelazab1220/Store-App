import 'package:hive_flutter/adapters.dart';

class AppHive {
  static const String tokenAndOnBoardingBox = 'tokenAndOnBoardingBox';
  static const String accessToken = 'accessToken';
  static const String refreshToken = 'refreshToken';
  static const String onBoarding = 'onBoarding';

  static const String userBox = 'userBox';
  static const String userEmail = 'userEmail';
  static const String userName = 'userName';
  static const String userImage = 'userImage';
  static const String userRole = 'userRole';
  static const String userPhoneNumber = 'userPhoneNumber';
  static const String userStateAddress = 'userStateAddress';
  static const String userCityAddress = 'userCityAddress';
  static const String userStreetAddress = 'userStreetAddress';

  Future<void> openBox({required String boxName}) async {
    await Hive.openBox(boxName);
  }

  getBox({required String boxName}) {
    return Hive.box(boxName);
  }

  putToBox(
      {required String key,
      required String value,
      required String boxName}) async {
    await openBox(boxName: boxName);
    getBox(boxName: boxName).put(key, value);
  }

  getFromBox({
    required String boxName,
    required String key,
  }) async {
    await openBox(boxName: boxName);
    return getBox(boxName: boxName).get(key);
  }

  static String? getaccessToken() {
    return Hive.box(tokenAndOnBoardingBox).get(accessToken);
  }

  static String? getRefreshToken() {
    return Hive.box(tokenAndOnBoardingBox).get(refreshToken);
  }

  static bool? isOnBoarding() {
    return Hive.box(tokenAndOnBoardingBox).get(onBoarding);
  }

  static Future<void> removeAccessToken() async {
    await Hive.box(tokenAndOnBoardingBox).put(accessToken, null);
  }

  static Future<void> removeRefreshToken() async {
    await Hive.box(tokenAndOnBoardingBox).put(refreshToken, null);
  }
}
