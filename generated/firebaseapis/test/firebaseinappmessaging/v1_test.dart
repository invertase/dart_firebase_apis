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

import 'package:firebaseapis/firebaseinappmessaging/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAction = 0;
api.Action buildAction() {
  final o = api.Action();
  buildCounterAction++;
  if (buildCounterAction < 3) {
    o.actionUrl = 'foo';
  }
  buildCounterAction--;
  return o;
}

void checkAction(api.Action o) {
  buildCounterAction++;
  if (buildCounterAction < 3) {
    unittest.expect(
      o.actionUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterAction--;
}

core.int buildCounterBannerMessage = 0;
api.BannerMessage buildBannerMessage() {
  final o = api.BannerMessage();
  buildCounterBannerMessage++;
  if (buildCounterBannerMessage < 3) {
    o.action = buildAction();
    o.backgroundHexColor = 'foo';
    o.body = buildText();
    o.imageUrl = 'foo';
    o.title = buildText();
  }
  buildCounterBannerMessage--;
  return o;
}

void checkBannerMessage(api.BannerMessage o) {
  buildCounterBannerMessage++;
  if (buildCounterBannerMessage < 3) {
    checkAction(o.action!);
    unittest.expect(
      o.backgroundHexColor!,
      unittest.equals('foo'),
    );
    checkText(o.body!);
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkText(o.title!);
  }
  buildCounterBannerMessage--;
}

core.int buildCounterButton = 0;
api.Button buildButton() {
  final o = api.Button();
  buildCounterButton++;
  if (buildCounterButton < 3) {
    o.buttonHexColor = 'foo';
    o.text = buildText();
  }
  buildCounterButton--;
  return o;
}

void checkButton(api.Button o) {
  buildCounterButton++;
  if (buildCounterButton < 3) {
    unittest.expect(
      o.buttonHexColor!,
      unittest.equals('foo'),
    );
    checkText(o.text!);
  }
  buildCounterButton--;
}

core.int buildCounterCampaignImpression = 0;
api.CampaignImpression buildCampaignImpression() {
  final o = api.CampaignImpression();
  buildCounterCampaignImpression++;
  if (buildCounterCampaignImpression < 3) {
    o.campaignId = 'foo';
    o.impressionTimestampMillis = 'foo';
  }
  buildCounterCampaignImpression--;
  return o;
}

void checkCampaignImpression(api.CampaignImpression o) {
  buildCounterCampaignImpression++;
  if (buildCounterCampaignImpression < 3) {
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.impressionTimestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterCampaignImpression--;
}

core.int buildCounterCardMessage = 0;
api.CardMessage buildCardMessage() {
  final o = api.CardMessage();
  buildCounterCardMessage++;
  if (buildCounterCardMessage < 3) {
    o.backgroundHexColor = 'foo';
    o.body = buildText();
    o.landscapeImageUrl = 'foo';
    o.portraitImageUrl = 'foo';
    o.primaryAction = buildAction();
    o.primaryActionButton = buildButton();
    o.secondaryAction = buildAction();
    o.secondaryActionButton = buildButton();
    o.title = buildText();
  }
  buildCounterCardMessage--;
  return o;
}

void checkCardMessage(api.CardMessage o) {
  buildCounterCardMessage++;
  if (buildCounterCardMessage < 3) {
    unittest.expect(
      o.backgroundHexColor!,
      unittest.equals('foo'),
    );
    checkText(o.body!);
    unittest.expect(
      o.landscapeImageUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.portraitImageUrl!,
      unittest.equals('foo'),
    );
    checkAction(o.primaryAction!);
    checkButton(o.primaryActionButton!);
    checkAction(o.secondaryAction!);
    checkButton(o.secondaryActionButton!);
    checkText(o.title!);
  }
  buildCounterCardMessage--;
}

core.int buildCounterClientAppInfo = 0;
api.ClientAppInfo buildClientAppInfo() {
  final o = api.ClientAppInfo();
  buildCounterClientAppInfo++;
  if (buildCounterClientAppInfo < 3) {
    o.appInstanceId = 'foo';
    o.appInstanceIdToken = 'foo';
    o.gmpAppId = 'foo';
    o.sdkVersion = 'foo';
  }
  buildCounterClientAppInfo--;
  return o;
}

void checkClientAppInfo(api.ClientAppInfo o) {
  buildCounterClientAppInfo++;
  if (buildCounterClientAppInfo < 3) {
    unittest.expect(
      o.appInstanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appInstanceIdToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gmpAppId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sdkVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientAppInfo--;
}

core.int buildCounterClientSignals = 0;
api.ClientSignals buildClientSignals() {
  final o = api.ClientSignals();
  buildCounterClientSignals++;
  if (buildCounterClientSignals < 3) {
    o.appVersion = 'foo';
    o.languageCode = 'foo';
    o.platformVersion = 'foo';
    o.timeZone = 'foo';
  }
  buildCounterClientSignals--;
  return o;
}

void checkClientSignals(api.ClientSignals o) {
  buildCounterClientSignals++;
  if (buildCounterClientSignals < 3) {
    unittest.expect(
      o.appVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platformVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterClientSignals--;
}

core.int buildCounterContent = 0;
api.Content buildContent() {
  final o = api.Content();
  buildCounterContent++;
  if (buildCounterContent < 3) {
    o.banner = buildBannerMessage();
    o.card = buildCardMessage();
    o.imageOnly = buildImageOnlyMessage();
    o.modal = buildModalMessage();
  }
  buildCounterContent--;
  return o;
}

void checkContent(api.Content o) {
  buildCounterContent++;
  if (buildCounterContent < 3) {
    checkBannerMessage(o.banner!);
    checkCardMessage(o.card!);
    checkImageOnlyMessage(o.imageOnly!);
    checkModalMessage(o.modal!);
  }
  buildCounterContent--;
}

core.List<api.EventParam> buildUnnamed0() => [
      buildEventParam(),
      buildEventParam(),
    ];

void checkUnnamed0(core.List<api.EventParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventParam(o[0]);
  checkEventParam(o[1]);
}

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.count = 42;
    o.name = 'foo';
    o.params = buildUnnamed0();
    o.previousTimestampMillis = 'foo';
    o.timestampMillis = 'foo';
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.params!);
    unittest.expect(
      o.previousTimestampMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterEvent--;
}

core.List<api.EventParam> buildUnnamed1() => [
      buildEventParam(),
      buildEventParam(),
    ];

void checkUnnamed1(core.List<api.EventParam> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventParam(o[0]);
  checkEventParam(o[1]);
}

core.int buildCounterEventParam = 0;
api.EventParam buildEventParam() {
  final o = api.EventParam();
  buildCounterEventParam++;
  if (buildCounterEventParam < 3) {
    o.doubleValue = 42.0;
    o.floatValue = 42.0;
    o.intValue = 'foo';
    o.name = 'foo';
    o.paramValue = buildUnnamed1();
    o.stringValue = 'foo';
  }
  buildCounterEventParam--;
  return o;
}

void checkEventParam(api.EventParam o) {
  buildCounterEventParam++;
  if (buildCounterEventParam < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.paramValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterEventParam--;
}

core.int buildCounterExperimentLite = 0;
api.ExperimentLite buildExperimentLite() {
  final o = api.ExperimentLite();
  buildCounterExperimentLite++;
  if (buildCounterExperimentLite < 3) {
    o.experimentId = 'foo';
  }
  buildCounterExperimentLite--;
  return o;
}

void checkExperimentLite(api.ExperimentLite o) {
  buildCounterExperimentLite++;
  if (buildCounterExperimentLite < 3) {
    unittest.expect(
      o.experimentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExperimentLite--;
}

core.List<api.ExperimentLite> buildUnnamed2() => [
      buildExperimentLite(),
      buildExperimentLite(),
    ];

void checkUnnamed2(core.List<api.ExperimentLite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentLite(o[0]);
  checkExperimentLite(o[1]);
}

core.int buildCounterExperimentPayload = 0;
api.ExperimentPayload buildExperimentPayload() {
  final o = api.ExperimentPayload();
  buildCounterExperimentPayload++;
  if (buildCounterExperimentPayload < 3) {
    o.activateEventToLog = 'foo';
    o.clearEventToLog = 'foo';
    o.experimentId = 'foo';
    o.experimentStartTimeMillis = 'foo';
    o.ongoingExperiments = buildUnnamed2();
    o.overflowPolicy = 'foo';
    o.setEventToLog = 'foo';
    o.timeToLiveMillis = 'foo';
    o.timeoutEventToLog = 'foo';
    o.triggerEvent = 'foo';
    o.triggerTimeoutMillis = 'foo';
    o.ttlExpiryEventToLog = 'foo';
    o.variantId = 'foo';
  }
  buildCounterExperimentPayload--;
  return o;
}

void checkExperimentPayload(api.ExperimentPayload o) {
  buildCounterExperimentPayload++;
  if (buildCounterExperimentPayload < 3) {
    unittest.expect(
      o.activateEventToLog!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.clearEventToLog!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experimentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experimentStartTimeMillis!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.ongoingExperiments!);
    unittest.expect(
      o.overflowPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.setEventToLog!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeToLiveMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeoutEventToLog!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerEvent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.triggerTimeoutMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttlExpiryEventToLog!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variantId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExperimentPayload--;
}

core.int buildCounterExperimentalCampaignPayload = 0;
api.ExperimentalCampaignPayload buildExperimentalCampaignPayload() {
  final o = api.ExperimentalCampaignPayload();
  buildCounterExperimentalCampaignPayload++;
  if (buildCounterExperimentalCampaignPayload < 3) {
    o.campaignEndTimeMillis = 'foo';
    o.campaignId = 'foo';
    o.campaignName = 'foo';
    o.campaignStartTimeMillis = 'foo';
    o.experimentPayload = buildExperimentPayload();
  }
  buildCounterExperimentalCampaignPayload--;
  return o;
}

void checkExperimentalCampaignPayload(api.ExperimentalCampaignPayload o) {
  buildCounterExperimentalCampaignPayload++;
  if (buildCounterExperimentalCampaignPayload < 3) {
    unittest.expect(
      o.campaignEndTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignStartTimeMillis!,
      unittest.equals('foo'),
    );
    checkExperimentPayload(o.experimentPayload!);
  }
  buildCounterExperimentalCampaignPayload--;
}

core.List<api.CampaignImpression> buildUnnamed3() => [
      buildCampaignImpression(),
      buildCampaignImpression(),
    ];

void checkUnnamed3(core.List<api.CampaignImpression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaignImpression(o[0]);
  checkCampaignImpression(o[1]);
}

core.int buildCounterFetchEligibleCampaignsRequest = 0;
api.FetchEligibleCampaignsRequest buildFetchEligibleCampaignsRequest() {
  final o = api.FetchEligibleCampaignsRequest();
  buildCounterFetchEligibleCampaignsRequest++;
  if (buildCounterFetchEligibleCampaignsRequest < 3) {
    o.alreadySeenCampaigns = buildUnnamed3();
    o.clientSignals = buildClientSignals();
    o.requestingClientApp = buildClientAppInfo();
  }
  buildCounterFetchEligibleCampaignsRequest--;
  return o;
}

void checkFetchEligibleCampaignsRequest(api.FetchEligibleCampaignsRequest o) {
  buildCounterFetchEligibleCampaignsRequest++;
  if (buildCounterFetchEligibleCampaignsRequest < 3) {
    checkUnnamed3(o.alreadySeenCampaigns!);
    checkClientSignals(o.clientSignals!);
    checkClientAppInfo(o.requestingClientApp!);
  }
  buildCounterFetchEligibleCampaignsRequest--;
}

core.List<api.ThickContent> buildUnnamed4() => [
      buildThickContent(),
      buildThickContent(),
    ];

void checkUnnamed4(core.List<api.ThickContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThickContent(o[0]);
  checkThickContent(o[1]);
}

core.int buildCounterFetchEligibleCampaignsResponse = 0;
api.FetchEligibleCampaignsResponse buildFetchEligibleCampaignsResponse() {
  final o = api.FetchEligibleCampaignsResponse();
  buildCounterFetchEligibleCampaignsResponse++;
  if (buildCounterFetchEligibleCampaignsResponse < 3) {
    o.expirationEpochTimestampMillis = 'foo';
    o.messages = buildUnnamed4();
  }
  buildCounterFetchEligibleCampaignsResponse--;
  return o;
}

void checkFetchEligibleCampaignsResponse(api.FetchEligibleCampaignsResponse o) {
  buildCounterFetchEligibleCampaignsResponse++;
  if (buildCounterFetchEligibleCampaignsResponse < 3) {
    unittest.expect(
      o.expirationEpochTimestampMillis!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.messages!);
  }
  buildCounterFetchEligibleCampaignsResponse--;
}

core.int buildCounterImageOnlyMessage = 0;
api.ImageOnlyMessage buildImageOnlyMessage() {
  final o = api.ImageOnlyMessage();
  buildCounterImageOnlyMessage++;
  if (buildCounterImageOnlyMessage < 3) {
    o.action = buildAction();
    o.imageUrl = 'foo';
  }
  buildCounterImageOnlyMessage--;
  return o;
}

void checkImageOnlyMessage(api.ImageOnlyMessage o) {
  buildCounterImageOnlyMessage++;
  if (buildCounterImageOnlyMessage < 3) {
    checkAction(o.action!);
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterImageOnlyMessage--;
}

core.int buildCounterLocalization = 0;
api.Localization buildLocalization() {
  final o = api.Localization();
  buildCounterLocalization++;
  if (buildCounterLocalization < 3) {
    o.langCode = 'foo';
    o.text = 'foo';
  }
  buildCounterLocalization--;
  return o;
}

void checkLocalization(api.Localization o) {
  buildCounterLocalization++;
  if (buildCounterLocalization < 3) {
    unittest.expect(
      o.langCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalization--;
}

core.int buildCounterModalMessage = 0;
api.ModalMessage buildModalMessage() {
  final o = api.ModalMessage();
  buildCounterModalMessage++;
  if (buildCounterModalMessage < 3) {
    o.action = buildAction();
    o.actionButton = buildButton();
    o.backgroundHexColor = 'foo';
    o.body = buildText();
    o.imageUrl = 'foo';
    o.title = buildText();
  }
  buildCounterModalMessage--;
  return o;
}

void checkModalMessage(api.ModalMessage o) {
  buildCounterModalMessage++;
  if (buildCounterModalMessage < 3) {
    checkAction(o.action!);
    checkButton(o.actionButton!);
    unittest.expect(
      o.backgroundHexColor!,
      unittest.equals('foo'),
    );
    checkText(o.body!);
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkText(o.title!);
  }
  buildCounterModalMessage--;
}

core.int buildCounterPriority = 0;
api.Priority buildPriority() {
  final o = api.Priority();
  buildCounterPriority++;
  if (buildCounterPriority < 3) {
    o.value = 42;
  }
  buildCounterPriority--;
  return o;
}

void checkPriority(api.Priority o) {
  buildCounterPriority++;
  if (buildCounterPriority < 3) {
    unittest.expect(
      o.value!,
      unittest.equals(42),
    );
  }
  buildCounterPriority--;
}

core.List<api.Localization> buildUnnamed5() => [
      buildLocalization(),
      buildLocalization(),
    ];

void checkUnnamed5(core.List<api.Localization> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalization(o[0]);
  checkLocalization(o[1]);
}

core.int buildCounterText = 0;
api.Text buildText() {
  final o = api.Text();
  buildCounterText++;
  if (buildCounterText < 3) {
    o.hexColor = 'foo';
    o.localizations = buildUnnamed5();
    o.sourceLangCode = 'foo';
    o.text = 'foo';
  }
  buildCounterText--;
  return o;
}

void checkText(api.Text o) {
  buildCounterText++;
  if (buildCounterText < 3) {
    unittest.expect(
      o.hexColor!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.localizations!);
    unittest.expect(
      o.sourceLangCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterText--;
}

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
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

core.List<api.TriggeringCondition> buildUnnamed7() => [
      buildTriggeringCondition(),
      buildTriggeringCondition(),
    ];

void checkUnnamed7(core.List<api.TriggeringCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTriggeringCondition(o[0]);
  checkTriggeringCondition(o[1]);
}

core.int buildCounterThickContent = 0;
api.ThickContent buildThickContent() {
  final o = api.ThickContent();
  buildCounterThickContent++;
  if (buildCounterThickContent < 3) {
    o.content = buildContent();
    o.dataBundle = buildUnnamed6();
    o.experimentalPayload = buildExperimentalCampaignPayload();
    o.isTestCampaign = true;
    o.priority = buildPriority();
    o.triggeringConditions = buildUnnamed7();
    o.vanillaPayload = buildVanillaCampaignPayload();
  }
  buildCounterThickContent--;
  return o;
}

void checkThickContent(api.ThickContent o) {
  buildCounterThickContent++;
  if (buildCounterThickContent < 3) {
    checkContent(o.content!);
    checkUnnamed6(o.dataBundle!);
    checkExperimentalCampaignPayload(o.experimentalPayload!);
    unittest.expect(o.isTestCampaign!, unittest.isTrue);
    checkPriority(o.priority!);
    checkUnnamed7(o.triggeringConditions!);
    checkVanillaCampaignPayload(o.vanillaPayload!);
  }
  buildCounterThickContent--;
}

core.int buildCounterTriggeringCondition = 0;
api.TriggeringCondition buildTriggeringCondition() {
  final o = api.TriggeringCondition();
  buildCounterTriggeringCondition++;
  if (buildCounterTriggeringCondition < 3) {
    o.event = buildEvent();
    o.fiamTrigger = 'foo';
  }
  buildCounterTriggeringCondition--;
  return o;
}

void checkTriggeringCondition(api.TriggeringCondition o) {
  buildCounterTriggeringCondition++;
  if (buildCounterTriggeringCondition < 3) {
    checkEvent(o.event!);
    unittest.expect(
      o.fiamTrigger!,
      unittest.equals('foo'),
    );
  }
  buildCounterTriggeringCondition--;
}

core.int buildCounterVanillaCampaignPayload = 0;
api.VanillaCampaignPayload buildVanillaCampaignPayload() {
  final o = api.VanillaCampaignPayload();
  buildCounterVanillaCampaignPayload++;
  if (buildCounterVanillaCampaignPayload < 3) {
    o.campaignEndTimeMillis = 'foo';
    o.campaignId = 'foo';
    o.campaignName = 'foo';
    o.campaignStartTimeMillis = 'foo';
    o.experimentalCampaignId = 'foo';
  }
  buildCounterVanillaCampaignPayload--;
  return o;
}

void checkVanillaCampaignPayload(api.VanillaCampaignPayload o) {
  buildCounterVanillaCampaignPayload++;
  if (buildCounterVanillaCampaignPayload < 3) {
    unittest.expect(
      o.campaignEndTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.campaignStartTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.experimentalCampaignId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVanillaCampaignPayload--;
}

void main() {
  unittest.group('obj-schema-Action', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Action.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAction(od);
    });
  });

  unittest.group('obj-schema-BannerMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBannerMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BannerMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBannerMessage(od);
    });
  });

  unittest.group('obj-schema-Button', () {
    unittest.test('to-json--from-json', () async {
      final o = buildButton();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Button.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkButton(od);
    });
  });

  unittest.group('obj-schema-CampaignImpression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCampaignImpression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CampaignImpression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCampaignImpression(od);
    });
  });

  unittest.group('obj-schema-CardMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCardMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CardMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCardMessage(od);
    });
  });

  unittest.group('obj-schema-ClientAppInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientAppInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientAppInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientAppInfo(od);
    });
  });

  unittest.group('obj-schema-ClientSignals', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientSignals();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientSignals.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkClientSignals(od);
    });
  });

  unittest.group('obj-schema-Content', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Content.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkContent(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Event.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-EventParam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventParam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EventParam.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEventParam(od);
    });
  });

  unittest.group('obj-schema-ExperimentLite', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentLite();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentLite.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentLite(od);
    });
  });

  unittest.group('obj-schema-ExperimentPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentPayload(od);
    });
  });

  unittest.group('obj-schema-ExperimentalCampaignPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentalCampaignPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentalCampaignPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExperimentalCampaignPayload(od);
    });
  });

  unittest.group('obj-schema-FetchEligibleCampaignsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchEligibleCampaignsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchEligibleCampaignsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchEligibleCampaignsRequest(od);
    });
  });

  unittest.group('obj-schema-FetchEligibleCampaignsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFetchEligibleCampaignsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FetchEligibleCampaignsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFetchEligibleCampaignsResponse(od);
    });
  });

  unittest.group('obj-schema-ImageOnlyMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageOnlyMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageOnlyMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageOnlyMessage(od);
    });
  });

  unittest.group('obj-schema-Localization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Localization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalization(od);
    });
  });

  unittest.group('obj-schema-ModalMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModalMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModalMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModalMessage(od);
    });
  });

  unittest.group('obj-schema-Priority', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPriority();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Priority.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPriority(od);
    });
  });

  unittest.group('obj-schema-Text', () {
    unittest.test('to-json--from-json', () async {
      final o = buildText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Text.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkText(od);
    });
  });

  unittest.group('obj-schema-ThickContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThickContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThickContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThickContent(od);
    });
  });

  unittest.group('obj-schema-TriggeringCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriggeringCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriggeringCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriggeringCondition(od);
    });
  });

  unittest.group('obj-schema-VanillaCampaignPayload', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVanillaCampaignPayload();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VanillaCampaignPayload.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVanillaCampaignPayload(od);
    });
  });

  unittest.group('resource-SdkServingProjectsEligibleCampaignsResource', () {
    unittest.test('method--fetch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseInAppMessagingApi(mock)
          .sdkServing
          .projects
          .eligibleCampaigns;
      final arg_request = buildFetchEligibleCampaignsRequest();
      final arg_projectNumber = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.FetchEligibleCampaignsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkFetchEligibleCampaignsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('v1/sdkServing/projects/'),
        );
        pathOffset += 23;
        index = path.indexOf('/eligibleCampaigns:fetch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectNumber'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('/eligibleCampaigns:fetch'),
        );
        pathOffset += 24;

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
        final resp = convert.json.encode(buildFetchEligibleCampaignsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.fetch(arg_request, arg_projectNumber, $fields: arg_$fields);
      checkFetchEligibleCampaignsResponse(
          response as api.FetchEligibleCampaignsResponse);
    });
  });
}
