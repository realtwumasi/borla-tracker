import '/flutter_flow/flutter_flow_util.dart';
import 'task_pending_completed_user1_widget.dart'
    show TaskPendingCompletedUser1Widget;
import 'package:flutter/material.dart';

class TaskPendingCompletedUser1Model
    extends FlutterFlowModel<TaskPendingCompletedUser1Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
