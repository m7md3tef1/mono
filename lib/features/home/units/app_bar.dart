part of '../home_view.dart';

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 101.h,
      width: double.infinity,
      color: Colors.white70,
      child: Center(
        child:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              height: 38.h,
              width: 228.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_outlined,
                      color: ColorManager.darkGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.filter_list,
                      color: ColorManager.darkGrey,
                    ),
                    hintText: 'Search',
                    border: InputBorder.none),
              )),
        ),
      ),
    );

}}
