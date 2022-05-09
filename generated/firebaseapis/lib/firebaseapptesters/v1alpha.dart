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

/// Firebase App Testers API - v1alpha
///
/// For more information, see
/// <https://firebase.google.com/products/app-distribution>
///
/// Create an instance of [FirebaseapptestersApi] to access these resources:
///
/// - [DevicesResource]
///   - [DevicesTesterAppsResource]
///     - [DevicesTesterAppsInstallationsResource]
///       - [DevicesTesterAppsInstallationsReleasesResource]
///     - [DevicesTesterAppsReleasesResource]
/// - [InvitationsResource]
/// - [InviteLinksResource]
/// - [V1alphaResource]
library firebaseapptesters.v1alpha;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class FirebaseapptestersApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  DevicesResource get devices => DevicesResource(_requester);
  InvitationsResource get invitations => InvitationsResource(_requester);
  InviteLinksResource get inviteLinks => InviteLinksResource(_requester);
  V1alphaResource get v1alpha => V1alphaResource(_requester);

  FirebaseapptestersApi(http.Client client,
      {core.String rootUrl = 'https://firebaseapptesters.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DevicesResource {
  final commons.ApiRequester _requester;

  DevicesTesterAppsResource get testerApps =>
      DevicesTesterAppsResource(_requester);

  DevicesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a device
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaDevice> create(
    GoogleFirebaseApptestersV1alphaDevice request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/devices';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a single device
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the device to retrieve Format:
  /// devices/{device}
  /// Value must have pattern `^devices/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaDevice].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaDevice> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaDevice.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a list of devices for a tester A device represents a physical device
  /// that is used by a tester to test an app.
  ///
  /// Testers can use multiple devices to test apps. For each device a tester
  /// uses, the tester must consent to sharing the device's data for an app in
  /// order to view that app's releases. This is required for iOS apps.
  /// Specifically, for iOS apps with Ad-hoc distributions, we need to access
  /// the devices UUID to determine if the release can be downloaded on the
  /// tester's device. Devices are parents of apps because the device that a
  /// tester is using affects the values of fields in the App and Release
  /// messages.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - Maximum number of devices to return
  ///
  /// [pageToken] - Page token received from previous ListDevices call
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaListDevicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaListDevicesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/devices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaListDevicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesTesterAppsResource {
  final commons.ApiRequester _requester;

  DevicesTesterAppsInstallationsResource get installations =>
      DevicesTesterAppsInstallationsResource(_requester);
  DevicesTesterAppsReleasesResource get releases =>
      DevicesTesterAppsReleasesResource(_requester);

  DevicesTesterAppsResource(commons.ApiRequester client) : _requester = client;

  /// Consent to share the device's data for an app Testers are required to
  /// consent to having the device's data shared for the app in order to view
  /// the app's releases.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the app Format:
  /// devices/{devices}/testerApps/{tester_app}
  /// Value must have pattern `^devices/\[^/\]+/testerApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaConsentAppResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaConsentAppResponse> consent(
    GoogleFirebaseApptestersV1alphaConsentAppRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':consent';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaConsentAppResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Leave a particular app that a tester has access to
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the app Format:
  /// devices/{devices}/testerApps/{tester_app}
  /// Value must have pattern `^devices/\[^/\]+/testerApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a single app for a device
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the tester app to retrieve Format:
  /// devices/{device}/testerApps/{tester_app}
  /// Value must have pattern `^devices/\[^/\]+/testerApps/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaTesterApp].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaTesterApp> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaTesterApp.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a list of apps for a device
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the app Format:
  /// devices/{device}
  /// Value must have pattern `^devices/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of apps to return
  ///
  /// [pageToken] - Page token received from previous ListTesterApps calld
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaListTesterAppsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaListTesterAppsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/testerApps';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaListTesterAppsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesTesterAppsInstallationsResource {
  final commons.ApiRequester _requester;

  DevicesTesterAppsInstallationsReleasesResource get releases =>
      DevicesTesterAppsInstallationsReleasesResource(_requester);

  DevicesTesterAppsInstallationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new TesterAppInstallation record to register a Firebase
  /// Installation ID with a specific Tester to enable FID based auth from the
  /// SDK
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this TesterAppInstallation
  /// will be created Format: devices/{device}/testerApps/{tester_app}
  /// Value must have pattern `^devices/\[^/\]+/testerApps/\[^/\]+$`.
  ///
  /// [fid] - Required. The firebase installation id to register
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaTesterAppInstallation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaTesterAppInstallation> create(
    GoogleFirebaseApptestersV1alphaTesterAppInstallation request,
    core.String parent, {
    core.String? fid,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (fid != null) 'fid': [fid],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/installations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaTesterAppInstallation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesTesterAppsInstallationsReleasesResource {
  final commons.ApiRequester _requester;

  DevicesTesterAppsInstallationsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// List releases for an app by firebase installation id (FID)
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of installation
  /// releases Format:
  /// devices/{devices}/testerApps/{tester_app}/installations/{installation}
  /// Value must have pattern
  /// `^devices/\[^/\]+/testerApps/\[^/\]+/installations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of releases to return
  ///
  /// [pageToken] - Page token received from previous ListDevices call
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<
          GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse>
      list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class DevicesTesterAppsReleasesResource {
  final commons.ApiRequester _requester;

  DevicesTesterAppsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Download a release This endpoint is authenticated with the token query
  /// param.
  ///
  /// To make a request to this endpoint, use the URL returned by ListReleases,
  /// in the download_url field on each Release, which contains an expiring
  /// token that validates calls using that URL only.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the release to download Format:
  /// devices/{device}/testerApps/{tester_app}/releases/{release}
  /// Value must have pattern
  /// `^devices/\[^/\]+/testerApps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [testerClient] - The tester client which this download request is coming
  /// from
  /// Possible string values are:
  /// - "TESTER_CLIENT_UNSPECIFIED" : Tester client unspecified
  /// - "ANDROID_TESTER_APP" : App Tester native android app
  /// - "WEB" : Web-based tester client (Android & iOS)
  /// - "IOS_SDK" : iOS SDK (new build alerts)
  /// - "ANDROID_SDK" : Android SDK (new build alerts)
  ///
  /// [token] - Required. A temporary signed token verifying the URL This is set
  /// in DownloadUrlCreator and validated in DownloadReleaseAction using
  /// RequestUrlVerifier
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleApiHttpBody].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleApiHttpBody> download(
    core.String name, {
    core.String? testerClient,
    core.String? token,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (testerClient != null) 'testerClient': [testerClient],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':download';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleApiHttpBody.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get a single release for the app
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the release to retrieve Format:
  /// devices/{device}/testerApps/{tester_app}/releases/{release}
  /// Value must have pattern
  /// `^devices/\[^/\]+/testerApps/\[^/\]+/releases/\[^/\]+$`.
  ///
  /// [testerClient] - The tester client which this download request is coming
  /// from
  /// Possible string values are:
  /// - "TESTER_CLIENT_UNSPECIFIED" : Tester client unspecified
  /// - "ANDROID_TESTER_APP" : App Tester native android app
  /// - "WEB" : Web-based tester client (Android & iOS)
  /// - "IOS_SDK" : iOS SDK (new build alerts)
  /// - "ANDROID_SDK" : Android SDK (new build alerts)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaRelease].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaRelease> get(
    core.String name, {
    core.String? testerClient,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (testerClient != null) 'testerClient': [testerClient],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaRelease.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// List releases for the app
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns the collection of releases
  /// Format: devices/{devices}/testerApps/{tester_app}
  /// Value must have pattern `^devices/\[^/\]+/testerApps/\[^/\]+$`.
  ///
  /// [filter] - Filter for the list of releases. Used in search.
  ///
  /// [pageSize] - Maximum number of releases to return
  ///
  /// [pageToken] - Page token received from previous `ListReleases` call
  ///
  /// [testerClient] - The tester client which this download request is coming
  /// from
  /// Possible string values are:
  /// - "TESTER_CLIENT_UNSPECIFIED" : Tester client unspecified
  /// - "ANDROID_TESTER_APP" : App Tester native android app
  /// - "WEB" : Web-based tester client (Android & iOS)
  /// - "IOS_SDK" : iOS SDK (new build alerts)
  /// - "ANDROID_SDK" : Android SDK (new build alerts)
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaListReleasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? testerClient,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (testerClient != null) 'testerClient': [testerClient],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class InvitationsResource {
  final commons.ApiRequester _requester;

  InvitationsResource(commons.ApiRequester client) : _requester = client;

  /// Get invitation for tester.
  ///
  /// Invitations are created by Developers or by testers via invite links.
  /// Invitations link an email address to an app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the app to retrieve Format:
  /// invitations/{invitation}
  /// Value must have pattern `^invitations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaInvitation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaInvitation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaInvitation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Subscribe to invitation Testers use this method to update the subscription
  /// status for the email address that is associated with the invitation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the invitation Format:
  /// invitations/{invitation}
  /// Value must have pattern `^invitations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> subscribe(
    GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':subscribe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unsubscribe from invitation Testers use this method to update the
  /// unsubscription status for the email address that is associated with the
  /// invitation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the invitation Format:
  /// invitations/{invitation}
  /// Value must have pattern `^invitations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> unsubscribe(
    GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':unsubscribe';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class InviteLinksResource {
  final commons.ApiRequester _requester;

  InviteLinksResource(commons.ApiRequester client) : _requester = client;

  /// Accepts an invite link for an app When a tester accepts an invite link, an
  /// invitation is created and an email is sent
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the invite link Format:
  /// inviteLinks/{invite_link}
  /// Value must have pattern `^inviteLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse> accept(
    GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name') + ':accept';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get invite link.
  ///
  /// Invite links are created by developers. Developers can send a single link
  /// to multiple testers versus inviting testers one by one. Testers can use
  /// invite links to invite themselves to test an app.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the invite link to retrieve Format:
  /// inviteLinks/{invite_link}
  /// Value must have pattern `^inviteLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseApptestersV1alphaInviteLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseApptestersV1alphaInviteLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseApptestersV1alphaInviteLink.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1alphaResource {
  final commons.ApiRequester _requester;

  V1alphaResource(commons.ApiRequester client) : _requester = client;

  /// Delete all devices
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> deleteDevices({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha/devices';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Message that represents an arbitrary HTTP body.
///
/// It should only be used for payload formats that can't be represented as
/// JSON, such as raw binary or an HTML page. This message can be used both in
/// streaming and non-streaming API methods in the request as well as the
/// response. It can be used as a top-level request field, which is convenient
/// if one wants to extract parameters from either the URL or HTTP template into
/// the request fields and also want access to the raw HTTP body. Example:
/// message GetResourceRequest { // A unique request id. string request_id = 1;
/// // The raw HTTP body is bound to this field. google.api.HttpBody http_body =
/// 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns
/// (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns
/// (google.protobuf.Empty); } Example with streaming methods: service
/// CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream
/// google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns
/// (stream google.api.HttpBody); } Use of this type only changes how the
/// request and response bodies are handled, all other features will continue to
/// work unchanged.
typedef GoogleApiHttpBody = $HttpBody;

/// The request object for the AcceptInviteLink call
class GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest {
  /// Email address
  core.String? email;

  GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest({
    this.email,
  });

  GoogleFirebaseApptestersV1alphaAcceptInviteLinkRequest.fromJson(
      core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
}

/// The response object for the AcceptInviteLink call
class GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse {
  /// The result from accepting the invite link
  /// Possible string values are:
  /// - "RESULT_UNSPECIFIED" : Default result. Unused.
  /// - "READY_TO_TEST" : An invitation emails was sent to the tester.
  /// - "AWAITING_RELEASE" : There is not yet an eligible release for this
  /// invite link, so no invitation was created
  /// - "TESTER_LIMIT_REACHED" : The app has reached tester limit for group or
  /// project
  /// - "INVALID_EMAIL" : Invalid email
  core.String? result;

  GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse({
    this.result,
  });

  GoogleFirebaseApptestersV1alphaAcceptInviteLinkResponse.fromJson(
      core.Map _json)
      : this(
          result: _json.containsKey('result')
              ? _json['result'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (result != null) 'result': result!,
      };
}

/// The request object for the ConsentApp call
class GoogleFirebaseApptestersV1alphaConsentAppRequest {
  /// Invitation name.
  ///
  /// Needed if this is the testers first time consenting to share the device's
  /// data for the app to verify that tester was invited to the app
  core.String? invitation;

  GoogleFirebaseApptestersV1alphaConsentAppRequest({
    this.invitation,
  });

  GoogleFirebaseApptestersV1alphaConsentAppRequest.fromJson(core.Map _json)
      : this(
          invitation: _json.containsKey('invitation')
              ? _json['invitation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invitation != null) 'invitation': invitation!,
      };
}

/// The response object for the ConsentApp call
typedef GoogleFirebaseApptestersV1alphaConsentAppResponse = $Empty;

/// A representation of the testers device
class GoogleFirebaseApptestersV1alphaDevice {
  /// Uri to enroll the iOS device as a part of the apple OTA profile
  /// enrollment.
  ///
  /// Only present if the device is an iOS device and we don't already know its
  /// udid
  core.String? enrollIosDeviceUri;

  /// Manufacturer
  core.String? manufacturer;

  /// Model
  core.String? model;

  /// The name of the device Format: devices/{device}
  core.String? name;

  /// OS version
  core.String? osVersion;

  /// Platform
  /// Possible string values are:
  /// - "PLATFORM_UNSPECIFIED" : Default value. This value is unused.
  /// - "IOS" : IOS
  /// - "ANDROID" : Android
  core.String? platform;

  /// The unique device identifier (iOS only)
  core.String? udid;

  /// The user agent string from the browser (passed along in the proxy call).
  core.String? useragent;

  GoogleFirebaseApptestersV1alphaDevice({
    this.enrollIosDeviceUri,
    this.manufacturer,
    this.model,
    this.name,
    this.osVersion,
    this.platform,
    this.udid,
    this.useragent,
  });

  GoogleFirebaseApptestersV1alphaDevice.fromJson(core.Map _json)
      : this(
          enrollIosDeviceUri: _json.containsKey('enrollIosDeviceUri')
              ? _json['enrollIosDeviceUri'] as core.String
              : null,
          manufacturer: _json.containsKey('manufacturer')
              ? _json['manufacturer'] as core.String
              : null,
          model:
              _json.containsKey('model') ? _json['model'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          osVersion: _json.containsKey('osVersion')
              ? _json['osVersion'] as core.String
              : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          udid: _json.containsKey('udid') ? _json['udid'] as core.String : null,
          useragent: _json.containsKey('useragent')
              ? _json['useragent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enrollIosDeviceUri != null)
          'enrollIosDeviceUri': enrollIosDeviceUri!,
        if (manufacturer != null) 'manufacturer': manufacturer!,
        if (model != null) 'model': model!,
        if (name != null) 'name': name!,
        if (osVersion != null) 'osVersion': osVersion!,
        if (platform != null) 'platform': platform!,
        if (udid != null) 'udid': udid!,
        if (useragent != null) 'useragent': useragent!,
      };
}

/// An invitation maps an email to an app.
///
/// An invitation is required to link a testers device to an app via the
/// ConsentApp call.
class GoogleFirebaseApptestersV1alphaInvitation {
  /// The name of the invitation to retrieve Format: invitations/{invitation}
  core.String? name;

  /// Invitation state
  /// Possible string values are:
  /// - "INVITATION_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "INVITED" : Tester has received an email for the latest release
  /// - "PENDING_ACCEPT" : Tester has received email for previous release, but
  /// has not received an email for the current release because they have not
  /// accepted the email to the previous release
  /// - "ACCEPTED" : Tester has accepted an email for a release
  core.String? state;

  /// Subscription state
  /// Possible string values are:
  /// - "SUBSCRIPTION_STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "SUBSCRIBED" : Subscribed
  /// - "UNSUBSCRIBED" : Unsubscribed
  core.String? subscriptionState;

  /// Information about the app that this invitation belongs to
  GoogleFirebaseApptestersV1alphaTesterApp? testerApp;

  /// The tester email that the invite was sent to
  core.String? testerEmail;

  GoogleFirebaseApptestersV1alphaInvitation({
    this.name,
    this.state,
    this.subscriptionState,
    this.testerApp,
    this.testerEmail,
  });

  GoogleFirebaseApptestersV1alphaInvitation.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          subscriptionState: _json.containsKey('subscriptionState')
              ? _json['subscriptionState'] as core.String
              : null,
          testerApp: _json.containsKey('testerApp')
              ? GoogleFirebaseApptestersV1alphaTesterApp.fromJson(
                  _json['testerApp'] as core.Map<core.String, core.dynamic>)
              : null,
          testerEmail: _json.containsKey('testerEmail')
              ? _json['testerEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (subscriptionState != null) 'subscriptionState': subscriptionState!,
        if (testerApp != null) 'testerApp': testerApp!,
        if (testerEmail != null) 'testerEmail': testerEmail!,
      };
}

/// The representation of an invite link
class GoogleFirebaseApptestersV1alphaInviteLink {
  /// Email domain restriction set by developer.
  ///
  /// Testers will only be able to accept invite links using an email with this
  /// domain.
  core.String? domainRestriction;

  /// Whether or not this invite link can be joined (determined by tester
  /// limits)
  core.bool? joinable;

  /// The name of the invite link Format: inviteLinks/{inviteLink)
  core.String? name;

  /// List of apps that the tester will be invited to after accepting
  core.List<GoogleFirebaseApptestersV1alphaTesterApp>? testerApps;

  GoogleFirebaseApptestersV1alphaInviteLink({
    this.domainRestriction,
    this.joinable,
    this.name,
    this.testerApps,
  });

  GoogleFirebaseApptestersV1alphaInviteLink.fromJson(core.Map _json)
      : this(
          domainRestriction: _json.containsKey('domainRestriction')
              ? _json['domainRestriction'] as core.String
              : null,
          joinable: _json.containsKey('joinable')
              ? _json['joinable'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          testerApps: _json.containsKey('testerApps')
              ? (_json['testerApps'] as core.List)
                  .map((value) =>
                      GoogleFirebaseApptestersV1alphaTesterApp.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainRestriction != null) 'domainRestriction': domainRestriction!,
        if (joinable != null) 'joinable': joinable!,
        if (name != null) 'name': name!,
        if (testerApps != null) 'testerApps': testerApps!,
      };
}

/// Response object for ListDevices call
class GoogleFirebaseApptestersV1alphaListDevicesResponse {
  /// List of devices
  core.List<GoogleFirebaseApptestersV1alphaDevice>? devices;

  /// A token which can be sent as `page_token` to retrieve the next page If
  /// this field is omitted, there are no subsequent pages
  core.String? nextPageToken;

  GoogleFirebaseApptestersV1alphaListDevicesResponse({
    this.devices,
    this.nextPageToken,
  });

  GoogleFirebaseApptestersV1alphaListDevicesResponse.fromJson(core.Map _json)
      : this(
          devices: _json.containsKey('devices')
              ? (_json['devices'] as core.List)
                  .map((value) =>
                      GoogleFirebaseApptestersV1alphaDevice.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (devices != null) 'devices': devices!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response object for the ListReleases call
class GoogleFirebaseApptestersV1alphaListReleasesResponse {
  /// A token which can be sent as `page_token` to retrieve the next page If
  /// this field is omitted, there are no subsequent pages
  core.String? nextPageToken;

  /// List of releases
  core.List<GoogleFirebaseApptestersV1alphaRelease>? releases;

  GoogleFirebaseApptestersV1alphaListReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  GoogleFirebaseApptestersV1alphaListReleasesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) =>
                      GoogleFirebaseApptestersV1alphaRelease.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

/// The response object for the ListTesterAppInstallationReleases call
class GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse {
  /// A token which can be sent as `page_token` to retrieve the next page If
  /// this field is omitted, there are no subsequent pages
  core.String? nextPageToken;

  /// List of releases
  core.List<GoogleFirebaseApptestersV1alphaRelease>? releases;

  GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  GoogleFirebaseApptestersV1alphaListTesterAppInstallationReleasesResponse.fromJson(
      core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) =>
                      GoogleFirebaseApptestersV1alphaRelease.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

/// The response object for the ListTesterApps call
class GoogleFirebaseApptestersV1alphaListTesterAppsResponse {
  /// A token which can be sent as `page_token` to retrieve the next page If
  /// this field is omitted, there are no subsequent pages
  core.String? nextPageToken;

  /// List of tester apps
  core.List<GoogleFirebaseApptestersV1alphaTesterApp>? testerApps;

  GoogleFirebaseApptestersV1alphaListTesterAppsResponse({
    this.nextPageToken,
    this.testerApps,
  });

  GoogleFirebaseApptestersV1alphaListTesterAppsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          testerApps: _json.containsKey('testerApps')
              ? (_json['testerApps'] as core.List)
                  .map((value) =>
                      GoogleFirebaseApptestersV1alphaTesterApp.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (testerApps != null) 'testerApps': testerApps!,
      };
}

/// A representation of an app release
class GoogleFirebaseApptestersV1alphaRelease {
  /// Computationally-efficient hash of an apk.
  ///
  /// This value is computed in our backend and our Android SDK by zipping the
  /// apk file. Used by the SDK to map a release on the device to a release
  /// returned from the server.
  core.String? apkHash;

  /// Type of binary
  /// Possible string values are:
  /// - "BINARY_TYPE_UNSPECIFIED" : Binary type unspecified
  /// - "IPA" : iOS app store package
  /// - "APK" : Android application package
  /// - "AAB" : Android app bundle
  core.String? binaryType;

  /// versionCode on Android, CFBundleVersion on iOS (e.g. "456")
  core.String? buildVersion;

  /// Hash of binary on Android, modified hash excluding app metadata (e.g.
  /// provisioning profile) on iOS.
  ///
  /// NOTE - releases with the same code but different version numbers will have
  /// the same code_hash NOTE - ad-hoc iOS releases with the same code but
  /// different provisioning profiles will have the same code_hash
  core.String? codeHash;

  /// versionName on Android, CFBundleShortVersionString on iOS (e.g. "1.2.3")
  core.String? displayVersion;

  /// Reason (if any) why the release is missing a distribution for this device
  /// Possible string values are:
  /// - "DISTRIBUTION_MISSING_REASON_UNSPECIFIED" : Distribution missing reason
  /// unspecified
  /// - "NO_DISTRIBUTIONS"
  /// - "WRONG_DEVICE" : Device not supported
  /// - "NO_ARCHITECTURE" : Device not supported
  /// - "OLD_OS_VERSION" : Device OS version not supported
  /// - "NO_UDID" : Waiting for developer to add device's UDID to the release
  core.String? distributionMissingReason;

  /// Short-lived download URL
  core.String? downloadUrl;

  /// Whether or not this is an enterprise release (vs.
  ///
  /// ad-hoc) for iOS
  core.bool? enterprise;

  /// The time at which this Release will expire
  core.String? expirationTime;

  /// App binary file size
  core.String? fileSize;

  /// IAS artifact id This value is inserted into the manifest of APK's
  /// installed via IAS in the com.android.vending.internal.apk.id metadata
  /// field Used to map a release to an APK installed via an app bundle
  core.String? iasArtifactId;

  /// Whether or not this is the latest release that the tester has been added
  /// to
  core.bool? latest;

  /// The name of the release Format:
  /// devices/{device}/testerApps/{tester_app}/releases/{release}
  core.String? name;

  /// Release notes
  core.String? releaseNotes;

  /// Timestamp when the initial invitation(s) were sent for the release
  core.String? releaseTime;

  GoogleFirebaseApptestersV1alphaRelease({
    this.apkHash,
    this.binaryType,
    this.buildVersion,
    this.codeHash,
    this.displayVersion,
    this.distributionMissingReason,
    this.downloadUrl,
    this.enterprise,
    this.expirationTime,
    this.fileSize,
    this.iasArtifactId,
    this.latest,
    this.name,
    this.releaseNotes,
    this.releaseTime,
  });

  GoogleFirebaseApptestersV1alphaRelease.fromJson(core.Map _json)
      : this(
          apkHash: _json.containsKey('apkHash')
              ? _json['apkHash'] as core.String
              : null,
          binaryType: _json.containsKey('binaryType')
              ? _json['binaryType'] as core.String
              : null,
          buildVersion: _json.containsKey('buildVersion')
              ? _json['buildVersion'] as core.String
              : null,
          codeHash: _json.containsKey('codeHash')
              ? _json['codeHash'] as core.String
              : null,
          displayVersion: _json.containsKey('displayVersion')
              ? _json['displayVersion'] as core.String
              : null,
          distributionMissingReason:
              _json.containsKey('distributionMissingReason')
                  ? _json['distributionMissingReason'] as core.String
                  : null,
          downloadUrl: _json.containsKey('downloadUrl')
              ? _json['downloadUrl'] as core.String
              : null,
          enterprise: _json.containsKey('enterprise')
              ? _json['enterprise'] as core.bool
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          fileSize: _json.containsKey('fileSize')
              ? _json['fileSize'] as core.String
              : null,
          iasArtifactId: _json.containsKey('iasArtifactId')
              ? _json['iasArtifactId'] as core.String
              : null,
          latest:
              _json.containsKey('latest') ? _json['latest'] as core.bool : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          releaseNotes: _json.containsKey('releaseNotes')
              ? _json['releaseNotes'] as core.String
              : null,
          releaseTime: _json.containsKey('releaseTime')
              ? _json['releaseTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apkHash != null) 'apkHash': apkHash!,
        if (binaryType != null) 'binaryType': binaryType!,
        if (buildVersion != null) 'buildVersion': buildVersion!,
        if (codeHash != null) 'codeHash': codeHash!,
        if (displayVersion != null) 'displayVersion': displayVersion!,
        if (distributionMissingReason != null)
          'distributionMissingReason': distributionMissingReason!,
        if (downloadUrl != null) 'downloadUrl': downloadUrl!,
        if (enterprise != null) 'enterprise': enterprise!,
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (fileSize != null) 'fileSize': fileSize!,
        if (iasArtifactId != null) 'iasArtifactId': iasArtifactId!,
        if (latest != null) 'latest': latest!,
        if (name != null) 'name': name!,
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
        if (releaseTime != null) 'releaseTime': releaseTime!,
      };
}

/// The request object for the SubscribeInvitation call
typedef GoogleFirebaseApptestersV1alphaSubscribeInvitationRequest = $Empty;

/// A representation of an app.
class GoogleFirebaseApptestersV1alphaTesterApp {
  /// The bundle identifier of the app
  core.String? bundleId;

  /// Tester has consented to share the device's data for the app
  core.bool? consented;

  /// Developer contact email for testers to reach out to about privacy or
  /// support issues.
  core.String? contactEmail;

  /// Display name of the app
  core.String? display;

  /// URL of app icon
  core.String? iconUrl;

  /// The name of the tester app to retrieve Format:
  /// devices/{device}/testerApps/{tester_app}
  core.String? name;

  /// The platform of the app (iOS or Android)
  core.String? platform;

  /// Number of releases for the app
  core.int? releaseCount;

  GoogleFirebaseApptestersV1alphaTesterApp({
    this.bundleId,
    this.consented,
    this.contactEmail,
    this.display,
    this.iconUrl,
    this.name,
    this.platform,
    this.releaseCount,
  });

  GoogleFirebaseApptestersV1alphaTesterApp.fromJson(core.Map _json)
      : this(
          bundleId: _json.containsKey('bundleId')
              ? _json['bundleId'] as core.String
              : null,
          consented: _json.containsKey('consented')
              ? _json['consented'] as core.bool
              : null,
          contactEmail: _json.containsKey('contactEmail')
              ? _json['contactEmail'] as core.String
              : null,
          display: _json.containsKey('display')
              ? _json['display'] as core.String
              : null,
          iconUrl: _json.containsKey('iconUrl')
              ? _json['iconUrl'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          platform: _json.containsKey('platform')
              ? _json['platform'] as core.String
              : null,
          releaseCount: _json.containsKey('releaseCount')
              ? _json['releaseCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundleId != null) 'bundleId': bundleId!,
        if (consented != null) 'consented': consented!,
        if (contactEmail != null) 'contactEmail': contactEmail!,
        if (display != null) 'display': display!,
        if (iconUrl != null) 'iconUrl': iconUrl!,
        if (name != null) 'name': name!,
        if (platform != null) 'platform': platform!,
        if (releaseCount != null) 'releaseCount': releaseCount!,
      };
}

/// The TesterAppInstallation resource
class GoogleFirebaseApptestersV1alphaTesterAppInstallation {
  /// The TesterAppInstallation resource name Format:
  /// devices/{device}/testerApps/{tester_app}/installations/{installation}
  ///
  /// Required.
  core.String? name;

  GoogleFirebaseApptestersV1alphaTesterAppInstallation({
    this.name,
  });

  GoogleFirebaseApptestersV1alphaTesterAppInstallation.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// The request object for the UnsubscribeInvitation call
typedef GoogleFirebaseApptestersV1alphaUnsubscribeInvitationRequest = $Empty;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;
