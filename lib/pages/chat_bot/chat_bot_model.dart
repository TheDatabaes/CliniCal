import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_bot_widget.dart' show ChatBotWidget;
import 'package:flutter/material.dart';

class ChatBotModel extends FlutterFlowModel<ChatBotWidget> {
  ///  Local state fields for this page.

  String? inputContent = '';

  dynamic chatHistory;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // State field(s) for promptTextField widget.
  FocusNode? promptTextFieldFocusNode;
  TextEditingController? promptTextFieldController;
  String? Function(BuildContext, String?)? promptTextFieldControllerValidator;
  // Stores action output result for [Backend Call - API (Send Full Prompt)] action in Icon widget.
  ApiCallResponse? chatGPTResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    listViewController = ScrollController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    listViewController?.dispose();
    promptTextFieldFocusNode?.dispose();
    promptTextFieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
