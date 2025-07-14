import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/record_statement_dto/record_statement_data.dart';
import 'fetch_record_statement_provider.dart';
part 'search_record_statement_provider.g.dart';

@Riverpod(
  keepAlive: true,
)
class SearchRecordStatementService extends _$SearchRecordStatementService {
  @override
  FutureOr<List<RecordStatementData?>?> build() {
    return onSearch();
  }

  List<RecordStatementData?>? onSearch({String value = ""}) {
    final recordStatementService =
        ref.watch(fetchRecordStatementServiceProvider).value;
    List<RecordStatementData?>? result = recordStatementService?.data
        ?.where(
          (element) =>
              element.respCenterEngName
                  ?.toLowerCase()
                  .contains(value.toLowerCase()) ??
              false,
        )
        .toList();
    state = AsyncValue.data(result);
    return result;
  }
}
