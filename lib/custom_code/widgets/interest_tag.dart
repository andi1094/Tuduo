// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class InterestTag extends StatefulWidget {
  const InterestTag({
    super.key,
    this.width,
    this.height,
    required this.interestid,
    required this.length,
    required this.content,
  });

  final double? width;
  final double? height;
  final String interestid;
  final double length;
  final String content;

  @override
  State<InterestTag> createState() => _InterestTagState();
}

class _InterestTagState extends State<InterestTag> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.length,
      height: 30,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: (FFAppState().selectedTags.contains(widget.interestid))
              ? FlutterFlowTheme.of(context).primary
              : Colors.transparent,
          width:
              (FFAppState().selectedTags.contains(widget.interestid)) ? 1 : 0,
        ),
      ),
      child: Align(
        alignment: AlignmentDirectional(0, 0),
        child: Text(
          widget.content,
          style: FlutterFlowTheme.of(context).bodyLarge,
        ),
      ),
    );
  }
}
