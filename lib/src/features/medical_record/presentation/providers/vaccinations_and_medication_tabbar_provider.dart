// ignore_for_file: avoid_public_notifier_properties
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'vaccinations_and_medication_tabbar_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class VaccinationsAndMedicationTabbarService
    extends _$VaccinationsAndMedicationTabbarService {
  @override
  FutureOr<int> build() {
    return currentIndex;
  }

  final PageController pageController = PageController();

  int currentIndex = 0;
  void setCurrentIndex(int value) {
    currentIndex = value;
    state = AsyncValue.data(currentIndex);
  }

  Future<void> onPageChange(int value) async {
    currentIndex = value;
    await pageController.animateToPage(
      currentIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
    state = AsyncValue.data(currentIndex);
  }
}
