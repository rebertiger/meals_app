import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FilterTile extends StatefulWidget{
  FilterTile({super.key,required this.isFilterSet, required this.filterTitle});
  String filterTitle;
  bool isFilterSet;
  
  @override
  State<StatefulWidget> createState() {
    return FilterTileState();
  }
  
}
class FilterTileState extends State<FilterTile>{
  @override 
  Widget build(BuildContext context){
    return SwitchListTile(
            value: widget.isFilterSet,
            onChanged: (isChecked) {
              setState(() {
                widget.isFilterSet = isChecked;
              });
            },
            title: Text(
              widget.filterTitle,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            subtitle: Text(
              'Only include ${widget.filterTitle} meals',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(color: Theme.of(context).colorScheme.onSurface),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34,right: 22),
          );
  }
}