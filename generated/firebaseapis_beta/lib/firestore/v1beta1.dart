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

/// Cloud Firestore API - v1beta1
///
/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
///
/// For more information, see <https://cloud.google.com/firestore>
///
/// Create an instance of [FirestoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsDatabasesResource]
///     - [ProjectsDatabasesDocumentsResource]
///     - [ProjectsDatabasesIndexesResource]
library firestore.v1beta1;

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

/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
class FirestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirestoreApi(http.Client client,
      {core.String rootUrl = 'https://firestore.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesResource get databases =>
      ProjectsDatabasesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResource get documents =>
      ProjectsDatabasesDocumentsResource(_requester);
  ProjectsDatabasesIndexesResource get indexes =>
      ProjectsDatabasesIndexesResource(_requester);

  ProjectsDatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to documents may not be reflected in the export. The export
  /// occurs in the background and its progress can be monitored and managed via
  /// the Operation resource that is created. The output of an export may only
  /// be used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to export. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> exportDocuments(
    GoogleFirestoreAdminV1beta1ExportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':exportDocuments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Imports documents into Google Cloud Firestore.
  ///
  /// Existing documents with the same name are overwritten. The import occurs
  /// in the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportDocuments operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Firestore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to import into. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importDocuments(
    GoogleFirestoreAdminV1beta1ImportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name') + ':importDocuments';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets multiple documents.
  ///
  /// Documents returned by this method are not guaranteed to be returned in the
  /// same order that they were requested.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetDocumentsResponse> batchGet(
    BatchGetDocumentsRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:batchGet';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchGetDocumentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Applies a batch of write operations.
  ///
  /// The BatchWrite method does not apply the write operations atomically and
  /// can apply them out of order. Method does not allow more than one write per
  /// document. Each write succeeds or fails independently. See the
  /// BatchWriteResponse for the success status of each write. If you require an
  /// atomically applied set of writes, use Commit instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchWriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchWriteResponse> batchWrite(
    BatchWriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:batchWrite';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchWriteResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Starts a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BeginTransactionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BeginTransactionResponse> beginTransaction(
    BeginTransactionRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$database') +
        '/documents:beginTransaction';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BeginTransactionResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Commits a transaction, while optionally updating documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
    CommitRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:commit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CommitResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource. For example:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/.*$`.
  ///
  /// [collectionId] - Required. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms`.
  ///
  /// [documentId] - The client-assigned document ID to use for this document.
  /// Optional. If not specified, an ID will be assigned by the service.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> createDocument(
    Document request,
    core.String parent,
    core.String collectionId, {
    core.String? documentId,
    core.List<core.String>? mask_fieldPaths,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (documentId != null) 'documentId': [documentId],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Document.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to delete. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
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
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
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

  /// Gets a single document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to get. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [readTime] - Reads the version of the document at the given time. This may
  /// not be older than 270 seconds.
  ///
  /// [transaction] - Reads the document in a transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> get(
    core.String name, {
    core.List<core.String>? mask_fieldPaths,
    core.String? readTime,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (readTime != null) 'readTime': [readTime],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Document.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [collectionId] - Required. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms` or `messages`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [orderBy] - The order to sort results by. For example: `priority desc,
  /// name`.
  ///
  /// [pageSize] - The maximum number of documents to return.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [readTime] - Reads documents as they were at the given time. This may not
  /// be older than 270 seconds.
  ///
  /// [showMissing] - If the list should show missing documents. A missing
  /// document is a document that does not exist but has sub-documents. These
  /// documents will be returned with a key but will not have fields,
  /// Document.create_time, or Document.update_time set. Requests with
  /// `show_missing` may not specify `where` or `order_by`.
  ///
  /// [transaction] - Reads documents in a transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDocumentsResponse> list(
    core.String parent,
    core.String collectionId, {
    core.List<core.String>? mask_fieldPaths,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.bool? showMissing,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (showMissing != null) 'showMissing': ['${showMissing}'],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDocumentsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the collection IDs underneath a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent document. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCollectionIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCollectionIdsResponse> listCollectionIds(
    ListCollectionIdsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':listCollectionIds';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ListCollectionIdsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Listens to changes.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListenResponse> listen(
    ListenRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:listen';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ListenResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Partitions a query by returning partition cursors that can be used to run
  /// the query in parallel.
  ///
  /// The returned partition cursors are split points that can be used by
  /// RunQuery as starting/end points for the query results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents`. Document
  /// resource names are not supported; only database resource names can be
  /// specified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionQueryResponse> partitionQuery(
    PartitionQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$parent') + ':partitionQuery';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PartitionQueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates or inserts a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [updateMask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> patch(
    Document request,
    core.String name, {
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.List<core.String>? mask_fieldPaths,
    core.List<core.String>? updateMask_fieldPaths,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (updateMask_fieldPaths != null)
        'updateMask.fieldPaths': updateMask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Document.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Empty> rollback(
    RollbackRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:rollback';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Runs a query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunQueryResponse> runQuery(
    RunQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + ':runQuery';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return RunQueryResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Streams batches of document updates and deletes, in order.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`. This is only required in
  /// the first message.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteResponse> write(
    WriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1beta1/' + core.Uri.encodeFull('$database') + '/documents:write';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return WriteResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesIndexesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesIndexesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates the specified index.
  ///
  /// A newly created index's initial state is `CREATING`. On completion of the
  /// returned google.longrunning.Operation, the state will be `READY`. If the
  /// index already exists, the call will return an `ALREADY_EXISTS` status.
  /// During creation, the process could result in an error, in which case the
  /// index will move to the `ERROR` state. The process can be recovered by
  /// fixing the data that caused the error, removing the index with delete,
  /// then re-creating the index with create. Indexes with a single field cannot
  /// be created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the database this index will apply to. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
    GoogleFirestoreAdminV1beta1Index request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The index name. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/indexes/\[^/\]+$`.
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

  /// Gets an index.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the index. For example:
  /// `projects/{project_id}/databases/{database_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/indexes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta1Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta1Index> get(
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
    return GoogleFirestoreAdminV1beta1Index.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the indexes that match the specified filters.
  ///
  /// Request parameters:
  ///
  /// [parent] - The database name. For example:
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [filter] - null
  ///
  /// [pageSize] - The standard List page size.
  ///
  /// [pageToken] - The standard List page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta1ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta1ListIndexesResponse> list(
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

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleFirestoreAdminV1beta1ListIndexesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  core.List<Value>? values;

  ArrayValue({
    this.values,
  });

  ArrayValue.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// The request for Firestore.BatchGetDocuments.
class BatchGetDocumentsRequest {
  /// The names of the documents to retrieve.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  core.List<core.String>? documents;

  /// The fields to return.
  ///
  /// If not set, returns all fields. If a document has a field that is not
  /// present in this mask, that field will not be returned in the response.
  DocumentMask? mask;

  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This may not be older than 270 seconds.
  core.String? readTime;

  /// Reads documents in a transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  BatchGetDocumentsRequest({
    this.documents,
    this.mask,
    this.newTransaction,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsRequest.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mask: _json.containsKey('mask')
              ? DocumentMask.fromJson(
                  _json['mask'] as core.Map<core.String, core.dynamic>)
              : null,
          newTransaction: _json.containsKey('newTransaction')
              ? TransactionOptions.fromJson(_json['newTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (mask != null) 'mask': mask!,
        if (newTransaction != null) 'newTransaction': newTransaction!,
        if (readTime != null) 'readTime': readTime!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The streamed response for Firestore.BatchGetDocuments.
class BatchGetDocumentsResponse {
  /// A document that was requested.
  Document? found;

  /// A document name that was requested but does not exist.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? missing;

  /// The time at which the document was read.
  ///
  /// This may be monotically increasing, in this case the previous documents in
  /// the result stream are guaranteed not to have changed between their
  /// read_time and this one.
  core.String? readTime;

  /// The transaction that was started as part of this request.
  ///
  /// Will only be set in the first response, and only if
  /// BatchGetDocumentsRequest.new_transaction was set in the request.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  BatchGetDocumentsResponse({
    this.found,
    this.missing,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsResponse.fromJson(core.Map _json)
      : this(
          found: _json.containsKey('found')
              ? Document.fromJson(
                  _json['found'] as core.Map<core.String, core.dynamic>)
              : null,
          missing: _json.containsKey('missing')
              ? _json['missing'] as core.String
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (found != null) 'found': found!,
        if (missing != null) 'missing': missing!,
        if (readTime != null) 'readTime': readTime!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The request for Firestore.BatchWrite.
class BatchWriteRequest {
  /// Labels associated with this batch write.
  core.Map<core.String, core.String>? labels;

  /// The writes to apply.
  ///
  /// Method does not apply writes atomically and does not guarantee ordering.
  /// Each write succeeds or fails independently. You cannot write to the same
  /// document more than once per request.
  core.List<Write>? writes;

  BatchWriteRequest({
    this.labels,
    this.writes,
  });

  BatchWriteRequest.fromJson(core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          writes: _json.containsKey('writes')
              ? (_json['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response from Firestore.BatchWrite.
class BatchWriteResponse {
  /// The status of applying the writes.
  ///
  /// This i-th write status corresponds to the i-th write in the request.
  core.List<Status>? status;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  BatchWriteResponse({
    this.status,
    this.writeResults,
  });

  BatchWriteResponse.fromJson(core.Map _json)
      : this(
          status: _json.containsKey('status')
              ? (_json['status'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeResults: _json.containsKey('writeResults')
              ? (_json['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// The request for Firestore.BeginTransaction.
class BeginTransactionRequest {
  /// The options for the transaction.
  ///
  /// Defaults to a read-write transaction.
  TransactionOptions? options;

  BeginTransactionRequest({
    this.options,
  });

  BeginTransactionRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? TransactionOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// The response for Firestore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction that was started.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  BeginTransactionResponse({
    this.transaction,
  });

  BeginTransactionResponse.fromJson(core.Map _json)
      : this(
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// A selection of a collection, such as `messages as m1`.
class CollectionSelector {
  /// When false, selects only collections that are immediate children of the
  /// `parent` specified in the containing `RunQueryRequest`.
  ///
  /// When true, selects all descendant collections.
  core.bool? allDescendants;

  /// The collection ID.
  ///
  /// When set, selects only collections with this ID.
  core.String? collectionId;

  CollectionSelector({
    this.allDescendants,
    this.collectionId,
  });

  CollectionSelector.fromJson(core.Map _json)
      : this(
          allDescendants: _json.containsKey('allDescendants')
              ? _json['allDescendants'] as core.bool
              : null,
          collectionId: _json.containsKey('collectionId')
              ? _json['collectionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allDescendants != null) 'allDescendants': allDescendants!,
        if (collectionId != null) 'collectionId': collectionId!,
      };
}

/// The request for Firestore.Commit.
class CommitRequest {
  /// If set, applies all writes in this transaction, and commits it.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  core.List<Write>? writes;

  CommitRequest({
    this.transaction,
    this.writes,
  });

  CommitRequest.fromJson(core.Map _json)
      : this(
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
          writes: _json.containsKey('writes')
              ? (_json['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response for Firestore.Commit.
class CommitResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the commit.
  core.String? commitTime;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  CommitResponse({
    this.commitTime,
    this.writeResults,
  });

  CommitResponse.fromJson(core.Map _json)
      : this(
          commitTime: _json.containsKey('commitTime')
              ? _json['commitTime'] as core.String
              : null,
          writeResults: _json.containsKey('writeResults')
              ? (_json['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTime != null) 'commitTime': commitTime!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// A filter that merges multiple other filters using the given operator.
class CompositeFilter {
  /// The list of filters to combine.
  ///
  /// Must contain at least one filter.
  core.List<Filter>? filters;

  /// The operator for combining multiple filters.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "AND" : The results are required to satisfy each of the combined
  /// filters.
  core.String? op;

  CompositeFilter({
    this.filters,
    this.op,
  });

  CompositeFilter.fromJson(core.Map _json)
      : this(
          filters: _json.containsKey('filters')
              ? (_json['filters'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          op: _json.containsKey('op') ? _json['op'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (op != null) 'op': op!,
      };
}

/// A position in a query result set.
class Cursor {
  /// If the position is just before or just after the given values, relative to
  /// the sort order defined by the query.
  core.bool? before;

  /// The values that represent a position, in the order they appear in the
  /// order by clause of a query.
  ///
  /// Can contain fewer values than specified in the order by clause.
  core.List<Value>? values;

  Cursor({
    this.before,
    this.values,
  });

  Cursor.fromJson(core.Map _json)
      : this(
          before:
              _json.containsKey('before') ? _json['before'] as core.bool : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (before != null) 'before': before!,
        if (values != null) 'values': values!,
      };
}

/// A Firestore document.
///
/// Must not exceed 1 MiB - 4 bytes.
class Document {
  /// The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and the
  /// `read_time` of a query.
  ///
  /// Output only.
  core.String? createTime;

  /// The document's fields.
  ///
  /// The map keys represent field names. A simple field name contains only
  /// characters `a` to `z`, `A` to `Z`, `0` to `9`, or `_`, and must not start
  /// with `0` to `9`. For example, `foo_bar_17`. Field names matching the
  /// regular expression `__.*__` are reserved. Reserved field names are
  /// forbidden except in certain documented contexts. The map keys, represented
  /// as UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may
  /// be used in other contexts to refer to structured fields defined here. For
  /// `map_value`, the field path is represented by the simple or quoted field
  /// names of the containing fields, delimited by `.`. For example, the
  /// structured field `"foo" : { map_value: { "x&y" : { string_value: "hello"
  /// }}}` would be represented by the field path `foo.x&y`. Within a field
  /// path, a quoted field name starts and ends with `` ` `` and may contain any
  /// character. Some characters, including `` ` ``, must be escaped using a
  /// `\`. For example, `` `x&y` `` represents `x&y` and `` `bak\`tik` ``
  /// represents `` bak`tik ``.
  core.Map<core.String, Value>? fields;

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? name;

  /// The time at which the document was last changed.
  ///
  /// This value is initially set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be compared to
  /// values from other documents and the `read_time` of a query.
  ///
  /// Output only.
  core.String? updateTime;

  Document({
    this.createTime,
    this.fields,
    this.name,
    this.updateTime,
  });

  Document.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Value.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A Document has changed.
///
/// May be the result of multiple writes, including deletes, that ultimately
/// resulted in a new value for the Document. Multiple DocumentChange messages
/// may be returned for the same logical change, if multiple targets are
/// affected.
class DocumentChange {
  /// The new state of the Document.
  ///
  /// If `mask` is set, contains only fields that were updated or added.
  Document? document;

  /// A set of target IDs for targets that no longer match this document.
  core.List<core.int>? removedTargetIds;

  /// A set of target IDs of targets that match this document.
  core.List<core.int>? targetIds;

  DocumentChange({
    this.document,
    this.removedTargetIds,
    this.targetIds,
  });

  DocumentChange.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? Document.fromJson(
                  _json['document'] as core.Map<core.String, core.dynamic>)
              : null,
          removedTargetIds: _json.containsKey('removedTargetIds')
              ? (_json['removedTargetIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          targetIds: _json.containsKey('targetIds')
              ? (_json['targetIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (removedTargetIds != null) 'removedTargetIds': removedTargetIds!,
        if (targetIds != null) 'targetIds': targetIds!,
      };
}

/// A Document has been deleted.
///
/// May be the result of multiple writes, including updates, the last of which
/// deleted the Document. Multiple DocumentDelete messages may be returned for
/// the same logical delete, if multiple targets are affected.
class DocumentDelete {
  /// The resource name of the Document that was deleted.
  core.String? document;

  /// The read timestamp at which the delete was observed.
  ///
  /// Greater or equal to the `commit_time` of the delete.
  core.String? readTime;

  /// A set of target IDs for targets that previously matched this entity.
  core.List<core.int>? removedTargetIds;

  DocumentDelete({
    this.document,
    this.readTime,
    this.removedTargetIds,
  });

  DocumentDelete.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? _json['document'] as core.String
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          removedTargetIds: _json.containsKey('removedTargetIds')
              ? (_json['removedTargetIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (readTime != null) 'readTime': readTime!,
        if (removedTargetIds != null) 'removedTargetIds': removedTargetIds!,
      };
}

/// A set of field paths on a document.
///
/// Used to restrict a get or update operation on a document to a subset of its
/// fields. This is different from standard field masks, as this is always
/// scoped to a Document, and takes in account the dynamic nature of Value.
class DocumentMask {
  /// The list of field paths in the mask.
  ///
  /// See Document.fields for a field path syntax reference.
  core.List<core.String>? fieldPaths;

  DocumentMask({
    this.fieldPaths,
  });

  DocumentMask.fromJson(core.Map _json)
      : this(
          fieldPaths: _json.containsKey('fieldPaths')
              ? (_json['fieldPaths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPaths != null) 'fieldPaths': fieldPaths!,
      };
}

/// A Document has been removed from the view of the targets.
///
/// Sent if the document is no longer relevant to a target and is out of view.
/// Can be sent instead of a DocumentDelete or a DocumentChange if the server
/// can not send the new value of the document. Multiple DocumentRemove messages
/// may be returned for the same logical write or delete, if multiple targets
/// are affected.
class DocumentRemove {
  /// The resource name of the Document that has gone out of view.
  core.String? document;

  /// The read timestamp at which the remove was observed.
  ///
  /// Greater or equal to the `commit_time` of the change/delete/remove.
  core.String? readTime;

  /// A set of target IDs for targets that previously matched this document.
  core.List<core.int>? removedTargetIds;

  DocumentRemove({
    this.document,
    this.readTime,
    this.removedTargetIds,
  });

  DocumentRemove.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? _json['document'] as core.String
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          removedTargetIds: _json.containsKey('removedTargetIds')
              ? (_json['removedTargetIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (readTime != null) 'readTime': readTime!,
        if (removedTargetIds != null) 'removedTargetIds': removedTargetIds!,
      };
}

/// A transformation of a document.
class DocumentTransform {
  /// The name of the document to transform.
  core.String? document;

  /// The list of transformations to apply to the fields of the document, in
  /// order.
  ///
  /// This must not be empty.
  core.List<FieldTransform>? fieldTransforms;

  DocumentTransform({
    this.document,
    this.fieldTransforms,
  });

  DocumentTransform.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? _json['document'] as core.String
              : null,
          fieldTransforms: _json.containsKey('fieldTransforms')
              ? (_json['fieldTransforms'] as core.List)
                  .map((value) => FieldTransform.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (fieldTransforms != null) 'fieldTransforms': fieldTransforms!,
      };
}

/// A target specified by a set of documents names.
class DocumentsTarget {
  /// The names of the documents to retrieve.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  core.List<core.String>? documents;

  DocumentsTarget({
    this.documents,
  });

  DocumentsTarget.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// A digest of all the documents that match a given target.
class ExistenceFilter {
  /// The total count of documents that match target_id.
  ///
  /// If different from the count of documents in the client that match, the
  /// client must manually determine which documents no longer match the target.
  core.int? count;

  /// The target ID to which this filter applies.
  core.int? targetId;

  ExistenceFilter({
    this.count,
    this.targetId,
  });

  ExistenceFilter.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          targetId: _json.containsKey('targetId')
              ? _json['targetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (targetId != null) 'targetId': targetId!,
      };
}

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter by.
  FieldReference? field;

  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : The given `field` is less than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : The given `field` is less than or equal to the
  /// given `value`. Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN" : The given `field` is greater than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : The given `field` is greater than or equal to
  /// the given `value`. Requires: * That `field` come first in `order_by`.
  /// - "EQUAL" : The given `field` is equal to the given `value`.
  /// - "NOT_EQUAL" : The given `field` is not equal to the given `value`.
  /// Requires: * No other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or
  /// `IS_NOT_NAN`. * That `field` comes first in the `order_by`.
  /// - "ARRAY_CONTAINS" : The given `field` is an array that contains the given
  /// `value`.
  /// - "IN" : The given `field` is equal to at least one value in the given
  /// array. Requires: * That `value` is a non-empty `ArrayValue` with at most
  /// 10 values. * No other `IN` or `ARRAY_CONTAINS_ANY` or `NOT_IN`.
  /// - "ARRAY_CONTAINS_ANY" : The given `field` is an array that contains any
  /// of the values in the given array. Requires: * That `value` is a non-empty
  /// `ArrayValue` with at most 10 values. * No other `IN` or
  /// `ARRAY_CONTAINS_ANY` or `NOT_IN`.
  /// - "NOT_IN" : The value of the `field` is not in the given array. Requires:
  /// * That `value` is a non-empty `ArrayValue` with at most 10 values. * No
  /// other `IN`, `ARRAY_CONTAINS_ANY`, `NOT_IN`, `NOT_EQUAL`, `IS_NOT_NULL`, or
  /// `IS_NOT_NAN`. * That `field` comes first in the `order_by`.
  core.String? op;

  /// The value to compare to.
  Value? value;

  FieldFilter({
    this.field,
    this.op,
    this.value,
  });

  FieldFilter.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? FieldReference.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          op: _json.containsKey('op') ? _json['op'] as core.String : null,
          value: _json.containsKey('value')
              ? Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (op != null) 'op': op!,
        if (value != null) 'value': value!,
      };
}

/// A reference to a field, such as `max(messages.time) as max_time`.
class FieldReference {
  core.String? fieldPath;

  FieldReference({
    this.fieldPath,
  });

  FieldReference.fromJson(core.Map _json)
      : this(
          fieldPath: _json.containsKey('fieldPath')
              ? _json['fieldPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPath != null) 'fieldPath': fieldPath!,
      };
}

/// A transformation of a field of the document.
class FieldTransform {
  /// Append the given elements in order if they are not already present in the
  /// current field value.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// first set to the empty array. Equivalent numbers of different types (e.g.
  /// 3L and 3.0) are considered equal when checking if a value is missing. NaN
  /// is equal to NaN, and Null is equal to Null. If the input contains multiple
  /// equivalent values, only the first will be considered. The corresponding
  /// transform_result will be the null value.
  ArrayValue? appendMissingElements;

  /// The path of the field.
  ///
  /// See Document.fields for the field path syntax reference.
  core.String? fieldPath;

  /// Adds the given value to the field's current value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If either of the given value or the current
  /// field value are doubles, both values will be interpreted as doubles.
  /// Double arithmetic and representation of double values follow IEEE 754
  /// semantics. If there is positive/negative integer overflow, the field is
  /// resolved to the largest magnitude positive/negative integer.
  Value? increment;

  /// Sets the field to the maximum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If a maximum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the larger operand. If
  /// the operands are equivalent (e.g. 3 and 3.0), the field does not change.
  /// 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero
  /// input value is always the stored value. The maximum of any numeric value x
  /// and NaN is NaN.
  Value? maximum;

  /// Sets the field to the minimum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the input value. If a minimum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the smaller operand.
  /// If the operands are equivalent (e.g. 3 and 3.0), the field does not
  /// change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value
  /// and zero input value is always the stored value. The minimum of any
  /// numeric value x and NaN is NaN.
  Value? minimum;

  /// Remove all of the given elements from the array in the field.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// set to the empty array. Equivalent numbers of the different types (e.g. 3L
  /// and 3.0) are considered equal when deciding whether an element should be
  /// removed. NaN is equal to NaN, and Null is equal to Null. This will remove
  /// all equivalent values if there are duplicates. The corresponding
  /// transform_result will be the null value.
  ArrayValue? removeAllFromArray;

  /// Sets the field to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond precision. If used on multiple fields (same or different
  /// documents) in a transaction, all the fields will get the same server
  /// timestamp.
  core.String? setToServerValue;

  FieldTransform({
    this.appendMissingElements,
    this.fieldPath,
    this.increment,
    this.maximum,
    this.minimum,
    this.removeAllFromArray,
    this.setToServerValue,
  });

  FieldTransform.fromJson(core.Map _json)
      : this(
          appendMissingElements: _json.containsKey('appendMissingElements')
              ? ArrayValue.fromJson(_json['appendMissingElements']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fieldPath: _json.containsKey('fieldPath')
              ? _json['fieldPath'] as core.String
              : null,
          increment: _json.containsKey('increment')
              ? Value.fromJson(
                  _json['increment'] as core.Map<core.String, core.dynamic>)
              : null,
          maximum: _json.containsKey('maximum')
              ? Value.fromJson(
                  _json['maximum'] as core.Map<core.String, core.dynamic>)
              : null,
          minimum: _json.containsKey('minimum')
              ? Value.fromJson(
                  _json['minimum'] as core.Map<core.String, core.dynamic>)
              : null,
          removeAllFromArray: _json.containsKey('removeAllFromArray')
              ? ArrayValue.fromJson(_json['removeAllFromArray']
                  as core.Map<core.String, core.dynamic>)
              : null,
          setToServerValue: _json.containsKey('setToServerValue')
              ? _json['setToServerValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appendMissingElements != null)
          'appendMissingElements': appendMissingElements!,
        if (fieldPath != null) 'fieldPath': fieldPath!,
        if (increment != null) 'increment': increment!,
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
        if (removeAllFromArray != null)
          'removeAllFromArray': removeAllFromArray!,
        if (setToServerValue != null) 'setToServerValue': setToServerValue!,
      };
}

/// A filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a document field.
  FieldFilter? fieldFilter;

  /// A filter that takes exactly one argument.
  UnaryFilter? unaryFilter;

  Filter({
    this.compositeFilter,
    this.fieldFilter,
    this.unaryFilter,
  });

  Filter.fromJson(core.Map _json)
      : this(
          compositeFilter: _json.containsKey('compositeFilter')
              ? CompositeFilter.fromJson(_json['compositeFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fieldFilter: _json.containsKey('fieldFilter')
              ? FieldFilter.fromJson(
                  _json['fieldFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          unaryFilter: _json.containsKey('unaryFilter')
              ? UnaryFilter.fromJson(
                  _json['unaryFilter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compositeFilter != null) 'compositeFilter': compositeFilter!,
        if (fieldFilter != null) 'fieldFilter': fieldFilter!,
        if (unaryFilter != null) 'unaryFilter': unaryFilter!,
      };
}

/// The request for FirestoreAdmin.ExportDocuments.
typedef GoogleFirestoreAdminV1beta1ExportDocumentsRequest
    = $ExportDocumentsRequest;

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1beta1ImportDocumentsRequest {
  /// Which collection ids to import.
  ///
  /// Unspecified means all collections included in the import.
  core.List<core.String>? collectionIds;

  /// Location of the exported files.
  ///
  /// This must match the output_uri_prefix of an ExportDocumentsResponse from
  /// an export that has completed successfully. See:
  /// google.firestore.admin.v1beta1.ExportDocumentsResponse.output_uri_prefix.
  core.String? inputUriPrefix;

  GoogleFirestoreAdminV1beta1ImportDocumentsRequest({
    this.collectionIds,
    this.inputUriPrefix,
  });

  GoogleFirestoreAdminV1beta1ImportDocumentsRequest.fromJson(core.Map _json)
      : this(
          collectionIds: _json.containsKey('collectionIds')
              ? (_json['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inputUriPrefix: _json.containsKey('inputUriPrefix')
              ? _json['inputUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (inputUriPrefix != null) 'inputUriPrefix': inputUriPrefix!,
      };
}

/// An index definition.
class GoogleFirestoreAdminV1beta1Index {
  /// The collection ID to which this index applies.
  ///
  /// Required.
  core.String? collectionId;

  /// The fields to index.
  core.List<GoogleFirestoreAdminV1beta1IndexField>? fields;

  /// The resource name of the index.
  ///
  /// Output only.
  core.String? name;

  /// The state of the index.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created. There is an active long-running
  /// operation for the index. The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used. The index is updated when
  /// writing a document. The index is fully populated from all stored documents
  /// it applies to.
  /// - "ERROR" : The index was being created, but something went wrong. There
  /// is no active long-running operation for the index, and the most recently
  /// finished long-running operation failed. The index is not updated when
  /// writing a document. Some index data may exist.
  core.String? state;

  GoogleFirestoreAdminV1beta1Index({
    this.collectionId,
    this.fields,
    this.name,
    this.state,
  });

  GoogleFirestoreAdminV1beta1Index.fromJson(core.Map _json)
      : this(
          collectionId: _json.containsKey('collectionId')
              ? _json['collectionId'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) =>
                      GoogleFirestoreAdminV1beta1IndexField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionId != null) 'collectionId': collectionId!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// A field of an index.
class GoogleFirestoreAdminV1beta1IndexField {
  /// The path of the field.
  ///
  /// Must match the field path specification described by
  /// google.firestore.v1beta1.Document.fields. Special field path `__name__`
  /// may be used by itself or at the end of a path. `__type__` may be used only
  /// at the end of path.
  core.String? fieldPath;

  /// The field's mode.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : The mode is unspecified.
  /// - "ASCENDING" : The field's values are indexed so as to support sequencing
  /// in ascending order and also query by \<, \>, \<=, \>=, and =.
  /// - "DESCENDING" : The field's values are indexed so as to support
  /// sequencing in descending order and also query by \<, \>, \<=, \>=, and =.
  /// - "ARRAY_CONTAINS" : The field's array values are indexed so as to support
  /// membership using ARRAY_CONTAINS queries.
  core.String? mode;

  GoogleFirestoreAdminV1beta1IndexField({
    this.fieldPath,
    this.mode,
  });

  GoogleFirestoreAdminV1beta1IndexField.fromJson(core.Map _json)
      : this(
          fieldPath: _json.containsKey('fieldPath')
              ? _json['fieldPath'] as core.String
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPath != null) 'fieldPath': fieldPath!,
        if (mode != null) 'mode': mode!,
      };
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1beta1ListIndexesResponse {
  /// The indexes.
  core.List<GoogleFirestoreAdminV1beta1Index>? indexes;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1beta1ListIndexesResponse({
    this.indexes,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1beta1ListIndexesResponse.fromJson(core.Map _json)
      : this(
          indexes: _json.containsKey('indexes')
              ? (_json['indexes'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1beta1Index.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexes != null) 'indexes': indexes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
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

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
class LatLng {
  /// The latitude in degrees.
  ///
  /// It must be in the range \[-90.0, +90.0\].
  core.double? latitude;

  /// The longitude in degrees.
  ///
  /// It must be in the range \[-180.0, +180.0\].
  core.double? longitude;

  LatLng({
    this.latitude,
    this.longitude,
  });

  LatLng.fromJson(core.Map _json)
      : this(
          latitude: _json.containsKey('latitude')
              ? (_json['latitude'] as core.num).toDouble()
              : null,
          longitude: _json.containsKey('longitude')
              ? (_json['longitude'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// The request for Firestore.ListCollectionIds.
class ListCollectionIdsRequest {
  /// The maximum number of results to return.
  core.int? pageSize;

  /// A page token.
  ///
  /// Must be a value from ListCollectionIdsResponse.
  core.String? pageToken;

  ListCollectionIdsRequest({
    this.pageSize,
    this.pageToken,
  });

  ListCollectionIdsRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
      };
}

/// The response from Firestore.ListCollectionIds.
class ListCollectionIdsResponse {
  /// The collection ids.
  core.List<core.String>? collectionIds;

  /// A page token that may be used to continue the list.
  core.String? nextPageToken;

  ListCollectionIdsResponse({
    this.collectionIds,
    this.nextPageToken,
  });

  ListCollectionIdsResponse.fromJson(core.Map _json)
      : this(
          collectionIds: _json.containsKey('collectionIds')
              ? (_json['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for Firestore.ListDocuments.
class ListDocumentsResponse {
  /// The Documents found.
  core.List<Document>? documents;

  /// The next page token.
  core.String? nextPageToken;

  ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  ListDocumentsResponse.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map((value) => Document.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A request for Firestore.Listen
class ListenRequest {
  /// A target to add to this stream.
  Target? addTarget;

  /// Labels associated with this target change.
  core.Map<core.String, core.String>? labels;

  /// The ID of a target to remove from this stream.
  core.int? removeTarget;

  ListenRequest({
    this.addTarget,
    this.labels,
    this.removeTarget,
  });

  ListenRequest.fromJson(core.Map _json)
      : this(
          addTarget: _json.containsKey('addTarget')
              ? Target.fromJson(
                  _json['addTarget'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          removeTarget: _json.containsKey('removeTarget')
              ? _json['removeTarget'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addTarget != null) 'addTarget': addTarget!,
        if (labels != null) 'labels': labels!,
        if (removeTarget != null) 'removeTarget': removeTarget!,
      };
}

/// The response for Firestore.Listen.
class ListenResponse {
  /// A Document has changed.
  DocumentChange? documentChange;

  /// A Document has been deleted.
  DocumentDelete? documentDelete;

  /// A Document has been removed from a target (because it is no longer
  /// relevant to that target).
  DocumentRemove? documentRemove;

  /// A filter to apply to the set of documents previously returned for the
  /// given target.
  ///
  /// Returned when documents may have been removed from the given target, but
  /// the exact documents are unknown.
  ExistenceFilter? filter;

  /// Targets have changed.
  TargetChange? targetChange;

  ListenResponse({
    this.documentChange,
    this.documentDelete,
    this.documentRemove,
    this.filter,
    this.targetChange,
  });

  ListenResponse.fromJson(core.Map _json)
      : this(
          documentChange: _json.containsKey('documentChange')
              ? DocumentChange.fromJson(_json['documentChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          documentDelete: _json.containsKey('documentDelete')
              ? DocumentDelete.fromJson(_json['documentDelete']
                  as core.Map<core.String, core.dynamic>)
              : null,
          documentRemove: _json.containsKey('documentRemove')
              ? DocumentRemove.fromJson(_json['documentRemove']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filter: _json.containsKey('filter')
              ? ExistenceFilter.fromJson(
                  _json['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          targetChange: _json.containsKey('targetChange')
              ? TargetChange.fromJson(
                  _json['targetChange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentChange != null) 'documentChange': documentChange!,
        if (documentDelete != null) 'documentDelete': documentDelete!,
        if (documentRemove != null) 'documentRemove': documentRemove!,
        if (filter != null) 'filter': filter!,
        if (targetChange != null) 'targetChange': targetChange!,
      };
}

/// A map value.
class MapValue {
  /// The map's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except in certain documented contexts. The map keys, represented as UTF-8,
  /// must not exceed 1,500 bytes and cannot be empty.
  core.Map<core.String, Value>? fields;

  MapValue({
    this.fields,
  });

  MapValue.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    Value.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// An order on a field.
class Order {
  /// The direction to order by.
  ///
  /// Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String? direction;

  /// The field to order by.
  FieldReference? field;

  Order({
    this.direction,
    this.field,
  });

  Order.fromJson(core.Map _json)
      : this(
          direction: _json.containsKey('direction')
              ? _json['direction'] as core.String
              : null,
          field: _json.containsKey('field')
              ? FieldReference.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (direction != null) 'direction': direction!,
        if (field != null) 'field': field!,
      };
}

/// The request for Firestore.PartitionQuery.
class PartitionQueryRequest {
  /// The maximum number of partitions to return in this call, subject to
  /// `partition_count`.
  ///
  /// For example, if `partition_count` = 10 and `page_size` = 8, the first call
  /// to PartitionQuery will return up to 8 partitions and a `next_page_token`
  /// if more results exist. A second call to PartitionQuery will return up to 2
  /// partitions, to complete the total of 10 specified in `partition_count`.
  core.int? pageSize;

  /// The `next_page_token` value returned from a previous call to
  /// PartitionQuery that may be used to get an additional set of results.
  ///
  /// There are no ordering guarantees between sets of results. Thus, using
  /// multiple sets of results will require merging the different result sets.
  /// For example, two subsequent calls using a page_token may return: * cursor
  /// B, cursor M, cursor Q * cursor A, cursor U, cursor W To obtain a complete
  /// result set ordered with respect to the results of the query supplied to
  /// PartitionQuery, the results sets should be merged: cursor A, cursor B,
  /// cursor M, cursor Q, cursor U, cursor W
  core.String? pageToken;

  /// The desired maximum number of partition points.
  ///
  /// The partitions may be returned across multiple pages of results. The
  /// number must be positive. The actual number of partitions returned may be
  /// fewer. For example, this may be set to one fewer than the number of
  /// parallel queries to be run, or in running a data pipeline job, one fewer
  /// than the number of workers or compute instances available.
  core.String? partitionCount;

  /// A structured query.
  ///
  /// Query must specify collection with all descendants and be ordered by name
  /// ascending. Other filters, order bys, limits, offsets, and start/end
  /// cursors are not supported.
  StructuredQuery? structuredQuery;

  PartitionQueryRequest({
    this.pageSize,
    this.pageToken,
    this.partitionCount,
    this.structuredQuery,
  });

  PartitionQueryRequest.fromJson(core.Map _json)
      : this(
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          partitionCount: _json.containsKey('partitionCount')
              ? _json['partitionCount'] as core.String
              : null,
          structuredQuery: _json.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(_json['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (partitionCount != null) 'partitionCount': partitionCount!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
      };
}

/// The response for Firestore.PartitionQuery.
class PartitionQueryResponse {
  /// A page token that may be used to request an additional set of results, up
  /// to the number specified by `partition_count` in the PartitionQuery
  /// request.
  ///
  /// If blank, there are no more results.
  core.String? nextPageToken;

  /// Partition results.
  ///
  /// Each partition is a split point that can be used by RunQuery as a starting
  /// or end point for the query results. The RunQuery requests must be made
  /// with the same query supplied to this PartitionQuery request. The partition
  /// cursors will be ordered according to same ordering as the results of the
  /// query supplied to PartitionQuery. For example, if a PartitionQuery request
  /// returns partition cursors A and B, running the following three queries
  /// will return the entire result set of the original query: * query, end_at A
  /// * query, start_at A, end_at B * query, start_at B An empty result may
  /// indicate that the query has too few results to be partitioned.
  core.List<Cursor>? partitions;

  PartitionQueryResponse({
    this.nextPageToken,
    this.partitions,
  });

  PartitionQueryResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          partitions: _json.containsKey('partitions')
              ? (_json['partitions'] as core.List)
                  .map((value) => Cursor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (partitions != null) 'partitions': partitions!,
      };
}

/// A precondition on a document, used for conditional operations.
class Precondition {
  /// When set to `true`, the target document must exist.
  ///
  /// When set to `false`, the target document must not exist.
  core.bool? exists;

  /// When set, the target document must exist and have been last updated at
  /// that time.
  ///
  /// Timestamp must be microsecond aligned.
  core.String? updateTime;

  Precondition({
    this.exists,
    this.updateTime,
  });

  Precondition.fromJson(core.Map _json)
      : this(
          exists:
              _json.containsKey('exists') ? _json['exists'] as core.bool : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exists != null) 'exists': exists!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The projection of document's fields to return.
class Projection {
  /// The fields to return.
  ///
  /// If empty, all fields are returned. To only return the name of the
  /// document, use `['__name__']`.
  core.List<FieldReference>? fields;

  Projection({
    this.fields,
  });

  Projection.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => FieldReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// A target specified by a query.
class QueryTarget {
  /// The parent resource name.
  ///
  /// In the format: `projects/{project_id}/databases/{database_id}/documents`
  /// or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  core.String? parent;

  /// A structured query.
  StructuredQuery? structuredQuery;

  QueryTarget({
    this.parent,
    this.structuredQuery,
  });

  QueryTarget.fromJson(core.Map _json)
      : this(
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          structuredQuery: _json.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(_json['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
      };
}

/// Options for a transaction that can only be used to read documents.
class ReadOnly {
  /// Reads documents at the given time.
  ///
  /// This may not be older than 60 seconds.
  core.String? readTime;

  ReadOnly({
    this.readTime,
  });

  ReadOnly.fromJson(core.Map _json)
      : this(
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readTime != null) 'readTime': readTime!,
      };
}

/// Options for a transaction that can be used to read and write documents.
class ReadWrite {
  /// An optional transaction to retry.
  core.String? retryTransaction;
  core.List<core.int> get retryTransactionAsBytes =>
      convert.base64.decode(retryTransaction!);

  set retryTransactionAsBytes(core.List<core.int> _bytes) {
    retryTransaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  ReadWrite({
    this.retryTransaction,
  });

  ReadWrite.fromJson(core.Map _json)
      : this(
          retryTransaction: _json.containsKey('retryTransaction')
              ? _json['retryTransaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retryTransaction != null) 'retryTransaction': retryTransaction!,
      };
}

/// The request for Firestore.Rollback.
class RollbackRequest {
  /// The transaction to roll back.
  ///
  /// Required.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  RollbackRequest({
    this.transaction,
  });

  RollbackRequest.fromJson(core.Map _json)
      : this(
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The request for Firestore.RunQuery.
class RunQueryRequest {
  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This may not be older than 270 seconds.
  core.String? readTime;

  /// A structured query.
  StructuredQuery? structuredQuery;

  /// Reads documents in a transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunQueryRequest({
    this.newTransaction,
    this.readTime,
    this.structuredQuery,
    this.transaction,
  });

  RunQueryRequest.fromJson(core.Map _json)
      : this(
          newTransaction: _json.containsKey('newTransaction')
              ? TransactionOptions.fromJson(_json['newTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          structuredQuery: _json.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(_json['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newTransaction != null) 'newTransaction': newTransaction!,
        if (readTime != null) 'readTime': readTime!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for Firestore.RunQuery.
class RunQueryResponse {
  /// A query result.
  ///
  /// Not set when reporting partial progress.
  Document? document;

  /// The time at which the document was read.
  ///
  /// This may be monotonically increasing; in this case, the previous documents
  /// in the result stream are guaranteed not to have changed between their
  /// `read_time` and this one. If the query returns no results, a response with
  /// `read_time` and no `document` will be sent, and this represents the time
  /// at which the query was run.
  core.String? readTime;

  /// The number of results that have been skipped due to an offset between the
  /// last response and the current response.
  core.int? skippedResults;

  /// The transaction that was started as part of this request.
  ///
  /// Can only be set in the first response, and only if
  /// RunQueryRequest.new_transaction was set in the request. If set, no other
  /// fields will be set in this response.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> _bytes) {
    transaction =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunQueryResponse({
    this.document,
    this.readTime,
    this.skippedResults,
    this.transaction,
  });

  RunQueryResponse.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? Document.fromJson(
                  _json['document'] as core.Map<core.String, core.dynamic>)
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          skippedResults: _json.containsKey('skippedResults')
              ? _json['skippedResults'] as core.int
              : null,
          transaction: _json.containsKey('transaction')
              ? _json['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (readTime != null) 'readTime': readTime!,
        if (skippedResults != null) 'skippedResults': skippedResults!,
        if (transaction != null) 'transaction': transaction!,
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

/// A Firestore query.
class StructuredQuery {
  /// A end point for the query results.
  Cursor? endAt;

  /// The collections to query.
  core.List<CollectionSelector>? from;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints. Must be \>= 0 if specified.
  core.int? limit;

  /// The number of results to skip.
  ///
  /// Applies before limit, but after all other constraints. Must be \>= 0 if
  /// specified.
  core.int? offset;

  /// The order to apply to the query results.
  ///
  /// Firestore guarantees a stable ordering through the following rules: * Any
  /// field required to appear in `order_by`, that is not already specified in
  /// `order_by`, is appended to the order in field name order by default. * If
  /// an order on `__name__` is not specified, it is appended by default. Fields
  /// are appended with the same sort direction as the last order specified, or
  /// 'ASCENDING' if no order was specified. For example: * `SELECT * FROM Foo
  /// ORDER BY A` becomes `SELECT * FROM Foo ORDER BY A, __name__` * `SELECT *
  /// FROM Foo ORDER BY A DESC` becomes `SELECT * FROM Foo ORDER BY A DESC,
  /// __name__ DESC` * `SELECT * FROM Foo WHERE A > 1` becomes `SELECT * FROM
  /// Foo WHERE A > 1 ORDER BY A, __name__`
  core.List<Order>? orderBy;

  /// The projection to return.
  Projection? select;

  /// A starting point for the query results.
  Cursor? startAt;

  /// The filter to apply.
  Filter? where;

  StructuredQuery({
    this.endAt,
    this.from,
    this.limit,
    this.offset,
    this.orderBy,
    this.select,
    this.startAt,
    this.where,
  });

  StructuredQuery.fromJson(core.Map _json)
      : this(
          endAt: _json.containsKey('endAt')
              ? Cursor.fromJson(
                  _json['endAt'] as core.Map<core.String, core.dynamic>)
              : null,
          from: _json.containsKey('from')
              ? (_json['from'] as core.List)
                  .map((value) => CollectionSelector.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limit: _json.containsKey('limit') ? _json['limit'] as core.int : null,
          offset:
              _json.containsKey('offset') ? _json['offset'] as core.int : null,
          orderBy: _json.containsKey('orderBy')
              ? (_json['orderBy'] as core.List)
                  .map((value) => Order.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          select: _json.containsKey('select')
              ? Projection.fromJson(
                  _json['select'] as core.Map<core.String, core.dynamic>)
              : null,
          startAt: _json.containsKey('startAt')
              ? Cursor.fromJson(
                  _json['startAt'] as core.Map<core.String, core.dynamic>)
              : null,
          where: _json.containsKey('where')
              ? Filter.fromJson(
                  _json['where'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endAt != null) 'endAt': endAt!,
        if (from != null) 'from': from!,
        if (limit != null) 'limit': limit!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (select != null) 'select': select!,
        if (startAt != null) 'startAt': startAt!,
        if (where != null) 'where': where!,
      };
}

/// A specification of a set of documents to listen to.
class Target {
  /// A target specified by a set of document names.
  DocumentsTarget? documents;

  /// If the target should be removed once it is current and consistent.
  core.bool? once;

  /// A target specified by a query.
  QueryTarget? query;

  /// Start listening after a specific `read_time`.
  ///
  /// The client must know the state of matching documents at this time.
  core.String? readTime;

  /// A resume token from a prior TargetChange for an identical target.
  ///
  /// Using a resume token with a different target is unsupported and may fail.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The target ID that identifies the target on the stream.
  ///
  /// Must be a positive number and non-zero.
  core.int? targetId;

  Target({
    this.documents,
    this.once,
    this.query,
    this.readTime,
    this.resumeToken,
    this.targetId,
  });

  Target.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? DocumentsTarget.fromJson(
                  _json['documents'] as core.Map<core.String, core.dynamic>)
              : null,
          once: _json.containsKey('once') ? _json['once'] as core.bool : null,
          query: _json.containsKey('query')
              ? QueryTarget.fromJson(
                  _json['query'] as core.Map<core.String, core.dynamic>)
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          resumeToken: _json.containsKey('resumeToken')
              ? _json['resumeToken'] as core.String
              : null,
          targetId: _json.containsKey('targetId')
              ? _json['targetId'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (once != null) 'once': once!,
        if (query != null) 'query': query!,
        if (readTime != null) 'readTime': readTime!,
        if (resumeToken != null) 'resumeToken': resumeToken!,
        if (targetId != null) 'targetId': targetId!,
      };
}

/// Targets being watched have changed.
class TargetChange {
  /// The error that resulted in this change, if applicable.
  Status? cause;

  /// The consistent `read_time` for the given `target_ids` (omitted when the
  /// target_ids are not at a consistent snapshot).
  ///
  /// The stream is guaranteed to send a `read_time` with `target_ids` empty
  /// whenever the entire stream reaches a new consistent snapshot. ADD,
  /// CURRENT, and RESET messages are guaranteed to (eventually) result in a new
  /// consistent snapshot (while NO_CHANGE and REMOVE messages are not). For a
  /// given stream, `read_time` is guaranteed to be monotonically increasing.
  core.String? readTime;

  /// A token that can be used to resume the stream for the given `target_ids`,
  /// or all targets if `target_ids` is empty.
  ///
  /// Not set on every target change.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The type of change that occurred.
  /// Possible string values are:
  /// - "NO_CHANGE" : No change has occurred. Used only to send an updated
  /// `resume_token`.
  /// - "ADD" : The targets have been added.
  /// - "REMOVE" : The targets have been removed.
  /// - "CURRENT" : The targets reflect all changes committed before the targets
  /// were added to the stream. This will be sent after or with a `read_time`
  /// that is greater than or equal to the time at which the targets were added.
  /// Listeners can wait for this change if read-after-write semantics are
  /// desired.
  /// - "RESET" : The targets have been reset, and a new initial state for the
  /// targets will be returned in subsequent changes. After the initial state is
  /// complete, `CURRENT` will be returned even if the target was previously
  /// indicated to be `CURRENT`.
  core.String? targetChangeType;

  /// The target IDs of targets that have changed.
  ///
  /// If empty, the change applies to all targets. The order of the target IDs
  /// is not defined.
  core.List<core.int>? targetIds;

  TargetChange({
    this.cause,
    this.readTime,
    this.resumeToken,
    this.targetChangeType,
    this.targetIds,
  });

  TargetChange.fromJson(core.Map _json)
      : this(
          cause: _json.containsKey('cause')
              ? Status.fromJson(
                  _json['cause'] as core.Map<core.String, core.dynamic>)
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          resumeToken: _json.containsKey('resumeToken')
              ? _json['resumeToken'] as core.String
              : null,
          targetChangeType: _json.containsKey('targetChangeType')
              ? _json['targetChangeType'] as core.String
              : null,
          targetIds: _json.containsKey('targetIds')
              ? (_json['targetIds'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cause != null) 'cause': cause!,
        if (readTime != null) 'readTime': readTime!,
        if (resumeToken != null) 'resumeToken': resumeToken!,
        if (targetChangeType != null) 'targetChangeType': targetChangeType!,
        if (targetIds != null) 'targetIds': targetIds!,
      };
}

/// Options for creating a new transaction.
class TransactionOptions {
  /// The transaction can only be used for read operations.
  ReadOnly? readOnly;

  /// The transaction can be used for both read and write operations.
  ReadWrite? readWrite;

  TransactionOptions({
    this.readOnly,
    this.readWrite,
  });

  TransactionOptions.fromJson(core.Map _json)
      : this(
          readOnly: _json.containsKey('readOnly')
              ? ReadOnly.fromJson(
                  _json['readOnly'] as core.Map<core.String, core.dynamic>)
              : null,
          readWrite: _json.containsKey('readWrite')
              ? ReadWrite.fromJson(
                  _json['readWrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readOnly != null) 'readOnly': readOnly!,
        if (readWrite != null) 'readWrite': readWrite!,
      };
}

/// A filter with a single operand.
class UnaryFilter {
  /// The field to which to apply the operator.
  FieldReference? field;

  /// The unary operator to apply.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "IS_NAN" : The given `field` is equal to `NaN`.
  /// - "IS_NULL" : The given `field` is equal to `NULL`.
  /// - "IS_NOT_NAN" : The given `field` is not equal to `NaN`. Requires: * No
  /// other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  /// - "IS_NOT_NULL" : The given `field` is not equal to `NULL`. Requires: * A
  /// single `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  core.String? op;

  UnaryFilter({
    this.field,
    this.op,
  });

  UnaryFilter.fromJson(core.Map _json)
      : this(
          field: _json.containsKey('field')
              ? FieldReference.fromJson(
                  _json['field'] as core.Map<core.String, core.dynamic>)
              : null,
          op: _json.containsKey('op') ? _json['op'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (op != null) 'op': op!,
      };
}

/// A message that can hold any of the supported value types.
class Value {
  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain an map
  /// which contains another array.
  ArrayValue? arrayValue;

  /// A boolean value.
  core.bool? booleanValue;

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are
  /// considered by queries.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> _bytes) {
    bytesValue =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A double value.
  core.double? doubleValue;

  /// A geo point value representing a point on the surface of Earth.
  LatLng? geoPointValue;

  /// An integer value.
  core.String? integerValue;

  /// A map value.
  MapValue? mapValue;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A reference to a document.
  ///
  /// For example:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? referenceValue;

  /// A string value.
  ///
  /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only
  /// the first 1,500 bytes of the UTF-8 representation are considered by
  /// queries.
  core.String? stringValue;

  /// A timestamp value.
  ///
  /// Precise only to microseconds. When stored, any additional precision is
  /// rounded down.
  core.String? timestampValue;

  Value({
    this.arrayValue,
    this.booleanValue,
    this.bytesValue,
    this.doubleValue,
    this.geoPointValue,
    this.integerValue,
    this.mapValue,
    this.nullValue,
    this.referenceValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map _json)
      : this(
          arrayValue: _json.containsKey('arrayValue')
              ? ArrayValue.fromJson(
                  _json['arrayValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          bytesValue: _json.containsKey('bytesValue')
              ? _json['bytesValue'] as core.String
              : null,
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          geoPointValue: _json.containsKey('geoPointValue')
              ? LatLng.fromJson(
                  _json['geoPointValue'] as core.Map<core.String, core.dynamic>)
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.String
              : null,
          mapValue: _json.containsKey('mapValue')
              ? MapValue.fromJson(
                  _json['mapValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nullValue: _json.containsKey('nullValue') ? 'NULL_VALUE' : null,
          referenceValue: _json.containsKey('referenceValue')
              ? _json['referenceValue'] as core.String
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
          timestampValue: _json.containsKey('timestampValue')
              ? _json['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValue != null) 'arrayValue': arrayValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (bytesValue != null) 'bytesValue': bytesValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (geoPointValue != null) 'geoPointValue': geoPointValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (mapValue != null) 'mapValue': mapValue!,
        if (nullValue != null) 'nullValue': nullValue!,
        if (referenceValue != null) 'referenceValue': referenceValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// A write on a document.
class Write {
  /// An optional precondition on the document.
  ///
  /// The write will fail if this is set and not met by the target document.
  Precondition? currentDocument;

  /// A document name to delete.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? delete;

  /// Applies a transformation to a document.
  DocumentTransform? transform;

  /// A document to write.
  Document? update;

  /// The fields to update in this write.
  ///
  /// This field can be set only when the operation is `update`. If the mask is
  /// not set for an `update` and the document exists, any existing data will be
  /// overwritten. If the mask is set and the document on the server has fields
  /// not covered by the mask, they are left unchanged. Fields referenced in the
  /// mask, but not present in the input document, are deleted from the document
  /// on the server. The field paths in this mask must not contain a reserved
  /// field name.
  DocumentMask? updateMask;

  /// The transforms to perform after update.
  ///
  /// This field can be set only when the operation is `update`. If present,
  /// this write is equivalent to performing `update` and `transform` to the
  /// same document atomically and in order.
  core.List<FieldTransform>? updateTransforms;

  Write({
    this.currentDocument,
    this.delete,
    this.transform,
    this.update,
    this.updateMask,
    this.updateTransforms,
  });

  Write.fromJson(core.Map _json)
      : this(
          currentDocument: _json.containsKey('currentDocument')
              ? Precondition.fromJson(_json['currentDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          delete: _json.containsKey('delete')
              ? _json['delete'] as core.String
              : null,
          transform: _json.containsKey('transform')
              ? DocumentTransform.fromJson(
                  _json['transform'] as core.Map<core.String, core.dynamic>)
              : null,
          update: _json.containsKey('update')
              ? Document.fromJson(
                  _json['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? DocumentMask.fromJson(
                  _json['updateMask'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTransforms: _json.containsKey('updateTransforms')
              ? (_json['updateTransforms'] as core.List)
                  .map((value) => FieldTransform.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentDocument != null) 'currentDocument': currentDocument!,
        if (delete != null) 'delete': delete!,
        if (transform != null) 'transform': transform!,
        if (update != null) 'update': update!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (updateTransforms != null) 'updateTransforms': updateTransforms!,
      };
}

/// The request for Firestore.Write.
///
/// The first request creates a stream, or resumes an existing one from a token.
/// When creating a new stream, the server replies with a response containing
/// only an ID and a token, to use in the next request. When resuming a stream,
/// the server first streams any responses later than the given token, then a
/// response containing only an up-to-date token, to use in the next request.
class WriteRequest {
  /// Labels associated with this write request.
  core.Map<core.String, core.String>? labels;

  /// The ID of the write stream to resume.
  ///
  /// This may only be set in the first message. When left empty, a new write
  /// stream will be created.
  core.String? streamId;

  /// A stream token that was previously sent by the server.
  ///
  /// The client should set this field to the token from the most recent
  /// WriteResponse it has received. This acknowledges that the client has
  /// received responses up to this token. After sending this token, earlier
  /// tokens may not be used anymore. The server may close the stream if there
  /// are too many unacknowledged responses. Leave this field unset when
  /// creating a new stream. To resume a stream at a specific point, set this
  /// field and the `stream_id` field. Leave this field unset when creating a
  /// new stream.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order. This must be empty on the first
  /// request. This may be empty on the last request. This must not be empty on
  /// all other requests.
  core.List<Write>? writes;

  WriteRequest({
    this.labels,
    this.streamId,
    this.streamToken,
    this.writes,
  });

  WriteRequest.fromJson(core.Map _json)
      : this(
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          streamId: _json.containsKey('streamId')
              ? _json['streamId'] as core.String
              : null,
          streamToken: _json.containsKey('streamToken')
              ? _json['streamToken'] as core.String
              : null,
          writes: _json.containsKey('writes')
              ? (_json['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (streamId != null) 'streamId': streamId!,
        if (streamToken != null) 'streamToken': streamToken!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response for Firestore.Write.
class WriteResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the write.
  core.String? commitTime;

  /// The ID of the stream.
  ///
  /// Only set on the first message, when a new stream was created.
  core.String? streamId;

  /// A token that represents the position of this response in the stream.
  ///
  /// This can be used by a client to resume the stream at this point. This
  /// field is always set.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> _bytes) {
    streamToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  WriteResponse({
    this.commitTime,
    this.streamId,
    this.streamToken,
    this.writeResults,
  });

  WriteResponse.fromJson(core.Map _json)
      : this(
          commitTime: _json.containsKey('commitTime')
              ? _json['commitTime'] as core.String
              : null,
          streamId: _json.containsKey('streamId')
              ? _json['streamId'] as core.String
              : null,
          streamToken: _json.containsKey('streamToken')
              ? _json['streamToken'] as core.String
              : null,
          writeResults: _json.containsKey('writeResults')
              ? (_json['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTime != null) 'commitTime': commitTime!,
        if (streamId != null) 'streamId': streamId!,
        if (streamToken != null) 'streamToken': streamToken!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// The result of applying a write.
class WriteResult {
  /// The results of applying each DocumentTransform.FieldTransform, in the same
  /// order.
  core.List<Value>? transformResults;

  /// The last update time of the document after applying the write.
  ///
  /// Not set after a `delete`. If the write did not actually change the
  /// document, this will be the previous update_time.
  core.String? updateTime;

  WriteResult({
    this.transformResults,
    this.updateTime,
  });

  WriteResult.fromJson(core.Map _json)
      : this(
          transformResults: _json.containsKey('transformResults')
              ? (_json['transformResults'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformResults != null) 'transformResults': transformResults!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
