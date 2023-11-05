import '/components/conten_text/conten_text_widget.dart';
import '/components/dashboard13_activity_view/dashboard13_activity_view_widget.dart';
import '/components/live_wait_time/live_wait_time_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for SideNav component.
  late SideNavModel sideNavModel;
  // Model for ContenText component.
  late ContenTextModel contenTextModel;
  // Model for LiveWaitTime component.
  late LiveWaitTimeModel liveWaitTimeModel;
  // Model for Dashboard13ActivityView component.
  late Dashboard13ActivityViewModel dashboard13ActivityViewModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    contenTextModel = createModel(context, () => ContenTextModel());
    liveWaitTimeModel = createModel(context, () => LiveWaitTimeModel());
    dashboard13ActivityViewModel =
        createModel(context, () => Dashboard13ActivityViewModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    sideNavModel.dispose();
    contenTextModel.dispose();
    liveWaitTimeModel.dispose();
    dashboard13ActivityViewModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
