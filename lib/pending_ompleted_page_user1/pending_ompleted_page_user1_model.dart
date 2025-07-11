import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pending_ompleted_page_user1_widget.dart'
    show PendingOmpletedPageUser1Widget;
import 'package:flutter/material.dart';

class PendingOmpletedPageUser1Model
    extends FlutterFlowModel<PendingOmpletedPageUser1Widget> {
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
