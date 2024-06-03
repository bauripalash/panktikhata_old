class UserSettings {
  String? theme;
  double? fontSize;

  UserSettings();

  static Map<String, dynamic> toJson(UserSettings value) =>
      {"theme": value.theme, "fontsize": value.fontSize};
}
