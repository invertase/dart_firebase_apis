// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Firebase In-App Messaging API - v1
///
/// Publicly accessible APIs that allows firebase in-app messaging SDKs/Clients
/// to communicate with servers for fetching message definitions.
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseInAppMessagingApi] to access these resources:
///
/// - [SdkServingResource]
///   - [SdkServingProjectsResource]
///     - [SdkServingProjectsEligibleCampaignsResource]
library firebaseinappmessaging.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Publicly accessible APIs that allows firebase in-app messaging SDKs/Clients
/// to communicate with servers for fetching message definitions.
class FirebaseInAppMessagingApi {
  final commons.ApiRequester _requester;

  SdkServingResource get sdkServing => SdkServingResource(_requester);

  FirebaseInAppMessagingApi(http.Client client,
      {core.String rootUrl = 'https://firebaseinappmessaging.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class SdkServingResource {
  final commons.ApiRequester _requester;

  SdkServingProjectsResource get projects =>
      SdkServingProjectsResource(_requester);

  SdkServingResource(commons.ApiRequester client) : _requester = client;
}

class SdkServingProjectsResource {
  final commons.ApiRequester _requester;

  SdkServingProjectsEligibleCampaignsResource get eligibleCampaigns =>
      SdkServingProjectsEligibleCampaignsResource(_requester);

  SdkServingProjectsResource(commons.ApiRequester client) : _requester = client;
}

class SdkServingProjectsEligibleCampaignsResource {
  final commons.ApiRequester _requester;

  SdkServingProjectsEligibleCampaignsResource(commons.ApiRequester client)
      : _requester = client;

  /// Retrieve fiam messages that are suitable for the current client app
  /// instance.
  ///
  /// A suitable campaign message needs to satisfy 3 conditions 1 Active
  /// campaign 2 The requesting client app instance meets the targeting
  /// requirement for the campaign 3 The message is still yet to be rendered by
  /// the requesting client app instance based on the display policy for the
  /// campaign. Parameter already_seen_campaign in the request object is used to
  /// help serve this purpose. Due to potential risk of a long list of
  /// already_seen_campaigns causing the url to reach the length limit, it's
  /// modeled as a POST request (so we can use body to carry the request data)
  /// with custom method even though it's essentially a read operation. The
  /// returned list of campaign messages are sorted from high priority to low
  /// priority so that the client can display them in the order as seen in the
  /// response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectNumber] - \[required\] the unique numeric string identifying the
  /// firebase project that the client app belongs
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchEligibleCampaignsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchEligibleCampaignsResponse> fetch(
    FetchEligibleCampaignsRequest request,
    core.String projectNumber, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/sdkServing/projects/' +
        commons.escapeVariable('$projectNumber') +
        '/eligibleCampaigns:fetch';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return FetchEligibleCampaignsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// This defines the action to be taken on click: For now, only the url to
/// navigate to.
class Action {
  /// Action url
  core.String? actionUrl;

  Action({
    this.actionUrl,
  });

  Action.fromJson(core.Map _json)
      : this(
          actionUrl: _json.containsKey('actionUrl')
              ? _json['actionUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionUrl != null) 'actionUrl': actionUrl!,
      };
}

class BannerMessage {
  /// Action to take when banner is clicked
  ///
  /// Optional.
  Action? action;

  /// Message background color.
  ///
  /// Optional.
  core.String? backgroundHexColor;

  /// Message body.
  ///
  /// Optional.
  Text? body;

  /// Image to display (https url - it will be downloaded onto the device) No
  /// prefix required.
  ///
  /// Optional.
  core.String? imageUrl;

  /// Message title.
  ///
  /// Required.
  Text? title;

  BannerMessage({
    this.action,
    this.backgroundHexColor,
    this.body,
    this.imageUrl,
    this.title,
  });

  BannerMessage.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? Action.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          backgroundHexColor: _json.containsKey('backgroundHexColor')
              ? _json['backgroundHexColor'] as core.String
              : null,
          body: _json.containsKey('body')
              ? Text.fromJson(
                  _json['body'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          title: _json.containsKey('title')
              ? Text.fromJson(
                  _json['title'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (backgroundHexColor != null)
          'backgroundHexColor': backgroundHexColor!,
        if (body != null) 'body': body!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (title != null) 'title': title!,
      };
}

class Button {
  /// Button background color.
  core.String? buttonHexColor;

  /// Button text.
  Text? text;

  Button({
    this.buttonHexColor,
    this.text,
  });

  Button.fromJson(core.Map _json)
      : this(
          buttonHexColor: _json.containsKey('buttonHexColor')
              ? _json['buttonHexColor'] as core.String
              : null,
          text: _json.containsKey('text')
              ? Text.fromJson(
                  _json['text'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buttonHexColor != null) 'buttonHexColor': buttonHexColor!,
        if (text != null) 'text': text!,
      };
}

/// A campaign id and timestamp noting when the device displayed this campaign
class CampaignImpression {
  /// campaign_id
  ///
  /// Required.
  core.String? campaignId;

  /// when instance last displayed the content for this campaign
  ///
  /// Required.
  core.String? impressionTimestampMillis;

  CampaignImpression({
    this.campaignId,
    this.impressionTimestampMillis,
  });

  CampaignImpression.fromJson(core.Map _json)
      : this(
          campaignId: _json.containsKey('campaignId')
              ? _json['campaignId'] as core.String
              : null,
          impressionTimestampMillis:
              _json.containsKey('impressionTimestampMillis')
                  ? _json['impressionTimestampMillis'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignId != null) 'campaignId': campaignId!,
        if (impressionTimestampMillis != null)
          'impressionTimestampMillis': impressionTimestampMillis!,
      };
}

class CardMessage {
  /// Message background color.
  ///
  /// Required.
  core.String? backgroundHexColor;

  /// Message body.
  ///
  /// Optional.
  Text? body;

  /// HTTPS url of the image to display in landscape orientation of the device.
  ///
  /// If missing, the client will default to using the portrait image url.
  ///
  /// Optional.
  core.String? landscapeImageUrl;

  /// HTTPS url of the image to display in portrait orientation of the device.
  ///
  /// Required.
  core.String? portraitImageUrl;

  /// The action to take when clicking on the primary button.
  ///
  /// Optional.
  Action? primaryAction;

  /// Message button.
  ///
  /// Clicking this button will trigger the modal's primary action If the
  /// primary action is not provided, the button simply dismisses the message.
  ///
  /// Required.
  Button? primaryActionButton;

  /// The action to take when the secondary action button is clicked.
  ///
  /// Optional.
  Action? secondaryAction;

  /// Message button.
  ///
  /// Clicking this button will trigger the modal's secondary action If the
  /// secondary action is not provided, the button simply dismisses the message.
  ///
  /// Optional.
  Button? secondaryActionButton;

  /// Message title.
  ///
  /// Required.
  Text? title;

  CardMessage({
    this.backgroundHexColor,
    this.body,
    this.landscapeImageUrl,
    this.portraitImageUrl,
    this.primaryAction,
    this.primaryActionButton,
    this.secondaryAction,
    this.secondaryActionButton,
    this.title,
  });

  CardMessage.fromJson(core.Map _json)
      : this(
          backgroundHexColor: _json.containsKey('backgroundHexColor')
              ? _json['backgroundHexColor'] as core.String
              : null,
          body: _json.containsKey('body')
              ? Text.fromJson(
                  _json['body'] as core.Map<core.String, core.dynamic>)
              : null,
          landscapeImageUrl: _json.containsKey('landscapeImageUrl')
              ? _json['landscapeImageUrl'] as core.String
              : null,
          portraitImageUrl: _json.containsKey('portraitImageUrl')
              ? _json['portraitImageUrl'] as core.String
              : null,
          primaryAction: _json.containsKey('primaryAction')
              ? Action.fromJson(
                  _json['primaryAction'] as core.Map<core.String, core.dynamic>)
              : null,
          primaryActionButton: _json.containsKey('primaryActionButton')
              ? Button.fromJson(_json['primaryActionButton']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryAction: _json.containsKey('secondaryAction')
              ? Action.fromJson(_json['secondaryAction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryActionButton: _json.containsKey('secondaryActionButton')
              ? Button.fromJson(_json['secondaryActionButton']
                  as core.Map<core.String, core.dynamic>)
              : null,
          title: _json.containsKey('title')
              ? Text.fromJson(
                  _json['title'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundHexColor != null)
          'backgroundHexColor': backgroundHexColor!,
        if (body != null) 'body': body!,
        if (landscapeImageUrl != null) 'landscapeImageUrl': landscapeImageUrl!,
        if (portraitImageUrl != null) 'portraitImageUrl': portraitImageUrl!,
        if (primaryAction != null) 'primaryAction': primaryAction!,
        if (primaryActionButton != null)
          'primaryActionButton': primaryActionButton!,
        if (secondaryAction != null) 'secondaryAction': secondaryAction!,
        if (secondaryActionButton != null)
          'secondaryActionButton': secondaryActionButton!,
        if (title != null) 'title': title!,
      };
}

/// it has the info in identifying the client app making the request
class ClientAppInfo {
  /// app instance id
  ///
  /// Required.
  core.String? appInstanceId;

  /// app instance id token
  ///
  /// Required.
  core.String? appInstanceIdToken;

  /// the unique app id for the client app
  ///
  /// Required.
  core.String? gmpAppId;

  /// SDK version from which the request is being made in the format: : e.g
  /// ios:3.14 or android:13.37
  ///
  /// Optional.
  core.String? sdkVersion;

  ClientAppInfo({
    this.appInstanceId,
    this.appInstanceIdToken,
    this.gmpAppId,
    this.sdkVersion,
  });

  ClientAppInfo.fromJson(core.Map _json)
      : this(
          appInstanceId: _json.containsKey('appInstanceId')
              ? _json['appInstanceId'] as core.String
              : null,
          appInstanceIdToken: _json.containsKey('appInstanceIdToken')
              ? _json['appInstanceIdToken'] as core.String
              : null,
          gmpAppId: _json.containsKey('gmpAppId')
              ? _json['gmpAppId'] as core.String
              : null,
          sdkVersion: _json.containsKey('sdkVersion')
              ? _json['sdkVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appInstanceId != null) 'appInstanceId': appInstanceId!,
        if (appInstanceIdToken != null)
          'appInstanceIdToken': appInstanceIdToken!,
        if (gmpAppId != null) 'gmpAppId': gmpAppId!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
      };
}

/// A set of signals which are collected on the client and are included in
/// requests by Firebase Services (eg.
///
/// Remote Config, Digital Goods etc). NOTE: These will eventually not be needed
/// in the request when we have an App Checkin service which will upload these
/// signals periodically.
class ClientSignals {
  /// The App version.
  ///
  /// Android - versionName - http://shortn/_SXW3Wxg972 iOS - CFBundleVersion -
  /// http://shortn/_Z1l0Lv8Kq6
  ///
  /// Optional.
  core.String? appVersion;

  /// Device language in the BCP47 format.
  ///
  /// For example "en-US". This is case-insensitive. Android -
  /// Locale.getDefault() iOS -
  ///
  /// Optional.
  core.String? languageCode;

  /// The Platform Version of the device.
  ///
  /// Android - The API level. http://shortn/_3fAA60nsoy iOS - A version of the
  /// format "X.Y.Z". http://shortn/_lY40KS4SNt NOTE(tal): as of Jan 2018 this
  /// signal is not used in common targeting.
  ///
  /// Optional.
  core.String? platformVersion;

  /// Time zone in Olson ID format (eg: "America/Los_Angeles").
  ///
  /// Case-sensitive. Android - TimeZone.getDefault().getID() -
  /// http://shortn/_euxZnYYP1G. iOS - NSTimeZone.name -
  /// http://shortn/_mTknrZvUIT
  ///
  /// Optional.
  core.String? timeZone;

  ClientSignals({
    this.appVersion,
    this.languageCode,
    this.platformVersion,
    this.timeZone,
  });

  ClientSignals.fromJson(core.Map _json)
      : this(
          appVersion: _json.containsKey('appVersion')
              ? _json['appVersion'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          platformVersion: _json.containsKey('platformVersion')
              ? _json['platformVersion'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appVersion != null) 'appVersion': appVersion!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (platformVersion != null) 'platformVersion': platformVersion!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// Content of a Firebase in-app message.
class Content {
  /// Banner mode
  BannerMessage? banner;

  /// Card mode
  CardMessage? card;

  /// Entire message is provided by the developer as an image
  ImageOnlyMessage? imageOnly;

  /// Modal mode
  ModalMessage? modal;

  Content({
    this.banner,
    this.card,
    this.imageOnly,
    this.modal,
  });

  Content.fromJson(core.Map _json)
      : this(
          banner: _json.containsKey('banner')
              ? BannerMessage.fromJson(
                  _json['banner'] as core.Map<core.String, core.dynamic>)
              : null,
          card: _json.containsKey('card')
              ? CardMessage.fromJson(
                  _json['card'] as core.Map<core.String, core.dynamic>)
              : null,
          imageOnly: _json.containsKey('imageOnly')
              ? ImageOnlyMessage.fromJson(
                  _json['imageOnly'] as core.Map<core.String, core.dynamic>)
              : null,
          modal: _json.containsKey('modal')
              ? ModalMessage.fromJson(
                  _json['modal'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (banner != null) 'banner': banner!,
        if (card != null) 'card': card!,
        if (imageOnly != null) 'imageOnly': imageOnly!,
        if (modal != null) 'modal': modal!,
      };
}

/// Information about activity on the app.
///
/// Can be automatically generated by client SDKs or provided directly by the
/// app developer. Next ID to use: 6
class Event {
  /// Events without timestamps will be grouped together by set of params and
  /// will be reported with occurrence count.
  ///
  /// This is lossless client side aggregation to pack the data in more compact
  /// form. Events with different set of params will be logged with different
  /// EventParam message.
  core.int? count;

  /// The event name.
  ///
  /// Event name length will be limited to something short like 24 or 32 chars.
  /// The exact max length limit is TBD.
  core.String? name;
  core.List<EventParam>? params;

  /// UTC client time when the transaction happened in millis.
  core.String? previousTimestampMillis;

  /// UTC client time when the transaction happened in millis.
  core.String? timestampMillis;

  Event({
    this.count,
    this.name,
    this.params,
    this.previousTimestampMillis,
    this.timestampMillis,
  });

  Event.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          params: _json.containsKey('params')
              ? (_json['params'] as core.List)
                  .map((value) => EventParam.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          previousTimestampMillis: _json.containsKey('previousTimestampMillis')
              ? _json['previousTimestampMillis'] as core.String
              : null,
          timestampMillis: _json.containsKey('timestampMillis')
              ? _json['timestampMillis'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (name != null) 'name': name!,
        if (params != null) 'params': params!,
        if (previousTimestampMillis != null)
          'previousTimestampMillis': previousTimestampMillis!,
        if (timestampMillis != null) 'timestampMillis': timestampMillis!,
      };
}

/// Additional information about an Event.
///
/// Can be automatically generated by client SDKs or provided directly by the
/// developer. Next ID to use: 7
class EventParam {
  core.double? doubleValue;
  core.double? floatValue;
  core.String? intValue;

  /// The name of the event param.
  ///
  /// The max size of the event name is TBD but it will be constrained to 24 or
  /// 32 chars.
  core.String? name;

  /// List of EventParams.
  ///
  /// No additional nesting/recursion is allowed.
  core.List<EventParam>? paramValue;
  core.String? stringValue;

  EventParam({
    this.doubleValue,
    this.floatValue,
    this.intValue,
    this.name,
    this.paramValue,
    this.stringValue,
  });

  EventParam.fromJson(core.Map _json)
      : this(
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          intValue: _json.containsKey('intValue')
              ? _json['intValue'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          paramValue: _json.containsKey('paramValue')
              ? (_json['paramValue'] as core.List)
                  .map((value) => EventParam.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (intValue != null) 'intValue': intValue!,
        if (name != null) 'name': name!,
        if (paramValue != null) 'paramValue': paramValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// A lighter version of ExperimentPayload that describes an experiment by only
/// its experimentId.
///
/// To be used when we don't need to know all the details about the experiment,
/// such as when sending a list of all ongoing experiments.
class ExperimentLite {
  /// A string of max length 22 characters.
  ///
  /// Format: _exp_ Required field.
  core.String? experimentId;

  ExperimentLite({
    this.experimentId,
  });

  ExperimentLite.fromJson(core.Map _json)
      : this(
          experimentId: _json.containsKey('experimentId')
              ? _json['experimentId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (experimentId != null) 'experimentId': experimentId!,
      };
}

/// ABT Payload for Firebase Namespace.
class ExperimentPayload {
  /// The event logged when an experiment goes to the ON state.
  ///
  /// Max length = 32 chars
  core.String? activateEventToLog;

  /// The event logged when an experiment is cleared.
  ///
  /// Max length = 32 chars
  core.String? clearEventToLog;

  /// A string of max length 22 characters.
  ///
  /// Format: _exp_ This is referred to as the tracking id and is different from
  /// the experiment id which is used internally by ABT. Required field.
  core.String? experimentId;

  /// Epoch time in milliseconds when the experiment was started; \> 0.
  ///
  /// Required field.
  core.String? experimentStartTimeMillis;

  /// A list of all other ongoing (started, and not yet stopped) experiments at
  /// the time this experiment was started.
  ///
  /// Does not include this experiment; only the others.
  core.List<ExperimentLite>? ongoingExperiments;

  /// The overflow policy enum for this experiment payload.
  /// Possible string values are:
  /// - "POLICY_UNSPECIFIED" : See go/protosdosdonts.
  /// - "DISCARD_OLDEST" : Discard oldest experiments (by experiment_start_time)
  /// first.
  /// - "IGNORE_NEWEST" : Ignore newest experiments first.
  core.String? overflowPolicy;

  /// The event logged when impact service sets the experiment.
  ///
  /// Max length = 32 chars
  core.String? setEventToLog;

  /// Duration in milliseconds that the experiment can stay in ON state (an
  /// experiment becomes ON when it has been triggered, or when it has no
  /// trigger event).
  ///
  /// Corresponds to the attribution time in the ABT UI. Valid range is from 1ms
  /// to 6 months (current max defined by Scion). If the value is outside this
  /// range the setExperiment call on the client will fail. Required field
  core.String? timeToLiveMillis;

  /// The event logged when an experiment times out after trigger_timeout_millis
  /// milliseconds.
  ///
  /// Max length = 32 chars
  core.String? timeoutEventToLog;

  /// The Scion event that causes the experiment to transition to ON state.
  core.String? triggerEvent;

  /// Duration in milliseconds that the experiment can stay in STANDBY state.
  ///
  /// Valid range is from 1ms to 6 months (current max defined by Scion). If the
  /// value is outside this range the setExperiment call on the client will
  /// fail. Required field
  core.String? triggerTimeoutMillis;

  /// The event logged when an experiment times out after time_to_live_millis
  /// milliseconds.
  ///
  /// Max length = 32 chars
  core.String? ttlExpiryEventToLog;

  /// A string which has numbers from 0-10.
  ///
  /// Required field.
  core.String? variantId;

  ExperimentPayload({
    this.activateEventToLog,
    this.clearEventToLog,
    this.experimentId,
    this.experimentStartTimeMillis,
    this.ongoingExperiments,
    this.overflowPolicy,
    this.setEventToLog,
    this.timeToLiveMillis,
    this.timeoutEventToLog,
    this.triggerEvent,
    this.triggerTimeoutMillis,
    this.ttlExpiryEventToLog,
    this.variantId,
  });

  ExperimentPayload.fromJson(core.Map _json)
      : this(
          activateEventToLog: _json.containsKey('activateEventToLog')
              ? _json['activateEventToLog'] as core.String
              : null,
          clearEventToLog: _json.containsKey('clearEventToLog')
              ? _json['clearEventToLog'] as core.String
              : null,
          experimentId: _json.containsKey('experimentId')
              ? _json['experimentId'] as core.String
              : null,
          experimentStartTimeMillis:
              _json.containsKey('experimentStartTimeMillis')
                  ? _json['experimentStartTimeMillis'] as core.String
                  : null,
          ongoingExperiments: _json.containsKey('ongoingExperiments')
              ? (_json['ongoingExperiments'] as core.List)
                  .map((value) => ExperimentLite.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          overflowPolicy: _json.containsKey('overflowPolicy')
              ? _json['overflowPolicy'] as core.String
              : null,
          setEventToLog: _json.containsKey('setEventToLog')
              ? _json['setEventToLog'] as core.String
              : null,
          timeToLiveMillis: _json.containsKey('timeToLiveMillis')
              ? _json['timeToLiveMillis'] as core.String
              : null,
          timeoutEventToLog: _json.containsKey('timeoutEventToLog')
              ? _json['timeoutEventToLog'] as core.String
              : null,
          triggerEvent: _json.containsKey('triggerEvent')
              ? _json['triggerEvent'] as core.String
              : null,
          triggerTimeoutMillis: _json.containsKey('triggerTimeoutMillis')
              ? _json['triggerTimeoutMillis'] as core.String
              : null,
          ttlExpiryEventToLog: _json.containsKey('ttlExpiryEventToLog')
              ? _json['ttlExpiryEventToLog'] as core.String
              : null,
          variantId: _json.containsKey('variantId')
              ? _json['variantId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activateEventToLog != null)
          'activateEventToLog': activateEventToLog!,
        if (clearEventToLog != null) 'clearEventToLog': clearEventToLog!,
        if (experimentId != null) 'experimentId': experimentId!,
        if (experimentStartTimeMillis != null)
          'experimentStartTimeMillis': experimentStartTimeMillis!,
        if (ongoingExperiments != null)
          'ongoingExperiments': ongoingExperiments!,
        if (overflowPolicy != null) 'overflowPolicy': overflowPolicy!,
        if (setEventToLog != null) 'setEventToLog': setEventToLog!,
        if (timeToLiveMillis != null) 'timeToLiveMillis': timeToLiveMillis!,
        if (timeoutEventToLog != null) 'timeoutEventToLog': timeoutEventToLog!,
        if (triggerEvent != null) 'triggerEvent': triggerEvent!,
        if (triggerTimeoutMillis != null)
          'triggerTimeoutMillis': triggerTimeoutMillis!,
        if (ttlExpiryEventToLog != null)
          'ttlExpiryEventToLog': ttlExpiryEventToLog!,
        if (variantId != null) 'variantId': variantId!,
      };
}

class ExperimentalCampaignPayload {
  /// FIAM configured end time of the experiment - we use long vs Timestamp here
  /// to minimize the size of the bundles sent back to the sdk clients.
  ///
  /// Note that for an experiment the end time is defined by whichever is
  /// earliest of (campaign end time, experiment time to live)
  core.String? campaignEndTimeMillis;

  /// Campaign id
  core.String? campaignId;

  /// The display name for the campaign given by the campaign creator.
  ///
  /// we need it for generating fiam campaign analytic events on client SDK side
  core.String? campaignName;

  /// FIAM configured start time of the experiment - we use long vs Timestamp
  /// here to minimize the size of the bundles sent back to the sdk clients
  core.String? campaignStartTimeMillis;

  /// payload is sent for scion tracking of the experiment this is provied by
  /// ABT
  ExperimentPayload? experimentPayload;

  ExperimentalCampaignPayload({
    this.campaignEndTimeMillis,
    this.campaignId,
    this.campaignName,
    this.campaignStartTimeMillis,
    this.experimentPayload,
  });

  ExperimentalCampaignPayload.fromJson(core.Map _json)
      : this(
          campaignEndTimeMillis: _json.containsKey('campaignEndTimeMillis')
              ? _json['campaignEndTimeMillis'] as core.String
              : null,
          campaignId: _json.containsKey('campaignId')
              ? _json['campaignId'] as core.String
              : null,
          campaignName: _json.containsKey('campaignName')
              ? _json['campaignName'] as core.String
              : null,
          campaignStartTimeMillis: _json.containsKey('campaignStartTimeMillis')
              ? _json['campaignStartTimeMillis'] as core.String
              : null,
          experimentPayload: _json.containsKey('experimentPayload')
              ? ExperimentPayload.fromJson(_json['experimentPayload']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignEndTimeMillis != null)
          'campaignEndTimeMillis': campaignEndTimeMillis!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignName != null) 'campaignName': campaignName!,
        if (campaignStartTimeMillis != null)
          'campaignStartTimeMillis': campaignStartTimeMillis!,
        if (experimentPayload != null) 'experimentPayload': experimentPayload!,
      };
}

class FetchEligibleCampaignsRequest {
  /// a list of campaigns that have already been rendered by the client so that
  /// service can filter them out while doing search of applicable messages
  core.List<CampaignImpression>? alreadySeenCampaigns;

  /// A common set of targeting signals - ex: user properties, lang
  ///
  /// Required.
  ClientSignals? clientSignals;
  ClientAppInfo? requestingClientApp;

  FetchEligibleCampaignsRequest({
    this.alreadySeenCampaigns,
    this.clientSignals,
    this.requestingClientApp,
  });

  FetchEligibleCampaignsRequest.fromJson(core.Map _json)
      : this(
          alreadySeenCampaigns: _json.containsKey('alreadySeenCampaigns')
              ? (_json['alreadySeenCampaigns'] as core.List)
                  .map((value) => CampaignImpression.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          clientSignals: _json.containsKey('clientSignals')
              ? ClientSignals.fromJson(
                  _json['clientSignals'] as core.Map<core.String, core.dynamic>)
              : null,
          requestingClientApp: _json.containsKey('requestingClientApp')
              ? ClientAppInfo.fromJson(_json['requestingClientApp']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alreadySeenCampaigns != null)
          'alreadySeenCampaigns': alreadySeenCampaigns!,
        if (clientSignals != null) 'clientSignals': clientSignals!,
        if (requestingClientApp != null)
          'requestingClientApp': requestingClientApp!,
      };
}

class FetchEligibleCampaignsResponse {
  /// epoch time at which time clients must invalidates their cache
  core.String? expirationEpochTimestampMillis;

  /// list of eligible messages sorted in high-to-low priority order
  core.List<ThickContent>? messages;

  FetchEligibleCampaignsResponse({
    this.expirationEpochTimestampMillis,
    this.messages,
  });

  FetchEligibleCampaignsResponse.fromJson(core.Map _json)
      : this(
          expirationEpochTimestampMillis:
              _json.containsKey('expirationEpochTimestampMillis')
                  ? _json['expirationEpochTimestampMillis'] as core.String
                  : null,
          messages: _json.containsKey('messages')
              ? (_json['messages'] as core.List)
                  .map((value) => ThickContent.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expirationEpochTimestampMillis != null)
          'expirationEpochTimestampMillis': expirationEpochTimestampMillis!,
        if (messages != null) 'messages': messages!,
      };
}

class ImageOnlyMessage {
  /// The Action to take when clicking anywhere on the image.
  ///
  /// Optional.
  Action? action;

  /// The url of the image to be sent as the message.
  core.String? imageUrl;

  ImageOnlyMessage({
    this.action,
    this.imageUrl,
  });

  ImageOnlyMessage.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? Action.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
      };
}

/// A tuple of text and the language it is in.
class Localization {
  core.String? langCode;
  core.String? text;

  Localization({
    this.langCode,
    this.text,
  });

  Localization.fromJson(core.Map _json)
      : this(
          langCode: _json.containsKey('langCode')
              ? _json['langCode'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (langCode != null) 'langCode': langCode!,
        if (text != null) 'text': text!,
      };
}

class ModalMessage {
  /// The Action to take when clicking on the button.
  ///
  /// Currently, the two must be set together: action.isSet() iff
  /// actionButton.isSet()
  ///
  /// Optional.
  Action? action;

  /// Message button.
  ///
  /// Clicking this button will trigger the modal's action Currently, the two
  /// must be set together: action.isSet() iff actionButton.isSet()
  ///
  /// Optional.
  Button? actionButton;

  /// Message background color.
  ///
  /// Optional.
  core.String? backgroundHexColor;

  /// Message body.
  ///
  /// Optional.
  Text? body;

  /// Image to display (https url - it will be downloaded onto the device) No
  /// prefix required.
  ///
  /// Optional.
  core.String? imageUrl;

  /// Message title.
  ///
  /// Required.
  Text? title;

  ModalMessage({
    this.action,
    this.actionButton,
    this.backgroundHexColor,
    this.body,
    this.imageUrl,
    this.title,
  });

  ModalMessage.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? Action.fromJson(
                  _json['action'] as core.Map<core.String, core.dynamic>)
              : null,
          actionButton: _json.containsKey('actionButton')
              ? Button.fromJson(
                  _json['actionButton'] as core.Map<core.String, core.dynamic>)
              : null,
          backgroundHexColor: _json.containsKey('backgroundHexColor')
              ? _json['backgroundHexColor'] as core.String
              : null,
          body: _json.containsKey('body')
              ? Text.fromJson(
                  _json['body'] as core.Map<core.String, core.dynamic>)
              : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
          title: _json.containsKey('title')
              ? Text.fromJson(
                  _json['title'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (actionButton != null) 'actionButton': actionButton!,
        if (backgroundHexColor != null)
          'backgroundHexColor': backgroundHexColor!,
        if (body != null) 'body': body!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
        if (title != null) 'title': title!,
      };
}

/// Priority of the campaign.
///
/// Used to select the most important messages amongst a set of eligible ones.
class Priority {
  /// Priority value can range from 1-10, with 1 being the highest priority.
  core.int? value;

  Priority({
    this.value,
  });

  Priority.fromJson(core.Map _json)
      : this(
          value: _json.containsKey('value') ? _json['value'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

class Text {
  /// Message font color.
  core.String? hexColor;
  core.List<Localization>? localizations;
  core.String? sourceLangCode;

  /// Message text.
  core.String? text;

  Text({
    this.hexColor,
    this.localizations,
    this.sourceLangCode,
    this.text,
  });

  Text.fromJson(core.Map _json)
      : this(
          hexColor: _json.containsKey('hexColor')
              ? _json['hexColor'] as core.String
              : null,
          localizations: _json.containsKey('localizations')
              ? (_json['localizations'] as core.List)
                  .map((value) => Localization.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceLangCode: _json.containsKey('sourceLangCode')
              ? _json['sourceLangCode'] as core.String
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hexColor != null) 'hexColor': hexColor!,
        if (localizations != null) 'localizations': localizations!,
        if (sourceLangCode != null) 'sourceLangCode': sourceLangCode!,
        if (text != null) 'text': text!,
      };
}

/// The 'thick' message that gets sent to clients
class ThickContent {
  /// Content
  Content? content;

  /// user-defined data bundle.
  ///
  /// This data is meant for the developer to use in the SDK at runtime when a
  /// campaign is displayed. For more info: (go/fiam-data-bundles)
  ///
  /// Optional.
  core.Map<core.String, core.String>? dataBundle;
  ExperimentalCampaignPayload? experimentalPayload;

  /// if true, it's a campaign that's to be tested on client side.
  ///
  /// otherwise, it it's a regular message to be rendered.
  core.bool? isTestCampaign;

  /// Priority of the campaign/message If two messages have the same priority,
  /// the one from the most-recently-started campaign will 'win'
  Priority? priority;

  /// condition to trigger the FIAM
  core.List<TriggeringCondition>? triggeringConditions;
  VanillaCampaignPayload? vanillaPayload;

  ThickContent({
    this.content,
    this.dataBundle,
    this.experimentalPayload,
    this.isTestCampaign,
    this.priority,
    this.triggeringConditions,
    this.vanillaPayload,
  });

  ThickContent.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? Content.fromJson(
                  _json['content'] as core.Map<core.String, core.dynamic>)
              : null,
          dataBundle: _json.containsKey('dataBundle')
              ? (_json['dataBundle'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          experimentalPayload: _json.containsKey('experimentalPayload')
              ? ExperimentalCampaignPayload.fromJson(
                  _json['experimentalPayload']
                      as core.Map<core.String, core.dynamic>)
              : null,
          isTestCampaign: _json.containsKey('isTestCampaign')
              ? _json['isTestCampaign'] as core.bool
              : null,
          priority: _json.containsKey('priority')
              ? Priority.fromJson(
                  _json['priority'] as core.Map<core.String, core.dynamic>)
              : null,
          triggeringConditions: _json.containsKey('triggeringConditions')
              ? (_json['triggeringConditions'] as core.List)
                  .map((value) => TriggeringCondition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vanillaPayload: _json.containsKey('vanillaPayload')
              ? VanillaCampaignPayload.fromJson(_json['vanillaPayload']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (dataBundle != null) 'dataBundle': dataBundle!,
        if (experimentalPayload != null)
          'experimentalPayload': experimentalPayload!,
        if (isTestCampaign != null) 'isTestCampaign': isTestCampaign!,
        if (priority != null) 'priority': priority!,
        if (triggeringConditions != null)
          'triggeringConditions': triggeringConditions!,
        if (vanillaPayload != null) 'vanillaPayload': vanillaPayload!,
      };
}

/// Triggering condition for determing when the campaign will be shown to
/// targeted users.
///
/// Can be either a FiamTrigger, or a Scion Event
class TriggeringCondition {
  Event? event;

  ///
  /// Possible string values are:
  /// - "UNKNOWN_TRIGGER"
  /// - "APP_LAUNCH" : App is launched.
  /// - "ON_FOREGROUND" : App has already launched and is brought into the
  /// foreground.
  core.String? fiamTrigger;

  TriggeringCondition({
    this.event,
    this.fiamTrigger,
  });

  TriggeringCondition.fromJson(core.Map _json)
      : this(
          event: _json.containsKey('event')
              ? Event.fromJson(
                  _json['event'] as core.Map<core.String, core.dynamic>)
              : null,
          fiamTrigger: _json.containsKey('fiamTrigger')
              ? _json['fiamTrigger'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (event != null) 'event': event!,
        if (fiamTrigger != null) 'fiamTrigger': fiamTrigger!,
      };
}

class VanillaCampaignPayload {
  /// end time of the campaign - we use long vs Timestamp here to minimize the
  /// size of the bundles sent back to the sdk clients
  ///
  /// Optional.
  core.String? campaignEndTimeMillis;

  /// Campaign id
  core.String? campaignId;

  /// the display name for the campaign given by the campaign creator.
  ///
  /// we need it for generating fiam campaign analytic events on client SDK side
  ///
  /// Optional.
  core.String? campaignName;

  /// Start time of the campaign - we use long vs Timestamp here to minimize the
  /// size of the bundles sent back to the sdk clients
  core.String? campaignStartTimeMillis;

  /// if the campaign is the result of a rolled out campaign, the old
  /// experimental campaign id here is used for impression tracking on the
  /// client
  ///
  /// Optional.
  core.String? experimentalCampaignId;

  VanillaCampaignPayload({
    this.campaignEndTimeMillis,
    this.campaignId,
    this.campaignName,
    this.campaignStartTimeMillis,
    this.experimentalCampaignId,
  });

  VanillaCampaignPayload.fromJson(core.Map _json)
      : this(
          campaignEndTimeMillis: _json.containsKey('campaignEndTimeMillis')
              ? _json['campaignEndTimeMillis'] as core.String
              : null,
          campaignId: _json.containsKey('campaignId')
              ? _json['campaignId'] as core.String
              : null,
          campaignName: _json.containsKey('campaignName')
              ? _json['campaignName'] as core.String
              : null,
          campaignStartTimeMillis: _json.containsKey('campaignStartTimeMillis')
              ? _json['campaignStartTimeMillis'] as core.String
              : null,
          experimentalCampaignId: _json.containsKey('experimentalCampaignId')
              ? _json['experimentalCampaignId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (campaignEndTimeMillis != null)
          'campaignEndTimeMillis': campaignEndTimeMillis!,
        if (campaignId != null) 'campaignId': campaignId!,
        if (campaignName != null) 'campaignName': campaignName!,
        if (campaignStartTimeMillis != null)
          'campaignStartTimeMillis': campaignStartTimeMillis!,
        if (experimentalCampaignId != null)
          'experimentalCampaignId': experimentalCampaignId!,
      };
}
