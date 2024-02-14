import 'package:asroo_store/core/common/widgets/text_app.dart';
import 'package:asroo_store/core/extensions/context_extension.dart';
import 'package:asroo_store/core/style/colors/colors_dark.dart';
import 'package:asroo_store/core/style/fonts/font_family_helper.dart';
import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
import 'package:asroo_store/features/admin/users/data/models/get_all_users_response.dart';
import 'package:asroo_store/features/admin/users/presentation/widgets/delete_user_icon.dart';
import 'package:asroo_store/features/admin/users/presentation/widgets/table_cell_title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TableForUsers extends StatelessWidget {
  const TableForUsers({
    required this.userList,
    super.key,
  });

  final List<UsersModel> userList;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: ColorsDark.blueLight),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FixedColumnWidth(100.w),
        1: const FlexColumnWidth(),
        2: FixedColumnWidth(110.w),
      },
      children: [
        const TableRow(
          decoration: BoxDecoration(
            color: ColorsDark.blueDark,
          ),
          children: [
            //Name
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitleWidget(
                icon: Icons.person,
                title: 'Name',
              ),
            ),
            //Email
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitleWidget(
                icon: Icons.email_outlined,
                title: 'Email',
              ),
            ),
            //Delete
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: TableCellTitleWidget(
                icon: Icons.delete_forever,
                title: 'Delete',
              ),
            )
          ],
        ),
        ...List.generate(
          userList.length,
          (index) => TableRow(
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextApp(
                    text: userList[index].name ?? '',
                    theme: context.textStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextApp(
                    text: userList[index].email ?? '',
                    theme: context.textStyle.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: DeleteUserIcon(
                  userId: userList[index].id ?? '',
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
