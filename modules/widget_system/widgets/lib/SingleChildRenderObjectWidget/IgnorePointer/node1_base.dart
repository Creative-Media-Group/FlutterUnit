import 'package:flutter/material.dart';

/// create by 张风捷特烈 on 2020-04-19
/// contact me by email 1981462002@qq.com


class CustomIgnorePointer extends StatefulWidget {
  const CustomIgnorePointer({super.key});

  @override
  _CustomIgnorePointerState createState() => _CustomIgnorePointerState();
}

class _CustomIgnorePointerState extends State<CustomIgnorePointer> {
  bool _ignore = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            print('IgnorePointer');
          },
          child: IgnorePointer(
            ignoring: _ignore,
            child: _buildButton(),
          ),
        ),
        _buildSwitch(),
        Text(!_ignore ? '允许点击' : '点击已锁定')
      ],
    );
  }

  Widget _buildButton() => ElevatedButton(
      child: const Text(
        'To About',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () => Navigator.of(context).pushNamed('AboutMePage'));

  Widget _buildSwitch() => Switch(
      value: _ignore,
      onChanged: (v) {
        setState(() {
          _ignore = v;
        });
      });
}
