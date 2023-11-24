import 'package:flutter/material.dart';
import 'package:news_app/presentation/utils/string_utils.dart';
import 'package:news_app/presentation/widgets/rounded_button.dart';

class NewsListingFilter extends StatefulWidget {
  const NewsListingFilter({
    super.key,
    this.filterKeys,
    this.selectedFilterKeys,
    this.onApply,
  });

  final List<String>? filterKeys;
  final List<String>? selectedFilterKeys;
  final VoidCallback? onApply;

  @override
  State<NewsListingFilter> createState() => _NewsListingFilterState();
}

class _NewsListingFilterState extends State<NewsListingFilter> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.filterKeys?.length,
              itemBuilder: (context, index) {
                final item = widget.filterKeys?.elementAt(index) ?? '';
                return CheckboxListTile(
                  title: Text(
                    item,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  value: widget.selectedFilterKeys?.contains(item),
                  onChanged: (isChecked) {
                    setState(() {
                      if (isChecked ?? false) {
                        widget.selectedFilterKeys?.add(item);
                      } else {
                        widget.selectedFilterKeys?.remove(item);
                      }
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RoundedButton(
                name: NewsAppString.clear,
                onPressed: () {
                  setState(() {
                    widget.selectedFilterKeys?.clear();
                  });
                },
              ),
              const SizedBox(
                width: 5,
              ),
              RoundedButton(
                name: NewsAppString.apply,
                onPressed: () {
                  widget.onApply?.call();
                },
              )
            ],
          )
        ],
      ),
    );
  }
}