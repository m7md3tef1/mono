part of'../view.dart';

class ChildrenRoom extends StatelessWidget {
  const ChildrenRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [

            Container(
              height: .7.sh,
              width: 1.sw,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  const _CustomRow(
                    name: 'Different services',
                    index: 0,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const _Different(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const _CustomRow(
                    name: 'Offers & packages',
                    index: 1,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Offers(),
                  SizedBox(
                    height: 10.h,
                  ),
                  const _CustomRow(
                    name: 'Different services',
                    index: 3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const Different(),
                  //  Gallery(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
