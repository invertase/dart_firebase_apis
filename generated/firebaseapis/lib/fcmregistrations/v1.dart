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

/// FCM Registration API - v1
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FcmregistrationsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsRegistrationsResource]
library fcmregistrations.v1;

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

class FcmregistrationsApi {
  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FcmregistrationsApi(http.Client client,
      {core.String rootUrl = 'https://fcmregistrations.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsRegistrationsResource get registrations =>
      ProjectsRegistrationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsRegistrationsResource {
  final commons.ApiRequester _requester;

  ProjectsRegistrationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Examples: curl -X POST -H "Content-Type: application/json" -H
  /// "X-Goog-Api-Key: AIzaSyAMumboJumbojFTVX2lTBQ” -H
  /// "X-Goog-Firebase-Installations-Auth:
  /// eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCJ9.eyJmaWQiOiJjZEV6WVFhaWZoOXR5dVF5ZktvR3M4IiwicHJvamVjdE51bWJlciI6MzUwMDY3NzEyNjMsImV4cCI6MTU2NjMyMzg5NCwiYXBwSWQiOiIxOjM1MDA2NzcxMjYzOmFuZHJvaWQ6Mjc4NTNlNTJkMzMxZTQyMiJ9.ABdN8xAwRQIgSNvJtB--vTNoxDIZiryYi1z05mCfqCj7nbJlsirJ5UYCIQC7BoXW9xvYEi9qASd1nWU0Crs1u3SRhq0BmJLgm9msIA"
  /// -d "{ 'javascript': { 'endpoint':
  /// 'https://fcm.googleapis.com/fcm/send/eTgyI1vNRYs:APA91bG4g3QzXI8opChSFfwz3vS6GQN8WfcOA-SEL6bFDje79UEu2wft3EHgoefwPayQ_nWWXfKbRT5eya1jjLzWugOvWUeSlPUwcT6-A1XOlOqRxVaAqtFaZM5gte7Ay-fT8sAoiEuE',
  /// 'p256dh':
  /// 'BDV5QV8YK9QH7WdfjVdo0l-njtu5nySdMPbFgIY1xdgu5Ks3ZbxkJqdXzaZxKhgOgcspCYjgcTrhhkmOSrN8bho',
  /// 'auth': '4sOuBLO7qbdDguQu0DnWaQ', 'application_pub_key':
  /// 'BE1y40dQNCrNODvWszwjdYeJEbYZmcHYcKuMgqDBWKlMi06Tm9m1Dxmo5mmJC7j3wVWw76ekeZ999cyz5TwdzBw'}}"
  /// https://fcmregistrations.googleapis.com/v1/projects/android-gcm-test-519bd/registrations
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The GCP project id, e.g. projects/my-project-123
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseFcmRegistrationV1Registration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseFcmRegistrationV1Registration> create(
    GoogleFirebaseFcmRegistrationV1Registration request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/registrations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseFcmRegistrationV1Registration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the FCM registration and the token stops working immediately.
  ///
  /// Request parameters:
  ///
  /// [name] - The registration identifier. Same as the "name" field when
  /// creating registrations. e.g.
  /// projects/my-project-123/registrations/fVcrSGE6ahM:APA91bHYyExFXG0bNYXg
  /// Value must have pattern `^projects/\[^/\]+/registrations/\[^/\]+$`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing FCM Registration.
  ///
  /// Currently only useful for JavaScript registrations.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Assigned by server. The identifier for the
  /// registration. e.g.
  /// projects/my-project-123/registrations/fVcrSGE6ahM:APA91bHYyExFXG0bNYXg
  /// Value must have pattern `^projects/\[^/\]+/registrations/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseFcmRegistrationV1Registration].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseFcmRegistrationV1Registration> patch(
    GoogleFirebaseFcmRegistrationV1Registration request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseFcmRegistrationV1Registration.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// The registration data needed for routing and delivering a notification.
class GoogleFirebaseFcmRegistrationV1Registration {
  /// Assigned by server.
  ///
  /// The identifier for the registration. e.g.
  /// projects/my-project-123/registrations/fVcrSGE6ahM:APA91bHYyExFXG0bNYXg
  ///
  /// Output only.
  core.String? name;

  /// Assigned by server.
  ///
  /// The FCM Token.
  ///
  /// Output only.
  core.String? token;

  /// Registrations created through the FCM JS SDK.
  GoogleFirebaseFcmRegistrationV1Web? web;

  GoogleFirebaseFcmRegistrationV1Registration({
    this.name,
    this.token,
    this.web,
  });

  GoogleFirebaseFcmRegistrationV1Registration.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
          web: _json.containsKey('web')
              ? GoogleFirebaseFcmRegistrationV1Web.fromJson(
                  _json['web'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (token != null) 'token': token!,
        if (web != null) 'web': web!,
      };
}

/// Registration data for the
/// [JS SDK](https://firebase.google.com/docs/cloud-messaging/js/client), which
/// wraps the [Push API](https://www.w3.org/TR/push-api/).
class GoogleFirebaseFcmRegistrationV1Web {
  /// Vapid Public key to be used for authentication when sending to external
  /// web clients.
  ///
  /// Additional optional parameter to be associated with a standard webpush
  /// subscription.
  core.String? applicationPubKey;

  /// An authentication secret, as described in
  /// [Message Encryption for Web Push](https://tools.ietf.org/html/draft-ietf-webpush-encryption-08).
  core.String? auth;

  /// The endpoint takes the form of a custom URL pointing to a push server,
  /// which can be used to send a push message.
  core.String? endpoint;

  /// An Elliptic curve Diffie–Hellman public key on the P-256 curve (that is,
  /// the NIST secp256r1 elliptic curve).
  ///
  /// The resulting key is an uncompressed point in ANSI X9.62 format.
  core.String? p256dh;

  GoogleFirebaseFcmRegistrationV1Web({
    this.applicationPubKey,
    this.auth,
    this.endpoint,
    this.p256dh,
  });

  GoogleFirebaseFcmRegistrationV1Web.fromJson(core.Map _json)
      : this(
          applicationPubKey: _json.containsKey('applicationPubKey')
              ? _json['applicationPubKey'] as core.String
              : null,
          auth: _json.containsKey('auth') ? _json['auth'] as core.String : null,
          endpoint: _json.containsKey('endpoint')
              ? _json['endpoint'] as core.String
              : null,
          p256dh: _json.containsKey('p256dh')
              ? _json['p256dh'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationPubKey != null) 'applicationPubKey': applicationPubKey!,
        if (auth != null) 'auth': auth!,
        if (endpoint != null) 'endpoint': endpoint!,
        if (p256dh != null) 'p256dh': p256dh!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;
