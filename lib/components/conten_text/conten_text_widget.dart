import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'conten_text_model.dart';
export 'conten_text_model.dart';

class ContenTextWidget extends StatefulWidget {
  const ContenTextWidget({super.key});

  @override
  _ContenTextWidgetState createState() => _ContenTextWidgetState();
}

class _ContenTextWidgetState extends State<ContenTextWidget> {
  late ContenTextModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContenTextModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(0.0, 3.0),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  'Plan your next visit',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Signika Negative',
                        color: const Color(0xFF021B27),
                      ),
                ),
              ),
              Divider(
                height: 16.0,
                thickness: 2.0,
                color: FlutterFlowTheme.of(context).primaryBackground,
              ),
              RichText(
                textScaleFactor: MediaQuery.of(context).textScaleFactor,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'We noticed that your usual ',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                    TextSpan(
                      text: 'Physical Appointment',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: ' is scheduled around',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                    TextSpan(
                      text: ' November - December.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    TextSpan(
                      text:
                          '\n\nTo keep the same appointment time frame, people typically book their',
                      style: FlutterFlowTheme.of(context).bodyLarge,
                    ),
                    TextSpan(
                      text: ' Physical Appointment',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    TextSpan(
                      text: ' by end of',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontSize: 15.0,
                          ),
                    ),
                    TextSpan(
                      text: ' August.',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                    ),
                    TextSpan(
                      text: '\n\nWould you like to:',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            lineHeight: 1.5,
                          ),
                    ),
                    TextSpan(
                      text: '\nBook an appointment',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.underline,
                            lineHeight: 1.5,
                          ),
                    ),
                    TextSpan(
                      text: '\nSetup reminders',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Inter',
                            decoration: TextDecoration.underline,
                            lineHeight: 1.75,
                          ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Inter',
                        lineHeight: 1.3,
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
