import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/patient_approval_dto/insurance_item.dart';
import 'fetch_insurance_approval_provider.dart';
part 'insurance_approval_category_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class InsuranceApprovalCategoryService
    extends _$InsuranceApprovalCategoryService {
  @override
  FutureOr<List<InsuranceItem?>?> build() {
    return onSelectingCategory();
  }

  List<InsuranceItem?>? onSelectingCategory({String value = ""}) {
    final insurancApprovaleServiceProvider =
        ref.watch(fetchInsurancApprovaleServiceProvider).value;
    List<InsuranceItem?>? result = insurancApprovaleServiceProvider?.data
        ?.where(
          (element) =>
              element.approvalStatus
                  ?.toLowerCase()
                  .contains(value.toLowerCase()) ??
              false,
        )
        .toList();
    state = AsyncValue.data(result);
    return result;
  }
}
