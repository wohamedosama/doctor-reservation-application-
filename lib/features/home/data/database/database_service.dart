// ignore_for_file: avoid_print
import 'package:doctor_reservation_app/core/helpers/constant.dart';
import 'package:doctor_reservation_app/core/helpers/interface_repo.dart';
import 'package:doctor_reservation_app/features/home/data/model/specialization_response_model.dart';
import 'package:hive_ce/hive.dart';

class DatabaseService implements InterfaceRepo<SpecializationResponseModel> {
  /// Box key
  static const String _key = Database.dbHome;

  /// Specilization Box (null until initDB succeeds)
  Box<SpecializationResponseModel>? _specilizationBox;

  Future<void> initDB() async {
    try {
      Hive.registerAdapter(SpecializationsDataAdapter());
      Hive.registerAdapter(SpecializationResponseModelAdapter());
      _specilizationBox = await Hive.openBox(_key);
    } catch (error) {
      print('Error occured${error.toString()}');
      _specilizationBox = null;
    }
  }

  bool get _isBoxReady =>
      _specilizationBox != null && _specilizationBox!.isOpen;

  @override
  Future<SpecializationResponseModel?> getAllData() async {
    if (!_isBoxReady) return null;
    try {
      if (_specilizationBox!.isNotEmpty) {
        return _specilizationBox!.get(_key);
      }
      return null;
    } catch (error) {
      print('Error occured${error.toString()}');
      return null;
    }
  }

  @override
  Future<void> addData(SpecializationResponseModel data) async {
    if (!_isBoxReady) return;
    try {
      await _specilizationBox!.put(_key, data);
    } catch (error) {
      print('Error occured${error.toString()}');
    }
  }

  @override
  Future<bool> isDataAvailable() async {
    if (!_isBoxReady) return true;
    try {
      return _specilizationBox!.isEmpty;
    } catch (error) {
      print('Error occured${error.toString()}');
      return true;
    }
  }
}
