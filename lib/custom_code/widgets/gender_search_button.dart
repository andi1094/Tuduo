// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class GenderSearchButton extends StatefulWidget {
  const GenderSearchButton({
    super.key,
    this.width,
    this.height,
    required this.text,
    required this.selectedGender,
  });

  final double? width;
  final double? height;
  final String text;
  final String selectedGender;

  @override
  State<GenderSearchButton> createState() => _GenderSearchButtonState();
}

class _GenderSearchButtonState extends State<GenderSearchButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: widget.width ?? MediaQuery.of(context).size.width,
        height: widget.height ?? 65,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: (FFAppState()
                    .selectedGenderSearch
                    .contains(widget.selectedGender))
                ? FlutterFlowTheme.of(context).primaryText
                : Colors.transparent,
            width: (FFAppState()
                    .selectedGenderSearch
                    .contains(widget.selectedGender))
                ? 2
                : 0,
          ),
        ),
        child: Align(
          alignment: AlignmentDirectional(0, 0),
          child: Text(
            widget.text,
            style: FlutterFlowTheme.of(context).bodyLarge,
          ),
        ),
      ),
    );
  }
}
