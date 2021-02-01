# flutter_is_waldo

Provides an helper method to check if code is running in [Waldo](https://www.waldo.io/) mode

## Usage
Have a look on [installation page](https://pub.dev/packages/flutter_is_waldo/install).

More details about why you should check if Waldo is running can be found on its [website](https://docs.waldo.io/docs/add-waldo-functionality-to-your-app).
Basically : 
>  When running inside Waldo, your application is launched with environment variable INSIDE_WALDO set to the value '1'.
> When your application detects that this environment variable is set, it can trigger or skip specific logic.

```dart
import 'dart:async';
import 'package:flutter_is_waldo/flutter_is_waldo.dart';


print(await FlutterWaldo.isWaldo());  // true if running in waldo, false otherwise
```

You will find links to the API docs on the [pub API reference page](https://pub.dev/documentation/flutter_is_waldo/latest/flutter_is_waldo/flutter_is_waldo-library.html).
