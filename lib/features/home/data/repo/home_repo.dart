import 'package:doctor_reservation_app/core/helpers/connectivity_helper.dart';
import 'package:doctor_reservation_app/core/helpers/extension.dart';
import 'package:doctor_reservation_app/core/networking/api_error_handler.dart';
import 'package:doctor_reservation_app/core/networking/api_reuslt.dart';
import 'package:doctor_reservation_app/features/home/data/api/home_api_service.dart';
import 'package:doctor_reservation_app/features/home/data/database/database_service.dart';
import 'package:doctor_reservation_app/features/home/data/model/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;
  final DatabaseService _databaseService;
  final InternetConnectionHelper _connectivityHelper;

  HomeRepo(
      this._homeApiService, this._databaseService, this._connectivityHelper);

  /// Return all specialization list (from API when online, from cache when offline or on error)
  Future<ApiReuslt<SpecializationResponseModel>> getSpecilazation() async {
    final bool isConnected =
        await _connectivityHelper.checkInternetConnection();
    final bool isCacheEmpty = await _databaseService.isDataAvailable();

    // When offline, return cached data if available
    if (!isConnected) {
      if (!isCacheEmpty) {
        final SpecializationResponseModel? cached =
            await _databaseService.getAllData();
        if (cached != null) return ApiReuslt.success(cached);
      }
      return ApiReuslt.failure(
          ApiErrorHandler.handle('No internet connection and no cached data'));
    }

    // When online, try API then fall back to cache on error
    try {
      final response = await _homeApiService.getSpecilazation();
      final list = response.specializationsData;
      if (list != null && !list.isNullOrEmpty()) {
        await _databaseService.addData(response);
        return ApiReuslt.success(response);
      }
      // API returned empty; return cache if we have it
      if (!isCacheEmpty) {
        final SpecializationResponseModel? cached =
            await _databaseService.getAllData();
        if (cached != null) return ApiReuslt.success(cached);
      }
      return ApiReuslt.failure(ApiErrorHandler.handle('No data from server'));
    } catch (error) {
      if (!isCacheEmpty) {
        final SpecializationResponseModel? cached =
            await _databaseService.getAllData();
        if (cached != null) return ApiReuslt.success(cached);
      }
      return ApiReuslt.failure(ApiErrorHandler.handle(error));
    }
  }

  // /// Return all doctors list
  // Future<ApiReuslt<DoctorsResponseModel>> getAllDocotor() async {
  //   try {
  //     final response = await _homeApiService.getAllDocotor();
  //     return ApiReuslt.success(response);
  //   } catch (error) {
  //     return ApiReuslt.failure(ErrorHandler.handle(error));
  //   }
  // }
}
