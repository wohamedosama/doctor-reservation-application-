import 'package:doctor_reservation_app/core/widgets/error_widget.dart';
import 'package:doctor_reservation_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doctor_reservation_app/features/home/logic/cubit/home_state.dart';
import 'package:doctor_reservation_app/features/home/presentation/widget/specility_list/specialist_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecilizationBlocBuilder extends StatelessWidget {
  const SpecilizationBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationFailure,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => const SpecialistSection(isLoading: true),
          specializationSuccess: (specializationDataList) {
            return setupSpecializationSuccess(specializationDataList);
          },
          specializationFailure: (error) {
            return Expanded(
              child: ErrorScreenWidget(
                errorMessage: error.getAllErrorMessages(),
                showGoHomeButton: true,
                onRetry: () => context.read<HomeCubit>().getSpecilazation(),
              ),
            );
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupSpecializationSuccess(specializationsList) {
    return SpecialistSection(
      specializationsData: specializationsList,
    );
  }
}

Widget setupLoadingIndicator() {
  return const SizedBox(
    height: 100,
    child: Center(
      child: CircularProgressIndicator(),
    ),
  );
}
