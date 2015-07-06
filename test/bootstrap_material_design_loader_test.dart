@TestOn("browser")
library jquery_browser_test;

import 'package:tekartik_jquery/jquery.dart';
import 'package:tekartik_jquery/jquery_loader.dart';
import 'package:tekartik_bootstrap/bootstrap_loader.dart';
import 'package:tekartik_bootstrap_material_design/bootstrap_material_design_loader.dart';
import 'package:tekartik_bootstrap_material_design/bootstrap_material_design.dart';
import 'package:tekartik_utils/js_utils.dart';
import 'package:test/test.dart';
import 'dart:js';
import 'dart:html';

void main() {

  setUp(() async {
    await loadJQuery();
    await loadBootstrapJs();
  });

  group('loader', () {


    test('version', () async {
      expect(jQuery['material'], isNull);
      JMaterial jM = await loadBoostrapMaterialDesignJs();
      expect(jQuery['material'], isNotNull);

//      expect(jM, jMaterial);


    });
  });


}
