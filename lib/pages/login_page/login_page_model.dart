import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress-login widget.
  FocusNode? emailAddressLoginFocusNode;
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode;
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for emailAddress-register widget.
  FocusNode? emailAddressRegisterFocusNode;
  TextEditingController? emailAddressRegisterController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterControllerValidator;
  // State field(s) for password-register widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterController;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // State field(s) for confirmpassword-register widget.
  FocusNode? confirmpasswordRegisterFocusNode;
  TextEditingController? confirmpasswordRegisterController;
  String? Function(BuildContext, String?)?
      confirmpasswordRegisterControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    passwordLoginVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressLoginFocusNode?.dispose();
    emailAddressLoginController?.dispose();

    passwordLoginFocusNode?.dispose();
    passwordLoginController?.dispose();

    emailAddressRegisterFocusNode?.dispose();
    emailAddressRegisterController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterController?.dispose();

    confirmpasswordRegisterFocusNode?.dispose();
    confirmpasswordRegisterController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
