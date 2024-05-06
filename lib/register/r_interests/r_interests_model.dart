import '/flutter_flow/flutter_flow_util.dart';
import 'r_interests_widget.dart' show RInterestsWidget;
import 'package:flutter/material.dart';

class RInterestsModel extends FlutterFlowModel<RInterestsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
