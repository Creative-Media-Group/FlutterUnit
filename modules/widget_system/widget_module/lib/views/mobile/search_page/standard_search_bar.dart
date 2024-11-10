import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage/storage.dart';
import 'package:widget_module/blocs/blocs.dart';

import '../../../data/zone.dart';

class StandardSearchBarInner extends StatelessWidget
    implements PreferredSizeWidget {
  const StandardSearchBarInner({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(35 + 8 * 2);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    Color? color = Theme.of(context).appBarTheme.backgroundColor;
    return Container(
      color: isDark ? color : Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              Navigator.of(context).maybePop();
            },
            child: const SizedBox(
                height: 32, width: 32, child: Icon(Icons.arrow_back)),
          ),
          Expanded(
            child: Container(
                height: 35,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Material(
                  color: Colors.transparent,
                  child: TextField(
                    autofocus: true,
                    enabled: true,
                    cursorColor: Colors.blue,
                    maxLines: 1,
                    onChanged: (str) => _doSearch(context, str),
                    onSubmitted: (str) {
                      //提交后,收起键盘
                      FocusScope.of(context).requestFocus(FocusNode());
                    },
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            isDark ? const Color(0xff292929) : const Color(0xffF3F6F9),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 20,
                        ),

                        prefixIconConstraints: const BoxConstraints(
                            maxHeight: 24,
                            minWidth: 36
                        ),
                        isCollapsed: true,
                        contentPadding: const EdgeInsets.only(top: 4,bottom: 4,right: 8),
                        border: const UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                        ),
                        hintText: "搜索组件",
                        hintStyle: const TextStyle(fontSize: 14)),
                  ),
                )),
          ),
          const Wrap(
            spacing: 3,
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(TolyIcon.icon_sound),
              // Text('已签',style: TextStyle(color: Colors.grey),)
            ],
          ),
          const SizedBox(width: 15)
        ],
      ),
    );
  }

  void _doSearch(BuildContext context, String str) {
    WidgetsBloc widgetsBloc = BlocProvider.of<WidgetsBloc>(context);
    final WidgetFilter filter = widgetsBloc.state.filter.copyWith(
      name: str,
    );
    widgetsBloc.add(
      EventSearchWidget(filter: filter),
    );
  }
}
