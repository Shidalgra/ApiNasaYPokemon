import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutterflow_colorpicker/flutterflow_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'semana101_model.dart';
export 'semana101_model.dart';

class Semana101Widget extends StatefulWidget {
  const Semana101Widget({Key? key}) : super(key: key);

  @override
  _Semana101WidgetState createState() => _Semana101WidgetState();
}

class _Semana101WidgetState extends State<Semana101Widget> {
  late Semana101Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Semana101Model());

    _model.txtMensajeController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'ithgkw9x' /* Page Title */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22.0,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 5.0, 20.0, 5.0),
                child: FlutterFlowCalendar(
                  color: valueOrDefault<Color>(
                    _model.colorPicked,
                    Color(0xFFA92B2B),
                  ),
                  weekFormat: false,
                  weekStartsMonday: true,
                  onChange: (DateTimeRange? newSelectedDate) {
                    setState(
                        () => _model.calendarSelectedDay = newSelectedDate);
                  },
                  titleStyle: FlutterFlowTheme.of(context).subtitle2,
                  dayOfWeekStyle: FlutterFlowTheme.of(context).bodyText2,
                  dateStyle: TextStyle(),
                  selectedDateStyle: TextStyle(),
                  inactiveDateStyle: TextStyle(),
                  locale: FFLocalizations.of(context).languageCode,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: Text(
                  dateTimeFormat(
                    'd/M/y',
                    _model.calendarSelectedDay!.start,
                    locale: FFLocalizations.of(context).languageCode,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: _model.colorPicked,
                        fontSize: 24.0,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    final _colorPickedColor = await showFFColorPicker(
                      context,
                      currentColor: _model.colorPicked ??=
                          FlutterFlowTheme.of(context).primaryColor,
                      showRecentColors: true,
                      allowOpacity: true,
                      textColor: FlutterFlowTheme.of(context).primaryText,
                      secondaryTextColor:
                          FlutterFlowTheme.of(context).secondaryText,
                      backgroundColor:
                          FlutterFlowTheme.of(context).primaryBackground,
                      primaryButtonBackgroundColor:
                          FlutterFlowTheme.of(context).primaryColor,
                      primaryButtonTextColor: Colors.white,
                      primaryButtonBorderColor: Colors.transparent,
                      displayAsBottomSheet: isMobileWidth(context),
                    );

                    if (_colorPickedColor != null) {
                      setState(() => _model.colorPicked = _colorPickedColor);
                    }
                  },
                  text: FFLocalizations.of(context).getText(
                    'u47f7747' /* Color */,
                  ),
                  options: FFButtonOptions(
                    width: 130.0,
                    height: 40.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    elevation: 10.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 5.0, 25.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'j1ind2iw' /* Hola */,
                              ),
                              style: TextStyle(
                                color: Color(0xFFEB2424),
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                            TextSpan(
                              text: FFLocalizations.of(context).getText(
                                'ap5q6331' /* Este es un resumen
 */
                                ,
                              ),
                              style: TextStyle(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 24.0,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                              text: dateTimeFormat(
                                'MMMMEEEEd',
                                _model.calendarSelectedDay!.start,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(25.0, 5.0, 25.0, 5.0),
                child: TextFormField(
                  controller: _model.txtMensajeController,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: FFLocalizations.of(context).getText(
                      '5296buif' /* Mensaje */,
                    ),
                    hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF95A1AC),
                        ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    errorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    filled: true,
                    fillColor: Color(0xFF1E2429),
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1,
                  validator:
                      _model.txtMensajeControllerValidator.asValidator(context),
                ),
              ),
              FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: FFLocalizations.of(context).getText(
                  '7oyvlo4p' /* Enviar */,
                ),
                options: FFButtonOptions(
                  width: 130.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  elevation: 10.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: custom_widgets.RadarChart5(
                          width: double.infinity,
                          height: double.infinity,
                          firstData: 88.0,
                          secondData: 54.0,
                          thirdData: 72.0,
                          forthData: 100.0,
                          fifthData: 98.0,
                          maxPointValue: 105.0,
                          myColor: FlutterFlowTheme.of(context).primaryColor,
                          firstDataLabel: 'Estudiantes',
                          secondDataLabel: 'Docentes',
                          thirdDataLabel: 'Administrativos',
                          forthDataLabel: 'Graduados',
                          fifthDataLabel: 'Empleadores',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
