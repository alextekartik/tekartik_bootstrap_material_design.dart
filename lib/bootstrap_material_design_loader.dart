library tekartik_jquery_loader;

import 'package:tekartik_utils/js_utils.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:tekartik_jquery/jquery.dart';
import 'dart:async';
import 'bootstrap_material_design.dart';

Future<JMaterial> loadBoostrapMaterialDesignJs({Version version}) async {
  if (version == null) {
    version = materialVersionDefault;
  }

  // load
  await loadJavascriptScript("packages/tekartik_bootstrap_material_design_asset/$version/js/material.min.js");
  return jMaterial;
}
