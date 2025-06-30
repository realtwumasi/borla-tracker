import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_profile_img_editing_widget.dart' show EditProfileImgEditingWidget;
import 'package:flutter/material.dart';

class EditProfileImgEditingModel
    extends FlutterFlowModel<EditProfileImgEditingWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadedImgLocalState = false;
  FFUploadedFile uploadedLocalFile_uploadedImgLocalState =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadedImgFireStore = false;
  FFUploadedFile uploadedLocalFile_uploadedImgFireStore =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedImgFireStore = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
