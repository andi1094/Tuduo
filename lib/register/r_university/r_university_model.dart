import '/flutter_flow/flutter_flow_util.dart';
import 'r_university_widget.dart' show RUniversityWidget;
import 'package:flutter/material.dart';

class RUniversityModel extends FlutterFlowModel<RUniversityWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
