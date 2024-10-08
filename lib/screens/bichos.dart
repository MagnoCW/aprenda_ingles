import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {
  final FlutterSoundPlayer _player = FlutterSoundPlayer();
  bool _isPlayerInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    await _player.openPlayer();
    setState(() {
      _isPlayerInitialized = true;
    });
  }

  Future<void> _executar(String fileName) async {
    if (!_isPlayerInitialized) {
      print("Player não está inicializado.");
      return;
    }

    try {
      await _player.startPlayer(
        fromURI: 'lib/assets/audios/$fileName.mp3',
      );
    } catch (e) {
      print("Erro ao tocar o áudio: $e");
    }
  }

  @override
  void dispose() {
    _player.closePlayer();
    super.dispose();
  }

  Widget _textButton(BuildContext context, String fileName) {
    return TextButton(
        onPressed: () {
          _executar(fileName);
        },
        child: Image.asset('lib/assets/images/$fileName.png'));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _textButton(context, 'cao'),
            _textButton(context, 'gato'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _textButton(context, 'leao'),
            _textButton(context, 'macaco'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _textButton(context, 'ovelha'),
            _textButton(context, 'vaca'),
          ],
        ),
      ],
    );
  }
}
