import 'package:ez_sauda/core/presentation/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class CatalogTile extends StatelessWidget {
  const CatalogTile({
    required this.name,
    super.key,
    this.onTap,
    this.imageUrl,
  });

  final String name;
  final String? imageUrl;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = this.imageUrl;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Material(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: context.typography.bodyRegular,
                ),
                SizedBox(height: 5),
                if (imageUrl != null)
                  Expanded(
                    child: Image.network(
                      imageUrl,
                      errorBuilder: (context, _, __) {
                        return SizedBox.shrink();
                      },
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
