## Firebase APIs for Dart

Generated Dart libraries for accessing
[Firebase APIs](https://firebase.google.com).

This is based on the [`googleapis.dart`](https://github.com/google/googleapis.dart) repository but instead aimed at supporting Firebase related APIs only. Additionally, this adds support for several unlisted (but discoverable) Firebase APIs that are not listed on the official [discovery API](https://discovery.googleapis.com/discovery/v1/apis) that `googleapis.dart` uses (and is currently limited to) as well as several private APIs (APIs that require an API key to view discovery information).

## Available Firebase APIs

The following is a list of APIs that are currently available inside this
package.

#### Cloud Functions API - `cloudfunctions.v1`

Manages lightweight user-provided functions executed in response to events.

- [Documentation](https://cloud.google.com/functions)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/cloudfunctions.v1/cloudfunctions.v1-library.html)

#### Firebase Cloud Messaging API - `fcm.v1`

FCM send API that provides a cross-platform messaging solution to reliably deliver messages at no cost.

- [Documentation](https://firebase.google.com/docs/cloud-messaging)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/fcm.v1/fcm.v1-library.html)

#### Firebase Cloud Messaging Data API - `fcmdata.v1beta1`

Provides additional information about Firebase Cloud Messaging (FCM) message sends and deliveries.

- [Documentation](https://firebase.google.com/docs/cloud-messaging)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/fcmdata.v1beta1/fcmdata.v1beta1-library.html)

#### FCM Registration API - `fcmregistrations.v1`

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/fcmregistrations.v1/fcmregistrations.v1-library.html)

#### Firebase Management API - `firebase.v1beta1`

The Firebase Management API enables programmatic setup and management of Firebase projects, including a project's Firebase resources and Firebase apps.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebase.v1beta1/firebase.v1beta1-library.html)

#### Firebase App Check API - `firebaseappcheck.v1beta`

Firebase App Check works alongside other Firebase services to help protect your backend resources from abuse, such as billing fraud or phishing.

- [Documentation](https://firebase.google.com/docs/app-check)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseappcheck.v1beta/firebaseappcheck.v1beta-library.html)

#### Firebase App Distribution API - `firebaseappdistribution.v1alpha`

- [Documentation](https://firebase.google.com/products/app-distribution)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseappdistribution.v1alpha/firebaseappdistribution.v1alpha-library.html)

#### Firebase App Testers API - `firebaseapptesters.v1alpha`

- [Documentation](https://firebase.google.com/products/app-distribution)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseapptesters.v1alpha/firebaseapptesters.v1alpha-library.html)

#### Firebase Realtime Database Management API - `firebasedatabase.v1beta`

The Firebase Realtime Database Management API enables programmatic provisioning and management of Realtime Database instances.

- [Documentation](https://firebase.google.com/docs/reference/rest/database/database-management/rest/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasedatabase.v1beta/firebasedatabase.v1beta-library.html)

#### Firebase Dynamic Links API - `firebasedynamiclinks.v1`

Programmatically creates and manages Firebase Dynamic Links.

- [Documentation](https://firebase.google.com/docs/dynamic-links/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasedynamiclinks.v1/firebasedynamiclinks.v1-library.html)

#### Firebase Extensions API - `firebaseextensions.v1beta`

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseextensions.v1beta/firebaseextensions.v1beta-library.html)

#### Firebase Hosting API - `firebasehosting.v1`

The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.

- [Documentation](https://firebase.google.com/docs/hosting/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasehosting.v1/firebasehosting.v1-library.html)

#### Firebase Hosting API - `firebasehosting.v1beta1`

The Firebase Hosting REST API enables programmatic and customizable management and deployments to your Firebase-hosted sites. Use this REST API to create and manage channels and sites as well as to deploy new or updated hosting configurations and content files.

- [Documentation](https://firebase.google.com/docs/hosting/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasehosting.v1beta1/firebasehosting.v1beta1-library.html)

#### Firebase In-App Messaging API - `firebaseinappmessaging.v1`

Publicly accessible APIs that allows firebase in-app messaging SDKs/Clients to communicate with servers for fetching message definitions. 

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseinappmessaging.v1/firebaseinappmessaging.v1-library.html)

#### Firebase Installations API - `firebaseinstallations.v1`

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseinstallations.v1/firebaseinstallations.v1-library.html)

#### Firebase ML API - `firebaseml.v1`

Access custom machine learning models hosted via Firebase ML.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseml.v1/firebaseml.v1-library.html)

#### Firebase ML API - `firebaseml.v1beta2`

Access custom machine learning models hosted via Firebase ML.

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseml.v1beta2/firebaseml.v1beta2-library.html)

#### Firebase Predictions API - `firebasepredictions.v1beta1`

- [Documentation](https://firebase.google.com)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasepredictions.v1beta1/firebasepredictions.v1beta1-library.html)

#### Firebase Remote Config API - `firebaseremoteconfig.v1`

The Firebase Remote Config API lets developers change the behavior and appearance of their apps without requiring users to download an app update. It is an alternative to, but can be used in tandem with, the Firebase console at https://console.firebase.google.com.

- [Documentation](https://firebase.google.com/docs/remote-config/use-config-rest)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaseremoteconfig.v1/firebaseremoteconfig.v1-library.html)

#### Firebase Rules API - `firebaserules.v1`

Creates and manages rules that determine when a Firebase Rules-enabled service should permit a request. 

- [Documentation](https://firebase.google.com/docs/storage/security)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebaserules.v1/firebaserules.v1-library.html)

#### Cloud Storage for Firebase API - `firebasestorage.v1beta`

The Cloud Storage for Firebase API enables programmatic management of Cloud Storage buckets for use in Firebase projects

- [Documentation](https://firebase.google.com/docs/storage)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firebasestorage.v1beta/firebasestorage.v1beta-library.html)

#### Cloud Firestore API - `firestore.v1`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore.v1/firestore.v1-library.html)

#### Cloud Firestore API - `firestore.v1beta1`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore.v1beta1/firestore.v1beta1-library.html)

#### Cloud Firestore API - `firestore.v1beta2`

Accesses the NoSQL document database built for automatic scaling, high performance, and ease of application development. 

- [Documentation](https://cloud.google.com/firestore)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/firestore.v1beta2/firestore.v1beta2-library.html)

#### Identity Toolkit API - `identitytoolkit.v1`

The Google Identity Toolkit API lets you use open standards to verify a user's identity.

- [Documentation](https://firebase.google.com/docs/auth/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit.v1/identitytoolkit.v1-library.html)

#### Identity Toolkit API - `identitytoolkit.v2`

The Google Identity Toolkit API lets you use open standards to verify a user's identity.

- [Documentation](https://firebase.google.com/docs/auth/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit.v2/identitytoolkit.v2-library.html)

#### ![Logo](https://www.gstatic.com/images/branding/product/1x/googleg_16dp.png) Google Identity Toolkit API - `identitytoolkit.v3`

Help the third party sites to implement federated login.

- [Documentation](https://developers.google.com/identity-toolkit/v3/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/identitytoolkit.v3/identitytoolkit.v3-library.html)

#### Token Service API - `securetoken.v2beta1`

The Token Service API lets you exchange an ID token or a refresh token for an access token and a refresh token, which you can use to securely call your own APIs.

- [Documentation](https://developers.google.com/identity/toolkit/securetoken)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/securetoken.v2beta1/securetoken.v2beta1-library.html)

#### ![Logo](https://www.google.com/images/icons/product/cloud_storage-16.png) Cloud Storage JSON API - `storage.v1`

Stores and retrieves potentially large, immutable data objects.

- [Documentation](https://developers.google.com/storage/docs/json_api/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/storage.v1/storage.v1-library.html)

#### Cloud Testing API - `testing.v1`

Allows developers to run automated tests for their mobile applications on Google infrastructure.

- [Documentation](https://developers.google.com/cloud-test-lab/)
- [API details](https://pub.dev/documentation/firebaseapis/0.1.1/testing.v1/testing.v1-library.html)

