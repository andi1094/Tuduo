import '/flutter_flow/flutter_flow_util.dart';
import 'r_gender_search_widget.dart' show RGenderSearchWidget;
import 'package:flutter/material.dart';

class RGenderSearchModel extends FlutterFlowModel<RGenderSearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
