# Firebase API Client Libraries for Dart

[![melos](https://img.shields.io/badge/maintained%20with-melos-f700ff.svg?style=flat-square)](https://github.com/invertase/melos)

This is based on the [`googleapis.dart`](https://github.com/google/googleapis.dart) repository but instead aimed at supporting Firebase related APIs only. Additionally, this adds support for several unlisted (but discoverable) Firebase APIs that are not listed on the official [discovery API](https://discovery.googleapis.com/discovery/v1/apis) that `googleapis.dart` uses (and is currently limited to) as well as several private APIs (APIs that require an API key to view discovery information).

> See [./generated/firebaseapis/README.md](./generated/firebaseapis/README.md) for information on all the currently supported APIs.

## Usage Example

```dart
// Import the APIs you want to use
import 'package:firebaseapis/firebaseremoteconfig/v1.dart' as remote_config;
import 'package:firebaseapis/firebaserules/v1.dart' as firebase_rules;
// Import Auth client
import 'package:googleapis_auth/auth_io.dart' as auth;

// Get an Auth Client
final authClient = await auth.clientViaApplicationDefaultCredentials(scopes: [
  remote_config.FirebaseRemoteConfigApi.cloudPlatformScope,
]);

// Call some APIs
final rc = remote_config.FirebaseRemoteConfigApi(authClient);
final config =
  await rc.projects.getRemoteConfig('projects/<your-project-id>');
print(config.parameters);
print(config.parameters?.values.first.defaultValue);
print(config.parameters?.values.first.description);
print(config.parameters?.values.first.valueType);

final fr = firebase_rules.FirebaseRulesApi(authClient);
final rules =
  await fr.projects.rulesets.list('projects/<your-project-id>');
print(rules.rulesets?.first.name);
print(rules.rulesets?.first.source?.files?.first.content);
```

## Custom Request Headers

Custom request headers can be set by adding to `requestHeaders`:

```dart
import 'package:firebaseapis/src/user_agent.dart';

Future<void> main() async {
  requestHeaders.addAll({
    'cool-header': 'cool-value',
  });
  print(requestHeaders);
}
```

## Contributing

This project uses [Melos](https://github.com/invertase/melos) to manage the project and dependencies.

To install Melos, run the following command from your SSH client:

```bash
pub global activate melos
```

Next, at the root of your locally cloned repository bootstrap the projects dependencies:

```bash
melos bootstrap
```

The bootstrap command locally links all dependencies within the project without having to
provide manual [`dependency_overrides`](https://dart.dev/tools/pub/pubspec). This allows all
plugins, examples and tests to build from the local clone project.

> You do not need to run `flutter pub get` once bootstrap has been completed.

### Adding a new API

To add a new API and generate library code for it is fairly straightforward;

1.  Add the API to the `apis` list in [`./config.yaml`](config.yaml)
2.  Run `melos run config:download` to update the downloaded discovery document JSON files that are in [`./discovery`](discovery).
    - **Note**: several APIs require an [API key](https://cloud.google.com/docs/authentication/api-keys) to be able to read the discovery information. Set a `API_KEY` environment variable before running the command to be able to download the discovery documents for these private APIs, e.g. `API_KEY=<your-key-here> melos run config:download`.
3.  Run `melos run config:generate` to generate new Dart library code for the API, which outputs to [`./generated/firebaseapis`](generated/firebaseapis).

---

<p align="center">
  <a href="https://invertase.io/?utm_source=readme&utm_medium=footer&utm_campaign=firebaseapis">
    <img width="75px" src="https://static.invertase.io/assets/invertase/invertase-rounded-avatar.png">
  </a>
  <p align="center">
    Maintained by <a href="https://invertase.io/?utm_source=readme&utm_medium=footer&utm_campaign=firebaseapis">Invertase</a>.
  </p>
</p>
