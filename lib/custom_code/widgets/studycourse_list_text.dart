// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class StudycourseListText extends StatefulWidget {
  const StudycourseListText({
    super.key,
    this.width,
    this.height,
    required this.content,
  });

  final double? width;
  final double? height;
  final String content;

  @override
  State<StudycourseListText> createState() => _StudycourseListTextState();
}

class _StudycourseListTextState extends State<StudycourseListText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              widget.content,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: (FFAppState().selectedStudycourse == widget.content)
                  ? FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Gilroy',
                        color: FlutterFlowTheme.of(context).primary,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: false,
                      )
                  : FlutterFlowTheme.of(context).bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
