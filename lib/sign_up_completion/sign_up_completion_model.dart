import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'sign_up_completion_widget.dart' show SignUpCompletionWidget;
import 'package:flutter/material.dart';

class SignUpCompletionModel extends FlutterFlowModel<SignUpCompletionWidget> {
  ///  Local state fields for this page.

  String? accountTypeVariable;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  String? _firstNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your Full name';
    }

    return null;
  }

  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  String? _locationTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Location is required';
    }

    return null;
  }

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberTextController;
  String? Function(BuildContext, String?)? phoneNumberTextControllerValidator;
  String? _phoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Phone Number';
    }

    if (val.length > 10) {
      return 'Maximum 10 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for gender widget.
  FormFieldController<List<String>>? genderValueController;
  String? get genderValue => genderValueController?.value?.firstOrNull;
  set genderValue(String? val) =>
      genderValueController?.value = val != null ? [val] : [];
  // State field(s) for RadioButtonAccountType widget.
  FormFieldController<String>? radioButtonAccountTypeValueController;

  @override
  void initState(BuildContext context) {
    firstNameTextControllerValidator = _firstNameTextControllerValidator;
    locationTextControllerValidator = _locationTextControllerValidator;
    phoneNumberTextControllerValidator = _phoneNumberTextControllerValidator;
  }

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    locationFocusNode?.dispose();
    locationTextController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonAccountTypeValue =>
      radioButtonAccountTypeValueController?.value;
}
