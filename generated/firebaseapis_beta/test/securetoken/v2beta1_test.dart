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

import 'package:firebaseapis_beta/securetoken/v2beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterExchangeTokenRequest = 0;
api.ExchangeTokenRequest buildExchangeTokenRequest() {
  final o = api.ExchangeTokenRequest();
  buildCounterExchangeTokenRequest++;
  if (buildCounterExchangeTokenRequest < 3) {
    o.accessBoundary = 'foo';
    o.audience = 'foo';
    o.grantType = 'foo';
    o.requestedTokenType = 'foo';
    o.scope = 'foo';
    o.subjectToken = 'foo';
    o.subjectTokenType = 'foo';
  }
  buildCounterExchangeTokenRequest--;
  return o;
}

void checkExchangeTokenRequest(api.ExchangeTokenRequest o) {
  buildCounterExchangeTokenRequest++;
  if (buildCounterExchangeTokenRequest < 3) {
    unittest.expect(
      o.accessBoundary!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.audience!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.grantType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subjectTokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterExchangeTokenRequest--;
}

core.int buildCounterExchangeTokenResponse = 0;
api.ExchangeTokenResponse buildExchangeTokenResponse() {
  final o = api.ExchangeTokenResponse();
  buildCounterExchangeTokenResponse++;
  if (buildCounterExchangeTokenResponse < 3) {
    o.accessToken = 'foo';
    o.expiresIn = 42;
    o.issuedTokenType = 'foo';
    o.tokenType = 'foo';
  }
  buildCounterExchangeTokenResponse--;
  return o;
}

void checkExchangeTokenResponse(api.ExchangeTokenResponse o) {
  buildCounterExchangeTokenResponse++;
  if (buildCounterExchangeTokenResponse < 3) {
    unittest.expect(
      o.accessToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiresIn!,
      unittest.equals(42),
    );
    unittest.expect(
      o.issuedTokenType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tokenType!,
      unittest.equals('foo'),
    );
  }
  buildCounterExchangeTokenResponse--;
}

void main() {
  unittest.group('obj-schema-ExchangeTokenRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeTokenRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeTokenRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExchangeTokenRequest(od);
    });
  });

  unittest.group('obj-schema-ExchangeTokenResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExchangeTokenResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExchangeTokenResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExchangeTokenResponse(od);
    });
  });

  unittest.group('resource-V2beta1Resource', () {
    unittest.test('method--token', () async {
      final mock = HttpServerMock();
      final res = api.TokenServiceApi(mock).v2beta1;
      final arg_request = buildExchangeTokenRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExchangeTokenRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExchangeTokenRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v2beta1/token'),
        );
        pathOffset += 13;

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
        final resp = convert.json.encode(buildExchangeTokenResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.token(arg_request, $fields: arg_$fields);
      checkExchangeTokenResponse(response as api.ExchangeTokenResponse);
    });
  });
}
