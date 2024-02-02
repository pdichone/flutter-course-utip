import 'package:flutter/material.dart';

class TipRow extends StatelessWidget {
  const TipRow({
    super.key,
    required this.theme,
    required this.billTotal,
    required this.percentage,
  });

  final ThemeData theme;
  final double billTotal;
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Tip',
          style: theme.textTheme.titleMedium,
        ),
        Text(
          '\$${(billTotal * percentage).toStringAsFixed(2)}',
          style: theme.textTheme.titleMedium,
        )
      ],
    );
  }
}
