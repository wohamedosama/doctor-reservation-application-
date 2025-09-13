import 'package:doctor_reservation_app/core/routing/app_router.dart';
import 'package:doctor_reservation_app/doc_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
