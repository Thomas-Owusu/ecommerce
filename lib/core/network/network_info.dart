import 'package:connectivity_plus/connectivity_plus.dart';

// For checking internet connectivity
abstract class NetworkInfoI {
  Future<bool> isConnected();

  Future<List<ConnectivityResult>> get connectivityResult;

  Stream<List<ConnectivityResult>> get onConnectivityChanged;
}

class NetworkInfo implements NetworkInfoI {
  final Connectivity connectivity;

  NetworkInfo(this.connectivity);

  /// Checks if the device is connected to a network.
  /// Returns [true] if connected, otherwise [false].
  @override
  Future<bool> isConnected() async {
    final result = await connectivity.checkConnectivity();
    // Return true if any connection type is available (not none)
    return result.any((r) => r != ConnectivityResult.none);
  }

  // Get the current connectivity results
  @override
  Future<List<ConnectivityResult>> get connectivityResult async {
    return connectivity.checkConnectivity();
  }

  // Listen to connectivity changes
  @override
  Stream<List<ConnectivityResult>> get onConnectivityChanged =>
      connectivity.onConnectivityChanged;
}
