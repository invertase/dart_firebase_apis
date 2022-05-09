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

/// Firebase Hosting API - v1beta1
///
/// The Firebase Hosting REST API enables programmatic and customizable
/// management and deployments to your Firebase-hosted sites. Use this REST API
/// to create and manage channels and sites as well as to deploy new or updated
/// hosting configurations and content files.
///
/// For more information, see <https://firebase.google.com/docs/hosting/>
///
/// Create an instance of [FirebaseHostingApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsSitesResource]
///     - [ProjectsSitesChannelsResource]
///       - [ProjectsSitesChannelsReleasesResource]
///     - [ProjectsSitesDomainsResource]
///     - [ProjectsSitesReleasesResource]
///     - [ProjectsSitesVersionsResource]
///       - [ProjectsSitesVersionsFilesResource]
/// - [SitesResource]
///   - [SitesChannelsResource]
///     - [SitesChannelsReleasesResource]
///   - [SitesDomainsResource]
///   - [SitesReleasesResource]
///   - [SitesVersionsResource]
///     - [SitesVersionsFilesResource]
library firebasehosting.v1beta1;

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

/// The Firebase Hosting REST API enables programmatic and customizable
/// management and deployments to your Firebase-hosted sites.
///
/// Use this REST API to create and manage channels and sites as well as to
/// deploy new or updated hosting configurations and content files.
class FirebaseHostingApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  SitesResource get sites => SitesResource(_requester);

  FirebaseHostingApi(http.Client client,
      {core.String rootUrl = 'https://firebasehosting.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsSitesResource get sites => ProjectsSitesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsResource get channels =>
      ProjectsSitesChannelsResource(_requester);
  ProjectsSitesDomainsResource get domains =>
      ProjectsSitesDomainsResource(_requester);
  ProjectsSitesReleasesResource get releases =>
      ProjectsSitesReleasesResource(_requester);
  ProjectsSitesVersionsResource get versions =>
      ProjectsSitesVersionsResource(_requester);

  ProjectsSitesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Hosting Site in the specified parent Firebase project.
  ///
  /// Note that Hosting sites can take several minutes to propagate through
  /// Firebase systems.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Firebase project in which to create a Hosting
  /// site, in the format: projects/PROJECT_IDENTIFIER Refer to the `Site`
  /// \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [siteId] - Required. Immutable. A globally unique identifier for the
  /// Hosting site. This identifier is used to construct the
  /// Firebase-provisioned subdomains for the site, so it must also be a valid
  /// domain name label.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> create(
    Site request,
    core.String parent, {
    core.String? siteId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (siteId != null) 'siteId': [siteId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sites';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Site.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified Hosting Site from the specified parent Firebase
  /// project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting site,
  /// in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the
  /// `Site` \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified Hosting Site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the Hosting site,
  /// in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID Refer to the
  /// `Site` \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values. Since a SITE_ID is a globally unique
  /// identifier, you can also use the unique sub-collection resource access
  /// pattern, in the format: projects/-/sites/SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Site.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SiteConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each Hosting Site associated with the specified parent Firebase
  /// project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Firebase project for which to list sites, in the
  /// format: projects/PROJECT_IDENTIFIER Refer to the `Site`
  /// \[`name`\](../projects#Site.FIELDS.name) field for details about
  /// PROJECT_IDENTIFIER values.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of sites to return. The service
  /// may return a lower number if fewer sites exist than this maximum number.
  /// If unspecified, defaults to 40.
  ///
  /// [pageToken] - Optional. A token from a previous call to `ListSites` that
  /// tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSitesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSitesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/sites';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSitesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates attributes of the specified Hosting Site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully-qualified resource name of the Hosting
  /// site, in the format: projects/PROJECT_IDENTIFIER/sites/SITE_ID
  /// PROJECT_IDENTIFIER: the Firebase project's
  /// \[`ProjectNumber`\](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your Site that you want to
  /// update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Site].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Site> patch(
    Site request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Site.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the Hosting metadata for a specific site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to update the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+/config$`.
  ///
  /// [updateMask] - A set of field names from your \[site
  /// configuration\](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// \[`max_versions`\](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SiteConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesChannelsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResource get releases =>
      ProjectsSitesChannelsReleasesResource(_requester);

  ProjectsSitesChannelsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create this channel, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [channelId] - Required. Immutable. A unique ID within the site that
  /// identifies the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String? channelId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified channel of the specified site.
  ///
  /// The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves information for the specified channel of the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the channels for the specified site.
  ///
  /// All sites have a default `live` channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site for which to list channels, in the format:
  /// sites/SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of channels to return. The service may
  /// return a lower number if fewer channels exist than this maximum number. If
  /// unspecified, defaults to 10. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListChannels` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information for the specified channel of the specified site.
  ///
  /// Implicitly creates the channel if it doesn't already exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the channel, in the format:
  /// sites/ SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [updateMask] - A comma-separated list of fields to be updated in this
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesChannelsReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesChannelsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Release.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesDomainsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesDomainsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The page size to return. Defaults to 50.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified domain mapping, creating the mapping as if it does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to update or create,
  /// if an association doesn't already exist.
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesReleasesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Release.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResource get files =>
      ProjectsSitesVersionsFilesResource(_requester);

  ProjectsSitesVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new version on the specified target site using the content of
  /// the specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site for the cloned version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> clone(
    CloneVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions:clone';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new version for the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create the version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [sizeBytes] - The self-reported size of the version. This value is used
  /// for a pre-emptive quota check for legacy version uploads.
  ///
  /// [versionId] - A unique id for the new version. This is was only specified
  /// for legacy version creations, and should be blank.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String? sizeBytes,
    core.String? versionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (sizeBytes != null) 'sizeBytes': [sizeBytes],
      if (versionId != null) 'versionId': [versionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Version.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the versions that have been created for the specified site.
  ///
  /// This list includes versions for both the default `live` channel and any
  /// active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list versions, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^projects/\[^/\]+/sites/\[^/\]+$`.
  ///
  /// [filter] - A filter string used to return a subset of versions in the
  /// response. The currently supported fields for filtering are: `name`,
  /// `status`, and `create_time`. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return a lower number if fewer versions exist than this maximum number. If
  /// unspecified, defaults to 25. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListVersions` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  ///  Updates the specified metadata for the specified version.
  ///
  /// This method will fail with `FAILED_PRECONDITION` in the event of an
  /// invalid state transition. The supported
  /// \[state\](../sites.versions#versionstatus) transitions for a version are
  /// from `CREATED` to `FINALIZED`. Use \[`DeleteVersion`\](delete) to set the
  /// status of a version to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the version, in the format:
  /// sites/ SITE_ID/versions/VERSION_ID This name is provided in the response
  /// body when you call \[`CreateVersion`\](sites.versions/create).
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your
  /// \[version\](../sites.versions) that you want to update. A field will be
  /// overwritten if, and only if, it's in the mask. If a mask is not provided
  /// then a default mask of only
  /// \[`status`\](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Version.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  ///  Adds content files to the specified version.
  ///
  /// Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to which to add files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':populateFiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PopulateVersionFilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSitesVersionsFilesResource {
  final commons.ApiRequester _requester;

  ProjectsSitesVersionsFilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version for which to list files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern
  /// `^projects/\[^/\]+/sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of version files to return. The service
  /// may return a lower number if fewer version files exist than this maximum
  /// number. If unspecified, defaults to 1000.
  ///
  /// [pageToken] - A token from a previous call to `ListVersionFiles` that
  /// tells the server where to resume listing.
  ///
  /// [status] - The type of files that should be listed for the specified
  /// version.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? status,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': [status],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/files';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVersionFilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SitesResource {
  final commons.ApiRequester _requester;

  SitesChannelsResource get channels => SitesChannelsResource(_requester);
  SitesDomainsResource get domains => SitesDomainsResource(_requester);
  SitesReleasesResource get releases => SitesReleasesResource(_requester);
  SitesVersionsResource get versions => SitesVersionsResource(_requester);

  SitesResource(commons.ApiRequester client) : _requester = client;

  /// Gets the Hosting metadata for a specific site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to get the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^sites/\[^/\]+/config$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> getConfig(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SiteConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the Hosting metadata for a specific site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The site for which to update the SiteConfig, in the
  /// format: sites/ site-name/config
  /// Value must have pattern `^sites/\[^/\]+/config$`.
  ///
  /// [updateMask] - A set of field names from your \[site
  /// configuration\](../sites.SiteConfig) that you want to update. A field will
  /// be overwritten if, and only if, it's in the mask. If a mask is not
  /// provided then a default mask of only
  /// \[`max_versions`\](../sites.SiteConfig.max_versions) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SiteConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SiteConfig> updateConfig(
    SiteConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return SiteConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SitesChannelsResource {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResource get releases =>
      SitesChannelsReleasesResource(_requester);

  SitesChannelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new channel in the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create this channel, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [channelId] - Required. Immutable. A unique ID within the site that
  /// identifies the channel.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> create(
    Channel request,
    core.String parent, {
    core.String? channelId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (channelId != null) 'channelId': [channelId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified channel of the specified site.
  ///
  /// The `live` channel cannot be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves information for the specified channel of the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the channel, in
  /// the format: sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the channels for the specified site.
  ///
  /// All sites have a default `live` channel.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site for which to list channels, in the format:
  /// sites/SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of channels to return. The service may
  /// return a lower number if fewer channels exist than this maximum number. If
  /// unspecified, defaults to 10. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListChannels` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListChannelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListChannelsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/channels';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListChannelsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates information for the specified channel of the specified site.
  ///
  /// Implicitly creates the channel if it doesn't already exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the channel, in the format:
  /// sites/ SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [updateMask] - A comma-separated list of fields to be updated in this
  /// request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Channel].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Channel> patch(
    Channel request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Channel.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SitesChannelsReleasesResource {
  final commons.ApiRequester _requester;

  SitesChannelsReleasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Release.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+/channels/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SitesDomainsResource {
  final commons.ApiRequester _requester;

  SitesDomainsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a domain mapping on the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent to create the domain association for, in
  /// the format: sites/site-name
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> create(
    Domain request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the existing domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to delete.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a domain mapping on the specified site.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain configuration to get.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the domains for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent for which to list domains, in the format:
  /// sites/ site-name
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The page size to return. Defaults to 50.
  ///
  /// [pageToken] - The next_page_token from a previous request, if provided.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDomainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDomainsResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/domains';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDomainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified domain mapping, creating the mapping as if it does
  /// not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the domain association to update or create,
  /// if an association doesn't already exist.
  /// Value must have pattern `^sites/\[^/\]+/domains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Domain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Domain> update(
    Domain request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Domain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SitesReleasesResource {
  final commons.ApiRequester _requester;

  SitesReleasesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new release, which makes the content of the specified version
  /// actively display on the appropriate URL(s).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel to which the release belongs, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [versionName] - The unique identifier for a version, in the format:
  /// sites/SITE_ID/versions/ VERSION_ID The SITE_ID in this version identifier
  /// must match the SITE_ID in the `parent` parameter. This query parameter
  /// must be empty if the `type` field in the request body is `SITE_DISABLE`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Release].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Release> create(
    Release request,
    core.String parent, {
    core.String? versionName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (versionName != null) 'versionName': [versionName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Release.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the releases that have been created for the specified site or
  /// channel.
  ///
  /// When used to list releases for a site, this list includes releases for
  /// both the default `live` channel and any active preview channels for the
  /// specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list releases, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of releases to return. The service may
  /// return a lower number if fewer releases exist than this maximum number. If
  /// unspecified, defaults to 100.
  ///
  /// [pageToken] - A token from a previous call to `releases.list` or
  /// `channels.releases.list` that tells the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReleasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReleasesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/releases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListReleasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SitesVersionsResource {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResource get files =>
      SitesVersionsFilesResource(_requester);

  SitesVersionsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new version on the specified target site using the content of
  /// the specified version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The target site for the cloned version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> clone(
    CloneVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions:clone';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new version for the specified site.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site in which to create the version, in the
  /// format: sites/ SITE_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [sizeBytes] - The self-reported size of the version. This value is used
  /// for a pre-emptive quota check for legacy version uploads.
  ///
  /// [versionId] - A unique id for the new version. This is was only specified
  /// for legacy version creations, and should be blank.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String parent, {
    core.String? sizeBytes,
    core.String? versionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (sizeBytes != null) 'sizeBytes': [sizeBytes],
      if (versionId != null) 'versionId': [versionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Version.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the specified version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The fully-qualified resource name for the version, in
  /// the format: sites/SITE_ID/versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the versions that have been created for the specified site.
  ///
  /// This list includes versions for both the default `live` channel and any
  /// active preview channels for the specified site.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The site or channel for which to list versions, in
  /// either of the following formats: - sites/SITE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID
  /// Value must have pattern `^sites/\[^/\]+$`.
  ///
  /// [filter] - A filter string used to return a subset of versions in the
  /// response. The currently supported fields for filtering are: `name`,
  /// `status`, and `create_time`. Learn more about filtering in Google's
  /// [AIP 160 standard](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of versions to return. The service may
  /// return a lower number if fewer versions exist than this maximum number. If
  /// unspecified, defaults to 25. The maximum value is 100; values above 100
  /// will be coerced to 100.
  ///
  /// [pageToken] - A token from a previous call to `ListVersions` that tells
  /// the server where to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  ///  Updates the specified metadata for the specified version.
  ///
  /// This method will fail with `FAILED_PRECONDITION` in the event of an
  /// invalid state transition. The supported
  /// \[state\](../sites.versions#versionstatus) transitions for a version are
  /// from `CREATED` to `FINALIZED`. Use \[`DeleteVersion`\](delete) to set the
  /// status of a version to `DELETED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully-qualified resource name for the version, in the format:
  /// sites/ SITE_ID/versions/VERSION_ID This name is provided in the response
  /// body when you call \[`CreateVersion`\](sites.versions/create).
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names from your
  /// \[version\](../sites.versions) that you want to update. A field will be
  /// overwritten if, and only if, it's in the mask. If a mask is not provided
  /// then a default mask of only
  /// \[`status`\](../sites.versions#Version.FIELDS.status) will be used.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> patch(
    Version request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Version.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  ///  Adds content files to the specified version.
  ///
  /// Each file must be under 2 GB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version to which to add files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PopulateVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PopulateVersionFilesResponse> populateFiles(
    PopulateVersionFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':populateFiles';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PopulateVersionFilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SitesVersionsFilesResource {
  final commons.ApiRequester _requester;

  SitesVersionsFilesResource(commons.ApiRequester client) : _requester = client;

  /// Lists the remaining files to be uploaded for the specified version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The version for which to list files, in the format:
  /// sites/SITE_ID /versions/VERSION_ID
  /// Value must have pattern `^sites/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of version files to return. The service
  /// may return a lower number if fewer version files exist than this maximum
  /// number. If unspecified, defaults to 1000.
  ///
  /// [pageToken] - A token from a previous call to `ListVersionFiles` that
  /// tells the server where to resume listing.
  ///
  /// [status] - The type of files that should be listed for the specified
  /// version.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionFilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? status,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (status != null) 'status': [status],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/files';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVersionFilesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Contains metadata about the user who performed an action, such as creating a
/// release or finalizing a version.
class ActingUser {
  /// The email address of the user when the user performed the action.
  core.String? email;

  /// A profile image URL for the user.
  ///
  /// May not be present if the user has changed their email address or deleted
  /// their account.
  core.String? imageUrl;

  ActingUser({
    this.email,
    this.imageUrl,
  });

  ActingUser.fromJson(core.Map _json)
      : this(
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          imageUrl: _json.containsKey('imageUrl')
              ? _json['imageUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (imageUrl != null) 'imageUrl': imageUrl!,
      };
}

/// Represents a DNS certificate challenge.
class CertDnsChallenge {
  /// The domain name upon which the DNS challenge must be satisfied.
  core.String? domainName;

  /// The value that must be present as a TXT record on the domain name to
  /// satisfy the challenge.
  core.String? token;

  CertDnsChallenge({
    this.domainName,
    this.token,
  });

  CertDnsChallenge.fromJson(core.Map _json)
      : this(
          domainName: _json.containsKey('domainName')
              ? _json['domainName'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (token != null) 'token': token!,
      };
}

/// Represents an HTTP certificate challenge.
class CertHttpChallenge {
  /// The URL path on which to serve the specified token to satisfy the
  /// certificate challenge.
  core.String? path;

  /// The token to serve at the specified URL path to satisfy the certificate
  /// challenge.
  core.String? token;

  CertHttpChallenge({
    this.path,
    this.token,
  });

  CertHttpChallenge.fromJson(core.Map _json)
      : this(
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (path != null) 'path': path!,
        if (token != null) 'token': token!,
      };
}

/// A `Channel` represents a stream of releases for a site.
///
/// All sites have a default `live` channel that serves content to the
/// Firebase-provided subdomains and any connected custom domains.
class Channel {
  /// The time at which the channel was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time at which the channel will be automatically deleted.
  ///
  /// If null, the channel will not be automatically deleted. This field is
  /// present in the output whether it's set directly or via the `ttl` field.
  core.String? expireTime;

  /// Text labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name for the channel, in the format: sites/
  /// SITE_ID/channels/CHANNEL_ID
  core.String? name;

  /// The current release for the channel, if any.
  ///
  /// Output only.
  Release? release;

  /// The number of previous releases to retain on the channel for rollback or
  /// other purposes.
  ///
  /// Must be a number between 1-100. Defaults to 10 for new channels.
  core.int? retainedReleaseCount;

  /// Input only.
  ///
  /// A time-to-live for this channel. Sets `expire_time` to the provided
  /// duration past the time of the request.
  core.String? ttl;

  /// The time at which the channel was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The URL at which the content of this channel's current release can be
  /// viewed.
  ///
  /// This URL is a Firebase-provided subdomain of `web.app`. The content of
  /// this channel's current release can also be viewed at the Firebase-provided
  /// subdomain of `firebaseapp.com`. If this channel is the `live` channel for
  /// the Hosting site, then the content of this channel's current release can
  /// also be viewed at any connected custom domains.
  ///
  /// Output only.
  core.String? url;

  Channel({
    this.createTime,
    this.expireTime,
    this.labels,
    this.name,
    this.release,
    this.retainedReleaseCount,
    this.ttl,
    this.updateTime,
    this.url,
  });

  Channel.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          release: _json.containsKey('release')
              ? Release.fromJson(
                  _json['release'] as core.Map<core.String, core.dynamic>)
              : null,
          retainedReleaseCount: _json.containsKey('retainedReleaseCount')
              ? _json['retainedReleaseCount'] as core.int
              : null,
          ttl: _json.containsKey('ttl') ? _json['ttl'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (release != null) 'release': release!,
        if (retainedReleaseCount != null)
          'retainedReleaseCount': retainedReleaseCount!,
        if (ttl != null) 'ttl': ttl!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (url != null) 'url': url!,
      };
}

class CloneVersionRequest {
  /// If provided, only paths that do not match any of the RegEx values in this
  /// list will be included in the new version.
  PathFilter? exclude;

  /// If true, the call to `CloneVersion` immediately finalizes the version
  /// after cloning is complete.
  ///
  /// If false, the cloned version will have a status of `CREATED`. Use
  /// \[`UpdateVersion`\](patch) to set the status of the version to
  /// `FINALIZED`.
  core.bool? finalize;

  /// If provided, only paths that match one or more RegEx values in this list
  /// will be included in the new version.
  PathFilter? include;

  /// The unique identifier for the version to be cloned, in the format:
  /// sites/SITE_ID/versions/VERSION_ID
  ///
  /// Required.
  core.String? sourceVersion;

  CloneVersionRequest({
    this.exclude,
    this.finalize,
    this.include,
    this.sourceVersion,
  });

  CloneVersionRequest.fromJson(core.Map _json)
      : this(
          exclude: _json.containsKey('exclude')
              ? PathFilter.fromJson(
                  _json['exclude'] as core.Map<core.String, core.dynamic>)
              : null,
          finalize: _json.containsKey('finalize')
              ? _json['finalize'] as core.bool
              : null,
          include: _json.containsKey('include')
              ? PathFilter.fromJson(
                  _json['include'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceVersion: _json.containsKey('sourceVersion')
              ? _json['sourceVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exclude != null) 'exclude': exclude!,
        if (finalize != null) 'finalize': finalize!,
        if (include != null) 'include': include!,
        if (sourceVersion != null) 'sourceVersion': sourceVersion!,
      };
}

/// A configured rewrite that directs requests to a Cloud Run service.
///
/// If the Cloud Run service does not exist when setting or updating your
/// Firebase Hosting configuration, then the request fails. Any errors from the
/// Cloud Run service are passed to the end user (for example, if you delete a
/// service, any requests directed to that service receive a `404` error).
class CloudRunRewrite {
  /// User-provided region where the Cloud Run service is hosted.
  ///
  /// Defaults to `us-central1` if not supplied.
  ///
  /// Optional.
  core.String? region;

  /// User-defined ID of the Cloud Run service.
  ///
  /// Required.
  core.String? serviceId;

  CloudRunRewrite({
    this.region,
    this.serviceId,
  });

  CloudRunRewrite.fromJson(core.Map _json)
      : this(
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          serviceId: _json.containsKey('serviceId')
              ? _json['serviceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (region != null) 'region': region!,
        if (serviceId != null) 'serviceId': serviceId!,
      };
}

/// The intended behavior and status information of a domain.
class Domain {
  /// The domain name of the association.
  ///
  /// Required.
  core.String? domainName;

  /// If set, the domain should redirect with the provided parameters.
  DomainRedirect? domainRedirect;

  /// Information about the provisioning of certificates and the health of the
  /// DNS resolution for the domain.
  ///
  /// Output only.
  DomainProvisioning? provisioning;

  /// The site name of the association.
  ///
  /// Required.
  core.String? site;

  /// Additional status of the domain association.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DOMAIN_STATUS_UNSPECIFIED" : Unspecified domain association status.
  /// - "DOMAIN_CHANGE_PENDING" : An external operation is in progress on the
  /// domain association and no further operations can be performed until it is
  /// complete. Formerly used for metabase updates. Not currently used
  /// - "DOMAIN_ACTIVE" : The domain association is active and no additional
  /// action is required.
  /// - "DOMAIN_VERIFICATION_REQUIRED" : The domain was previously verified in
  /// the legacy system. User must reverify the domain through the ownership
  /// service.
  /// - "DOMAIN_VERIFICATION_LOST" : The domain verification has been lost and
  /// the domain is in the grace period before being removed from the Firebase
  /// Hosting site.
  core.String? status;

  /// The time at which the domain was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  Domain({
    this.domainName,
    this.domainRedirect,
    this.provisioning,
    this.site,
    this.status,
    this.updateTime,
  });

  Domain.fromJson(core.Map _json)
      : this(
          domainName: _json.containsKey('domainName')
              ? _json['domainName'] as core.String
              : null,
          domainRedirect: _json.containsKey('domainRedirect')
              ? DomainRedirect.fromJson(_json['domainRedirect']
                  as core.Map<core.String, core.dynamic>)
              : null,
          provisioning: _json.containsKey('provisioning')
              ? DomainProvisioning.fromJson(
                  _json['provisioning'] as core.Map<core.String, core.dynamic>)
              : null,
          site: _json.containsKey('site') ? _json['site'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (domainRedirect != null) 'domainRedirect': domainRedirect!,
        if (provisioning != null) 'provisioning': provisioning!,
        if (site != null) 'site': site!,
        if (status != null) 'status': status!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The current certificate provisioning status information for a domain.
class DomainProvisioning {
  /// The TXT records (for the certificate challenge) that were found at the
  /// last DNS fetch.
  core.List<core.String>? certChallengeDiscoveredTxt;

  /// The DNS challenge for generating a certificate.
  CertDnsChallenge? certChallengeDns;

  /// The HTTP challenge for generating a certificate.
  CertHttpChallenge? certChallengeHttp;

  /// The certificate provisioning status; updated when Firebase Hosting
  /// provisions an SSL certificate for the domain.
  /// Possible string values are:
  /// - "CERT_STATUS_UNSPECIFIED" : Unspecified certificate provisioning status.
  /// - "CERT_PENDING" : Waiting for certificate challenge to be created.
  /// - "CERT_MISSING" : Waiting for certificate challenge to be met.
  /// - "CERT_PROCESSING" : Certificate challenge met; attempting to
  /// acquire/propagate certificate.
  /// - "CERT_PROPAGATING" : Certificate obtained; propagating to the CDN.
  /// - "CERT_ACTIVE" : Certificate provisioned and deployed across the CDN.
  /// - "CERT_ERROR" : Certificate provisioning failed in a non-recoverable
  /// manner.
  core.String? certStatus;

  /// The IPs found at the last DNS fetch.
  core.List<core.String>? discoveredIps;

  /// The time at which the last DNS fetch occurred.
  core.String? dnsFetchTime;

  /// The DNS record match status as of the last DNS fetch.
  /// Possible string values are:
  /// - "DNS_STATUS_UNSPECIFIED" : Unspecified DNS status.
  /// - "DNS_PENDING" : No DNS records have been specified for this domain yet.
  /// - "DNS_MISSING" : None of the required DNS records have been detected on
  /// the domain.
  /// - "DNS_PARTIAL_MATCH" : Some of the required DNS records were detected,
  /// but not all of them. No extra (non-required) DNS records were detected.
  /// - "DNS_MATCH" : All required DNS records were detected. No extra
  /// (non-required) DNS records were detected.
  /// - "DNS_EXTRANEOUS_MATCH" : The domain has at least one of the required DNS
  /// records, and it has at least one extra (non-required) DNS record.
  core.String? dnsStatus;

  /// The list of IPs to which the domain is expected to resolve.
  core.List<core.String>? expectedIps;

  DomainProvisioning({
    this.certChallengeDiscoveredTxt,
    this.certChallengeDns,
    this.certChallengeHttp,
    this.certStatus,
    this.discoveredIps,
    this.dnsFetchTime,
    this.dnsStatus,
    this.expectedIps,
  });

  DomainProvisioning.fromJson(core.Map _json)
      : this(
          certChallengeDiscoveredTxt:
              _json.containsKey('certChallengeDiscoveredTxt')
                  ? (_json['certChallengeDiscoveredTxt'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          certChallengeDns: _json.containsKey('certChallengeDns')
              ? CertDnsChallenge.fromJson(_json['certChallengeDns']
                  as core.Map<core.String, core.dynamic>)
              : null,
          certChallengeHttp: _json.containsKey('certChallengeHttp')
              ? CertHttpChallenge.fromJson(_json['certChallengeHttp']
                  as core.Map<core.String, core.dynamic>)
              : null,
          certStatus: _json.containsKey('certStatus')
              ? _json['certStatus'] as core.String
              : null,
          discoveredIps: _json.containsKey('discoveredIps')
              ? (_json['discoveredIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          dnsFetchTime: _json.containsKey('dnsFetchTime')
              ? _json['dnsFetchTime'] as core.String
              : null,
          dnsStatus: _json.containsKey('dnsStatus')
              ? _json['dnsStatus'] as core.String
              : null,
          expectedIps: _json.containsKey('expectedIps')
              ? (_json['expectedIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certChallengeDiscoveredTxt != null)
          'certChallengeDiscoveredTxt': certChallengeDiscoveredTxt!,
        if (certChallengeDns != null) 'certChallengeDns': certChallengeDns!,
        if (certChallengeHttp != null) 'certChallengeHttp': certChallengeHttp!,
        if (certStatus != null) 'certStatus': certStatus!,
        if (discoveredIps != null) 'discoveredIps': discoveredIps!,
        if (dnsFetchTime != null) 'dnsFetchTime': dnsFetchTime!,
        if (dnsStatus != null) 'dnsStatus': dnsStatus!,
        if (expectedIps != null) 'expectedIps': expectedIps!,
      };
}

/// Defines the behavior of a domain-level redirect.
///
/// Domain redirects preserve the path of the redirect but replace the requested
/// domain with the one specified in the redirect configuration.
class DomainRedirect {
  /// The domain name to redirect to.
  ///
  /// Required.
  core.String? domainName;

  /// The redirect status code.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REDIRECT_TYPE_UNSPECIFIED" : The default redirect type; should not be
  /// intentionlly used.
  /// - "MOVED_PERMANENTLY" : The redirect will respond with an HTTP status code
  /// of `301 Moved Permanently`.
  core.String? type;

  DomainRedirect({
    this.domainName,
    this.type,
  });

  DomainRedirect.fromJson(core.Map _json)
      : this(
          domainName: _json.containsKey('domainName')
              ? _json['domainName'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domainName != null) 'domainName': domainName!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A \[`Header`\](https://firebase.google.com/docs/hosting/full-config#headers)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to apply the specified custom response headers.
class Header {
  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The additional headers to add to the response.
  ///
  /// Required.
  core.Map<core.String, core.String>? headers;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  Header({
    this.glob,
    this.headers,
    this.regex,
  });

  Header.fromJson(core.Map _json)
      : this(
          glob: _json.containsKey('glob') ? _json['glob'] as core.String : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          regex:
              _json.containsKey('regex') ? _json['regex'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glob != null) 'glob': glob!,
        if (headers != null) 'headers': headers!,
        if (regex != null) 'regex': regex!,
      };
}

/// If provided, i18n rewrites are enabled.
class I18nConfig {
  /// The user-supplied path where country and language specific content will be
  /// looked for within the public directory.
  ///
  /// Required.
  core.String? root;

  I18nConfig({
    this.root,
  });

  I18nConfig.fromJson(core.Map _json)
      : this(
          root: _json.containsKey('root') ? _json['root'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (root != null) 'root': root!,
      };
}

class ListChannelsResponse {
  /// The list of channels.
  core.List<Channel>? channels;

  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListChannels`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  ListChannelsResponse({
    this.channels,
    this.nextPageToken,
  });

  ListChannelsResponse.fromJson(core.Map _json)
      : this(
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map((value) => Channel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null) 'channels': channels!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response to listing Domains.
class ListDomainsResponse {
  /// The list of domains, if any exist.
  core.List<Domain>? domains;

  /// The pagination token, if more results exist.
  core.String? nextPageToken;

  ListDomainsResponse({
    this.domains,
    this.nextPageToken,
  });

  ListDomainsResponse.fromJson(core.Map _json)
      : this(
          domains: _json.containsKey('domains')
              ? (_json['domains'] as core.List)
                  .map((value) => Domain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domains != null) 'domains': domains!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListReleasesResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListReleases`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// The list of hashes of files that still need to be uploaded, if any exist.
  core.List<Release>? releases;

  ListReleasesResponse({
    this.nextPageToken,
    this.releases,
  });

  ListReleasesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          releases: _json.containsKey('releases')
              ? (_json['releases'] as core.List)
                  .map((value) => Release.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (releases != null) 'releases': releases!,
      };
}

class ListSitesResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListSites`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// A list of Site objects associated with the specified Firebase project.
  core.List<Site>? sites;

  ListSitesResponse({
    this.nextPageToken,
    this.sites,
  });

  ListSitesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sites: _json.containsKey('sites')
              ? (_json['sites'] as core.List)
                  .map((value) => Site.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sites != null) 'sites': sites!,
      };
}

class ListVersionFilesResponse {
  ///  The list of paths to the hashes of the files in the specified version.
  core.List<VersionFile>? files;

  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListVersionFiles`. Page tokens
  /// are short-lived and should not be stored.
  core.String? nextPageToken;

  ListVersionFilesResponse({
    this.files,
    this.nextPageToken,
  });

  ListVersionFilesResponse.fromJson(core.Map _json)
      : this(
          files: _json.containsKey('files')
              ? (_json['files'] as core.List)
                  .map((value) => VersionFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (files != null) 'files': files!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListVersionsResponse {
  /// The pagination token, if more results exist beyond the ones in this
  /// response.
  ///
  /// Include this token in your next call to `ListVersions`. Page tokens are
  /// short-lived and should not be stored.
  core.String? nextPageToken;

  /// The list of versions, if any exist.
  core.List<Version>? versions;

  ListVersionsResponse({
    this.nextPageToken,
    this.versions,
  });

  ListVersionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          versions: _json.containsKey('versions')
              ? (_json['versions'] as core.List)
                  .map((value) => Version.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (versions != null) 'versions': versions!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// A representation of filter path.
class PathFilter {
  /// An array of RegEx values by which to filter.
  core.List<core.String>? regexes;

  PathFilter({
    this.regexes,
  });

  PathFilter.fromJson(core.Map _json)
      : this(
          regexes: _json.containsKey('regexes')
              ? (_json['regexes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regexes != null) 'regexes': regexes!,
      };
}

class PopulateVersionFilesRequest {
  /// A set of file paths to the hashes corresponding to assets that should be
  /// added to the version.
  ///
  /// A file path to an empty hash will remove the path from the version.
  /// Calculate a hash by Gzipping the file then taking the SHA256 hash of the
  /// newly compressed file.
  core.Map<core.String, core.String>? files;

  PopulateVersionFilesRequest({
    this.files,
  });

  PopulateVersionFilesRequest.fromJson(core.Map _json)
      : this(
          files: _json.containsKey('files')
              ? (_json['files'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (files != null) 'files': files!,
      };
}

class PopulateVersionFilesResponse {
  /// The content hashes of the specified files that need to be uploaded to the
  /// specified URL.
  core.List<core.String>? uploadRequiredHashes;

  /// The URL to which the files should be uploaded, in the format:
  /// "https://upload-firebasehosting.googleapis.com/upload/sites/SITE_ID
  /// /versions/VERSION_ID/files" Perform a multipart `POST` of the Gzipped file
  /// contents to the URL using a forward slash and the hash of the file
  /// appended to the end.
  core.String? uploadUrl;

  PopulateVersionFilesResponse({
    this.uploadRequiredHashes,
    this.uploadUrl,
  });

  PopulateVersionFilesResponse.fromJson(core.Map _json)
      : this(
          uploadRequiredHashes: _json.containsKey('uploadRequiredHashes')
              ? (_json['uploadRequiredHashes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          uploadUrl: _json.containsKey('uploadUrl')
              ? _json['uploadUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uploadRequiredHashes != null)
          'uploadRequiredHashes': uploadRequiredHashes!,
        if (uploadUrl != null) 'uploadUrl': uploadUrl!,
      };
}

/// A
/// \[`Redirect`\](https://firebase.google.com/docs/hosting/full-config#redirects)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to respond with a redirect to the specified destination path.
class Redirect {
  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The value to put in the HTTP location header of the response.
  ///
  /// The location can contain capture group values from the pattern using a `:`
  /// prefix to identify the segment and an optional `*` to capture the rest of
  /// the URL. For example: "glob": "/:capture*", "statusCode": 301, "location":
  /// "https://example.com/foo/:capture"
  ///
  /// Required.
  core.String? location;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  /// The status HTTP code to return in the response.
  ///
  /// It must be a valid 3xx status code.
  ///
  /// Required.
  core.int? statusCode;

  Redirect({
    this.glob,
    this.location,
    this.regex,
    this.statusCode,
  });

  Redirect.fromJson(core.Map _json)
      : this(
          glob: _json.containsKey('glob') ? _json['glob'] as core.String : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          regex:
              _json.containsKey('regex') ? _json['regex'] as core.String : null,
          statusCode: _json.containsKey('statusCode')
              ? _json['statusCode'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (glob != null) 'glob': glob!,
        if (location != null) 'location': location!,
        if (regex != null) 'regex': regex!,
        if (statusCode != null) 'statusCode': statusCode!,
      };
}

/// A `Release` is a particular \[collection of configurations and
/// files\](sites.versions) that is set to be public at a particular time.
class Release {
  /// The deploy description when the release was created.
  ///
  /// The value can be up to 512 characters.
  core.String? message;

  /// The unique identifier for the release, in either of the following formats:
  /// - sites/SITE_ID/releases/RELEASE_ID -
  /// sites/SITE_ID/channels/CHANNEL_ID/releases/RELEASE_ID This name is
  /// provided in the response body when you call
  /// \[`releases.create`\](sites.releases/create) or
  /// \[`channels.releases.create`\](sites.channels.releases/create).
  ///
  /// Output only.
  core.String? name;

  /// The time at which the version is set to be public.
  ///
  /// Output only.
  core.String? releaseTime;

  /// Identifies the user who created the release.
  ///
  /// Output only.
  ActingUser? releaseUser;

  /// Explains the reason for the release.
  ///
  /// Specify a value for this field only when creating a `SITE_DISABLE` type
  /// release.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : An unspecified type. Indicates that a version was
  /// released. This is the default value when no other `type` is explicitly
  /// specified.
  /// - "DEPLOY" : A version was uploaded to Firebase Hosting and released.
  /// - "ROLLBACK" : The release points back to a previously deployed version.
  /// - "SITE_DISABLE" : The release prevents the site from serving content.
  /// Firebase Hosting acts as if the site never existed.
  core.String? type;

  /// The configuration and content that was released.
  ///
  /// Output only.
  Version? version;

  Release({
    this.message,
    this.name,
    this.releaseTime,
    this.releaseUser,
    this.type,
    this.version,
  });

  Release.fromJson(core.Map _json)
      : this(
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          releaseTime: _json.containsKey('releaseTime')
              ? _json['releaseTime'] as core.String
              : null,
          releaseUser: _json.containsKey('releaseUser')
              ? ActingUser.fromJson(
                  _json['releaseUser'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          version: _json.containsKey('version')
              ? Version.fromJson(
                  _json['version'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
        if (name != null) 'name': name!,
        if (releaseTime != null) 'releaseTime': releaseTime!,
        if (releaseUser != null) 'releaseUser': releaseUser!,
        if (type != null) 'type': type!,
        if (version != null) 'version': version!,
      };
}

/// A
/// \[`Rewrite`\](https://firebase.google.com/docs/hosting/full-config#rewrites)
/// specifies a URL pattern that, if matched to the request URL path, triggers
/// Hosting to respond as if the service were given the specified destination
/// URL.
class Rewrite {
  /// The request will be forwarded to Firebase Dynamic Links.
  core.bool? dynamicLinks;

  /// The function to proxy requests to.
  ///
  /// Must match the exported function name exactly.
  core.String? function;

  /// The user-supplied
  /// [glob](https://firebase.google.com/docs/hosting/full-config#glob_pattern_matching)
  /// to match against the request URL path.
  core.String? glob;

  /// The URL path to rewrite the request to.
  core.String? path;

  /// The user-supplied RE2 regular expression to match against the request URL
  /// path.
  core.String? regex;

  /// The request will be forwarded to Cloud Run.
  CloudRunRewrite? run;

  Rewrite({
    this.dynamicLinks,
    this.function,
    this.glob,
    this.path,
    this.regex,
    this.run,
  });

  Rewrite.fromJson(core.Map _json)
      : this(
          dynamicLinks: _json.containsKey('dynamicLinks')
              ? _json['dynamicLinks'] as core.bool
              : null,
          function: _json.containsKey('function')
              ? _json['function'] as core.String
              : null,
          glob: _json.containsKey('glob') ? _json['glob'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          regex:
              _json.containsKey('regex') ? _json['regex'] as core.String : null,
          run: _json.containsKey('run')
              ? CloudRunRewrite.fromJson(
                  _json['run'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dynamicLinks != null) 'dynamicLinks': dynamicLinks!,
        if (function != null) 'function': function!,
        if (glob != null) 'glob': glob!,
        if (path != null) 'path': path!,
        if (regex != null) 'regex': regex!,
        if (run != null) 'run': run!,
      };
}

/// The configuration for how incoming requests to a site should be routed and
/// processed before serving content.
///
/// The URL request paths are matched against the specified URL patterns in the
/// configuration, then Hosting applies the applicable configuration according
/// to a specific
/// [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).
class ServingConfig {
  /// How to handle well known App Association files.
  /// Possible string values are:
  /// - "AUTO" : The app association files will be automatically created from
  /// the apps that exist in the Firebase project.
  /// - "NONE" : No special handling of the app association files will occur,
  /// these paths will result in a 404 unless caught with a Rewrite.
  core.String? appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  core.bool? cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if
  /// matched to the request URL path, triggers Hosting to apply the specified
  /// custom response headers.
  core.List<Header>? headers;

  /// Defines i18n rewrite behavior.
  ///
  /// Optional.
  I18nConfig? i18n;

  /// An array of objects (called redirect rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond with a redirect to the specified destination path.
  core.List<Redirect>? redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a
  /// URL pattern that, if matched to the request URL path, triggers Hosting to
  /// respond as if the service were given the specified destination URL.
  core.List<Rewrite>? rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  /// Possible string values are:
  /// - "TRAILING_SLASH_BEHAVIOR_UNSPECIFIED" : No behavior is specified. Files
  /// are served at their exact location only, and trailing slashes are only
  /// added to directory indexes.
  /// - "ADD" : Trailing slashes are _added_ to directory indexes as well as to
  /// any URL path not ending in a file extension.
  /// - "REMOVE" : Trailing slashes are _removed_ from directory indexes as well
  /// as from any URL path not ending in a file extension.
  core.String? trailingSlashBehavior;

  ServingConfig({
    this.appAssociation,
    this.cleanUrls,
    this.headers,
    this.i18n,
    this.redirects,
    this.rewrites,
    this.trailingSlashBehavior,
  });

  ServingConfig.fromJson(core.Map _json)
      : this(
          appAssociation: _json.containsKey('appAssociation')
              ? _json['appAssociation'] as core.String
              : null,
          cleanUrls: _json.containsKey('cleanUrls')
              ? _json['cleanUrls'] as core.bool
              : null,
          headers: _json.containsKey('headers')
              ? (_json['headers'] as core.List)
                  .map((value) => Header.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          i18n: _json.containsKey('i18n')
              ? I18nConfig.fromJson(
                  _json['i18n'] as core.Map<core.String, core.dynamic>)
              : null,
          redirects: _json.containsKey('redirects')
              ? (_json['redirects'] as core.List)
                  .map((value) => Redirect.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rewrites: _json.containsKey('rewrites')
              ? (_json['rewrites'] as core.List)
                  .map((value) => Rewrite.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          trailingSlashBehavior: _json.containsKey('trailingSlashBehavior')
              ? _json['trailingSlashBehavior'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appAssociation != null) 'appAssociation': appAssociation!,
        if (cleanUrls != null) 'cleanUrls': cleanUrls!,
        if (headers != null) 'headers': headers!,
        if (i18n != null) 'i18n': i18n!,
        if (redirects != null) 'redirects': redirects!,
        if (rewrites != null) 'rewrites': rewrites!,
        if (trailingSlashBehavior != null)
          'trailingSlashBehavior': trailingSlashBehavior!,
      };
}

/// A `Site` represents a Firebase Hosting site.
class Site {
  /// The
  /// [ID of a Web App](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the Hosting site.
  ///
  /// Optional.
  core.String? appId;

  /// The default URL for the Hosting site.
  ///
  /// Output only.
  core.String? defaultUrl;

  /// User-specified labels for the Hosting site.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name of the Hosting site, in the format:
  /// projects/PROJECT_IDENTIFIER/sites/SITE_ID PROJECT_IDENTIFIER: the Firebase
  /// project's
  /// \[`ProjectNumber`\](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects#FirebaseProject.FIELDS.project_number)
  /// ***(recommended)*** or its
  /// \[`ProjectId`\](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects#FirebaseProject.FIELDS.project_id).
  ///
  /// Learn more about using project identifiers in Google's
  /// [AIP 2510 standard](https://google.aip.dev/cloud/2510).
  ///
  /// Output only.
  core.String? name;

  /// The type of Hosting site.
  ///
  /// Every Firebase project has a `DEFAULT_SITE`, which is created when Hosting
  /// is provisioned for the project. All additional sites are `USER_SITE`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown state, likely the result of an error on the
  /// backend.
  /// - "DEFAULT_SITE" : The default Hosting site that is provisioned when a
  /// Firebase project is created.
  /// - "USER_SITE" : A Hosting site that the user created.
  core.String? type;

  Site({
    this.appId,
    this.defaultUrl,
    this.labels,
    this.name,
    this.type,
  });

  Site.fromJson(core.Map _json)
      : this(
          appId:
              _json.containsKey('appId') ? _json['appId'] as core.String : null,
          defaultUrl: _json.containsKey('defaultUrl')
              ? _json['defaultUrl'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appId != null) 'appId': appId!,
        if (defaultUrl != null) 'defaultUrl': defaultUrl!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// A `SiteConfig` contains metadata associated with a specific site that
/// controls Firebase Hosting serving behavior
class SiteConfig {
  /// Whether or not web requests made by site visitors are logged via Cloud
  /// Logging.
  core.bool? cloudLoggingEnabled;

  /// The number of FINALIZED versions that will be held for a site before
  /// automatic deletion.
  ///
  /// When a new version is deployed, content for versions in storage in excess
  /// of this number will be deleted, and will no longer be billed for storage
  /// usage. Oldest versions will be deleted first; sites are created with an
  /// unlimited number of max_versions by default.
  core.String? maxVersions;

  SiteConfig({
    this.cloudLoggingEnabled,
    this.maxVersions,
  });

  SiteConfig.fromJson(core.Map _json)
      : this(
          cloudLoggingEnabled: _json.containsKey('cloudLoggingEnabled')
              ? _json['cloudLoggingEnabled'] as core.bool
              : null,
          maxVersions: _json.containsKey('maxVersions')
              ? _json['maxVersions'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudLoggingEnabled != null)
          'cloudLoggingEnabled': cloudLoggingEnabled!,
        if (maxVersions != null) 'maxVersions': maxVersions!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A `Version` is a configuration and a collection of static files which
/// determine how a site is displayed.
class Version {
  /// The configuration for the behavior of the site.
  ///
  /// This configuration exists in the
  /// \[`firebase.json`\](https://firebase.google.com/docs/cli/#the_firebasejson_file)
  /// file.
  ServingConfig? config;

  /// The time at which the version was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifies the user who created the version.
  ///
  /// Output only.
  ActingUser? createUser;

  /// The time at which the version was `DELETED`.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Identifies the user who `DELETED` the version.
  ///
  /// Output only.
  ActingUser? deleteUser;

  /// The total number of files associated with the version.
  ///
  /// This value is calculated after a version is `FINALIZED`.
  ///
  /// Output only.
  core.String? fileCount;

  /// The time at which the version was `FINALIZED`.
  ///
  /// Output only.
  core.String? finalizeTime;

  /// Identifies the user who `FINALIZED` the version.
  ///
  /// Output only.
  ActingUser? finalizeUser;

  /// The labels used for extra metadata and/or filtering.
  core.Map<core.String, core.String>? labels;

  /// The fully-qualified resource name for the version, in the format: sites/
  /// SITE_ID/versions/VERSION_ID This name is provided in the response body
  /// when you call \[`CreateVersion`\](sites.versions/create).
  core.String? name;

  /// The deploy status of the version.
  ///
  /// For a successful deploy, call \[`CreateVersion`\](sites.versions/create)
  /// to make a new version (`CREATED` status), \[upload all desired
  /// files\](sites.versions/populateFiles) to the version, then
  /// \[update\](sites.versions/patch) the version to the `FINALIZED` status.
  /// Note that if you leave the version in the `CREATED` state for more than 12
  /// hours, the system will automatically mark the version as `ABANDONED`. You
  /// can also change the status of a version to `DELETED` by calling
  /// \[`DeleteVersion`\](sites.versions/delete).
  /// Possible string values are:
  /// - "VERSION_STATUS_UNSPECIFIED" : The default status; should not be
  /// intentionally used.
  /// - "CREATED" : The version has been created, and content is currently being
  /// added to the version.
  /// - "FINALIZED" : All content has been added to the version, and the version
  /// can no longer be changed.
  /// - "DELETED" : The version has been deleted.
  /// - "ABANDONED" : The version was not updated to `FINALIZED` within 12 hours
  /// and was automatically deleted.
  /// - "EXPIRED" : The version is outside the site-configured limit for the
  /// number of retained versions, so the version's content is scheduled for
  /// deletion.
  /// - "CLONING" : The version is being cloned from another version. All
  /// content is still being copied over.
  core.String? status;

  /// The total stored bytesize of the version.
  ///
  /// This value is calculated after a version is `FINALIZED`.
  ///
  /// Output only.
  core.String? versionBytes;

  Version({
    this.config,
    this.createTime,
    this.createUser,
    this.deleteTime,
    this.deleteUser,
    this.fileCount,
    this.finalizeTime,
    this.finalizeUser,
    this.labels,
    this.name,
    this.status,
    this.versionBytes,
  });

  Version.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? ServingConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          createUser: _json.containsKey('createUser')
              ? ActingUser.fromJson(
                  _json['createUser'] as core.Map<core.String, core.dynamic>)
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          deleteUser: _json.containsKey('deleteUser')
              ? ActingUser.fromJson(
                  _json['deleteUser'] as core.Map<core.String, core.dynamic>)
              : null,
          fileCount: _json.containsKey('fileCount')
              ? _json['fileCount'] as core.String
              : null,
          finalizeTime: _json.containsKey('finalizeTime')
              ? _json['finalizeTime'] as core.String
              : null,
          finalizeUser: _json.containsKey('finalizeUser')
              ? ActingUser.fromJson(
                  _json['finalizeUser'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          versionBytes: _json.containsKey('versionBytes')
              ? _json['versionBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (createUser != null) 'createUser': createUser!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (deleteUser != null) 'deleteUser': deleteUser!,
        if (fileCount != null) 'fileCount': fileCount!,
        if (finalizeTime != null) 'finalizeTime': finalizeTime!,
        if (finalizeUser != null) 'finalizeUser': finalizeUser!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (status != null) 'status': status!,
        if (versionBytes != null) 'versionBytes': versionBytes!,
      };
}

/// A static content file that is part of a version.
class VersionFile {
  /// The SHA256 content hash of the file.
  core.String? hash;

  /// The URI at which the file's content should display.
  core.String? path;

  /// The current status of a particular file in the specified version.
  ///
  /// The value will be either `pending upload` or `uploaded`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : The default status; should not be intentionally
  /// used.
  /// - "EXPECTED" : The file has been included in the version and is expected
  /// to be uploaded in the near future.
  /// - "ACTIVE" : The file has already been uploaded to Firebase Hosting.
  core.String? status;

  VersionFile({
    this.hash,
    this.path,
    this.status,
  });

  VersionFile.fromJson(core.Map _json)
      : this(
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hash != null) 'hash': hash!,
        if (path != null) 'path': path!,
        if (status != null) 'status': status!,
      };
}
