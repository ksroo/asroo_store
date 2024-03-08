import 'package:asroo_store/core/language/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfo {
  const AppInfo._();

  static Future<String> getAppVersion(BuildContext context) async {
    var buildNumberText = '';

    if (AppLocalizations.of(context)!.isEnLocale) {
      final packgeInfo = await PackageInfo.fromPlatform();
      buildNumberText = '${packgeInfo.version} (${packgeInfo.buildNumber})';
    } else {
      final packgeInfo = await PackageInfo.fromPlatform();
      buildNumberText = '(${packgeInfo.buildNumber}) ${packgeInfo.version}';
    }

    return buildNumberText;
  }
}
