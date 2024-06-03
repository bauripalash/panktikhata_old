import 'package:flutter/material.dart';
import 'package:panktikhata/codetheme.dart';

class UserSettings {
  CodeTheme? theme;
  double? fontSize;

  UserSettings();

  static Map<String, dynamic> toJson(UserSettings value) =>
      {"theme": value.theme, "fontsize": value.fontSize};
}
