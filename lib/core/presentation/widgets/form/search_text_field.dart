import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
    super.key,
    this.value,
    this.onTap,
    this.suffixIcon,
    this.onChanged,
  });

  final String? value;
  final VoidCallback? onTap;
  final Widget? suffixIcon;
  final VoidCallback? onChanged;

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  late final _controller = TextEditingController(text: widget.value);

  @override
  void didUpdateWidget(SearchTextField oldWidget) {
    final value = widget.value;
    if (value != null && value != _controller.text) {
      _controller.text = value;
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onTap: widget.onTap,
      decoration: InputDecoration(
        hintText: context.l10n.search,
        suffixIcon: widget.suffixIcon,
      ),
    );
  }
}
