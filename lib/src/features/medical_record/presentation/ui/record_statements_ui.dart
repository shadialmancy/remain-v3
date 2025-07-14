import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:remain/src/core/widgets/widgets.dart';
import 'package:remain/src/features/medical_record/presentation/providers/fetch_record_statement_provider.dart';
import 'package:remain/src/features/medical_record/presentation/providers/search_record_statement_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/constants.dart';
import '../../../home/widgets/widgets.dart';
import '../../data/model/record_statement_dto/record_statement_data.dart';
import '../widgets/widgets.dart';

class RecordStatementsUi extends ConsumerStatefulWidget {
  const RecordStatementsUi({super.key});

  @override
  ConsumerState<RecordStatementsUi> createState() => _RecordStatementsUiState();
}

class _RecordStatementsUiState extends ConsumerState<RecordStatementsUi> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final searchService =
        ref.watch(searchRecordStatementServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(searchRecordStatementServiceProvider),
        data: (List<RecordStatementData?>? recordStatementsList) {
          return Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 2.sh),
            child: Column(
              children: [
                CustomSearchTextField(
                  hint: l10n.searchYourMedicalRecord,
                  controller: searchController,
                  onChanged: (value) {
                    searchService.onSearch(value: value);
                  },
                ),
                gapH24,
                AsyncValueWidget(
                    value: ref.watch(fetchRecordStatementServiceProvider),
                    data: (_) {
                      return recordStatementsList?.isEmpty ?? true
                          ? Text(
                              l10n.noDataAvailableNow,
                              style: theme.bodyMedium,
                            )
                          : Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: List.generate(
                                    recordStatementsList?.length ?? 0,
                                    (index) {
                                      return RecordStatmentContainer(
                                        data: recordStatementsList?[index],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                    })
              ],
            ),
          );
        });
  }
}
