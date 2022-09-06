part of '../view.dart';

class TabBars extends StatefulWidget {
  @override
  State<TabBars> createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  int index=1;
  var _radioValue;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
      Row(
        children: [
          Radio(
              activeColor: Colors.orange,
              focusColor: Colors.orange,
              value: 1,
              groupValue: _radioValue,
              onChanged: (value1) {
                setState(() {
                  index=1;
                  _radioValue = value1;
                  Provider.of<value>(context, listen: false).getVal( index) ;
                 // print(Provider.of<value>(context, listen: false).getVal( index));
                  // Provider.of<value>(context,listen: false).calValue(val);
                });
              }),
          const Text('Email'),
        ],
      ),

      Row(
        children: [
          Radio(
              activeColor: Colors.orange,
              focusColor: Colors.orange,
              value: 2,
              groupValue: _radioValue,
              onChanged: (value1) {
                setState(() {
                  index=2;
                  _radioValue = value1;
                  Provider.of<value>(context, listen: false).getVal( index) ;
                 // print(Provider.of<value>(context, listen: false).getVal( index) );
                  // Provider.of<value>(context,listen: false).calValue(val);
                });
              }),
          const Text('phone number '),
        ],
      ),
    ]);
  }
}
