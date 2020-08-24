import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

typedef Callback = void Function(bool hasFocus);

FocusNode useFocusNodeValueListener(Callback onFocusChange) {
  return use(_FocusNodeValueListenerHook(
    callback: onFocusChange,
  ));
}

class _FocusNodeValueListenerHook extends Hook<FocusNode> {
  final Callback callback;

  const _FocusNodeValueListenerHook({
    @required this.callback,
  });

  @override
  _FocusNodeValueListenerHookState createState() =>
      _FocusNodeValueListenerHookState();
}

class _FocusNodeValueListenerHookState
    extends HookState<FocusNode, _FocusNodeValueListenerHook> {
  FocusNode _focusNode;

  @override
  void initHook() {
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      hook.callback(_focusNode.hasFocus);
    });
  }

  @override
  FocusNode build(BuildContext context) => _focusNode;

  @override
  void dispose() => _focusNode.dispose();
}
