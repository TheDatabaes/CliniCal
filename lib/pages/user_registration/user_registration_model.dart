import '/flutter_flow/flutter_flow_util.dart';
import 'user_registration_widget.dart' show UserRegistrationWidget;
import 'package:flutter/material.dart';

class UserRegistrationModel extends FlutterFlowModel<UserRegistrationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for patientName widget.
  FocusNode? patientNameFocusNode;
  TextEditingController? patientNameController;
  String? Function(BuildContext, String?)? patientNameControllerValidator;
  // State field(s) for patientAddress widget.
  FocusNode? patientAddressFocusNode;
  TextEditingController? patientAddressController;
  String? Function(BuildContext, String?)? patientAddressControllerValidator;
  // State field(s) for patientHeight widget.
  FocusNode? patientHeightFocusNode;
  TextEditingController? patientHeightController;
  String? Function(BuildContext, String?)? patientHeightControllerValidator;
  // State field(s) for patientWeight widget.
  FocusNode? patientWeightFocusNode;
  TextEditingController? patientWeightController;
  String? Function(BuildContext, String?)? patientWeightControllerValidator;
  // State field(s) for patientBloodType widget.
  FocusNode? patientBloodTypeFocusNode;
  TextEditingController? patientBloodTypeController;
  String? Function(BuildContext, String?)? patientBloodTypeControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    patientNameFocusNode?.dispose();
    patientNameController?.dispose();

    patientAddressFocusNode?.dispose();
    patientAddressController?.dispose();

    patientHeightFocusNode?.dispose();
    patientHeightController?.dispose();

    patientWeightFocusNode?.dispose();
    patientWeightController?.dispose();

    patientBloodTypeFocusNode?.dispose();
    patientBloodTypeController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
