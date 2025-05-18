import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:ostad_assignments/assignment_02_app.dart';

void main(){

  runApp(
    DevicePreview(
        enabled: true,
        builder: (context){
          return assignment_02_app();
        }
        ),
  );
}