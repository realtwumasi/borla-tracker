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

  bool isDataUploading_uploadedTrashImgLocalState = false;
  FFUploadedFile uploadedLocalFile_uploadedTrashImgLocalState =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading_uploadedTrashImgFireStore = false;
  FFUploadedFile uploadedLocalFile_uploadedTrashImgFireStore =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadedTrashImgFireStore = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
