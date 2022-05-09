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

import 'package:firebaseapis/firebaseextensions/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleFirebaseExtensionsV1betaApi = 0;
api.GoogleFirebaseExtensionsV1betaApi buildGoogleFirebaseExtensionsV1betaApi() {
  final o = api.GoogleFirebaseExtensionsV1betaApi();
  buildCounterGoogleFirebaseExtensionsV1betaApi++;
  if (buildCounterGoogleFirebaseExtensionsV1betaApi < 3) {
    o.apiName = 'foo';
    o.reason = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaApi--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaApi(
    api.GoogleFirebaseExtensionsV1betaApi o) {
  buildCounterGoogleFirebaseExtensionsV1betaApi++;
  if (buildCounterGoogleFirebaseExtensionsV1betaApi < 3) {
    unittest.expect(
      o.apiName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaApi--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaAuthor = 0;
api.GoogleFirebaseExtensionsV1betaAuthor
    buildGoogleFirebaseExtensionsV1betaAuthor() {
  final o = api.GoogleFirebaseExtensionsV1betaAuthor();
  buildCounterGoogleFirebaseExtensionsV1betaAuthor++;
  if (buildCounterGoogleFirebaseExtensionsV1betaAuthor < 3) {
    o.authorName = 'foo';
    o.email = 'foo';
    o.url = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaAuthor--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaAuthor(
    api.GoogleFirebaseExtensionsV1betaAuthor o) {
  buildCounterGoogleFirebaseExtensionsV1betaAuthor++;
  if (buildCounterGoogleFirebaseExtensionsV1betaAuthor < 3) {
    unittest.expect(
      o.authorName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaAuthor--;
}

core.List<api.GoogleFirebaseExtensionsV1betaExtension> buildUnnamed0() => [
      buildGoogleFirebaseExtensionsV1betaExtension(),
      buildGoogleFirebaseExtensionsV1betaExtension(),
    ];

void checkUnnamed0(core.List<api.GoogleFirebaseExtensionsV1betaExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExtension(o[0]);
  checkGoogleFirebaseExtensionsV1betaExtension(o[1]);
}

core.int buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse =
    0;
api.GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse
    buildGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse() {
  final o = api.GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse();
  buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse <
      3) {
    o.extensions = buildUnnamed0();
  }
  buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse(
    api.GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse o) {
  buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse <
      3) {
    checkUnnamed0(o.extensions!);
  }
  buildCounterGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse--;
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest =
    0;
api.GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest
    buildGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest() {
  final o =
      api.GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest();
  buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest <
      3) {
    o.deprecationMessage = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest(
    api.GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest o) {
  buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest <
      3) {
    unittest.expect(
      o.deprecationMessage!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor = 0;
api.GoogleFirebaseExtensionsV1betaEventDescriptor
    buildGoogleFirebaseExtensionsV1betaEventDescriptor() {
  final o = api.GoogleFirebaseExtensionsV1betaEventDescriptor();
  buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor++;
  if (buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor < 3) {
    o.description = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaEventDescriptor(
    api.GoogleFirebaseExtensionsV1betaEventDescriptor o) {
  buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor++;
  if (buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaEventDescriptor--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtension = 0;
api.GoogleFirebaseExtensionsV1betaExtension
    buildGoogleFirebaseExtensionsV1betaExtension() {
  final o = api.GoogleFirebaseExtensionsV1betaExtension();
  buildCounterGoogleFirebaseExtensionsV1betaExtension++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtension < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.iconUri = 'foo';
    o.latestVersion = 'foo';
    o.latestVersionCreateTime = 'foo';
    o.name = 'foo';
    o.publisher = buildGoogleFirebaseExtensionsV1betaPublisherSummary();
    o.ref = 'foo';
    o.registryLaunchStage = 'foo';
    o.state = 'foo';
    o.visibility = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtension--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtension(
    api.GoogleFirebaseExtensionsV1betaExtension o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtension++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtension < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestVersionCreateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseExtensionsV1betaPublisherSummary(o.publisher!);
    unittest.expect(
      o.ref!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.registryLaunchStage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.visibility!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtension--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance = 0;
api.GoogleFirebaseExtensionsV1betaExtensionInstance
    buildGoogleFirebaseExtensionsV1betaExtensionInstance() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionInstance();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance < 3) {
    o.config = buildGoogleFirebaseExtensionsV1betaExtensionInstanceConfig();
    o.createTime = 'foo';
    o.errorStatus = buildGoogleRpcStatus();
    o.etag = 'foo';
    o.lastOperationName = 'foo';
    o.lastOperationType = 'foo';
    o.name = 'foo';
    o.serviceAccountEmail = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionInstance(
    api.GoogleFirebaseExtensionsV1betaExtensionInstance o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance < 3) {
    checkGoogleFirebaseExtensionsV1betaExtensionInstanceConfig(o.config!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkGoogleRpcStatus(o.errorStatus!);
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastOperationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastOperationType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstance--;
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

core.Map<core.String, core.String> buildUnnamed2() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig = 0;
api.GoogleFirebaseExtensionsV1betaExtensionInstanceConfig
    buildGoogleFirebaseExtensionsV1betaExtensionInstanceConfig() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionInstanceConfig();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig < 3) {
    o.allowedEventTypes = buildUnnamed1();
    o.createTime = 'foo';
    o.eventarcChannel = 'foo';
    o.extensionRef = 'foo';
    o.extensionVersion = 'foo';
    o.name = 'foo';
    o.params = buildUnnamed2();
    o.populatedPostinstallContent = 'foo';
    o.source = buildGoogleFirebaseExtensionsV1betaExtensionSource();
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionInstanceConfig(
    api.GoogleFirebaseExtensionsV1betaExtensionInstanceConfig o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig < 3) {
    checkUnnamed1(o.allowedEventTypes!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventarcChannel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extensionRef!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.extensionVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.params!);
    unittest.expect(
      o.populatedPostinstallContent!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseExtensionsV1betaExtensionSource(o.source!);
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionInstanceConfig--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionSource = 0;
api.GoogleFirebaseExtensionsV1betaExtensionSource
    buildGoogleFirebaseExtensionsV1betaExtensionSource() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionSource();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSource++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSource < 3) {
    o.extensionRoot = 'foo';
    o.fetchTime = 'foo';
    o.hash = 'foo';
    o.lastOperationName = 'foo';
    o.name = 'foo';
    o.packageUri = 'foo';
    o.spec = buildGoogleFirebaseExtensionsV1betaExtensionSpec();
    o.state = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSource--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionSource(
    api.GoogleFirebaseExtensionsV1betaExtensionSource o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSource++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSource < 3) {
    unittest.expect(
      o.extensionRoot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fetchTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastOperationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageUri!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseExtensionsV1betaExtensionSpec(o.spec!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSource--;
}

core.List<api.GoogleFirebaseExtensionsV1betaApi> buildUnnamed3() => [
      buildGoogleFirebaseExtensionsV1betaApi(),
      buildGoogleFirebaseExtensionsV1betaApi(),
    ];

void checkUnnamed3(core.List<api.GoogleFirebaseExtensionsV1betaApi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaApi(o[0]);
  checkGoogleFirebaseExtensionsV1betaApi(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaAuthor> buildUnnamed4() => [
      buildGoogleFirebaseExtensionsV1betaAuthor(),
      buildGoogleFirebaseExtensionsV1betaAuthor(),
    ];

void checkUnnamed4(core.List<api.GoogleFirebaseExtensionsV1betaAuthor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaAuthor(o[0]);
  checkGoogleFirebaseExtensionsV1betaAuthor(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaEventDescriptor> buildUnnamed5() =>
    [
      buildGoogleFirebaseExtensionsV1betaEventDescriptor(),
      buildGoogleFirebaseExtensionsV1betaEventDescriptor(),
    ];

void checkUnnamed5(
    core.List<api.GoogleFirebaseExtensionsV1betaEventDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaEventDescriptor(o[0]);
  checkGoogleFirebaseExtensionsV1betaEventDescriptor(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaExternalService> buildUnnamed6() =>
    [
      buildGoogleFirebaseExtensionsV1betaExternalService(),
      buildGoogleFirebaseExtensionsV1betaExternalService(),
    ];

void checkUnnamed6(
    core.List<api.GoogleFirebaseExtensionsV1betaExternalService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExternalService(o[0]);
  checkGoogleFirebaseExtensionsV1betaExternalService(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter>
    buildUnnamed7() => [
          buildGoogleFirebaseExtensionsV1betaExtensionSpecParameter(),
          buildGoogleFirebaseExtensionsV1betaExtensionSpecParameter(),
        ];

void checkUnnamed7(
    core.List<api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExtensionSpecParameter(o[0]);
  checkGoogleFirebaseExtensionsV1betaExtensionSpecParameter(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaResource> buildUnnamed8() => [
      buildGoogleFirebaseExtensionsV1betaResource(),
      buildGoogleFirebaseExtensionsV1betaResource(),
    ];

void checkUnnamed8(core.List<api.GoogleFirebaseExtensionsV1betaResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaResource(o[0]);
  checkGoogleFirebaseExtensionsV1betaResource(o[1]);
}

core.List<api.GoogleFirebaseExtensionsV1betaRole> buildUnnamed9() => [
      buildGoogleFirebaseExtensionsV1betaRole(),
      buildGoogleFirebaseExtensionsV1betaRole(),
    ];

void checkUnnamed9(core.List<api.GoogleFirebaseExtensionsV1betaRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaRole(o[0]);
  checkGoogleFirebaseExtensionsV1betaRole(o[1]);
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec = 0;
api.GoogleFirebaseExtensionsV1betaExtensionSpec
    buildGoogleFirebaseExtensionsV1betaExtensionSpec() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionSpec();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec < 3) {
    o.apis = buildUnnamed3();
    o.author = buildGoogleFirebaseExtensionsV1betaAuthor();
    o.billingRequired = true;
    o.contributors = buildUnnamed4();
    o.description = 'foo';
    o.displayName = 'foo';
    o.events = buildUnnamed5();
    o.externalServices = buildUnnamed6();
    o.license = 'foo';
    o.name = 'foo';
    o.params = buildUnnamed7();
    o.postinstallContent = 'foo';
    o.preinstallContent = 'foo';
    o.readmeContent = 'foo';
    o.releaseNotesUrl = 'foo';
    o.resources = buildUnnamed8();
    o.roles = buildUnnamed9();
    o.sourceUrl = 'foo';
    o.specVersion = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionSpec(
    api.GoogleFirebaseExtensionsV1betaExtensionSpec o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec < 3) {
    checkUnnamed3(o.apis!);
    checkGoogleFirebaseExtensionsV1betaAuthor(o.author!);
    unittest.expect(o.billingRequired!, unittest.isTrue);
    checkUnnamed4(o.contributors!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.events!);
    checkUnnamed6(o.externalServices!);
    unittest.expect(
      o.license!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.params!);
    unittest.expect(
      o.postinstallContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preinstallContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readmeContent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNotesUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.resources!);
    checkUnnamed9(o.roles!);
    unittest.expect(
      o.sourceUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.specVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpec--;
}

core.List<api.GoogleFirebaseExtensionsV1betaParamSelectOption>
    buildUnnamed10() => [
          buildGoogleFirebaseExtensionsV1betaParamSelectOption(),
          buildGoogleFirebaseExtensionsV1betaParamSelectOption(),
        ];

void checkUnnamed10(
    core.List<api.GoogleFirebaseExtensionsV1betaParamSelectOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaParamSelectOption(o[0]);
  checkGoogleFirebaseExtensionsV1betaParamSelectOption(o[1]);
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter = 0;
api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter
    buildGoogleFirebaseExtensionsV1betaExtensionSpecParameter() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter < 3) {
    o.default_ = 'foo';
    o.description = 'foo';
    o.example = 'foo';
    o.immutable = true;
    o.label = 'foo';
    o.options = buildUnnamed10();
    o.param = 'foo';
    o.required = true;
    o.resourceInfo = buildGoogleFirebaseExtensionsV1betaResourceInfo();
    o.type = 'foo';
    o.validationErrorMessage = 'foo';
    o.validationRegex = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionSpecParameter(
    api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter < 3) {
    unittest.expect(
      o.default_!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.example!,
      unittest.equals('foo'),
    );
    unittest.expect(o.immutable!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.options!);
    unittest.expect(
      o.param!,
      unittest.equals('foo'),
    );
    unittest.expect(o.required!, unittest.isTrue);
    checkGoogleFirebaseExtensionsV1betaResourceInfo(o.resourceInfo!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationErrorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationRegex!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionSpecParameter--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion = 0;
api.GoogleFirebaseExtensionsV1betaExtensionVersion
    buildGoogleFirebaseExtensionsV1betaExtensionVersion() {
  final o = api.GoogleFirebaseExtensionsV1betaExtensionVersion();
  buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion < 3) {
    o.createTime = 'foo';
    o.deleteTime = 'foo';
    o.deprecationMessage = 'foo';
    o.hash = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.ref = 'foo';
    o.releaseNotes = 'foo';
    o.sourceDownloadUri = 'foo';
    o.spec = buildGoogleFirebaseExtensionsV1betaExtensionSpec();
    o.state = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExtensionVersion(
    api.GoogleFirebaseExtensionsV1betaExtensionVersion o) {
  buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deleteTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deprecationMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ref!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseNotes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceDownloadUri!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseExtensionsV1betaExtensionSpec(o.spec!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExtensionVersion--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaExternalService = 0;
api.GoogleFirebaseExtensionsV1betaExternalService
    buildGoogleFirebaseExtensionsV1betaExternalService() {
  final o = api.GoogleFirebaseExtensionsV1betaExternalService();
  buildCounterGoogleFirebaseExtensionsV1betaExternalService++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExternalService < 3) {
    o.name = 'foo';
    o.pricingUri = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaExternalService--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaExternalService(
    api.GoogleFirebaseExtensionsV1betaExternalService o) {
  buildCounterGoogleFirebaseExtensionsV1betaExternalService++;
  if (buildCounterGoogleFirebaseExtensionsV1betaExternalService < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pricingUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaExternalService--;
}

core.List<api.GoogleFirebaseExtensionsV1betaExtensionInstance>
    buildUnnamed11() => [
          buildGoogleFirebaseExtensionsV1betaExtensionInstance(),
          buildGoogleFirebaseExtensionsV1betaExtensionInstance(),
        ];

void checkUnnamed11(
    core.List<api.GoogleFirebaseExtensionsV1betaExtensionInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExtensionInstance(o[0]);
  checkGoogleFirebaseExtensionsV1betaExtensionInstance(o[1]);
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse =
    0;
api.GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse
    buildGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse() {
  final o = api.GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse();
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse <
      3) {
    o.instances = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse(
    api.GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse o) {
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse <
      3) {
    checkUnnamed11(o.instances!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse--;
}

core.List<api.GoogleFirebaseExtensionsV1betaExtensionVersion>
    buildUnnamed12() => [
          buildGoogleFirebaseExtensionsV1betaExtensionVersion(),
          buildGoogleFirebaseExtensionsV1betaExtensionVersion(),
        ];

void checkUnnamed12(
    core.List<api.GoogleFirebaseExtensionsV1betaExtensionVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExtensionVersion(o[0]);
  checkGoogleFirebaseExtensionsV1betaExtensionVersion(o[1]);
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse = 0;
api.GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse
    buildGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse() {
  final o = api.GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse();
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse <
      3) {
    o.extensionVersions = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse(
    api.GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse o) {
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse <
      3) {
    checkUnnamed12(o.extensionVersions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse--;
}

core.List<api.GoogleFirebaseExtensionsV1betaExtension> buildUnnamed13() => [
      buildGoogleFirebaseExtensionsV1betaExtension(),
      buildGoogleFirebaseExtensionsV1betaExtension(),
    ];

void checkUnnamed13(core.List<api.GoogleFirebaseExtensionsV1betaExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseExtensionsV1betaExtension(o[0]);
  checkGoogleFirebaseExtensionsV1betaExtension(o[1]);
}

core.int buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse = 0;
api.GoogleFirebaseExtensionsV1betaListExtensionsResponse
    buildGoogleFirebaseExtensionsV1betaListExtensionsResponse() {
  final o = api.GoogleFirebaseExtensionsV1betaListExtensionsResponse();
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse < 3) {
    o.extensions = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaListExtensionsResponse(
    api.GoogleFirebaseExtensionsV1betaListExtensionsResponse o) {
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse++;
  if (buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse < 3) {
    checkUnnamed13(o.extensions!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaListExtensionsResponse--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption = 0;
api.GoogleFirebaseExtensionsV1betaParamSelectOption
    buildGoogleFirebaseExtensionsV1betaParamSelectOption() {
  final o = api.GoogleFirebaseExtensionsV1betaParamSelectOption();
  buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption++;
  if (buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption < 3) {
    o.label = 'foo';
    o.value = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaParamSelectOption(
    api.GoogleFirebaseExtensionsV1betaParamSelectOption o) {
  buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption++;
  if (buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaParamSelectOption--;
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest =
    0;
api.GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest
    buildGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest() {
  final o = api.GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest();
  buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest <
      3) {
    o.extensionRoot = 'foo';
    o.packageUri = 'foo';
    o.versionId = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest(
    api.GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest o) {
  buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest <
      3) {
    unittest.expect(
      o.extensionRoot!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile = 0;
api.GoogleFirebaseExtensionsV1betaPublisherProfile
    buildGoogleFirebaseExtensionsV1betaPublisherProfile() {
  final o = api.GoogleFirebaseExtensionsV1betaPublisherProfile();
  buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.publisherId = 'foo';
    o.registerTime = 'foo';
    o.websiteUri = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaPublisherProfile(
    api.GoogleFirebaseExtensionsV1betaPublisherProfile o) {
  buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publisherId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.registerTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.websiteUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublisherProfile--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary = 0;
api.GoogleFirebaseExtensionsV1betaPublisherSummary
    buildGoogleFirebaseExtensionsV1betaPublisherSummary() {
  final o = api.GoogleFirebaseExtensionsV1betaPublisherSummary();
  buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary < 3) {
    o.displayName = 'foo';
    o.iconUri = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaPublisherSummary(
    api.GoogleFirebaseExtensionsV1betaPublisherSummary o) {
  buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary++;
  if (buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaPublisherSummary--;
}

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Map<core.String, core.Object?>> buildUnnamed15() => {
      'x': buildUnnamed14(),
      'y': buildUnnamed14(),
    };

void checkUnnamed15(
    core.Map<core.String, core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed14(o['x']!);
  checkUnnamed14(o['y']!);
}

core.int buildCounterGoogleFirebaseExtensionsV1betaResource = 0;
api.GoogleFirebaseExtensionsV1betaResource
    buildGoogleFirebaseExtensionsV1betaResource() {
  final o = api.GoogleFirebaseExtensionsV1betaResource();
  buildCounterGoogleFirebaseExtensionsV1betaResource++;
  if (buildCounterGoogleFirebaseExtensionsV1betaResource < 3) {
    o.deletionPolicy = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.properties = buildUnnamed15();
    o.propertiesYaml = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaResource--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaResource(
    api.GoogleFirebaseExtensionsV1betaResource o) {
  buildCounterGoogleFirebaseExtensionsV1betaResource++;
  if (buildCounterGoogleFirebaseExtensionsV1betaResource < 3) {
    unittest.expect(
      o.deletionPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.properties!);
    unittest.expect(
      o.propertiesYaml!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaResource--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaResourceInfo = 0;
api.GoogleFirebaseExtensionsV1betaResourceInfo
    buildGoogleFirebaseExtensionsV1betaResourceInfo() {
  final o = api.GoogleFirebaseExtensionsV1betaResourceInfo();
  buildCounterGoogleFirebaseExtensionsV1betaResourceInfo++;
  if (buildCounterGoogleFirebaseExtensionsV1betaResourceInfo < 3) {
    o.resourceType = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaResourceInfo--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaResourceInfo(
    api.GoogleFirebaseExtensionsV1betaResourceInfo o) {
  buildCounterGoogleFirebaseExtensionsV1betaResourceInfo++;
  if (buildCounterGoogleFirebaseExtensionsV1betaResourceInfo < 3) {
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaResourceInfo--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaRole = 0;
api.GoogleFirebaseExtensionsV1betaRole
    buildGoogleFirebaseExtensionsV1betaRole() {
  final o = api.GoogleFirebaseExtensionsV1betaRole();
  buildCounterGoogleFirebaseExtensionsV1betaRole++;
  if (buildCounterGoogleFirebaseExtensionsV1betaRole < 3) {
    o.reason = 'foo';
    o.role = 'foo';
  }
  buildCounterGoogleFirebaseExtensionsV1betaRole--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaRole(
    api.GoogleFirebaseExtensionsV1betaRole o) {
  buildCounterGoogleFirebaseExtensionsV1betaRole++;
  if (buildCounterGoogleFirebaseExtensionsV1betaRole < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseExtensionsV1betaRole--;
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest =
    0;
api.GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest
    buildGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest() {
  final o =
      api.GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest();
  buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest(
    api.GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest o) {
  buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest--;
}

core.int buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest =
    0;
api.GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest
    buildGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest() {
  final o = api.GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest();
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest(
    api.GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest o) {
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest--;
}

core.int
    buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest =
    0;
api.GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest
    buildGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest() {
  final o =
      api.GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest();
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest--;
  return o;
}

void checkGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest(
    api.GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest o) {
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest++;
  if (buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest <
      3) {}
  buildCounterGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
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

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed17() => {
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

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
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

core.Map<core.String, core.Object?> buildUnnamed18() => {
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

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

void main() {
  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaApi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaApi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaApi.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaApi(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaAuthor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaAuthor(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaEventDescriptor',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaEventDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaEventDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaEventDescriptor(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExtension.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtension(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExtensionInstance',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionInstance(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaExtensionInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaExtensionInstanceConfig.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExtensionSource',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExtensionSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionSource(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExtensionSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExtensionSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionSpec(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaExtensionSpecParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionSpecParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaExtensionSpecParameter.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionSpecParameter(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExtensionVersion',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExtensionVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExtensionVersion(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaExternalService',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaExternalService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaExternalService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaExternalService(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaListExtensionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaListExtensionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaListExtensionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaListExtensionsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaParamSelectOption',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaParamSelectOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaParamSelectOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaParamSelectOption(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaPublisherProfile',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaPublisherProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaPublisherProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaPublisherProfile(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaPublisherSummary',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaPublisherSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaPublisherSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaPublisherSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaResource(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaResourceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaResourceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaResourceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaResourceInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseExtensionsV1betaRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseExtensionsV1betaRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaRole(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
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

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--getPublisherProfile', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects;
      final arg_name = 'foo';
      final arg_publisherId = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['publisherId']!.first,
          unittest.equals(arg_publisherId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseExtensionsV1betaPublisherProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getPublisherProfile(arg_name,
          publisherId: arg_publisherId, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaPublisherProfile(
          response as api.GoogleFirebaseExtensionsV1betaPublisherProfile);
    });
  });

  unittest.group('resource-ProjectsInstancesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.instances;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaExtensionInstance();
      final arg_parent = 'foo';
      final arg_instanceId = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaExtensionInstance(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['instanceId']!.first,
          unittest.equals(arg_instanceId),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          instanceId: arg_instanceId,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.instances;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.instances;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaExtensionInstance());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtensionInstance(
          response as api.GoogleFirebaseExtensionsV1betaExtensionInstance);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.instances;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            buildGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaListExtensionInstancesResponse(response
          as api.GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.instances;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaExtensionInstance();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaExtensionInstance(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsOperationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.operations;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsPublisherProfileResource', () {
    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.publisherProfile;
      final arg_request = buildGoogleFirebaseExtensionsV1betaPublisherProfile();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseExtensionsV1betaPublisherProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaPublisherProfile(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaPublisherProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.register(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaPublisherProfile(
          response as api.GoogleFirebaseExtensionsV1betaPublisherProfile);
    });
  });

  unittest.group('resource-ProjectsSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.sources;
      final arg_request = buildGoogleFirebaseExtensionsV1betaExtensionSource();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseExtensionsV1betaExtensionSource.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaExtensionSource(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).projects.sources;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaExtensionSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtensionSource(
          response as api.GoogleFirebaseExtensionsV1betaExtensionSource);
    });
  });

  unittest.group('resource-PublishersExtensionsResource', () {
    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).publishers.extensions;
      final arg_parent = 'foo';
      final arg_names = buildUnnamed20();
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['names']!,
          unittest.equals(arg_names),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_parent,
          names: arg_names, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse(response
          as api.GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).publishers.extensions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
      final res = api.FirebaseextensionsApi(mock).publishers.extensions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            convert.json.encode(buildGoogleFirebaseExtensionsV1betaExtension());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtension(
          response as api.GoogleFirebaseExtensionsV1betaExtension);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).publishers.extensions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            buildGoogleFirebaseExtensionsV1betaListExtensionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaListExtensionsResponse(
          response as api.GoogleFirebaseExtensionsV1betaListExtensionsResponse);
    });

    unittest.test('method--unpublish', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseextensionsApi(mock).publishers.extensions;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaUnpublishExtensionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          await res.unpublish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('resource-PublishersExtensionsVersionsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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

    unittest.test('method--deprecate', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaExtensionVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.deprecate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtensionVersion(
          response as api.GoogleFirebaseExtensionsV1betaExtensionVersion);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaExtensionVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtensionVersion(
          response as api.GoogleFirebaseExtensionsV1betaExtensionVersion);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaListExtensionVersionsResponse(response
          as api.GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse);
    });

    unittest.test('method--publish', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.publish(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--undeprecate', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
            .encode(buildGoogleFirebaseExtensionsV1betaExtensionVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.undeprecate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseExtensionsV1betaExtensionVersion(
          response as api.GoogleFirebaseExtensionsV1betaExtensionVersion);
    });

    unittest.test('method--unpublish', () async {
      final mock = HttpServerMock();
      final res =
          api.FirebaseextensionsApi(mock).publishers.extensions.versions;
      final arg_request =
          buildGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest(
            obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v1beta/'),
        );
        pathOffset += 7;
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
          await res.unpublish(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });
  });
}
