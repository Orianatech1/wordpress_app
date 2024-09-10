import 'dart:io';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdConfig {
  // ----Android----
  static const String appIdAndroid = 'ca-app-pub-9189875110268613~2007343204';
  static const String interstitialAdUnitIdAndroid = 'ca-app-pub-9189875110268613/2947602350';
  static const String bannerAdUnitIdAndroid = 'ca-app-pub-9189875110268613/4476829534';
  static const String nativeAdUnitIdAnndroid = 'ca-app-pub-9189875110268613/4173577201';

  // ----iOS------
  static const String appIdiOS = 'ca-app-pub-9189875110268613~2007343204';
  static const String interstitialAdUnitIdiOS = 'ca-app-pub-9189875110268613/2947602350';
  static const String bannerAdUnitIdiOS = 'ca-app-pub-9189875110268613/4476829534';
  static const String nativeAdUnitIdiOS = 'ca-app-pub-9189875110268613/4173577201';

  // -- Don't edit these --

  static Future initAdmob() async {
    await MobileAds.instance.initialize();
  }

  static String getAdmobAppId() {
    if (Platform.isAndroid) {
      return appIdAndroid;
    } else {
      return appIdiOS;
    }
  }

  static String getBannerAdUnitId() {
    if (Platform.isAndroid) {
      return bannerAdUnitIdAndroid;
    } else {
      return bannerAdUnitIdiOS;
    }
  }

  static String getInterstitialAdUnitId() {
    if (Platform.isAndroid) {
      return interstitialAdUnitIdAndroid;
    } else {
      return interstitialAdUnitIdiOS;
    }
  }


  static String getNativeAdUnitId() {
    if (Platform.isAndroid) {
      return nativeAdUnitIdAnndroid;
    } else {
      return nativeAdUnitIdiOS;
    }
  }
}
