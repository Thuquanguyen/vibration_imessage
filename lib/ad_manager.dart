import 'dart:io';

class AdManager {

  static final AdManager _singleton = AdManager._internal();

  factory AdManager() {
    return _singleton;
  }

  AdManager._internal();

  static String get sdkKey {
    return "hSsRnQ4Zzz5gbaWTKEftwpHxlJucNOpkZeBvEPnogcgWAAB9ERVIFHNG_WHhJTkHCh5AyFcRTF6kN711_nKE3d";
  }

static String get bannerAdUnitId {
  if (Platform.isAndroid) {
    return '908c39ecc0fc9c86';
  } else if (Platform.isIOS) {
    return 'ca-app-pub-3940256099942544/2934735716';
  } else {
    throw new UnsupportedError('Unsupported platform');
  }
}

static String get interstitialAdUnitId {
  if (Platform.isAndroid) {
    return "c340d6d8d6144059";
  } else if (Platform.isIOS) {
    return "ca-app-pub-3940256099942544/4411468910";
  } else {
    throw new UnsupportedError("Unsupported platform");
  }
}

static String get rewardedAdUnitId {
  if (Platform.isAndroid) {
    return "654a971e1e2963fe";
  } else if (Platform.isIOS) {
    return "ca-app-pub-3940256099942544/1712485313";
  } else {
    throw new UnsupportedError("Unsupported platform");
  }
}

  static String get openAppAdUnitId {
    if (Platform.isAndroid) {
      return "750b0aca9299a7d7";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1712485313";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get nativeAppAdUnitId {
    if (Platform.isAndroid) {
      return "6c0c103fb6cd90e6";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1712485313";
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
