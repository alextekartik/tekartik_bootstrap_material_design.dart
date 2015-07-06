library tekartik_bootstrap_material_design;

import 'package:tekartik_jquery/jquery.dart';
import 'package:pub_semver/pub_semver.dart';
import 'dart:js';

Version get materialVersionMin => new Version(0, 3, 0);
Version get materialVersionDefault => new Version(0, 3, 0);

class JMaterial {
  JsObject _jsObject;
  JsObject get jsObject => _jsObject;
  JMaterial._(this._jsObject);

  void init() {
    jsObject.callMethod('init');
  }
}

JMaterial _jMaterial;
JMaterial get jMaterial {
  if (_jMaterial == null) {
    var jsObject = jQuery['material'];
    if (jsObject == null) {
      throw "\$.material not found";
    }
    _jMaterial = new JMaterial._(jsObject);
  }
  return _jMaterial;
}
