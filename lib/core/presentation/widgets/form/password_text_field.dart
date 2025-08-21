import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.autofocus = false,
    this.onEditingComplete,
    this.hintText,
    this.initialValue,
    this.textInputAction,
  });

  final String? initialValue;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final bool autofocus;
  final VoidCallback? onEditingComplete;
  final String? hintText;
  final TextInputAction? textInputAction;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _isObscured = true;

  void toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      controller: widget.controller,
      obscureText: _isObscured,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      keyboardType: TextInputType.visiblePassword,
      textInputAction: widget.textInputAction,
      autofocus: widget.autofocus,
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(
            right: 20.0,
            left: 15,
          ),
          child: InkResponse(
            radius: 20,
            onTap: toggleObscure,
            child: context.icons.eye.svg(
              colorFilter: ColorFilter.mode(
                context.colors.secondary.withAlpha(64),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.never,
      ),
    );
  }
}
