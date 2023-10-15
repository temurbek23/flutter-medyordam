import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';
import '../../core/resources/app_colors.dart';

@RoutePage()
class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  void initState() {
    loadModel();
    super.initState();
  }

  Future<void> loadModel() async {
    String? res = await Tflite.loadModel(
      model: "assets/model/model_unquant.tflite",
      labels: "assets/model/labels.txt",
      numThreads: 1,
      isAsset: true,
      useGpuDelegate: false,
    );
  }

  void camera() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );
    var recognitions = await Tflite.runModelOnImage(
      path: image?.path ?? "",
      imageMean: 127.5,
      imageStd: 127.5,
      threshold: 0.2,
      numResults: 10,
    );
    final value = recognitions?.firstOrNull;
    if (value != null) {
      String? label = value['label'].toString();
      final index = label.indexOf(' ');
      label = label.substring(index + 1, label.length);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
      backgroundColor: AppColors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: camera,
          backgroundColor: AppColors.primaryColor,
          elevation: 0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
