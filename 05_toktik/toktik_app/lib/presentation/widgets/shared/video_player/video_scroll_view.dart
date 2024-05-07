//Creamos el Reproductor de videos Scrolleable
//Que se puede hacer Scroll

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:toktik_app/domain/entities/video_post.dart';
import 'package:toktik_app/presentation/widgets/shared/video_player/video_buttons.dart';
import 'package:toktik_app/presentation/widgets/video/fullscreen_player.dart';

class VideoScrollView extends StatelessWidget {
  //Recibimos la lista de videos
  final List<VideoPost> videos;

  const VideoScrollView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    //?Es un Widgets que nos permite hacer scroll a pantalla completa.
    return PageView.builder(
      //Creamos un Rebote
      physics: const BouncingScrollPhysics(),
      //Queremos que nuestro Scroll sea vertical
      scrollDirection: Axis.vertical,
      //
      itemCount: videos.length,
      //
      itemBuilder: (context, index) {
        //Cargamos nuestro VideoPost
        final VideoPost videoPost = videos[index];

        //Retornamos un Stack Widget porque tendremos Widgets uno encima de otros
        return Stack(
          children: [
            //?VideoPlayer + gradiente
            //Creamos un Tamaño especifico, utilizamos expand para que utilice toda la pantalla

            SizedBox.expand(
                child: FullScreenPlayer(
                    caption: videoPost.caption, videoUrl: videoPost.videoUrL)),
            //FullScreenPlayer(),

            //?Botones
            //UTILIZAMOS Positioned que va muy de la mano con stack que nos permite colocar nuestro widget
            //en una posición mas adecuada
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost)),
          ],
        );
      },
    );
  }
}