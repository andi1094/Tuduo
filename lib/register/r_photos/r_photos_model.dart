import '/flutter_flow/flutter_flow_util.dart';
import 'r_photos_widget.dart' show RPhotosWidget;
import 'package:flutter/material.dart';

class RPhotosModel extends FlutterFlowModel<RPhotosWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadedImagesList = [];
  void addToUploadedImagesList(FFUploadedFile item) =>
      uploadedImagesList.add(item);
  void removeFromUploadedImagesList(FFUploadedFile item) =>
      uploadedImagesList.remove(item);
  void removeAtIndexFromUploadedImagesList(int index) =>
      uploadedImagesList.removeAt(index);
  void insertAtIndexInUploadedImagesList(int index, FFUploadedFile item) =>
      uploadedImagesList.insert(index, item);
  void updateUploadedImagesListAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadedImagesList[index] = updateFn(uploadedImagesList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  bool isDataUploading7 = false;
  List<FFUploadedFile> uploadedLocalFiles7 = [];
  List<String> uploadedFileUrls7 = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
