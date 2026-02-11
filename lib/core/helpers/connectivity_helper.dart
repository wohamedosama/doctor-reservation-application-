import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectionHelper {
  /// Function to check if the device is connected to the internet or not
  Future<bool> checkInternetConnection() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return false; // No available network types
    } else if (connectivityResult.contains(ConnectivityResult.wifi) ||
        connectivityResult.contains(ConnectivityResult.mobile) ||
        connectivityResult.contains(ConnectivityResult.vpn)) {
      return true;
      // Conected either Mobile or Wifi
    }
    return false;
  }
}
