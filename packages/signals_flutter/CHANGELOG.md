## 4.1.0

- Fix bug in auto dispose where signal dispose causes cycle
- Dispose does not reset to initial value and will read the last value with a warning

## 4.0.3

- Removing SignalsReadAfterDisposeError in favor of debug print warning

## 4.0.2

- Adding SignalsWriteAfterDisposeError/SignalsReadAfterDisposeError for better error handling

## 4.0.1

- Fix for listen causing multiple callbacks on non static methods

## 4.0.0

- StreamSignal now will rebuild with signals are read in the callback to create the stream
- Stream/Future signal both can take an optional list of dependencies to rebuild on
- FutureSignal now extends StreamSignal
- StreamSignal can now rebuild/refresh
- StreamSignal can now pause/resume
- Adding computedAsync/computedFrom for similar API to angular
- Adding `.set(..., force: true)` to Signal/Computed to force a rebuild
- Adding `.recompute()` for Computed to recall the callback
- Adding autoDispose for Signal/Computed
- Adding some helper signals not included in the default export
- Signals for WidgetsBinding and SchedulerBinding
- Signals for Theme/MediaQuery
- TickerSignal for Flutter animations

## 3.0.0

- adding readonlySignalContainer to be existing signalContainer API
- updating signalContainer to allow for mutable signals
- adding SignalEquality to allow override of ==
- adding `select` for signals to return a computed value
- fix memory leak on signal container
- adding ChangeStackSignal

## 1.0.8

- Updating `signals_core` package **1.0.6**

## 1.0.7

- Fixing `listen` in extension with multiple signals

## 1.0.6

- Fixing `watch` in extension with multiple signals

## 1.0.5

- Updating `signals_core` package **1.0.3**

## 1.0.4

- Updating `signals_core` package **1.0.2**
- Adding `Watch.builder` for non positional argument usage and direct replacement for `Builder`

## 1.0.3

- Fixing memory leak for `watch`/`listen`

## 1.0.2

- Fixing memory leak for `watch`/`listen`

## 1.0.1

- `Watch` widget improvements (reducing extra first frame build)

## 1.0.0

- Moving core api from `signals` package to `signals_core` package
- Depending on `signals_core` package **1.0.1**
- Adding Flutter extensions for `signals_flutter` package
