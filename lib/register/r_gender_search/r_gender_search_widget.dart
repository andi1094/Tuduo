import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'r_gender_search_model.dart';
export 'r_gender_search_model.dart';

class RGenderSearchWidget extends StatefulWidget {
  const RGenderSearchWidget({super.key});

  @override
  State<RGenderSearchWidget> createState() => _RGenderSearchWidgetState();
}

class _RGenderSearchWidgetState extends State<RGenderSearchWidget> {
  late RGenderSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RGenderSearchModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: LinearPercentIndicator(
                  percent: 0.5,
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  lineHeight: 5.0,
                  animation: false,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  padding: EdgeInsets.zero,
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 50.0,
                        fillColor: Colors.transparent,
                        icon: Icon(
                          FFIcons.karrowLeft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 15.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ),
                  ].divide(const SizedBox(width: 10.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Text(
                          'Wonach suchst du?',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Gilroy',
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              'Wähle aus, wen du kennenlernen möchtest.\nDu kannst mehrere auswählen.',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Gilroy',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 25.0, 0.0),
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (!functions.isGenderInSearch(
                                          FFAppState()
                                              .selectedGenderSearch
                                              .toList(),
                                          '1')!) {
                                        setState(() {
                                          FFAppState()
                                              .addToSelectedGenderSearch('1');
                                        });
                                        return;
                                      } else {
                                        setState(() {
                                          FFAppState()
                                              .removeFromSelectedGenderSearch(
                                                  '1');
                                        });
                                        return;
                                      }
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 65.0,
                                      child: custom_widgets.GenderSearchButton(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 65.0,
                                        text: 'Mann',
                                        selectedGender: '1',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (!functions.isGenderInSearch(
                                          FFAppState()
                                              .selectedGenderSearch
                                              .toList(),
                                          '2')!) {
                                        setState(() {
                                          FFAppState()
                                              .addToSelectedGenderSearch('2');
                                        });
                                        return;
                                      } else {
                                        setState(() {
                                          FFAppState()
                                              .removeFromSelectedGenderSearch(
                                                  '2');
                                        });
                                        return;
                                      }
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 65.0,
                                      child: custom_widgets.GenderSearchButton(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 65.0,
                                        text: 'Frau',
                                        selectedGender: '2',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (!functions.isGenderInSearch(
                                          FFAppState()
                                              .selectedGenderSearch
                                              .toList(),
                                          '3')!) {
                                        setState(() {
                                          FFAppState()
                                              .addToSelectedGenderSearch('3');
                                        });
                                        return;
                                      } else {
                                        setState(() {
                                          FFAppState()
                                              .removeFromSelectedGenderSearch(
                                                  '3');
                                        });
                                        return;
                                      }
                                    },
                                    child: SizedBox(
                                      width: MediaQuery.sizeOf(context).width *
                                          1.0,
                                      height: 65.0,
                                      child: custom_widgets.GenderSearchButton(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        height: 65.0,
                                        text: 'Nichtbinär',
                                        selectedGender: '3',
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (FFAppState()
                                          .selectedGenderSearch
                                          .isNotEmpty) {
                                        await currentUserReference!.update({
                                          ...createUsersRecordData(
                                            onboarding: 'interests',
                                          ),
                                          ...mapToFirestore(
                                            {
                                              'gender_search': FFAppState()
                                                  .selectedGenderSearch,
                                            },
                                          ),
                                        });

                                        context.pushNamed(
                                          'r_interests',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );

                                        return;
                                      } else {
                                        return;
                                      }
                                    },
                                    text: 'Weiter',
                                    options: FFButtonOptions(
                                      height: 65.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Gilroy',
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                              ].divide(const SizedBox(width: 10.0)),
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                'Wir zeigen nur dein Alter an, nicht deinen Geburtstag',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Gilroy',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 25.0)),
                        ),
                      ),
                    ),
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
