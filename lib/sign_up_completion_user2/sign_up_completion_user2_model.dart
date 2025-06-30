import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up_completion_user2_widget.dart' show SignUpCompletionUser2Widget;
import 'package:flutter/material.dart';

class SignUpCompletionUser2Model
    extends FlutterFlowModel<SignUpCompletionUser2Widget> {
  ///  Local state fields for this page.

  String? accountTypeVariable;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nickName widget.
  FocusNode? nickNameFocusNode;
  TextEditingController? nickNameTextController;
  String? Function(BuildContext, String?)? nickNameTextControllerValidator;
  String? _nickNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your User Name';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for min_amount widget.
  FocusNode? minAmountFocusNode;
  TextEditingController? minAmountTextController;
  String? Function(BuildContext, String?)? minAmountTextControllerValidator;
  String? _minAmountTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Set minimum amount';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for workingDays widget.
  FormFieldController<String>? workingDaysValueController;
  // State field(s) for vehicle widget.
  FormFieldController<String>? vehicleValueController;

  @override
  void initState(BuildContext context) {
    nickNameTextControllerValidator = _nickNameTextControllerValidator;
    minAmountTextControllerValidator = _minAmountTextControllerValidator;
  }

  @override
  void dispose() {
    nickNameFocusNode?.dispose();
    nickNameTextController?.dispose();

    minAmountFocusNode?.dispose();
    minAmountTextController?.dispose();
  }

  /// Additional helper methods.
  String? get workingDaysValue => workingDaysValueController?.value;
  String? get vehicleValue => vehicleValueController?.value;
}
