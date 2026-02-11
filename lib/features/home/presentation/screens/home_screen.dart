import 'package:doctor_reservation_app/core/helpers/spacing.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/doctor_blue_banner.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/doctor_list/doctors_bloc_builder.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/doctor_speciality_and_see_all_section.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/home_top_bar.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/specility_list/specilization_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeTopBar(),
            const DocotrBlueBanner(),
            verticalSpace(24),
            const DoctorSpecialityAndSeeAllSection(),
            verticalSpace(20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SpecilizationBlocBuilder(),
                  verticalSpace(12),
                  const DoctorsBlocBuilder(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
