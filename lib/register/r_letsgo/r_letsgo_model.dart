import '/flutter_flow/flutter_flow_util.dart';
import 'r_letsgo_widget.dart' show RLetsgoWidget;
import 'package:flutter/material.dart';

class RLetsgoModel extends FlutterFlowModel<RLetsgoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
