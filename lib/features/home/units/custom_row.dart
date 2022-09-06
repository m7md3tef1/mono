part of '../home_view.dart';

class _CustomRow extends StatelessWidget {
  final String? name;
  final int? index;
  const _CustomRow({Key? key, this.index, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
        listener: (_, s) {},
        builder: (context, s) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      HomeCubit.get(context).changeBottom(index!);
                    },
                    child:   CustomText(
                      text: name,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                    ),
                ),
                CustomText(
                  text: ' See all',
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                )

              ],
            ),
          );
        });
  }
}
