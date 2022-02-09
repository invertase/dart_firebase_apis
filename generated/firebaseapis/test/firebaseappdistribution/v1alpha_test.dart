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

import 'package:firebaseapis/firebaseappdistribution/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate = 0;
api.GoogleFirebaseAppdistroV1alphaAabCertificate
    buildGoogleFirebaseAppdistroV1alphaAabCertificate() {
  final o = api.GoogleFirebaseAppdistroV1alphaAabCertificate();
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate < 3) {
    o.certificateHashMd5 = 'foo';
    o.certificateHashSha1 = 'foo';
    o.certificateHashSha256 = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaAabCertificate(
    api.GoogleFirebaseAppdistroV1alphaAabCertificate o) {
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate < 3) {
    unittest.expect(
      o.certificateHashMd5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificateHashSha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.certificateHashSha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaAabCertificate--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaApp = 0;
api.GoogleFirebaseAppdistroV1alphaApp buildGoogleFirebaseAppdistroV1alphaApp() {
  final o = api.GoogleFirebaseAppdistroV1alphaApp();
  buildCounterGoogleFirebaseAppdistroV1alphaApp++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaApp < 3) {
    o.aabCertificate = buildGoogleFirebaseAppdistroV1alphaAabCertificate();
    o.aabState = 'foo';
    o.appId = 'foo';
    o.bundleId = 'foo';
    o.contactEmail = 'foo';
    o.platform = 'foo';
    o.projectNumber = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaApp--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaApp(
    api.GoogleFirebaseAppdistroV1alphaApp o) {
  buildCounterGoogleFirebaseAppdistroV1alphaApp++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaApp < 3) {
    checkGoogleFirebaseAppdistroV1alphaAabCertificate(o.aabCertificate!);
    unittest.expect(
      o.aabState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaApp--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest =
    0;
api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest
    buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest() {
  final o = api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest < 3) {
    o.releaseNotes = buildGoogleFirebaseAppdistroV1alphaReleaseNotes();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(
    api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest o) {
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest < 3) {
    checkGoogleFirebaseAppdistroV1alphaReleaseNotes(o.releaseNotes!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse =
    0;
api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse
    buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(
    api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse--;
}

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

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int
    buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest = 0;
api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest
    buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest() {
  final o = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest <
      3) {
    o.buildVersion = 'foo';
    o.displayVersion = 'foo';
    o.emails = buildUnnamed0();
    o.groupIds = buildUnnamed1();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(
    api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest o) {
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest <
      3) {
    unittest.expect(
      o.buildVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.emails!);
    checkUnnamed1(o.groupIds!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest--;
}

core.int
    buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse = 0;
api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
    buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(
    api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse <
      3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse--;
}

core.int
    buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse =
    0;
api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
    buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse <
      3) {
    o.release = buildGoogleFirebaseAppdistroV1alphaRelease();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(
    api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse <
      3) {
    checkGoogleFirebaseAppdistroV1alphaRelease(o.release!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1alphaTesterUdid> buildUnnamed2() => [
      buildGoogleFirebaseAppdistroV1alphaTesterUdid(),
      buildGoogleFirebaseAppdistroV1alphaTesterUdid(),
    ];

void checkUnnamed2(core.List<api.GoogleFirebaseAppdistroV1alphaTesterUdid> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1alphaTesterUdid(o[0]);
  checkGoogleFirebaseAppdistroV1alphaTesterUdid(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse = 0;
api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse
    buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse < 3) {
    o.testerUdids = buildUnnamed2();
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(
    api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse < 3) {
    checkUnnamed2(o.testerUdids!);
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse = 0;
api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse
    buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse < 3) {
    o.errorCode = 'foo';
    o.message = 'foo';
    o.release = buildGoogleFirebaseAppdistroV1alphaRelease();
    o.status = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(
    api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse < 3) {
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseAppdistroV1alphaRelease(o.release!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaJwt = 0;
api.GoogleFirebaseAppdistroV1alphaJwt buildGoogleFirebaseAppdistroV1alphaJwt() {
  final o = api.GoogleFirebaseAppdistroV1alphaJwt();
  buildCounterGoogleFirebaseAppdistroV1alphaJwt++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaJwt < 3) {
    o.token = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaJwt--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaJwt(
    api.GoogleFirebaseAppdistroV1alphaJwt o) {
  buildCounterGoogleFirebaseAppdistroV1alphaJwt++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaJwt < 3) {
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaJwt--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse = 0;
api.GoogleFirebaseAppdistroV1alphaProvisionAppResponse
    buildGoogleFirebaseAppdistroV1alphaProvisionAppResponse() {
  final o = api.GoogleFirebaseAppdistroV1alphaProvisionAppResponse();
  buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse < 3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaProvisionAppResponse(
    api.GoogleFirebaseAppdistroV1alphaProvisionAppResponse o) {
  buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse < 3) {}
  buildCounterGoogleFirebaseAppdistroV1alphaProvisionAppResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaRelease = 0;
api.GoogleFirebaseAppdistroV1alphaRelease
    buildGoogleFirebaseAppdistroV1alphaRelease() {
  final o = api.GoogleFirebaseAppdistroV1alphaRelease();
  buildCounterGoogleFirebaseAppdistroV1alphaRelease++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRelease < 3) {
    o.buildVersion = 'foo';
    o.displayVersion = 'foo';
    o.distributedAt = 'foo';
    o.id = 'foo';
    o.instanceId = 'foo';
    o.lastActivityAt = 'foo';
    o.openInvitationCount = 42;
    o.receivedAt = 'foo';
    o.releaseNotesSummary = 'foo';
    o.testerCount = 42;
    o.testerWithInstallCount = 42;
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRelease--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaRelease(
    api.GoogleFirebaseAppdistroV1alphaRelease o) {
  buildCounterGoogleFirebaseAppdistroV1alphaRelease++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaRelease < 3) {
    unittest.expect(
      o.buildVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distributedAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastActivityAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.openInvitationCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.receivedAt!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNotesSummary!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.testerCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.testerWithInstallCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaRelease--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes = 0;
api.GoogleFirebaseAppdistroV1alphaReleaseNotes
    buildGoogleFirebaseAppdistroV1alphaReleaseNotes() {
  final o = api.GoogleFirebaseAppdistroV1alphaReleaseNotes();
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes < 3) {
    o.releaseNotes = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaReleaseNotes(
    api.GoogleFirebaseAppdistroV1alphaReleaseNotes o) {
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes < 3) {
    unittest.expect(
      o.releaseNotes!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaReleaseNotes--;
}

core.int buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid = 0;
api.GoogleFirebaseAppdistroV1alphaTesterUdid
    buildGoogleFirebaseAppdistroV1alphaTesterUdid() {
  final o = api.GoogleFirebaseAppdistroV1alphaTesterUdid();
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid < 3) {
    o.name = 'foo';
    o.platform = 'foo';
    o.udid = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid--;
  return o;
}

void checkGoogleFirebaseAppdistroV1alphaTesterUdid(
    api.GoogleFirebaseAppdistroV1alphaTesterUdid o) {
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid++;
  if (buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.udid!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1alphaTesterUdid--;
}

void main() {
  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaAabCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaAabCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaAabCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaAabCertificate(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaApp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaApp(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaJwt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaJwt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaJwt.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaJwt(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1alphaProvisionAppResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaProvisionAppResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1alphaProvisionAppResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaProvisionAppResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaRelease.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaRelease(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaReleaseNotes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaReleaseNotes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaReleaseNotes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaReleaseNotes(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1alphaTesterUdid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1alphaTesterUdid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1alphaTesterUdid.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1alphaTesterUdid(od);
    });
  });

  unittest.group('resource-AppsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps;
      final arg_mobilesdkAppId = 'foo';
      final arg_appView = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );

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
          queryMap['appView']!.first,
          unittest.equals(arg_appView),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1alphaApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_mobilesdkAppId,
          appView: arg_appView, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaApp(
          response as api.GoogleFirebaseAppdistroV1alphaApp);
    });

    unittest.test('method--getJwt', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps;
      final arg_mobilesdkAppId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/jwt', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 4),
          unittest.equals('/jwt'),
        );
        pathOffset += 4;

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1alphaJwt());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getJwt(arg_mobilesdkAppId, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaJwt(
          response as api.GoogleFirebaseAppdistroV1alphaJwt);
    });

    unittest.test('method--provisionApp', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps;
      final arg_mobilesdkAppId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );

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
            .encode(buildGoogleFirebaseAppdistroV1alphaProvisionAppResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.provisionApp(arg_mobilesdkAppId, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaProvisionAppResponse(
          response as api.GoogleFirebaseAppdistroV1alphaProvisionAppResponse);
    });
  });

  unittest.group('resource-AppsReleaseByHashResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releaseByHash;
      final arg_mobilesdkAppId = 'foo';
      final arg_uploadHash = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/release_by_hash/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/release_by_hash/'),
        );
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_uploadHash'),
        );

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
            buildGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_mobilesdkAppId, arg_uploadHash,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse(response
          as api.GoogleFirebaseAppdistroV1alphaGetReleaseByUploadHashResponse);
    });
  });

  unittest.group('resource-AppsReleasesResource', () {
    unittest.test('method--enableAccess', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releases;
      final arg_request =
          buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest();
      final arg_mobilesdkAppId = 'foo';
      final arg_releaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseRequest(obj);

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
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/releases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/releases/'),
        );
        pathOffset += 10;
        index = path.indexOf('/enable_access', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_releaseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/enable_access'),
        );
        pathOffset += 14;

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
            buildGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.enableAccess(
          arg_request, arg_mobilesdkAppId, arg_releaseId,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse(response
          as api.GoogleFirebaseAppdistroV1alphaEnableAccessOnReleaseResponse);
    });
  });

  unittest.group('resource-AppsReleasesNotesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.releases.notes;
      final arg_request =
          buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest();
      final arg_mobilesdkAppId = 'foo';
      final arg_releaseId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesRequest(obj);

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
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/releases/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/releases/'),
        );
        pathOffset += 10;
        index = path.indexOf('/notes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_releaseId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/notes'),
        );
        pathOffset += 6;

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
            buildGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_mobilesdkAppId, arg_releaseId,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse(response
          as api.GoogleFirebaseAppdistroV1alphaCreateReleaseNotesResponse);
    });
  });

  unittest.group('resource-AppsTestersResource', () {
    unittest.test('method--getTesterUdids', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.testers;
      final arg_mobilesdkAppId = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/testers:getTesterUdids', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/testers:getTesterUdids'),
        );
        pathOffset += 23;

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
            buildGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getTesterUdids(arg_mobilesdkAppId, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse(
          response as api.GoogleFirebaseAppdistroV1alphaGetTesterUdidsResponse);
    });
  });

  unittest.group('resource-AppsUploadStatusResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).apps.uploadStatus;
      final arg_mobilesdkAppId = 'foo';
      final arg_uploadToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1alpha/apps/'),
        );
        pathOffset += 13;
        index = path.indexOf('/upload_status/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mobilesdkAppId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/upload_status/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_uploadToken'),
        );

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
            buildGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_mobilesdkAppId, arg_uploadToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1alphaGetUploadStatusResponse(response
          as api.GoogleFirebaseAppdistroV1alphaGetUploadStatusResponse);
    });
  });
}
