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

import 'package:firebaseapis/firebaseinstallations/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo = 0;
api.GoogleFirebaseInstallationsV1AuthTokenInfo
    buildGoogleFirebaseInstallationsV1AuthTokenInfo() {
  final o = api.GoogleFirebaseInstallationsV1AuthTokenInfo();
  buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo++;
  if (buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo < 3) {
    o.expiresIn = 'foo';
    o.token = 'foo';
  }
  buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo--;
  return o;
}

void checkGoogleFirebaseInstallationsV1AuthTokenInfo(
    api.GoogleFirebaseInstallationsV1AuthTokenInfo o) {
  buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo++;
  if (buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo < 3) {
    unittest.expect(
      o.expiresIn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseInstallationsV1AuthTokenInfo--;
}

core.int buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest = 0;
api.GoogleFirebaseInstallationsV1GenerateAuthTokenRequest
    buildGoogleFirebaseInstallationsV1GenerateAuthTokenRequest() {
  final o = api.GoogleFirebaseInstallationsV1GenerateAuthTokenRequest();
  buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest++;
  if (buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest < 3) {
    o.installation = buildGoogleFirebaseInstallationsV1Installation();
  }
  buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest--;
  return o;
}

void checkGoogleFirebaseInstallationsV1GenerateAuthTokenRequest(
    api.GoogleFirebaseInstallationsV1GenerateAuthTokenRequest o) {
  buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest++;
  if (buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest < 3) {
    checkGoogleFirebaseInstallationsV1Installation(o.installation!);
  }
  buildCounterGoogleFirebaseInstallationsV1GenerateAuthTokenRequest--;
}

core.int buildCounterGoogleFirebaseInstallationsV1Installation = 0;
api.GoogleFirebaseInstallationsV1Installation
    buildGoogleFirebaseInstallationsV1Installation() {
  final o = api.GoogleFirebaseInstallationsV1Installation();
  buildCounterGoogleFirebaseInstallationsV1Installation++;
  if (buildCounterGoogleFirebaseInstallationsV1Installation < 3) {
    o.appId = 'foo';
    o.authToken = buildGoogleFirebaseInstallationsV1AuthTokenInfo();
    o.authVersion = 'foo';
    o.fid = 'foo';
    o.name = 'foo';
    o.refreshToken = 'foo';
    o.sdkVersion = 'foo';
    o.verificationKey = 'foo';
  }
  buildCounterGoogleFirebaseInstallationsV1Installation--;
  return o;
}

void checkGoogleFirebaseInstallationsV1Installation(
    api.GoogleFirebaseInstallationsV1Installation o) {
  buildCounterGoogleFirebaseInstallationsV1Installation++;
  if (buildCounterGoogleFirebaseInstallationsV1Installation < 3) {
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseInstallationsV1AuthTokenInfo(o.authToken!);
    unittest.expect(
      o.authVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sdkVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.verificationKey!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseInstallationsV1Installation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

void main() {
  unittest.group('obj-schema-GoogleFirebaseInstallationsV1AuthTokenInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseInstallationsV1AuthTokenInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseInstallationsV1AuthTokenInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseInstallationsV1AuthTokenInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseInstallationsV1GenerateAuthTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseInstallationsV1GenerateAuthTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseInstallationsV1GenerateAuthTokenRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseInstallationsV1GenerateAuthTokenRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseInstallationsV1Installation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseInstallationsV1Installation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseInstallationsV1Installation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseInstallationsV1Installation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('resource-ProjectsInstallationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseinstallationsApi(mock).projects.installations;
      final arg_request = buildGoogleFirebaseInstallationsV1Installation();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseInstallationsV1Installation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseInstallationsV1Installation(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json
            .encode(buildGoogleFirebaseInstallationsV1Installation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseInstallationsV1Installation(
          response as api.GoogleFirebaseInstallationsV1Installation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseinstallationsApi(mock).projects.installations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-ProjectsInstallationsAuthTokensResource', () {
    unittest.test('method--generate', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseinstallationsApi(mock).projects.installations.authTokens;
      final arg_request =
          buildGoogleFirebaseInstallationsV1GenerateAuthTokenRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseInstallationsV1GenerateAuthTokenRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseInstallationsV1GenerateAuthTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
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
        final resp = convert.json
            .encode(buildGoogleFirebaseInstallationsV1AuthTokenInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.generate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseInstallationsV1AuthTokenInfo(
          response as api.GoogleFirebaseInstallationsV1AuthTokenInfo);
    });
  });
}
