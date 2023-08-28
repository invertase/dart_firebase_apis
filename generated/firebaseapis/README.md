## Firebase APIs for Dart

Generated Dart libraries for accessing
[Firebase APIs](https://firebase.google.com).

This is based on the [`googleapis.dart`](https://github.com/google/googleapis.dart) repository but instead aimed at supporting Firebase related APIs only. Additionally, this adds support for several unlisted (but discoverable) Firebase APIs that are not listed on the official [discovery API](https://discovery.googleapis.com/discovery/v1/apis) that `googleapis.dart` uses (and is currently limited to) as well as several private APIs (APIs that require an API key to view discovery information).

## Available Google APIs

The following is a list of APIs that are currently available inside this
package.

#### Cloud Functions API - `cloudfunctions_v1`

Manages lightweight user-provided functions executed in response to events.

- [Documentation](https://cloud.google.com/functions)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/cloudfunctions_v1/cloudfunctions_v1-library.html)

#### Firebase Cloud Messaging API - `fcm_v1`

FCM send API that provides a cross-platform messaging solution to reliably deliver messages at no cost.

- [Documentation](https://firebase.google.com/docs/cloud-messaging)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/fcm_v1/fcm_v1-library.html)

#### Firebase Cloud Messaging Data API - `fcmdata_v1beta1`

Provides additional information about Firebase Cloud Messaging (FCM) message sends and deliveries.

- [Documentation](https://firebase.google.com/docs/cloud-messaging)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/fcmdata_v1beta1/fcmdata_v1beta1-library.html)

#### Firebase Management API - `firebase_v1beta1`

The Firebase Management API enables programmatic setup and management of Firebase projects, including a project's Firebase resources and Firebase apps.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebase_v1beta1/firebase_v1beta1-library.html)

#### Firebase App Check API - `firebaseappcheck_v1beta`

Firebase App Check works alongside other Firebase services to help protect your backend resources from abuse, such as billing fraud or phishing.

- [Documentation](https://firebase.google.com/docs/app-check)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseappcheck_v1beta/firebaseappcheck_v1beta-library.html)

#### Firebase App Distribution API - `firebaseappdistribution_v1`

- [Documentation](https://firebase.google.com/products/app-distribution)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseappdistribution_v1/firebaseappdistribution_v1-library.html)

#### Firebase Realtime Database API - `firebasedatabase_v1beta`

The Firebase Realtime Database API enables programmatic provisioning and management of Realtime Database instances.

- [Documentation](https://firebase.google.com/docs/reference/rest/database/database-management/rest/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasedatabase_v1beta/firebasedatabase_v1beta-library.html)

#### Firebase Dynamic Links API - `firebasedynamiclinks_v1`

Programmatically creates and manages Firebase Dynamic Links.

- [Documentation](https://firebase.google.com/docs/dynamic-links/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasedynamiclinks_v1/firebasedynamiclinks_v1-library.html)

#### Firebase Hosting API - `firebasehosting_v1`

The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.

- [Documentation](https://firebase.google.com/docs/hosting/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasehosting_v1/firebasehosting_v1-library.html)

#### Firebase Hosting API - `firebasehosting_v1beta1`

The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.

- [Documentation](https://firebase.google.com/docs/hosting/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasehosting_v1beta1/firebasehosting_v1beta1-library.html)

#### Firebase ML API - `firebaseml_v1`

Access custom machine learning models hosted via Firebase ML.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseml_v1/firebaseml_v1-library.html)

#### Firebase ML API - `firebaseml_v1beta2`

Access custom machine learning models hosted via Firebase ML.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseml_v1beta2/firebaseml_v1beta2-library.html)

#### Firebase Rules API - `firebaserules_v1`

Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request. 

- [Documentation](https://firebase.google.com/docs/storage/security)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaserules_v1/firebaserules_v1-library.html)

#### Cloud Storage for Firebase API - `firebasestorage_v1beta`

The Cloud Storage for Firebase API enables programmatic management of Cloud Storage buckets for use in Firebase projects

- [Documentation](https://firebase.google.com/docs/storage)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasestorage_v1beta/firebasestorage_v1beta-library.html)

#### Cloud Firestore API - `firestore_v1`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore_v1/firestore_v1-library.html)

#### Cloud Firestore API - `firestore_v1beta1`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore_v1beta1/firestore_v1beta1-library.html)

#### Cloud Firestore API - `firestore_v1beta2`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore_v1beta2/firestore_v1beta2-library.html)

#### Identity Toolkit API - `identitytoolkit_v1`

The Google Identity Toolkit API lets you use open standards to verify a user's identity.

- [Documentation](https://cloud.google.com/identity-platform)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit_v1/identitytoolkit_v1-library.html)

#### Identity Toolkit API - `identitytoolkit_v2`

The Google Identity Toolkit API lets you use open standards to verify a user's identity.

- [Documentation](https://cloud.google.com/identity-platform)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit_v2/identitytoolkit_v2-library.html)

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Identity Toolkit API - `identitytoolkit_v3`

Help the third party sites to implement federated login.

- [Documentation](https://developers.google.com/identity-toolkit/v3/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit_v3/identitytoolkit_v3-library.html)

#### ![Logo](https://www.google.com/images/icons/product/cloud_storage-16.png) Cloud Storage JSON API - `storage_v1`

Stores and retrieves potentially large, immutable data objects.

- [Documentation](https://developers.google.com/storage/docs/json_api/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/storage_v1/storage_v1-library.html)

#### Cloud Testing API - `testing_v1`

Allows developers to run automated tests for their mobile applications on Google infrastructure.

- [Documentation](https://developers.google.com/cloud-test-lab/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/testing_v1/testing_v1-library.html)

