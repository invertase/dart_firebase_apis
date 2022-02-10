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

/// Firebase Extensions API - v1beta
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseextensionsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsInstancesResource]
///   - [ProjectsOperationsResource]
///   - [ProjectsPublisherProfileResource]
///   - [ProjectsSourcesResource]
/// - [PublishersResource]
///   - [PublishersExtensionsResource]
///     - [PublishersExtensionsVersionsResource]
library firebaseextensions.v1beta;

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

class FirebaseextensionsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  PublishersResource get publishers => PublishersResource(_requester);

  FirebaseextensionsApi(http.Client client,
      {core.String rootUrl = 'https://firebaseextensions.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesResource get instances =>
      ProjectsInstancesResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);
  ProjectsPublisherProfileResource get publisherProfile =>
      ProjectsPublisherProfileResource(_requester);
  ProjectsSourcesResource get sources => ProjectsSourcesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets a PublisherProfile for a Project.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PublisherProfile. e.g.
  /// `projects/23427309/publisherProfile` or
  /// `projects/project-id/publisherProfile`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [publisherId] - Pass “-” for project ID with this query param, to lookup
  /// publisher project using the publisher ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaPublisherProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaPublisherProfile>
      getPublisherProfile(
    core.String name, {
    core.String? publisherId,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (publisherId != null) 'publisherId': [publisherId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + '/publisherProfile';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaPublisherProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Extension Instance in a Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which we are creating a Extension
  /// Instance. e.g. `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [instanceId] - The ID to use for the Extension Instance, which will become
  /// the final component of the instance's name.
  ///
  /// [validateOnly] - Optional. If true, the request will just be valdated, not
  /// executed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleFirebaseExtensionsV1betaExtensionInstance request,
    core.String parent, {
    core.String? instanceId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (instanceId != null) 'instanceId': [instanceId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Extension Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension Instance to delete. e.g.
  /// `projects/{project_id}/instances/{instance_id}`
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a Extension Instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension Instance to fetch. e.g.
  /// `projects/{project_id}/instances/{instance_id}`
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtensionInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtensionInstance> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Extension Instances in a Project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which we are listing Extension
  /// Instances.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - The number of results to return. Defaults to 50.
  ///
  /// [pageToken] - Pagination token from a previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse>
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse
        .fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Extension Instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension Instance to update. e.g.
  /// `projects/{project_id}/instances/{instance_id}`
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [updateMask] - A set of field names to update in the Extension Instance. A
  /// value will only be updated if and only if it is included in the update
  /// mask.
  ///
  /// [validateOnly] - Optional. If true, the request will just be valdated, not
  /// executed.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleFirebaseExtensionsV1betaExtensionInstance request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets an Operation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the long running Operation. e.g.
  /// `projects/{project_id}/operations/{operation_id}`
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsPublisherProfileResource {
  final commons.ApiRequester _requester;

  ProjectsPublisherProfileResource(commons.ApiRequester client)
      : _requester = client;

  /// Register a PublisherProfile for a Project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project for which we are registering a
  /// PublisherProfile. e.g. `projects/23427309` or `projects/project-id`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaPublisherProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaPublisherProfile> register(
    GoogleFirebaseExtensionsV1betaPublisherProfile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' +
        core.Uri.encodeFull('$parent') +
        '/publisherProfile:register';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaPublisherProfile.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsSourcesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Extension Source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which we are creating a Extension
  /// Source.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleFirebaseExtensionsV1betaExtensionSource request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/sources';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a Extension Source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The identifier of the Extension Source to return. e.g.
  /// `projects/{project_id}/sources/{source_id}`
  /// Value must have pattern `^projects/\[^/\]+/sources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtensionSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtensionSource> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtensionSource.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class PublishersResource {
  final commons.ApiRequester _requester;

  PublishersExtensionsResource get extensions =>
      PublishersExtensionsResource(_requester);

  PublishersResource(commons.ApiRequester client) : _requester = client;
}

class PublishersExtensionsResource {
  final commons.ApiRequester _requester;

  PublishersExtensionsVersionsResource get versions =>
      PublishersExtensionsVersionsResource(_requester);

  PublishersExtensionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets up to 1K extensions in a batch.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent resource shared by all extensions being retrieved.
  /// Format: publishers/{publisher} If this is set, the parent of all of the
  /// extensions specified in `names` must match this field.
  /// Value must have pattern `^publishers/\[^/\]+$`.
  ///
  /// [names] - Required. The names of the extensions to retrieve. A maximum of
  /// 1000 extensions can be retrieved in a batch. Format:
  /// publishers/{publisher}/extensions/{extension}
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse>
      batchGet(
    core.String parent, {
    core.List<core.String>? names,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (names != null) 'names': names,
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/extensions:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an Extension.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension we want to delete. e.g.
  /// `publishers/publisher-id/extensions/extension-id`
  /// Value must have pattern `^publishers/\[^/\]+/extensions/\[^/\]+$`.
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an Extension.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension. e.g.
  /// `publishers/publisher-id/extensions/extension-id`
  /// Value must have pattern `^publishers/\[^/\]+/extensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtension].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtension> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtension.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all Extensions for a Publisher.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Publisher which we are listing Extensions for.
  /// e.g. `publishers/publisher-id`.
  /// Value must have pattern `^publishers/\[^/\]+$`.
  ///
  /// [pageSize] - The number of results to return. Defaults to 50.
  ///
  /// [pageToken] - Pagination token from a previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaListExtensionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaListExtensionsResponse> list(
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/extensions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaListExtensionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unpublishes an Extension.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Extension we want to unpublish. e.g.
  /// `publishers/publisher-id/extensions/extension-id`
  /// Value must have pattern `^publishers/\[^/\]+/extensions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> unpublish(
    GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':unpublish';

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

class PublishersExtensionsVersionsResource {
  final commons.ApiRequester _requester;

  PublishersExtensionsVersionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes an ExtensionVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExtensionVersion we want to delete.
  /// e.g. `publishers/publisher-id/extensions/extension-id/versions/1.2.3`
  /// Value must have pattern
  /// `^publishers/\[^/\]+/extensions/\[^/\]+/versions/\[^/\]+$`.
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deprecates an ExtensionVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExtensionVersion we want to deprecate.
  /// e.g. `publishers/publisher-id/extensions/extension-id/versions/1.2.3`
  /// Value must have pattern
  /// `^publishers/\[^/\]+/extensions/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtensionVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtensionVersion> deprecate(
    GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':deprecate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an ExtensionVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExtensionVersion. e.g.
  /// `publishers/publisher-id/extensions/extension-id/versions/1.2.3` or
  /// `publishers/publisher-id/extensions/extension-id/versions/latest`
  /// Value must have pattern
  /// `^publishers/\[^/\]+/extensions/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtensionVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtensionVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all ExtensionVersions for an Extension.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the Extenson that we are listing
  /// ExtensionVersions for for. e.g.
  /// `publishers/publisher_id/extensions/extension_id`
  /// Value must have pattern `^publishers/\[^/\]+/extensions/\[^/\]+$`.
  ///
  /// [filter] - Filter which versions of this extension are returned, per
  /// https://google.aip.dev/160. Uses EBNF grammar
  /// https://google.aip.dev/assets/misc/ebnf-filtering.txt.
  ///
  /// [pageSize] - The number of results to return. Defaults to 50.
  ///
  /// [pageToken] - Pagination token from a previous request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse>
      list(
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

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Publishes an ExtensionVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Publisher and Extension for the ExtensionVersion.
  /// e.g. `publishers/publisher-id/extensions/extension-id`
  /// Value must have pattern `^publishers/\[^/\]+/extensions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> publish(
    GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta/' + core.Uri.encodeFull('$parent') + '/versions:publish';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Un-deprecates an ExtensionVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExtensionVersion we want to
  /// un-deprecate. e.g.
  /// `publishers/publisher-id/extensions/extension-id/versions/1.2.3`
  /// Value must have pattern
  /// `^publishers/\[^/\]+/extensions/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirebaseExtensionsV1betaExtensionVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirebaseExtensionsV1betaExtensionVersion> undeprecate(
    GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':undeprecate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Unpublishes an ExtensionVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExtensionVersion we want to unpublish.
  /// e.g. `publishers/publisher-id/extensions/extension-id/versions/1.2.3`
  /// Value must have pattern
  /// `^publishers/\[^/\]+/extensions/\[^/\]+/versions/\[^/\]+$`.
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
  async.Future<GoogleProtobufEmpty> unpublish(
    GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':unpublish';

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

/// Representation of a Google API that is used by this Extension.
class GoogleFirebaseExtensionsV1betaApi {
  /// Name of API.
  ///
  /// Required.
  core.String? apiName;

  /// Reason the API needs to be enabled.
  ///
  /// Optional.
  core.String? reason;

  GoogleFirebaseExtensionsV1betaApi({
    this.apiName,
    this.reason,
  });

  GoogleFirebaseExtensionsV1betaApi.fromJson(core.Map _json)
      : this(
          apiName: _json.containsKey('apiName')
              ? _json['apiName'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiName != null) 'apiName': apiName!,
        if (reason != null) 'reason': reason!,
      };
}

/// Representation of contact information associated with a human being or
/// organization.
///
/// Used to represent the author or creator of the Extension.
class GoogleFirebaseExtensionsV1betaAuthor {
  /// Name of the author.
  ///
  /// Required.
  core.String? authorName;

  /// Public email of the author.
  ///
  /// Optional.
  core.String? email;

  /// URL for GitHub, Twitter, or website associated with the author.
  ///
  /// Optional.
  core.String? url;

  GoogleFirebaseExtensionsV1betaAuthor({
    this.authorName,
    this.email,
    this.url,
  });

  GoogleFirebaseExtensionsV1betaAuthor.fromJson(core.Map _json)
      : this(
          authorName: _json.containsKey('authorName')
              ? _json['authorName'] as core.String
              : null,
          email:
              _json.containsKey('email') ? _json['email'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorName != null) 'authorName': authorName!,
        if (email != null) 'email': email!,
        if (url != null) 'url': url!,
      };
}

/// Response object for BatchGetExtensions.
class GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse {
  /// Extensions requested.
  core.List<GoogleFirebaseExtensionsV1betaExtension>? extensions;

  GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse({
    this.extensions,
  });

  GoogleFirebaseExtensionsV1betaBatchGetExtensionsResponse.fromJson(
      core.Map _json)
      : this(
          extensions: _json.containsKey('extensions')
              ? (_json['extensions'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExtension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensions != null) 'extensions': extensions!,
      };
}

/// Used to deprecate an ExtensionVersion.
class GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest {
  /// Deprecation message.
  ///
  /// This will appear alongside any warnings to update.
  core.String? deprecationMessage;

  GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest({
    this.deprecationMessage,
  });

  GoogleFirebaseExtensionsV1betaDeprecateExtensionVersionRequest.fromJson(
      core.Map _json)
      : this(
          deprecationMessage: _json.containsKey('deprecationMessage')
              ? _json['deprecationMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecationMessage != null)
          'deprecationMessage': deprecationMessage!,
      };
}

/// An `Extension` is a published extension, for sharing with other users.
class GoogleFirebaseExtensionsV1betaExtension {
  /// Creation time.
  ///
  /// Output only.
  core.String? createTime;

  /// Deletion time.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Uri of the extension’s icon.
  ///
  /// e.g. a g-static or Cloud Storage URL
  ///
  /// Output only.
  core.String? iconUri;

  /// ID of the latest ExtensionVersion that corresponds to this Extension,
  /// according to semver versioning (e.g. 0.3.3).
  ///
  /// Output only.
  core.String? latestVersion;

  /// Time of when the latest ExtensionVersion was created.
  ///
  /// Output only.
  core.String? latestVersionCreateTime;

  /// Fully qualified name of Extension (e.g.
  /// publishers/publisher-id/extensions/awesome-extension)
  ///
  /// Output only.
  core.String? name;

  /// Publisher detail about the extension author.
  GoogleFirebaseExtensionsV1betaPublisherSummary? publisher;

  /// User-friendly identifier for the Extension (e.g.
  /// publisher-id/awesome-extension)
  ///
  /// Output only.
  core.String? ref;

  /// Launch stage of the extension.
  ///
  /// Used to control badges displayed on extensions to end user.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REGISTRY_LAUNCH_STAGE_UNSPECIFIED" : Default state. Generally not used.
  /// - "EXPERIMENTAL" : Can be installed by consumers. User displayed warning
  /// shown that this is not officially supported.
  /// - "BETA" : Can be installed by consumers. No warnings displayed, but no
  /// deprecation policy.
  /// - "GA" : Can be installed by consumers. No warnings displayed, but
  /// includes deprecation policy.
  /// - "DEPRECATED" : Can be installed by consumers. User displayed warning
  /// that there will no longer be future updates.
  core.String? registryLaunchStage;

  /// State of the extension.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state. Generally not used.
  /// - "PUBLISHED" : Can be installed by consumers.
  core.String? state;

  /// Visibility of the extension on public directories.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VISIBILITY_UNSPECIFIED" : Default state. Generally not used.
  /// - "UNLISTED" : Not visible in search/list APIs. Extension is installable
  /// via direct link only.
  /// - "PUBLIC" : Discoverable in search/list APIs.
  core.String? visibility;

  GoogleFirebaseExtensionsV1betaExtension({
    this.createTime,
    this.deleteTime,
    this.iconUri,
    this.latestVersion,
    this.latestVersionCreateTime,
    this.name,
    this.publisher,
    this.ref,
    this.registryLaunchStage,
    this.state,
    this.visibility,
  });

  GoogleFirebaseExtensionsV1betaExtension.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          iconUri: _json.containsKey('iconUri')
              ? _json['iconUri'] as core.String
              : null,
          latestVersion: _json.containsKey('latestVersion')
              ? _json['latestVersion'] as core.String
              : null,
          latestVersionCreateTime: _json.containsKey('latestVersionCreateTime')
              ? _json['latestVersionCreateTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          publisher: _json.containsKey('publisher')
              ? GoogleFirebaseExtensionsV1betaPublisherSummary.fromJson(
                  _json['publisher'] as core.Map<core.String, core.dynamic>)
              : null,
          ref: _json.containsKey('ref') ? _json['ref'] as core.String : null,
          registryLaunchStage: _json.containsKey('registryLaunchStage')
              ? _json['registryLaunchStage'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          visibility: _json.containsKey('visibility')
              ? _json['visibility'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (iconUri != null) 'iconUri': iconUri!,
        if (latestVersion != null) 'latestVersion': latestVersion!,
        if (latestVersionCreateTime != null)
          'latestVersionCreateTime': latestVersionCreateTime!,
        if (name != null) 'name': name!,
        if (publisher != null) 'publisher': publisher!,
        if (ref != null) 'ref': ref!,
        if (registryLaunchStage != null)
          'registryLaunchStage': registryLaunchStage!,
        if (state != null) 'state': state!,
        if (visibility != null) 'visibility': visibility!,
      };
}

/// An `ExtensionInstance` is an installation of an Extension into a user's
/// project.
class GoogleFirebaseExtensionsV1betaExtensionInstance {
  /// The current Config of the Extension Instance.
  ///
  /// Required.
  GoogleFirebaseExtensionsV1betaExtensionInstanceConfig? config;

  /// The time at which the Extension Instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// If this Instance has `state: ERRORED`, the error messages will be found
  /// here.
  ///
  /// Output only.
  GoogleRpcStatus? errorStatus;

  /// The name of the last operation that acted on this Extension Instance.
  ///
  /// e.g. `operations/{operation_id}`
  ///
  /// Output only.
  core.String? lastOperationName;

  /// The type of the last operation that acted on the Extension Instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INSTANCE_OPERATION_TYPE_UNSPECIFIED"
  /// - "CREATE" : Creating an Extension Instance.
  /// - "UPDATE" : Updating an Extension Instance.
  /// - "CONFIGURE" : Configuring an Extension Instance.
  /// - "DELETE" : Deleting an Extension Instance.
  core.String? lastOperationType;

  /// The name of the Extension Instance.
  ///
  /// e.g. `projects/{project_id}/instances/{instance_id}`
  ///
  /// Output only.
  core.String? name;

  /// The email of the service account to be used at runtime by compute
  /// resources created for the operation of the Extension instance.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// The current state of the Extension Instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default state. Generally not used for long.
  /// - "DEPLOYING" : The Extension Instance is waiting on an Operation to
  /// complete. Could resolve to `ACTIVE`, `PAUSED`, `ERRORED`.
  /// - "UNINSTALLING" : The Extension Instance is being removed from the
  /// project. Could resolve to `ERRORED`, but more likely the instance will
  /// soon cease to exist.
  /// - "ACTIVE" : The Extension Instance is installed and ready.
  /// - "ERRORED" : The Extension Instance encountered an error while
  /// `DEPLOYING` or `UNINSTALLING`.
  /// - "PAUSED" : The Extension's resources have been removed from the project,
  /// but the Config remains so the Instance can be restored.
  core.String? state;

  /// The time at which the Extension Instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleFirebaseExtensionsV1betaExtensionInstance({
    this.config,
    this.createTime,
    this.errorStatus,
    this.lastOperationName,
    this.lastOperationType,
    this.name,
    this.serviceAccountEmail,
    this.state,
    this.updateTime,
  });

  GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? GoogleFirebaseExtensionsV1betaExtensionInstanceConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          errorStatus: _json.containsKey('errorStatus')
              ? GoogleRpcStatus.fromJson(
                  _json['errorStatus'] as core.Map<core.String, core.dynamic>)
              : null,
          lastOperationName: _json.containsKey('lastOperationName')
              ? _json['lastOperationName'] as core.String
              : null,
          lastOperationType: _json.containsKey('lastOperationType')
              ? _json['lastOperationType'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (errorStatus != null) 'errorStatus': errorStatus!,
        if (lastOperationName != null) 'lastOperationName': lastOperationName!,
        if (lastOperationType != null) 'lastOperationType': lastOperationType!,
        if (name != null) 'name': name!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A configuration of an Extension Instance.
///
/// This is used by an Extension Instance to specify the ExtensionSource and
/// environment configuration at a given time.
class GoogleFirebaseExtensionsV1betaExtensionInstanceConfig {
  /// The time at which the Extension Instance Config was created.
  ///
  /// Output only.
  core.String? createTime;

  /// If this extension is installed from the Registry, the ref of the
  /// Extension.
  ///
  /// (e.g. publisher-id/awesome-extension) Either extension_ref or source.name
  /// must be provided when creating an extension instance.
  ///
  /// Optional.
  core.String? extensionRef;

  /// If this extension is installed from the Registry, the ID of the version.
  ///
  /// (e.g. 1.0.3). If left blank, latest is assumed.
  ///
  /// Optional.
  core.String? extensionVersion;

  /// The unique identifier for this configuration.
  ///
  /// e.g. `projects/{project_id}/instances/{instance_id}/configs/{config_id}`
  ///
  /// Output only.
  core.String? name;

  /// The value of configuration parameters from the ExtensionSpec (see
  /// `source.spec`).
  ///
  /// Required.
  core.Map<core.String, core.String>? params;

  /// Postinstall instructions to be shown for this Extension, with template
  /// strings representing function and parameter values substituted with actual
  /// values.
  ///
  /// These strings include: ${param:FOO}, ${function:myFunc.url},
  /// ${function:myFunc.name}, and ${function:myFunc.location}
  ///
  /// Output only.
  core.String? populatedPostinstallContent;

  /// The ExtensionSource used to install this Extension Instance.
  ///
  /// Optional.
  GoogleFirebaseExtensionsV1betaExtensionSource? source;

  GoogleFirebaseExtensionsV1betaExtensionInstanceConfig({
    this.createTime,
    this.extensionRef,
    this.extensionVersion,
    this.name,
    this.params,
    this.populatedPostinstallContent,
    this.source,
  });

  GoogleFirebaseExtensionsV1betaExtensionInstanceConfig.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          extensionRef: _json.containsKey('extensionRef')
              ? _json['extensionRef'] as core.String
              : null,
          extensionVersion: _json.containsKey('extensionVersion')
              ? _json['extensionVersion'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          params: _json.containsKey('params')
              ? (_json['params'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          populatedPostinstallContent:
              _json.containsKey('populatedPostinstallContent')
                  ? _json['populatedPostinstallContent'] as core.String
                  : null,
          source: _json.containsKey('source')
              ? GoogleFirebaseExtensionsV1betaExtensionSource.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (extensionRef != null) 'extensionRef': extensionRef!,
        if (extensionVersion != null) 'extensionVersion': extensionVersion!,
        if (name != null) 'name': name!,
        if (params != null) 'params': params!,
        if (populatedPostinstallContent != null)
          'populatedPostinstallContent': populatedPostinstallContent!,
        if (source != null) 'source': source!,
      };
}

/// The source of the Extension Instance.
class GoogleFirebaseExtensionsV1betaExtensionSource {
  /// The directory location of extension.yaml in the archived package.
  ///
  /// If none is specified, than the package root is assumed ("/").
  core.String? extensionRoot;

  /// The time at which the ExtensionSource was initially fetched.
  ///
  /// Output only.
  core.String? fetchTime;

  /// SHA256 hash of the archive (`package_uri`) at processing time.
  ///
  /// Output only.
  core.String? hash;

  /// The name of the last operation that acted on this ExtensionSource.
  ///
  /// e.g. `operations/{operation_id}`
  ///
  /// Output only.
  core.String? lastOperationName;

  /// The unique identifier for this source.
  ///
  /// e.g. `projects/{project_id}/sources/{source_id}`
  ///
  /// Output only.
  core.String? name;

  /// A URI of a zip or tar archive of an Extension package.
  ///
  /// e.g. `https://example.com/path/to/archive.zip` This is used to create the
  /// ExtensionSource, and is not guaranteed to still exist after the
  /// ExtensionSource has been created.
  ///
  /// Required.
  core.String? packageUri;

  /// The specification for this Extension.
  ///
  /// Output only.
  GoogleFirebaseExtensionsV1betaExtensionSpec? spec;

  /// The current state of the Extension Source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default state. Not used typically.
  /// - "ACTIVE" : Source still exists.
  /// - "DELETED" : Source was deleted.
  core.String? state;

  GoogleFirebaseExtensionsV1betaExtensionSource({
    this.extensionRoot,
    this.fetchTime,
    this.hash,
    this.lastOperationName,
    this.name,
    this.packageUri,
    this.spec,
    this.state,
  });

  GoogleFirebaseExtensionsV1betaExtensionSource.fromJson(core.Map _json)
      : this(
          extensionRoot: _json.containsKey('extensionRoot')
              ? _json['extensionRoot'] as core.String
              : null,
          fetchTime: _json.containsKey('fetchTime')
              ? _json['fetchTime'] as core.String
              : null,
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          lastOperationName: _json.containsKey('lastOperationName')
              ? _json['lastOperationName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          packageUri: _json.containsKey('packageUri')
              ? _json['packageUri'] as core.String
              : null,
          spec: _json.containsKey('spec')
              ? GoogleFirebaseExtensionsV1betaExtensionSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensionRoot != null) 'extensionRoot': extensionRoot!,
        if (fetchTime != null) 'fetchTime': fetchTime!,
        if (hash != null) 'hash': hash!,
        if (lastOperationName != null) 'lastOperationName': lastOperationName!,
        if (name != null) 'name': name!,
        if (packageUri != null) 'packageUri': packageUri!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
      };
}

/// The specification of an Extension.
class GoogleFirebaseExtensionsV1betaExtensionSpec {
  /// List of Google APIs that will be enabled on a project as part of the
  /// install process of this Extension.
  ///
  /// Optional.
  core.List<GoogleFirebaseExtensionsV1betaApi>? apis;

  /// Primary author of the Extension and point of contact for Extension
  /// information.
  ///
  /// Optional.
  GoogleFirebaseExtensionsV1betaAuthor? author;

  /// Indicator if an associated billing account is needed to use this
  /// Extension.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? billingRequired;

  /// Multiple authors of the Extension.
  ///
  /// Used to give credit to other contributors to the Extension beyond the
  /// author.
  ///
  /// Optional.
  core.List<GoogleFirebaseExtensionsV1betaAuthor>? contributors;

  /// Description of the Extension.
  ///
  /// Optional.
  core.String? description;

  /// Human-readable name of the Extension (e.g. "Image Resizer").
  ///
  /// Optional.
  core.String? displayName;
  core.List<GoogleFirebaseExtensionsV1betaExternalService>? externalServices;

  /// License information for the Extension.
  ///
  /// Should follow SPDX format. See: https://spdx.org/licenses/
  ///
  /// Optional.
  core.String? license;

  /// Name of the Extension.
  ///
  /// This is an identifier the publisher chooses when publishing this extension
  /// onto the registry, and is part of the extension ref. (e.g.
  /// "storage_resize_images")
  ///
  /// Required.
  core.String? name;

  /// List of environment variables that may be configured for the Extension.
  ///
  /// Optional.
  core.List<GoogleFirebaseExtensionsV1betaExtensionSpecParameter>? params;

  /// Any postinstall instructions to be shown for this Extension.
  ///
  /// Output only.
  core.String? postinstallContent;

  /// Any preinstall instructions to be shown for this Extension.
  ///
  /// Output only.
  core.String? preinstallContent;

  /// Any README content to be shown for this Extension.
  ///
  /// Output only.
  core.String? readmeContent;

  /// URL of where the release notes can be found.
  ///
  /// Optional.
  core.String? releaseNotesUrl;

  /// List of Resources that will be created in installation.
  ///
  /// Required.
  core.List<GoogleFirebaseExtensionsV1betaResource>? resources;

  /// List of IAM roles that define the access the Extension will have in the
  /// project.
  ///
  /// Optional.
  core.List<GoogleFirebaseExtensionsV1betaRole>? roles;

  /// URL where the source code of the Extension can be found.
  ///
  /// Optional.
  core.String? sourceUrl;

  /// Version of the Extension Specification used.
  ///
  /// Required.
  core.String? specVersion;

  /// Version of the Extension.
  ///
  /// Required.
  core.String? version;

  GoogleFirebaseExtensionsV1betaExtensionSpec({
    this.apis,
    this.author,
    this.billingRequired,
    this.contributors,
    this.description,
    this.displayName,
    this.externalServices,
    this.license,
    this.name,
    this.params,
    this.postinstallContent,
    this.preinstallContent,
    this.readmeContent,
    this.releaseNotesUrl,
    this.resources,
    this.roles,
    this.sourceUrl,
    this.specVersion,
    this.version,
  });

  GoogleFirebaseExtensionsV1betaExtensionSpec.fromJson(core.Map _json)
      : this(
          apis: _json.containsKey('apis')
              ? (_json['apis'] as core.List)
                  .map((value) => GoogleFirebaseExtensionsV1betaApi.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          author: _json.containsKey('author')
              ? GoogleFirebaseExtensionsV1betaAuthor.fromJson(
                  _json['author'] as core.Map<core.String, core.dynamic>)
              : null,
          billingRequired: _json.containsKey('billingRequired')
              ? _json['billingRequired'] as core.bool
              : null,
          contributors: _json.containsKey('contributors')
              ? (_json['contributors'] as core.List)
                  .map((value) => GoogleFirebaseExtensionsV1betaAuthor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          externalServices: _json.containsKey('externalServices')
              ? (_json['externalServices'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExternalService.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          license: _json.containsKey('license')
              ? _json['license'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          params: _json.containsKey('params')
              ? (_json['params'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExtensionSpecParameter
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          postinstallContent: _json.containsKey('postinstallContent')
              ? _json['postinstallContent'] as core.String
              : null,
          preinstallContent: _json.containsKey('preinstallContent')
              ? _json['preinstallContent'] as core.String
              : null,
          readmeContent: _json.containsKey('readmeContent')
              ? _json['readmeContent'] as core.String
              : null,
          releaseNotesUrl: _json.containsKey('releaseNotesUrl')
              ? _json['releaseNotesUrl'] as core.String
              : null,
          resources: _json.containsKey('resources')
              ? (_json['resources'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaResource.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => GoogleFirebaseExtensionsV1betaRole.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceUrl: _json.containsKey('sourceUrl')
              ? _json['sourceUrl'] as core.String
              : null,
          specVersion: _json.containsKey('specVersion')
              ? _json['specVersion'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apis != null) 'apis': apis!,
        if (author != null) 'author': author!,
        if (billingRequired != null) 'billingRequired': billingRequired!,
        if (contributors != null) 'contributors': contributors!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (externalServices != null) 'externalServices': externalServices!,
        if (license != null) 'license': license!,
        if (name != null) 'name': name!,
        if (params != null) 'params': params!,
        if (postinstallContent != null)
          'postinstallContent': postinstallContent!,
        if (preinstallContent != null) 'preinstallContent': preinstallContent!,
        if (readmeContent != null) 'readmeContent': readmeContent!,
        if (releaseNotesUrl != null) 'releaseNotesUrl': releaseNotesUrl!,
        if (resources != null) 'resources': resources!,
        if (roles != null) 'roles': roles!,
        if (sourceUrl != null) 'sourceUrl': sourceUrl!,
        if (specVersion != null) 'specVersion': specVersion!,
        if (version != null) 'version': version!,
      };
}

/// Representation of a configurable parameter for an Extension.
///
/// These can be used to configure resources or referenced as environment
/// variables in a Cloud Function.
class GoogleFirebaseExtensionsV1betaExtensionSpecParameter {
  /// Default value if an Extension consumer leaves the parameter value blank.
  ///
  /// Optional.
  core.String? default_;

  /// Additional description for the parameter.
  ///
  /// It will be shown to the Extension consumer when they are prompted for the
  /// parameter value. Markdown is supported.
  ///
  /// Optional.
  core.String? description;

  /// Example of what this value might look like.
  ///
  /// Optional.
  core.String? example;

  /// Whether or not the user should be prevented from updating the value of
  /// this parameter later.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? immutable;

  /// Label for the parameter, shown to the Extension consumer when they are
  /// prompted for the parameter value.
  ///
  /// Required.
  core.String? label;

  /// A list of values that the consumer can pick from, if the param.Type is
  /// select or multiSelect
  ///
  /// Optional.
  core.List<GoogleFirebaseExtensionsV1betaParamSelectOption>? options;

  /// Name of the parameter.
  ///
  /// Required.
  core.String? param;

  /// Flag indicating if the parameter must be defined and not empty.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? required;

  /// Additional resource information which must be specified when parameter
  /// type is RESOURCE.
  ///
  /// Optional.
  GoogleFirebaseExtensionsV1betaResourceInfo? resourceInfo;

  /// Type of input.
  ///
  /// If unspecified, it is assumed to be STRING.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTENSION_SPEC_PARAMETER_TYPE_UNSPECIFIED"
  /// - "STRING" : Param is a free-form string input.
  /// - "SELECT" : Param allows selecting one option to be its value.
  /// - "MULTISELECT" : Param allows selecting multiple options.
  /// - "SELECT_RESOURCE" : Param allows specifying some external resource, ex.
  /// Cloud Storage bucket.
  /// - "SECRET" : Param represents a Cloud Secret Manager Secret.
  core.String? type;

  /// Error message to display if regex validation fails.
  ///
  /// Optional.
  core.String? validationErrorMessage;

  /// Regex string for validation of the parameter value provided by the
  /// Extension consumer.
  ///
  /// Optional.
  core.String? validationRegex;

  GoogleFirebaseExtensionsV1betaExtensionSpecParameter({
    this.default_,
    this.description,
    this.example,
    this.immutable,
    this.label,
    this.options,
    this.param,
    this.required,
    this.resourceInfo,
    this.type,
    this.validationErrorMessage,
    this.validationRegex,
  });

  GoogleFirebaseExtensionsV1betaExtensionSpecParameter.fromJson(core.Map _json)
      : this(
          default_: _json.containsKey('default')
              ? _json['default'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          example: _json.containsKey('example')
              ? _json['example'] as core.String
              : null,
          immutable: _json.containsKey('immutable')
              ? _json['immutable'] as core.bool
              : null,
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          options: _json.containsKey('options')
              ? (_json['options'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaParamSelectOption.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          param:
              _json.containsKey('param') ? _json['param'] as core.String : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          resourceInfo: _json.containsKey('resourceInfo')
              ? GoogleFirebaseExtensionsV1betaResourceInfo.fromJson(
                  _json['resourceInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          validationErrorMessage: _json.containsKey('validationErrorMessage')
              ? _json['validationErrorMessage'] as core.String
              : null,
          validationRegex: _json.containsKey('validationRegex')
              ? _json['validationRegex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (default_ != null) 'default': default_!,
        if (description != null) 'description': description!,
        if (example != null) 'example': example!,
        if (immutable != null) 'immutable': immutable!,
        if (label != null) 'label': label!,
        if (options != null) 'options': options!,
        if (param != null) 'param': param!,
        if (required != null) 'required': required!,
        if (resourceInfo != null) 'resourceInfo': resourceInfo!,
        if (type != null) 'type': type!,
        if (validationErrorMessage != null)
          'validationErrorMessage': validationErrorMessage!,
        if (validationRegex != null) 'validationRegex': validationRegex!,
      };
}

/// An ExtensionVersion is a published version of an Extension, for sharing with
/// other users.
class GoogleFirebaseExtensionsV1betaExtensionVersion {
  /// Time of creation.
  ///
  /// Output only.
  core.String? createTime;

  /// Deletion time.
  ///
  /// Output only.
  core.String? deleteTime;

  /// Deprecation message.
  ///
  /// This will appear alongside any warnings to update. This string is already
  /// escaped and is safe to use.
  core.String? deprecationMessage;

  /// SHA256 hash of the archive.
  ///
  /// Output only.
  core.String? hash;

  /// Version number.
  ///
  /// Output only.
  core.String? id;

  /// Fully qualified name of ExtensionVersion (e.g.
  /// publishers/publisher-id/extensions/awesome-extension/versions/0.2.1)
  ///
  /// Output only.
  core.String? name;

  /// User-friendly identifier for the ExtensionVersion (e.g.
  /// publisher-id/awesome-extension@1.2.3)
  ///
  /// Output only.
  core.String? ref;

  /// Markdown release notes describing what changed in this release.
  ///
  /// Output only.
  core.String? releaseNotes;

  /// URI where the underlying source code for this extension can be downloaded.
  ///
  /// Output only.
  core.String? sourceDownloadUri;

  /// Parsed spec from extension.yaml.
  ///
  /// Output only.
  GoogleFirebaseExtensionsV1betaExtensionSpec? spec;

  /// State of the ExtensionVersion.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state. Generally not used.
  /// - "PUBLISHED" : Can be installed by consumers.
  /// - "DEPRECATED" : Can be reconfigured but not freshly installed by
  /// consumers.
  core.String? state;

  GoogleFirebaseExtensionsV1betaExtensionVersion({
    this.createTime,
    this.deleteTime,
    this.deprecationMessage,
    this.hash,
    this.id,
    this.name,
    this.ref,
    this.releaseNotes,
    this.sourceDownloadUri,
    this.spec,
    this.state,
  });

  GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteTime: _json.containsKey('deleteTime')
              ? _json['deleteTime'] as core.String
              : null,
          deprecationMessage: _json.containsKey('deprecationMessage')
              ? _json['deprecationMessage'] as core.String
              : null,
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ref: _json.containsKey('ref') ? _json['ref'] as core.String : null,
          releaseNotes: _json.containsKey('releaseNotes')
              ? _json['releaseNotes'] as core.String
              : null,
          sourceDownloadUri: _json.containsKey('sourceDownloadUri')
              ? _json['sourceDownloadUri'] as core.String
              : null,
          spec: _json.containsKey('spec')
              ? GoogleFirebaseExtensionsV1betaExtensionSpec.fromJson(
                  _json['spec'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (deprecationMessage != null)
          'deprecationMessage': deprecationMessage!,
        if (hash != null) 'hash': hash!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (ref != null) 'ref': ref!,
        if (releaseNotes != null) 'releaseNotes': releaseNotes!,
        if (sourceDownloadUri != null) 'sourceDownloadUri': sourceDownloadUri!,
        if (spec != null) 'spec': spec!,
        if (state != null) 'state': state!,
      };
}

/// Representation of an external service that is used by this Extension.
class GoogleFirebaseExtensionsV1betaExternalService {
  /// Name of the external service.
  ///
  /// Required.
  core.String? name;

  /// Link to the pricing page for the external service.
  ///
  /// Required.
  core.String? pricingUri;

  GoogleFirebaseExtensionsV1betaExternalService({
    this.name,
    this.pricingUri,
  });

  GoogleFirebaseExtensionsV1betaExternalService.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          pricingUri: _json.containsKey('pricingUri')
              ? _json['pricingUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (pricingUri != null) 'pricingUri': pricingUri!,
      };
}

/// Used to list Extension instances.
class GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse {
  /// The list of Extension Instances in this project.
  core.List<GoogleFirebaseExtensionsV1betaExtensionInstance>? instances;

  /// Pagination token, if more results exist.
  core.String? nextPageToken;

  GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse({
    this.instances,
    this.nextPageToken,
  });

  GoogleFirebaseExtensionsV1betaListExtensionInstancesResponse.fromJson(
      core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExtensionInstance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Used to list ExtensionVersions.
class GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse {
  /// The list of ExtensionVersions for this Extension.
  core.List<GoogleFirebaseExtensionsV1betaExtensionVersion>? extensionVersions;

  /// Pagination token, if more results exist.
  core.String? nextPageToken;

  GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse({
    this.extensionVersions,
    this.nextPageToken,
  });

  GoogleFirebaseExtensionsV1betaListExtensionVersionsResponse.fromJson(
      core.Map _json)
      : this(
          extensionVersions: _json.containsKey('extensionVersions')
              ? (_json['extensionVersions'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExtensionVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensionVersions != null) 'extensionVersions': extensionVersions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Used to list Extensions.
class GoogleFirebaseExtensionsV1betaListExtensionsResponse {
  /// The list of Extensions in this project.
  core.List<GoogleFirebaseExtensionsV1betaExtension>? extensions;

  /// Pagination token, if more results exist.
  core.String? nextPageToken;

  GoogleFirebaseExtensionsV1betaListExtensionsResponse({
    this.extensions,
    this.nextPageToken,
  });

  GoogleFirebaseExtensionsV1betaListExtensionsResponse.fromJson(core.Map _json)
      : this(
          extensions: _json.containsKey('extensions')
              ? (_json['extensions'] as core.List)
                  .map((value) =>
                      GoogleFirebaseExtensionsV1betaExtension.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensions != null) 'extensions': extensions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Representation of an option that the user can select for a param, if the
/// param type is select or multiselect.
class GoogleFirebaseExtensionsV1betaParamSelectOption {
  /// User-friendly description of option.
  ///
  /// If omitted, defaults to value.
  ///
  /// Optional.
  core.String? label;

  /// Value of option.
  ///
  /// Required.
  core.String? value;

  GoogleFirebaseExtensionsV1betaParamSelectOption({
    this.label,
    this.value,
  });

  GoogleFirebaseExtensionsV1betaParamSelectOption.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (value != null) 'value': value!,
      };
}

/// Used to publish an ExtensionVersion.
class GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest {
  /// The directory location of extension.yaml in the archived package.
  ///
  /// If none is specified, then the package root is assumed ("/").
  ///
  /// Optional.
  core.String? extensionRoot;

  /// Public URI of a zip or tarball of the extension source code
  ///
  /// Required.
  core.String? packageUri;

  /// Version to publish.
  ///
  /// e.g. 1.2.3
  ///
  /// Required.
  core.String? versionId;

  GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest({
    this.extensionRoot,
    this.packageUri,
    this.versionId,
  });

  GoogleFirebaseExtensionsV1betaPublishExtensionVersionRequest.fromJson(
      core.Map _json)
      : this(
          extensionRoot: _json.containsKey('extensionRoot')
              ? _json['extensionRoot'] as core.String
              : null,
          packageUri: _json.containsKey('packageUri')
              ? _json['packageUri'] as core.String
              : null,
          versionId: _json.containsKey('versionId')
              ? _json['versionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extensionRoot != null) 'extensionRoot': extensionRoot!,
        if (packageUri != null) 'packageUri': packageUri!,
        if (versionId != null) 'versionId': versionId!,
      };
}

/// A PublisherProfile is a singleton resource for a Project.
///
/// It represents the publisher metadata. Since the project-number is considered
/// pii, this proto is not meant for public consumption.
class GoogleFirebaseExtensionsV1betaPublisherProfile {
  /// Public human-readable name for the publisher.
  ///
  /// Required.
  core.String? displayName;

  /// Name for the PublisherProfile (e.g.
  /// projects/283847228472/publisherProfile)
  ///
  /// Output only.
  core.String? name;

  /// Unique user-friendly ID of publisher (e.g. firebase)
  ///
  /// Immutable.
  core.String? publisherId;

  /// Register time.
  ///
  /// Output only.
  core.String? registerTime;

  /// Website associated with the publisher.
  ///
  /// Optional.
  core.String? websiteUri;

  GoogleFirebaseExtensionsV1betaPublisherProfile({
    this.displayName,
    this.name,
    this.publisherId,
    this.registerTime,
    this.websiteUri,
  });

  GoogleFirebaseExtensionsV1betaPublisherProfile.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          publisherId: _json.containsKey('publisherId')
              ? _json['publisherId'] as core.String
              : null,
          registerTime: _json.containsKey('registerTime')
              ? _json['registerTime'] as core.String
              : null,
          websiteUri: _json.containsKey('websiteUri')
              ? _json['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (publisherId != null) 'publisherId': publisherId!,
        if (registerTime != null) 'registerTime': registerTime!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// A public-facing summary of a publisher.
///
/// Not to be confused with "PublisherProfile", which is used for publisher
/// facing APIs. It's also not intended to be used as an independent resource.
class GoogleFirebaseExtensionsV1betaPublisherSummary {
  /// Display name of the publisher.
  core.String? displayName;

  /// Uri of the publisher's icon.
  core.String? iconUri;

  GoogleFirebaseExtensionsV1betaPublisherSummary({
    this.displayName,
    this.iconUri,
  });

  GoogleFirebaseExtensionsV1betaPublisherSummary.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          iconUri: _json.containsKey('iconUri')
              ? _json['iconUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (iconUri != null) 'iconUri': iconUri!,
      };
}

/// Representation of a Resource that will be created for an Extension.
class GoogleFirebaseExtensionsV1betaResource {
  /// Enum representing whether the resource should get deleted or abandoned
  /// (left behind) when the Extension is uninstalled.
  ///
  /// Not yet used.
  /// Possible string values are:
  /// - "DELETION_POLICY_UNSPECIFIED"
  /// - "DELETE" : The default policy - delete the resource when Extension is
  /// uninstalled.
  /// - "ABANDON" : Abandon the resource when Extension is uninstalled.
  core.String? deletionPolicy;

  /// Description of the Resource.
  ///
  /// Optional.
  core.String? description;

  /// Name of the Resource.
  ///
  /// Required.
  core.String? name;

  /// Properties of the Resource.
  ///
  /// The values here will be representative of the properties available for
  /// each resource type (see `type`). For example, a \[Pub/Sub Topic
  /// (`pubsub.v1.topic`)\](https://cloud.google.com/pubsub/docs/reference/rest/v1/projects.topics)
  /// can accept `labels` as a property; `properties` of a Topic could include
  /// ```{ "labels": { "some_key": "some_value" } }```
  ///
  /// Required.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? properties;

  /// A YAML string representing the properties of the resource.
  ///
  /// Output only.
  core.String? propertiesYaml;

  /// Type of the Resource.
  ///
  /// This can be any valid
  /// [Deployment Manager type](https://cloud.google.com/deployment-manager/docs/configuration/supported-resource-types)
  /// or Extension-specific `firebaseextensions.v1beta.function`.
  ///
  /// Required.
  core.String? type;

  GoogleFirebaseExtensionsV1betaResource({
    this.deletionPolicy,
    this.description,
    this.name,
    this.properties,
    this.propertiesYaml,
    this.type,
  });

  GoogleFirebaseExtensionsV1betaResource.fromJson(core.Map _json)
      : this(
          deletionPolicy: _json.containsKey('deletionPolicy')
              ? _json['deletionPolicy'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Map<core.String, core.dynamic>,
                  ),
                )
              : null,
          propertiesYaml: _json.containsKey('propertiesYaml')
              ? _json['propertiesYaml'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deletionPolicy != null) 'deletionPolicy': deletionPolicy!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
        if (propertiesYaml != null) 'propertiesYaml': propertiesYaml!,
        if (type != null) 'type': type!,
      };
}

/// Representation of additional resource information for parameters of type
/// RESOURCE.
class GoogleFirebaseExtensionsV1betaResourceInfo {
  /// Type of resource, e.g. storage.googleapis.com/Bucket
  ///
  /// Required.
  core.String? resourceType;

  GoogleFirebaseExtensionsV1betaResourceInfo({
    this.resourceType,
  });

  GoogleFirebaseExtensionsV1betaResourceInfo.fromJson(core.Map _json)
      : this(
          resourceType: _json.containsKey('resourceType')
              ? _json['resourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// Representation of a Firebase IAM Role or a Cloud IAM role that is required
/// by this Extension.
class GoogleFirebaseExtensionsV1betaRole {
  /// Reason the role is needs to be enabled.
  ///
  /// Optional.
  core.String? reason;

  /// Name of role.
  ///
  /// Required.
  core.String? role;

  GoogleFirebaseExtensionsV1betaRole({
    this.reason,
    this.role,
  });

  GoogleFirebaseExtensionsV1betaRole.fromJson(core.Map _json)
      : this(
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
        if (role != null) 'role': role!,
      };
}

/// Used to un-deprecate an ExtensionVersion.
typedef GoogleFirebaseExtensionsV1betaUndeprecateExtensionVersionRequest
    = $Empty;

/// Used to unpublish an Extension.
typedef GoogleFirebaseExtensionsV1betaUnpublishExtensionRequest = $Empty;

/// Used to unpublish an ExtensionVersion.
typedef GoogleFirebaseExtensionsV1betaUnpublishExtensionVersionRequest = $Empty;

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
