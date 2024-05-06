import '/flutter_flow/flutter_flow_util.dart';
import 'r_gender_widget.dart' show RGenderWidget;
import 'package:flutter/material.dart';

class RGenderModel extends FlutterFlowModel<RGenderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
