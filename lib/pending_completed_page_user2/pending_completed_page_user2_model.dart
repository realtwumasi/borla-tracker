import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pending_completed_page_user2_widget.dart'
    show PendingCompletedPageUser2Widget;
import 'package:flutter/material.dart';

class PendingCompletedPageUser2Model
    extends FlutterFlowModel<PendingCompletedPageUser2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for CheckboxListTile widget.
  Map<RequestFromPersonalRecord, bool> checkboxListTileValueMap1 = {};
  List<RequestFromPersonalRecord> get checkboxListTileCheckedItems1 =>
      checkboxListTileValueMap1.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  // State field(s) for CheckboxListTile widget.
  Map<RequestFromPersonalRecord, bool> checkboxListTileValueMap2 = {};
  List<RequestFromPersonalRecord> get checkboxListTileCheckedItems2 =>
      checkboxListTileValueMap2.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
