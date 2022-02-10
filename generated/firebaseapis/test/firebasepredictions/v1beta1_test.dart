// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:firebaseapis/firebasepredictions/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals('foo'),
  );
  unittest.expect(
    o[1],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest =
    0;
api.GoogleFirebasePredictionsV1beta1ComputePredictionsRequest
    buildGoogleFirebasePredictionsV1beta1ComputePredictionsRequest() {
  final o = api.GoogleFirebasePredictionsV1beta1ComputePredictionsRequest();
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest++;
  if (buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest <
      3) {
    o.predictionIds = buildUnnamed0();
    o.requestCaller = 'foo';
    o.requestType = 'foo';
  }
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest--;
  return o;
}

void checkGoogleFirebasePredictionsV1beta1ComputePredictionsRequest(
    api.GoogleFirebasePredictionsV1beta1ComputePredictionsRequest o) {
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest++;
  if (buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest <
      3) {
    checkUnnamed0(o.predictionIds!);
    unittest.expect(
      o.requestCaller!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsRequest--;
}

core.List<api.GoogleFirebasePredictionsV1beta1Prediction> buildUnnamed1() => [
      buildGoogleFirebasePredictionsV1beta1Prediction(),
      buildGoogleFirebasePredictionsV1beta1Prediction(),
    ];

void checkUnnamed1(
    core.List<api.GoogleFirebasePredictionsV1beta1Prediction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebasePredictionsV1beta1Prediction(o[0]);
  checkGoogleFirebasePredictionsV1beta1Prediction(o[1]);
}

core.int
    buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse = 0;
api.GoogleFirebasePredictionsV1beta1ComputePredictionsResponse
    buildGoogleFirebasePredictionsV1beta1ComputePredictionsResponse() {
  final o = api.GoogleFirebasePredictionsV1beta1ComputePredictionsResponse();
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse++;
  if (buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse <
      3) {
    o.predictions = buildUnnamed1();
  }
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse--;
  return o;
}

void checkGoogleFirebasePredictionsV1beta1ComputePredictionsResponse(
    api.GoogleFirebasePredictionsV1beta1ComputePredictionsResponse o) {
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse++;
  if (buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse <
      3) {
    checkUnnamed1(o.predictions!);
  }
  buildCounterGoogleFirebasePredictionsV1beta1ComputePredictionsResponse--;
}

core.int buildCounterGoogleFirebasePredictionsV1beta1Prediction = 0;
api.GoogleFirebasePredictionsV1beta1Prediction
    buildGoogleFirebasePredictionsV1beta1Prediction() {
  final o = api.GoogleFirebasePredictionsV1beta1Prediction();
  buildCounterGoogleFirebasePredictionsV1beta1Prediction++;
  if (buildCounterGoogleFirebasePredictionsV1beta1Prediction < 3) {
    o.percentile = 42.0;
    o.predictionId = 'foo';
    o.probability = 42.0;
    o.state = 'foo';
  }
  buildCounterGoogleFirebasePredictionsV1beta1Prediction--;
  return o;
}

void checkGoogleFirebasePredictionsV1beta1Prediction(
    api.GoogleFirebasePredictionsV1beta1Prediction o) {
  buildCounterGoogleFirebasePredictionsV1beta1Prediction++;
  if (buildCounterGoogleFirebasePredictionsV1beta1Prediction < 3) {
    unittest.expect(
      o.percentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.predictionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.probability!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebasePredictionsV1beta1Prediction--;
}

void main() {
  unittest.group(
      'obj-schema-GoogleFirebasePredictionsV1beta1ComputePredictionsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebasePredictionsV1beta1ComputePredictionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebasePredictionsV1beta1ComputePredictionsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebasePredictionsV1beta1ComputePredictionsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebasePredictionsV1beta1ComputePredictionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebasePredictionsV1beta1ComputePredictionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebasePredictionsV1beta1ComputePredictionsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebasePredictionsV1beta1ComputePredictionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebasePredictionsV1beta1Prediction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebasePredictionsV1beta1Prediction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebasePredictionsV1beta1Prediction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebasePredictionsV1beta1Prediction(od);
    });
  });

  unittest.group('resource-ProjectsAppsInstallationsPredictionsResource', () {
    unittest.test('method--compute', () async {
      final mock = HttpServerMock();
      final res = api.FirebasepredictionsApi(mock)
          .projects
          .apps
          .installations
          .predictions;
      final arg_request =
          buildGoogleFirebasePredictionsV1beta1ComputePredictionsRequest();
      final arg_installation = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebasePredictionsV1beta1ComputePredictionsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebasePredictionsV1beta1ComputePredictionsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1beta1/'),
        );
        pathOffset += 8;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        final query = (req.url).query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebasePredictionsV1beta1ComputePredictionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.compute(arg_request, arg_installation,
          $fields: arg_$fields);
      checkGoogleFirebasePredictionsV1beta1ComputePredictionsResponse(response
          as api.GoogleFirebasePredictionsV1beta1ComputePredictionsResponse);
    });
  });
}
