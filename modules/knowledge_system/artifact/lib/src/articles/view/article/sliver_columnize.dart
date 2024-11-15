import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'columnize_page_view.dart';
import 'package:l10n/l10n.dart';
class ColumnizeViewPage extends StatefulWidget {
  const ColumnizeViewPage({super.key});

  @override
  State<ColumnizeViewPage> createState() => _ColumnizeViewPageState();
}

class _ColumnizeViewPageState extends State<ColumnizeViewPage> {

  late PageController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = PageController(viewportFraction: 0.9);
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return  Container(
      height: 220,
      color: Theme.of(context).listTileTheme.tileColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0,right: 16,top: 12,bottom: 4),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/icon_head.webp',),
                  backgroundColor: Colors.transparent,
                  radius: 10,
                ),
                const SizedBox(width: 6,),
                const Text("捷特文章专栏",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                const Spacer(),
                GestureDetector(
                  onTap: () async{
                    Uri uri = Uri.parse('https://juejin.im/user/5b42c0656fb9a04fe727eb37');
                    if (await canLaunchUrl(uri)) {
                    await launchUrl(uri,mode:LaunchMode.externalNonBrowserApplication );
                    } else {
                    debugPrint('Could not launch ${uri.path}');
                    }
                  },
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        context.l10n.knowledgeToJuejin

    ,style: const TextStyle(fontSize: 12,color: Colors.blue),),
                      const Icon(Icons.navigate_next,size: 12,color: Colors.blue,)
                    ],
                  ),
                ),

              ],
            ),
          ),
          const Expanded(
            child: ColumnizePageView(),
          ),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }

}
