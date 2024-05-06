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
import 'r_interests_model.dart';
export 'r_interests_model.dart';

class RInterestsWidget extends StatefulWidget {
  const RInterestsWidget({super.key});

  @override
  State<RInterestsWidget> createState() => _RInterestsWidgetState();
}

class _RInterestsWidgetState extends State<RInterestsWidget> {
  late RInterestsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RInterestsModel());
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
                  percent: 0.6,
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
                          'Deine Interessen',
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
                              'Wähle bis zu 5 Dinge, die dich interessieren.\nEs hilft dir Leute zu finden, die so ticken wie du.',
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
                        alignment: const AlignmentDirectional(0.0, 1.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Selbstfürsorge',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Gilroy',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 50.0),
                                            child: StreamBuilder<
                                                List<InterestsRecord>>(
                                              stream: queryInterestsRecord(
                                                queryBuilder:
                                                    (interestsRecord) =>
                                                        interestsRecord.where(
                                                  'type',
                                                  isEqualTo: 'selfcare',
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<InterestsRecord>
                                                    wrapInterestsRecordList =
                                                    snapshot.data!;
                                                return Wrap(
                                                  spacing: 5.0,
                                                  runSpacing: 10.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: List.generate(
                                                      wrapInterestsRecordList
                                                          .length, (wrapIndex) {
                                                    final wrapInterestsRecord =
                                                        wrapInterestsRecordList[
                                                            wrapIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (!functions
                                                            .isGenderInSearch(
                                                                FFAppState()
                                                                    .selectedTags
                                                                    .toList(),
                                                                wrapInterestsRecord
                                                                    .content)!) {
                                                          if (FFAppState()
                                                                  .selectedTags
                                                                  .length <
                                                              5) {
                                                            setState(() {
                                                              FFAppState().addToSelectedTags(
                                                                  wrapInterestsRecord
                                                                      .content);
                                                            });
                                                          } else {
                                                            return;
                                                          }

                                                          return;
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                .removeFromSelectedTags(
                                                                    wrapInterestsRecord
                                                                        .content);
                                                          });
                                                          return;
                                                        }
                                                      },
                                                      child: custom_widgets
                                                          .InterestTag(
                                                        width: 120.0,
                                                        height: 30.0,
                                                        interestid:
                                                            wrapInterestsRecord
                                                                .content,
                                                        length:
                                                            wrapInterestsRecord
                                                                .length,
                                                        content:
                                                            wrapInterestsRecord
                                                                .content,
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Kreativität',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Gilroy',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 50.0),
                                            child: StreamBuilder<
                                                List<InterestsRecord>>(
                                              stream: queryInterestsRecord(
                                                queryBuilder:
                                                    (interestsRecord) =>
                                                        interestsRecord.where(
                                                  'type',
                                                  isEqualTo: 'creative',
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<InterestsRecord>
                                                    wrapInterestsRecordList =
                                                    snapshot.data!;
                                                return Wrap(
                                                  spacing: 5.0,
                                                  runSpacing: 10.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: List.generate(
                                                      wrapInterestsRecordList
                                                          .length, (wrapIndex) {
                                                    final wrapInterestsRecord =
                                                        wrapInterestsRecordList[
                                                            wrapIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (!functions
                                                            .isGenderInSearch(
                                                                FFAppState()
                                                                    .selectedTags
                                                                    .toList(),
                                                                wrapInterestsRecord
                                                                    .content)!) {
                                                          if (FFAppState()
                                                                  .selectedTags
                                                                  .length <
                                                              5) {
                                                            setState(() {
                                                              FFAppState().addToSelectedTags(
                                                                  wrapInterestsRecord
                                                                      .content);
                                                            });
                                                          } else {
                                                            return;
                                                          }

                                                          return;
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                .removeFromSelectedTags(
                                                                    wrapInterestsRecord
                                                                        .content);
                                                          });
                                                          return;
                                                        }
                                                      },
                                                      child: custom_widgets
                                                          .InterestTag(
                                                        width: 120.0,
                                                        height: 30.0,
                                                        interestid:
                                                            wrapInterestsRecord
                                                                .content,
                                                        length:
                                                            wrapInterestsRecord
                                                                .length,
                                                        content:
                                                            wrapInterestsRecord
                                                                .content,
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'Freizeit',
                                              textAlign: TextAlign.center,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Gilroy',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 50.0),
                                            child: StreamBuilder<
                                                List<InterestsRecord>>(
                                              stream: queryInterestsRecord(
                                                queryBuilder:
                                                    (interestsRecord) =>
                                                        interestsRecord.where(
                                                  'type',
                                                  isEqualTo: 'freetime',
                                                ),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<InterestsRecord>
                                                    wrapInterestsRecordList =
                                                    snapshot.data!;
                                                return Wrap(
                                                  spacing: 5.0,
                                                  runSpacing: 10.0,
                                                  alignment:
                                                      WrapAlignment.start,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: List.generate(
                                                      wrapInterestsRecordList
                                                          .length, (wrapIndex) {
                                                    final wrapInterestsRecord =
                                                        wrapInterestsRecordList[
                                                            wrapIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        if (!functions
                                                            .isGenderInSearch(
                                                                FFAppState()
                                                                    .selectedTags
                                                                    .toList(),
                                                                wrapInterestsRecord
                                                                    .content)!) {
                                                          if (FFAppState()
                                                                  .selectedTags
                                                                  .length <
                                                              5) {
                                                            setState(() {
                                                              FFAppState().addToSelectedTags(
                                                                  wrapInterestsRecord
                                                                      .content);
                                                            });
                                                          } else {
                                                            return;
                                                          }

                                                          return;
                                                        } else {
                                                          setState(() {
                                                            FFAppState()
                                                                .removeFromSelectedTags(
                                                                    wrapInterestsRecord
                                                                        .content);
                                                          });
                                                          return;
                                                        }
                                                      },
                                                      child: custom_widgets
                                                          .InterestTag(
                                                        width: 120.0,
                                                        height: 30.0,
                                                        interestid:
                                                            wrapInterestsRecord
                                                                .content,
                                                        length:
                                                            wrapInterestsRecord
                                                                .length,
                                                        content:
                                                            wrapInterestsRecord
                                                                .content,
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(height: 10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await currentUserReference!.update({
                                        ...createUsersRecordData(
                                          onboarding: 'university',
                                        ),
                                        ...mapToFirestore(
                                          {
                                            'interests':
                                                FFAppState().selectedTags,
                                          },
                                        ),
                                      });

                                      context.pushNamed(
                                        'r_university',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
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
                                '${FFAppState().selectedTags.length.toString()}/5 ausgewählt',
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
