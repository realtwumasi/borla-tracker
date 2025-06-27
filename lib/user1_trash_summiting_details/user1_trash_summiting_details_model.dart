import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'user1_trash_summiting_details_widget.dart'
    show User1TrashSummitingDetailsWidget;
import 'package:flutter/material.dart';

class User1TrashSummitingDetailsModel
    extends FlutterFlowModel<User1TrashSummitingDetailsWidget> {
  ///  Local state fields for this page.

  String? uploadedImageUrl;

  String? userAddress;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadData61p = false;
  FFUploadedFile uploadedLocalFile_uploadData61p =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for LocationField widget.
  FocusNode? locationFieldFocusNode;
  TextEditingController? locationFieldTextController;
  String? Function(BuildContext, String?)? locationFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    locationFieldFocusNode?.dispose();
    locationFieldTextController?.dispose();
  }
}
