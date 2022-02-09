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

/// Token Service API - v2beta1
///
/// The Token Service API lets you exchange an ID token or a refresh token for
/// an access token and a refresh token, which you can use to securely call your
/// own APIs.
///
/// For more information, see
/// <https://developers.google.com/identity/toolkit/securetoken>
///
/// Create an instance of [TokenServiceApi] to access these resources:
///
/// - [V2beta1Resource]
library securetoken.v2beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The Token Service API lets you exchange an ID token or a refresh token for
/// an access token and a refresh token, which you can use to securely call your
/// own APIs.
class TokenServiceApi {
  final commons.ApiRequester _requester;

  V2beta1Resource get v2beta1 => V2beta1Resource(_requester);

  TokenServiceApi(http.Client client,
      {core.String rootUrl = 'https://securetoken.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class V2beta1Resource {
  final commons.ApiRequester _requester;

  V2beta1Resource(commons.ApiRequester client) : _requester = client;

  /// Exchanges a third-party credential for a Google OAuth 2.0 access token
  /// which asserts a third-party identity within a WorkloadPool, or applies an
  /// Access Boundary on a Google access token.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExchangeTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExchangeTokenResponse> token(
    ExchangeTokenRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v2beta1/token';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ExchangeTokenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for ExchangeToken.
class ExchangeTokenRequest {
  /// An Access Boundary that defines the upper bound of permissions the
  /// credential may have.
  ///
  /// Only used if `subject_token` is a Google access token.
  core.String? accessBoundary;

  /// The resource name containing the WorkloadPool and WorkloadPoolProvider
  /// which holds the third-party identity federation configuration.
  ///
  /// This parameter is REQUIRED when the `subject_token` carries credential
  /// that is issued by a WorkloadPoolProvider. The value should be in the
  /// following format:
  /// `projects/{PROJECT_ID}/workloadPools/{WL_POOL_ID}/providers/{PROVIDER_ID}`
  /// where {WL_POOL_ID} should be the ID of the WorkloadPool and {PROVIDER_ID}
  /// should be the ID of the WorkloadPoolProvider.
  core.String? audience;

  /// This should be `urn:ietf:params:oauth:grant-type:token-exchange` to
  /// indicate that a token exchange is being performed.
  ///
  /// Required.
  core.String? grantType;

  /// Identifier for the type of the requested security token.
  ///
  /// The only currently supported value is
  /// 'urn:ietf:params:oauth:token-type:access_token'.
  ///
  /// Required.
  core.String? requestedTokenType;

  /// Desired OAuth 2.0 scopes that will be included in the resulting access
  /// token.
  ///
  /// This is a space-separated list of strings. This parameter is REQUIRED when
  /// the `subject_token` carries credential that is issued by a
  /// WorkloadPoolProvider.
  core.String? scope;

  /// Input token.
  ///
  /// The `subject_token` can be a third-party credential that is issued by a
  /// WorkloadPoolProvider or a short-lived access token that is issued by
  /// Google. If `subject_token` is an OIDC JWT, it must be in JWT format as
  /// defined in RFC 7523. The `subject_token_type` parameter must be
  /// 'urn:ietf:params:oauth:token-type:jwt'. Mandatory header fields: - kid:
  /// Identifier of the signing key used to secure the JWT - alg: The
  /// cryptographic algorithm used to secure the JWT. Supported value: "RS256".
  /// Mandatory payload fields (along the lines of RFC 7523, section 3): - iss:
  /// issuer of the token. Must provide a discovery document at
  /// $iss/.well-known/openid-configuration . The document needs to be formatted
  /// according to section 4.2 of the OpenID Connect Discovery 1.0
  /// specification. - iat: Issue time in seconds since epoch. Must be in the
  /// past. - exp: Expiration time in seconds since epoch. Must be less than 48
  /// hours after iat. We recommend to create tokens that last shorter than 6
  /// hours to improve security unless business reasons mandate longer
  /// expiration times. Shorter token lifetimes are generally more secure since
  /// tokens that have been exfiltrated by attackers can be used for a shorter
  /// time. - sub: JWT subject, identity asserted in the JWT. - aud: Configured
  /// in the mapper policy. By default the service account unique ID. Example
  /// header: { "alg": "RS256", "kid": "us-east-11" } Example payload: { "iss":
  /// "https://accounts.google.com", "iat": 1517963104, "exp": 1517966704,
  /// "aud": "113475438248934895348", "sub": "113475438248934895348",
  /// "my_claims": { "additional_claim": "value" } } If `subject_token` is a
  /// Google short-lived access token, it can be an opaque OAuth 2.0 access
  /// token or a JWT signed by Google service account key. The
  /// `subject_token_type` should be set to
  /// 'urn:ietf:params:oauth:token-type:access_token' or
  /// 'urn:ietf:params:oauth:token-type:jwt' accordingly.
  ///
  /// Required.
  core.String? subjectToken;

  /// An identifier that indicates the type of the security token in the
  /// `subject_token` parameter.
  ///
  /// Currently, the supported values are
  /// 'urn:ietf:params:oauth:token-type:jwt',
  /// 'urn:ietf:params:aws:token-type:aws4_request' and
  /// 'urn:ietf:params:oauth:token-type:access_token'.
  ///
  /// Required.
  core.String? subjectTokenType;

  ExchangeTokenRequest({
    this.accessBoundary,
    this.audience,
    this.grantType,
    this.requestedTokenType,
    this.scope,
    this.subjectToken,
    this.subjectTokenType,
  });

  ExchangeTokenRequest.fromJson(core.Map _json)
      : this(
          accessBoundary: _json.containsKey('accessBoundary')
              ? _json['accessBoundary'] as core.String
              : null,
          audience: _json.containsKey('audience')
              ? _json['audience'] as core.String
              : null,
          grantType: _json.containsKey('grantType')
              ? _json['grantType'] as core.String
              : null,
          requestedTokenType: _json.containsKey('requestedTokenType')
              ? _json['requestedTokenType'] as core.String
              : null,
          scope:
              _json.containsKey('scope') ? _json['scope'] as core.String : null,
          subjectToken: _json.containsKey('subjectToken')
              ? _json['subjectToken'] as core.String
              : null,
          subjectTokenType: _json.containsKey('subjectTokenType')
              ? _json['subjectTokenType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessBoundary != null) 'accessBoundary': accessBoundary!,
        if (audience != null) 'audience': audience!,
        if (grantType != null) 'grantType': grantType!,
        if (requestedTokenType != null)
          'requestedTokenType': requestedTokenType!,
        if (scope != null) 'scope': scope!,
        if (subjectToken != null) 'subjectToken': subjectToken!,
        if (subjectTokenType != null) 'subjectTokenType': subjectTokenType!,
      };
}

/// Response message for ExchangeToken.
class ExchangeTokenResponse {
  /// The Google access token for third-party identity in the requested format.
  ///
  /// Currently, the token is only going to be an OAuth 2.0 access token.
  core.String? accessToken;

  /// The expiration time of `access_token` in seconds, measured from the time
  /// of issuance.
  ///
  /// Note that this field will be absent when the `subject_token` in request is
  /// a Google-issued short-lived access token. It is safe to assume the
  /// expiration time of the `access_token` is the same as the `subject_token`
  /// in that case.
  core.int? expiresIn;

  /// Same value as `requested_token_type` parameter in request.
  core.String? issuedTokenType;

  /// The type of `access_token`.
  ///
  /// The only currently supported value is 'Bearer'.
  core.String? tokenType;

  ExchangeTokenResponse({
    this.accessToken,
    this.expiresIn,
    this.issuedTokenType,
    this.tokenType,
  });

  ExchangeTokenResponse.fromJson(core.Map _json)
      : this(
          accessToken: _json.containsKey('access_token')
              ? _json['access_token'] as core.String
              : null,
          expiresIn: _json.containsKey('expires_in')
              ? _json['expires_in'] as core.int
              : null,
          issuedTokenType: _json.containsKey('issued_token_type')
              ? _json['issued_token_type'] as core.String
              : null,
          tokenType: _json.containsKey('token_type')
              ? _json['token_type'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'access_token': accessToken!,
        if (expiresIn != null) 'expires_in': expiresIn!,
        if (issuedTokenType != null) 'issued_token_type': issuedTokenType!,
        if (tokenType != null) 'token_type': tokenType!,
      };
}
