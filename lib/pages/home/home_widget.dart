import '/components/conten_text/conten_text_widget.dart';
import '/components/dashboard13_activity_view/dashboard13_activity_view_widget.dart';
import '/components/live_wait_time/live_wait_time_widget.dart';
import '/components/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 338.0,
                        height: 903.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: wrapWithModel(
                          model: _model.sideNavModel,
                          updateCallback: () => setState(() {}),
                          child: const SideNavWidget(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: 1063.0,
                  height: 901.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).alternate,
                  ),
                  child: MasonryGridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 26.0,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return [
                        () => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  8.0, 86.0, 0.0, 0.0),
                              child: wrapWithModel(
                                model: _model.contenTextModel,
                                updateCallback: () => setState(() {}),
                                child: const ContenTextWidget(),
                              ),
                            ),
                        () => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 35.0, 12.0, 0.0),
                              child: wrapWithModel(
                                model: _model.liveWaitTimeModel,
                                updateCallback: () => setState(() {}),
                                child: const LiveWaitTimeWidget(),
                              ),
                            ),
                        () => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  18.0, 12.0, 14.0, 0.0),
                              child: wrapWithModel(
                                model: _model.dashboard13ActivityViewModel,
                                updateCallback: () => setState(() {}),
                                child: const Dashboard13ActivityViewWidget(),
                              ),
                            ),
                        () => Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 25.0, 0.0),
                              child: FlutterFlowCalendar(
                                color: const Color(0xFF9DB1A3),
                                iconColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                weekFormat: false,
                                weekStartsMonday: false,
                                rowHeight: 45.0,
                                onChange: (DateTimeRange? newSelectedDate) {
                                  setState(() => _model.calendarSelectedDay =
                                      newSelectedDate);
                                },
                                titleStyle:
                                    FlutterFlowTheme.of(context).headlineSmall,
                                dayOfWeekStyle:
                                    FlutterFlowTheme.of(context).labelLarge,
                                dateStyle:
                                    FlutterFlowTheme.of(context).bodyMedium,
                                selectedDateStyle:
                                    FlutterFlowTheme.of(context).titleSmall,
                                inactiveDateStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                      ][index]();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
