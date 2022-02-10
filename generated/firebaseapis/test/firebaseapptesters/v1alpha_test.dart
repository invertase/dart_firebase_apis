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

import 'package:firebaseapis/firebaseapptesters/v1alpha.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.Map<core.String, core.Object?> buildUnnamed0() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed0(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed1() => [
      buildUnnamed0(),
      buildUnnamed0(),
    ];

void checkUnnamed1(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed0(o[0]);
  checkUnnamed0(o[1]);
}

core.int buildCounterGoogleApiHttpBody = 0;
api.GoogleApiHttpBody buildGoogleApiHttpBody() {
  final o = api.GoogleApiHttpBody();
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed1();
  }
  buildCounterGoogleApiHttpBody--;
  return o;
}

void checkGoogleApiHttpBody(api.GoogleApiHttpBody o) {
  buildCounterGoogleApiHttpBody++;
  if (buildCounterGoogleApiHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.extensions!);
  }
  buildCounterGoogleApiHttpBody--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest = 0;
api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest
    buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest() {
  final o = api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest();
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest < 3) {
    o.email = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest(
    api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest o) {
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse =
    0;
api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse
    buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse() {
  final o = api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse();
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse < 3) {
    o.result = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse(
    api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse o) {
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse < 3) {
    unittest.expect(
      o.result!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest = 0;
api.GoogleFirebaseApptestersV1alphaConsentAppRequest
    buildGoogleFirebaseApptestersV1alphaConsentAppRequest() {
  final o = api.GoogleFirebaseApptestersV1alphaConsentAppRequest();
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest < 3) {
    o.invitation = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaConsentAppRequest(
    api.GoogleFirebaseApptestersV1alphaConsentAppRequest o) {
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest < 3) {
    unittest.expect(
      o.invitation!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppRequest--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse = 0;
api.GoogleFirebaseApptestersV1alphaConsentAppResponse
    buildGoogleFirebaseApptestersV1alphaConsentAppResponse() {
  final o = api.GoogleFirebaseApptestersV1alphaConsentAppResponse();
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse < 3) {}
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaConsentAppResponse(
    api.GoogleFirebaseApptestersV1alphaConsentAppResponse o) {
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse < 3) {}
  buildCounterGoogleFirebaseApptestersV1alphaConsentAppResponse--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaDevice = 0;
api.GoogleFirebaseApptestersV1alphaDevice
    buildGoogleFirebaseApptestersV1alphaDevice() {
  final o = api.GoogleFirebaseApptestersV1alphaDevice();
  buildCounterGoogleFirebaseApptestersV1alphaDevice++;
  if (buildCounterGoogleFirebaseApptestersV1alphaDevice < 3) {
    o.enrollIosDeviceUri = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.name = 'foo';
    o.osVersion = 'foo';
    o.platform = 'foo';
    o.udid = 'foo';
    o.useragent = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaDevice--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaDevice(
    api.GoogleFirebaseApptestersV1alphaDevice o) {
  buildCounterGoogleFirebaseApptestersV1alphaDevice++;
  if (buildCounterGoogleFirebaseApptestersV1alphaDevice < 3) {
    unittest.expect(
      o.enrollIosDeviceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
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
    unittest.expect(
      o.useragent!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaDevice--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaInvitation = 0;
api.GoogleFirebaseApptestersV1alphaInvitation
    buildGoogleFirebaseApptestersV1alphaInvitation() {
  final o = api.GoogleFirebaseApptestersV1alphaInvitation();
  buildCounterGoogleFirebaseApptestersV1alphaInvitation++;
  if (buildCounterGoogleFirebaseApptestersV1alphaInvitation < 3) {
    o.name = 'foo';
    o.state = 'foo';
    o.subscriptionState = 'foo';
    o.testerApp = buildGoogleFirebaseApptestersV1alphaTesterApp();
    o.testerEmail = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaInvitation--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaInvitation(
    api.GoogleFirebaseApptestersV1alphaInvitation o) {
  buildCounterGoogleFirebaseApptestersV1alphaInvitation++;
  if (buildCounterGoogleFirebaseApptestersV1alphaInvitation < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionState!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseApptestersV1alphaTesterApp(o.testerApp!);
    unittest.expect(
      o.testerEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaInvitation--;
}

core.List<api.GoogleFirebaseApptestersV1alphaTesterApp> buildUnnamed2() => [
      buildGoogleFirebaseApptestersV1alphaTesterApp(),
      buildGoogleFirebaseApptestersV1alphaTesterApp(),
    ];

void checkUnnamed2(core.List<api.GoogleFirebaseApptestersV1alphaTesterApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseApptestersV1alphaTesterApp(o[0]);
  checkGoogleFirebaseApptestersV1alphaTesterApp(o[1]);
}

core.int buildCounterGoogleFirebaseApptestersV1alphaInviteLink = 0;
api.GoogleFirebaseApptestersV1alphaInviteLink
    buildGoogleFirebaseApptestersV1alphaInviteLink() {
  final o = api.GoogleFirebaseApptestersV1alphaInviteLink();
  buildCounterGoogleFirebaseApptestersV1alphaInviteLink++;
  if (buildCounterGoogleFirebaseApptestersV1alphaInviteLink < 3) {
    o.domainRestriction = 'foo';
    o.joinable = true;
    o.name = 'foo';
    o.testerApps = buildUnnamed2();
  }
  buildCounterGoogleFirebaseApptestersV1alphaInviteLink--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaInviteLink(
    api.GoogleFirebaseApptestersV1alphaInviteLink o) {
  buildCounterGoogleFirebaseApptestersV1alphaInviteLink++;
  if (buildCounterGoogleFirebaseApptestersV1alphaInviteLink < 3) {
    unittest.expect(
      o.domainRestriction!,
      unittest.equals('foo'),
    );
    unittest.expect(o.joinable!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.testerApps!);
  }
  buildCounterGoogleFirebaseApptestersV1alphaInviteLink--;
}

core.List<api.GoogleFirebaseApptestersV1alphaDevice> buildUnnamed3() => [
      buildGoogleFirebaseApptestersV1alphaDevice(),
      buildGoogleFirebaseApptestersV1alphaDevice(),
    ];

void checkUnnamed3(core.List<api.GoogleFirebaseApptestersV1alphaDevice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseApptestersV1alphaDevice(o[0]);
  checkGoogleFirebaseApptestersV1alphaDevice(o[1]);
}

core.int buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse = 0;
api.GoogleFirebaseApptestersV1alphaListDevicesResponse
    buildGoogleFirebaseApptestersV1alphaListDevicesResponse() {
  final o = api.GoogleFirebaseApptestersV1alphaListDevicesResponse();
  buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse < 3) {
    o.devices = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaListDevicesResponse(
    api.GoogleFirebaseApptestersV1alphaListDevicesResponse o) {
  buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse < 3) {
    checkUnnamed3(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaListDevicesResponse--;
}

core.List<api.GoogleFirebaseApptestersV1alphaRelease> buildUnnamed4() => [
      buildGoogleFirebaseApptestersV1alphaRelease(),
      buildGoogleFirebaseApptestersV1alphaRelease(),
    ];

void checkUnnamed4(core.List<api.GoogleFirebaseApptestersV1alphaRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseApptestersV1alphaRelease(o[0]);
  checkGoogleFirebaseApptestersV1alphaRelease(o[1]);
}

core.int buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse = 0;
api.GoogleFirebaseApptestersV1alphaListReleasesResponse
    buildGoogleFirebaseApptestersV1alphaListReleasesResponse() {
  final o = api.GoogleFirebaseApptestersV1alphaListReleasesResponse();
  buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed4();
  }
  buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaListReleasesResponse(
    api.GoogleFirebaseApptestersV1alphaListReleasesResponse o) {
  buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.releases!);
  }
  buildCounterGoogleFirebaseApptestersV1alphaListReleasesResponse--;
}

core.List<api.GoogleFirebaseApptestersV1alphaRelease> buildUnnamed5() => [
      buildGoogleFirebaseApptestersV1alphaRelease(),
      buildGoogleFirebaseApptestersV1alphaRelease(),
    ];

void checkUnnamed5(core.List<api.GoogleFirebaseApptestersV1alphaRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseApptestersV1alphaRelease(o[0]);
  checkGoogleFirebaseApptestersV1alphaRelease(o[1]);
}

core.int
    buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse =
    0;
api.GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse
    buildGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse() {
  final o = api
      .GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse();
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse <
      3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed5();
  }
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse(
    api.GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse
        o) {
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse <
      3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.releases!);
  }
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse--;
}

core.List<api.GoogleFirebaseApptestersV1alphaTesterApp> buildUnnamed6() => [
      buildGoogleFirebaseApptestersV1alphaTesterApp(),
      buildGoogleFirebaseApptestersV1alphaTesterApp(),
    ];

void checkUnnamed6(core.List<api.GoogleFirebaseApptestersV1alphaTesterApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseApptestersV1alphaTesterApp(o[0]);
  checkGoogleFirebaseApptestersV1alphaTesterApp(o[1]);
}

core.int buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse = 0;
api.GoogleFirebaseApptestersV1alphaListTesterAppsResponse
    buildGoogleFirebaseApptestersV1alphaListTesterAppsResponse() {
  final o = api.GoogleFirebaseApptestersV1alphaListTesterAppsResponse();
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse < 3) {
    o.nextPageToken = 'foo';
    o.testerApps = buildUnnamed6();
  }
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaListTesterAppsResponse(
    api.GoogleFirebaseApptestersV1alphaListTesterAppsResponse o) {
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse++;
  if (buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.testerApps!);
  }
  buildCounterGoogleFirebaseApptestersV1alphaListTesterAppsResponse--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaRelease = 0;
api.GoogleFirebaseApptestersV1alphaRelease
    buildGoogleFirebaseApptestersV1alphaRelease() {
  final o = api.GoogleFirebaseApptestersV1alphaRelease();
  buildCounterGoogleFirebaseApptestersV1alphaRelease++;
  if (buildCounterGoogleFirebaseApptestersV1alphaRelease < 3) {
    o.apkHash = 'foo';
    o.binaryType = 'foo';
    o.buildVersion = 'foo';
    o.codeHash = 'foo';
    o.displayVersion = 'foo';
    o.distributionMissingReason = 'foo';
    o.downloadUrl = 'foo';
    o.enterprise = true;
    o.expirationTime = 'foo';
    o.fileSize = 'foo';
    o.iasArtifactId = 'foo';
    o.latest = true;
    o.name = 'foo';
    o.releaseNotes = 'foo';
    o.releaseTime = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaRelease--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaRelease(
    api.GoogleFirebaseApptestersV1alphaRelease o) {
  buildCounterGoogleFirebaseApptestersV1alphaRelease++;
  if (buildCounterGoogleFirebaseApptestersV1alphaRelease < 3) {
    unittest.expect(
      o.apkHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.binaryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.codeHash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.distributionMissingReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enterprise!, unittest.isTrue);
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iasArtifactId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.latest!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNotes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaRelease--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest =
    0;
api.GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest
    buildGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest() {
  final o = api.GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest();
  buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest <
      3) {}
  buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest(
    api.GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest o) {
  buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest <
      3) {}
  buildCounterGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaTesterApp = 0;
api.GoogleFirebaseApptestersV1alphaTesterApp
    buildGoogleFirebaseApptestersV1alphaTesterApp() {
  final o = api.GoogleFirebaseApptestersV1alphaTesterApp();
  buildCounterGoogleFirebaseApptestersV1alphaTesterApp++;
  if (buildCounterGoogleFirebaseApptestersV1alphaTesterApp < 3) {
    o.bundleId = 'foo';
    o.consented = true;
    o.contactEmail = 'foo';
    o.display = 'foo';
    o.iconUrl = 'foo';
    o.name = 'foo';
    o.platform = 'foo';
    o.releaseCount = 42;
  }
  buildCounterGoogleFirebaseApptestersV1alphaTesterApp--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaTesterApp(
    api.GoogleFirebaseApptestersV1alphaTesterApp o) {
  buildCounterGoogleFirebaseApptestersV1alphaTesterApp++;
  if (buildCounterGoogleFirebaseApptestersV1alphaTesterApp < 3) {
    unittest.expect(
      o.bundleId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.consented!, unittest.isTrue);
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.display!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaTesterApp--;
}

core.int buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation = 0;
api.GoogleFirebaseApptestersV1alphaTesterAppInstallation
    buildGoogleFirebaseApptestersV1alphaTesterAppInstallation() {
  final o = api.GoogleFirebaseApptestersV1alphaTesterAppInstallation();
  buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation++;
  if (buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation < 3) {
    o.name = 'foo';
  }
  buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaTesterAppInstallation(
    api.GoogleFirebaseApptestersV1alphaTesterAppInstallation o) {
  buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation++;
  if (buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseApptestersV1alphaTesterAppInstallation--;
}

core.int
    buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest = 0;
api.GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest
    buildGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest() {
  final o = api.GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest();
  buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest <
      3) {}
  buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest--;
  return o;
}

void checkGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest(
    api.GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest o) {
  buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest++;
  if (buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest <
      3) {}
  buildCounterGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest--;
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
  unittest.group('obj-schema-GoogleApiHttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleApiHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleApiHttpBody.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleApiHttpBody(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaConsentAppRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaConsentAppRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaConsentAppRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaConsentAppRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaConsentAppResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaConsentAppResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaConsentAppResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaConsentAppResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaDevice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaDevice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaDevice(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaInvitation(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaInviteLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaInviteLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaInviteLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaInviteLink(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaListDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaListDevicesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaListReleasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaListReleasesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaListReleasesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaListTesterAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaListTesterAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaListTesterAppsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaListTesterAppsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaRelease.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaRelease(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseApptestersV1alphaTesterApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaTesterApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaTesterApp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaTesterApp(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaTesterAppInstallation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseApptestersV1alphaTesterAppInstallation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseApptestersV1alphaTesterAppInstallation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaTesterAppInstallation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest(od);
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

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices;
      final arg_request = buildGoogleFirebaseApptestersV1alphaDevice();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseApptestersV1alphaDevice.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaDevice(obj);

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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1alpha/devices'),
        );
        pathOffset += 15;

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
            convert.json.encode(buildGoogleFirebaseApptestersV1alphaDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaDevice(
          response as api.GoogleFirebaseApptestersV1alphaDevice);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
        final resp =
            convert.json.encode(buildGoogleFirebaseApptestersV1alphaDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaDevice(
          response as api.GoogleFirebaseApptestersV1alphaDevice);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1alpha/devices'),
        );
        pathOffset += 15;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaListDevicesResponse(
          response as api.GoogleFirebaseApptestersV1alphaListDevicesResponse);
    });
  });

  unittest.group('resource-DevicesTesterAppsResource', () {
    unittest.test('method--consent', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps;
      final arg_request =
          buildGoogleFirebaseApptestersV1alphaConsentAppRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseApptestersV1alphaConsentAppRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaConsentAppRequest(obj);

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
          unittest.equals('v1alpha/'),
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
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaConsentAppResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.consent(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaConsentAppResponse(
          response as api.GoogleFirebaseApptestersV1alphaConsentAppResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaTesterApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaTesterApp(
          response as api.GoogleFirebaseApptestersV1alphaTesterApp);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseApptestersV1alphaListTesterAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaListTesterAppsResponse(response
          as api.GoogleFirebaseApptestersV1alphaListTesterAppsResponse);
    });
  });

  unittest.group('resource-DevicesTesterAppsInstallationsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseapptestersApi(mock).devices.testerApps.installations;
      final arg_request =
          buildGoogleFirebaseApptestersV1alphaTesterAppInstallation();
      final arg_parent = 'foo';
      final arg_fid = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseApptestersV1alphaTesterAppInstallation.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaTesterAppInstallation(obj);

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
          unittest.equals('v1alpha/'),
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
          queryMap['fid']!.first,
          unittest.equals(arg_fid),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseApptestersV1alphaTesterAppInstallation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          fid: arg_fid, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaTesterAppInstallation(
          response as api.GoogleFirebaseApptestersV1alphaTesterAppInstallation);
    });
  });

  unittest.group('resource-DevicesTesterAppsInstallationsReleasesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock)
          .devices
          .testerApps
          .installations
          .releases;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse(
          response as api
              .GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse);
    });
  });

  unittest.group('resource-DevicesTesterAppsReleasesResource', () {
    unittest.test('method--download', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps.releases;
      final arg_name = 'foo';
      final arg_testerClient = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
          queryMap['testerClient']!.first,
          unittest.equals(arg_testerClient),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleApiHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name,
          testerClient: arg_testerClient,
          token: arg_token,
          $fields: arg_$fields);
      checkGoogleApiHttpBody(response as api.GoogleApiHttpBody);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).devices.testerApps.releases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_testerClient = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['testerClient']!.first,
          unittest.equals(arg_testerClient),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          testerClient: arg_testerClient,
          $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaListReleasesResponse(
          response as api.GoogleFirebaseApptestersV1alphaListReleasesResponse);
    });
  });

  unittest.group('resource-InvitationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).invitations;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaInvitation(
          response as api.GoogleFirebaseApptestersV1alphaInvitation);
    });

    unittest.test('method--subscribe', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).invitations;
      final arg_request =
          buildGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaSubscribeInvitationRequest(obj);

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
          unittest.equals('v1alpha/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.subscribe(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--unsubscribe', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).invitations;
      final arg_request =
          buildGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest(obj);

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
          unittest.equals('v1alpha/'),
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unsubscribe(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-InviteLinksResource', () {
    unittest.test('method--accept', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).inviteLinks;
      final arg_request =
          buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest(obj);

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
          unittest.equals('v1alpha/'),
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
            buildGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.accept(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse(response
          as api.GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).inviteLinks;
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1alpha/'),
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
        final resp = convert.json
            .encode(buildGoogleFirebaseApptestersV1alphaInviteLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseApptestersV1alphaInviteLink(
          response as api.GoogleFirebaseApptestersV1alphaInviteLink);
    });
  });

  unittest.group('resource-V1alphaResource', () {
    unittest.test('method--deleteDevices', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseapptestersApi(mock).v1alpha;
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
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('v1alpha/devices'),
        );
        pathOffset += 15;

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
      final response = await res.deleteDevices($fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });
}
