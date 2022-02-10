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

import 'package:firebaseapis/fcmregistrations/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseFcmRegistrationV1Registration = 0;
api.GoogleFirebaseFcmRegistrationV1Registration
    buildGoogleFirebaseFcmRegistrationV1Registration() {
  final o = api.GoogleFirebaseFcmRegistrationV1Registration();
  buildCounterGoogleFirebaseFcmRegistrationV1Registration++;
  if (buildCounterGoogleFirebaseFcmRegistrationV1Registration < 3) {
    o.name = 'foo';
    o.token = 'foo';
    o.web = buildGoogleFirebaseFcmRegistrationV1Web();
  }
  buildCounterGoogleFirebaseFcmRegistrationV1Registration--;
  return o;
}

void checkGoogleFirebaseFcmRegistrationV1Registration(
    api.GoogleFirebaseFcmRegistrationV1Registration o) {
  buildCounterGoogleFirebaseFcmRegistrationV1Registration++;
  if (buildCounterGoogleFirebaseFcmRegistrationV1Registration < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseFcmRegistrationV1Web(o.web!);
  }
  buildCounterGoogleFirebaseFcmRegistrationV1Registration--;
}

core.int buildCounterGoogleFirebaseFcmRegistrationV1Web = 0;
api.GoogleFirebaseFcmRegistrationV1Web
    buildGoogleFirebaseFcmRegistrationV1Web() {
  final o = api.GoogleFirebaseFcmRegistrationV1Web();
  buildCounterGoogleFirebaseFcmRegistrationV1Web++;
  if (buildCounterGoogleFirebaseFcmRegistrationV1Web < 3) {
    o.applicationPubKey = 'foo';
    o.auth = 'foo';
    o.endpoint = 'foo';
    o.p256dh = 'foo';
  }
  buildCounterGoogleFirebaseFcmRegistrationV1Web--;
  return o;
}

void checkGoogleFirebaseFcmRegistrationV1Web(
    api.GoogleFirebaseFcmRegistrationV1Web o) {
  buildCounterGoogleFirebaseFcmRegistrationV1Web++;
  if (buildCounterGoogleFirebaseFcmRegistrationV1Web < 3) {
    unittest.expect(
      o.applicationPubKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.auth!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.p256dh!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseFcmRegistrationV1Web--;
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
  unittest.group('obj-schema-GoogleFirebaseFcmRegistrationV1Registration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmRegistrationV1Registration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseFcmRegistrationV1Registration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmRegistrationV1Registration(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseFcmRegistrationV1Web', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseFcmRegistrationV1Web();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseFcmRegistrationV1Web.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseFcmRegistrationV1Web(od);
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

  unittest.group('resource-ProjectsRegistrationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FcmregistrationsApi(mock).projects.registrations;
      final arg_request = buildGoogleFirebaseFcmRegistrationV1Registration();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseFcmRegistrationV1Registration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseFcmRegistrationV1Registration(obj);

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
            .encode(buildGoogleFirebaseFcmRegistrationV1Registration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseFcmRegistrationV1Registration(
          response as api.GoogleFirebaseFcmRegistrationV1Registration);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FcmregistrationsApi(mock).projects.registrations;
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

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FcmregistrationsApi(mock).projects.registrations;
      final arg_request = buildGoogleFirebaseFcmRegistrationV1Registration();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseFcmRegistrationV1Registration.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseFcmRegistrationV1Registration(obj);

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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseFcmRegistrationV1Registration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseFcmRegistrationV1Registration(
          response as api.GoogleFirebaseFcmRegistrationV1Registration);
    });
  });
}
