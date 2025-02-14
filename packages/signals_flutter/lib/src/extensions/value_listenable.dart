import 'package:flutter/foundation.dart';
import 'package:signals_core/signals_core.dart';

/// Extension on [ValueListenable] to provide helpful methods for signals
extension SignalValueListenableUtils<T> on ValueListenable<T> {
  /// Convert an existing [ValueListenable] to [ReadonlySignal]
  ReadonlySignal<T> toSignal({String? debugLabel}) {
    final s = signal<T>(value, debugLabel: debugLabel);
    void update() => s.value = value;
    addListener(update);
    s.onDispose(() => removeListener(update));
    return s;
  }
}
