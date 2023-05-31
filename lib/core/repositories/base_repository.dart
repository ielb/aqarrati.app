import 'package:contextual_logging/src/contextual_logger.dart';
import 'package:flutter/foundation.dart';

class BaseRepository
    with ChangeNotifier, DiagnosticableTreeMixin, ContextualLogger {
  bool loading = false;
  bool error = false;
  String errorMessage = '';

  void setLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  void setError(bool value, String message) {
    error = value;
    errorMessage = message;
    notifyListeners();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(FlagProperty('loading', value: loading, ifTrue: 'loading'))
      ..add(FlagProperty('error', value: error, ifTrue: 'error'))
      ..add(StringProperty('errorMessage', errorMessage));
  }
}
