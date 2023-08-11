// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:platform_device_id/platform_device_id.dart';

import 'dart:async';

import 'package:platform_device_id/platform_device_id.dart';

Future<String?> platformdeviceid() async {
  // get device id with platform_device_id
  String? deviceId = await PlatformDeviceId.getDeviceId;
  return deviceId;
}
