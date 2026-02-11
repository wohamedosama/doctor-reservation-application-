abstract class InterfaceRepo<T> {
  /// Get all date from database
  Future<T?> getAllData();

  /// Insert data to database
  Future<void> addData(T data);

  /// Check if the data available
  Future<bool> isDataAvailable();
}
