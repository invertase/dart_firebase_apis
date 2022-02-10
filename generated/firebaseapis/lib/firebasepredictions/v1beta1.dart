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

/// Firebase Predictions API - v1beta1
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebasepredictionsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsAppsResource]
///     - [ProjectsAppsInstallationsResource]
///       - [ProjectsAppsInstallationsPredictionsResource]
library firebasepredictions.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class FirebasepredictionsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebasepredictionsApi(http.Client client,
      {core.String rootUrl = 'https://firebasepredictions.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsResource get apps => ProjectsAppsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAppsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsInstallationsResource get installations =>
      ProjectsAppsInstallationsResource(_requester);

  ProjectsAppsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAppsInstallationsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsInstallationsPredictionsResource get predictions =>
      ProjectsAppsInstallationsPredictionsResource(_requester);

  ProjectsAppsInstallationsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsAppsInstallationsPredictionsResource {
  final commons.ApiRequester _requester;

  ProjectsAppsInstallationsPredictionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Computes predictions for the events and risk tolerances specified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [installation] - Required. An identifier for an "installation" of an
  /// "app". Must have the format of "projects / * /apps / * /installations / *
  /// ", although the "app" and "installation" may have different formats for
  /// different sources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/apps/\[^/\]+/installations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebasePredictionsV1beta1ComputePredictionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebasePredictionsV1beta1ComputePredictionsResponse>
      compute(
    GoogleFirebasePredictionsV1beta1ComputePredictionsRequest request,
    core.String installation, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$installation') +
        '/predictions:compute';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebasePredictionsV1beta1ComputePredictionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for FirebasePredictionsService.ComputePrediction.
class GoogleFirebasePredictionsV1beta1ComputePredictionsRequest {
  /// List of prediction IDs to include in the response.
  ///
  /// Prediction ID is the one that developers provide with the new prediction
  /// card in UI. Leave this empty to return all predictions.
  core.List<core.String>? predictionIds;

  /// Request caller as defined by the above enum.
  /// Possible string values are:
  /// - "UNKNOWN_CALLER" : Default unknown caller.
  /// - "REMOTE_CONFIG" : Called through remote config.
  /// - "NOTIFICATION" : Called through notification.
  /// - "IN_APP_MESSAGING" : Called through in app messaging.
  core.String? requestCaller;

  /// Request type as defined by the above enum.
  /// Possible string values are:
  /// - "UNKNOWN_TYPE" : Default unknown type.
  /// - "LOOKUP" : Request for lookup
  /// - "EVALUATION" : Request for evaluation.
  /// - "ESTIMATION" : Request for estimation.
  core.String? requestType;

  GoogleFirebasePredictionsV1beta1ComputePredictionsRequest({
    this.predictionIds,
    this.requestCaller,
    this.requestType,
  });

  GoogleFirebasePredictionsV1beta1ComputePredictionsRequest.fromJson(
      core.Map _json)
      : this(
          predictionIds: _json.containsKey('predictionIds')
              ? (_json['predictionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          requestCaller: _json.containsKey('requestCaller')
              ? _json['requestCaller'] as core.String
              : null,
          requestType: _json.containsKey('requestType')
              ? _json['requestType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (predictionIds != null) 'predictionIds': predictionIds!,
        if (requestCaller != null) 'requestCaller': requestCaller!,
        if (requestType != null) 'requestType': requestType!,
      };
}

/// Response message for FirebasePredictionsService.
class GoogleFirebasePredictionsV1beta1ComputePredictionsResponse {
  /// The data for the predictions.
  core.List<GoogleFirebasePredictionsV1beta1Prediction>? predictions;

  GoogleFirebasePredictionsV1beta1ComputePredictionsResponse({
    this.predictions,
  });

  GoogleFirebasePredictionsV1beta1ComputePredictionsResponse.fromJson(
      core.Map _json)
      : this(
          predictions: _json.containsKey('predictions')
              ? (_json['predictions'] as core.List)
                  .map((value) =>
                      GoogleFirebasePredictionsV1beta1Prediction.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (predictions != null) 'predictions': predictions!,
      };
}

/// Metadata for a prediction for a specific event.
class GoogleFirebasePredictionsV1beta1Prediction {
  /// The percentile where the predicted probability falls for this prediction,
  /// compared to installations that are considered active, in the range \[0,
  /// 1\].
  core.double? percentile;

  /// Prediction ID.
  ///
  /// Prediction ID is provided by the developer when creating the prediction
  /// and can not be changed.
  core.String? predictionId;

  /// The current predicted probability, in the range \[0, 1\].
  core.double? probability;

  /// Prediction state.
  ///
  /// The prediction is healthy and ready to be used only when the state is
  /// ACTIVE.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : By default, the state is unspecified.
  /// - "ACTIVE" : The prediction is ready to be used.
  /// - "INSUFFICIENT_DATA" : Prediction is unavailable due to insufficient
  /// data.
  /// - "PREPARING_MODEL" : The model is currently being trained.
  core.String? state;

  GoogleFirebasePredictionsV1beta1Prediction({
    this.percentile,
    this.predictionId,
    this.probability,
    this.state,
  });

  GoogleFirebasePredictionsV1beta1Prediction.fromJson(core.Map _json)
      : this(
          percentile: _json.containsKey('percentile')
              ? (_json['percentile'] as core.num).toDouble()
              : null,
          predictionId: _json.containsKey('predictionId')
              ? _json['predictionId'] as core.String
              : null,
          probability: _json.containsKey('probability')
              ? (_json['probability'] as core.num).toDouble()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentile != null) 'percentile': percentile!,
        if (predictionId != null) 'predictionId': predictionId!,
        if (probability != null) 'probability': probability!,
        if (state != null) 'state': state!,
      };
}
