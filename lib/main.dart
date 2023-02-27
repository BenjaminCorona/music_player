import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player/components/custom_list_tile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicApp(),
    );
  }
}

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
//?LISTA DE CANCIONES
  List musicList = [
    {
      'name': "Como Quien Pierde una Estrella",
      'artist': "Alejandro Fernández",
      'url':
          "https://streamintmusic.netlify.app/music/Alejandro%20Fern%C3%A1ndez%20-%20Como%20Quien%20Pierde%20una%20Estrella.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273e8a363fef108cc8397299f77",
    },
    {
      'name': "Hoy Tengo Ganas De Ti",
      'artist': "Alejandro Fernández",
      'url':
          "https://streamintmusic.netlify.app/music/Alejandro%20Fern%C3%A1ndez%20-%20Hoy%20Tengo%20Ganas%20De%20Ti.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273f56db996da2204c3a444e446",
    },
    {
      'name': "A gritos de esperanza",
      'artist': "Álex Ubago feat. Jesús Navarro",
      'url':
          "https://streamintmusic.netlify.app/music/%C3%81lex%20Ubago%20-%20A%20gritos%20de%20esperanza%20(feat.%20Jes%C3%BAs%20Navarro).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2736accbdab81b7beb662b806b1",
    },
    {
      'name': "No Importa La Distancia",
      'artist': "David Bisbal",
      'url':
          "https://streamintmusic.netlify.app/music/David%20Bisbal%20-%20No%20Importa%20La%20Distancia.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27334c7dfed22945ee63767cbd1",
    },
    {
      'name': "The Unforgiven",
      'artist': "Ha_Ash",
      'url':
          "https://streamintmusic.netlify.app/music/Ha_Ash%20-%20The%20Unforgiven.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d00001e0251df4d86fab901dd091ae866",
    },
    {
      'name': "Most Girls",
      'artist': "Hailee Steinfeld",
      'url':
          "https://streamintmusic.netlify.app/music/Hailee%20Steinfeld%20-%20Most%20Girls.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27339aab3a1fc9e60f4e2bb9b8c",
    },
    {
      'name': "Para Empezar",
      'artist': "Leonel Garcia",
      'url':
          "https://streamintmusic.netlify.app/music/Leonel%20Garcia%20-%20Para%20Empezar.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273c9408579d6cd78a1e9704164",
    },
    {
      'name': "Aqui Estoy Yo",
      'artist': "Luis Fonsi",
      'url':
          "https://streamintmusic.netlify.app/music/Luis%20Fonsi%20-%20Aqui%20Estoy%20Yo.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273103c561a93cff10ff32903a1",
    },
    {
      'name': "Country Girl (Shake It For Me)",
      'artist': "Luke Bryan",
      'url':
          "https://streamintmusic.netlify.app/music/Luke%20Bryan%20-%20Country%20Girl%20(Shake%20It%20For%20Me).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273b9e05b0be97dd9b2f79fb29e",
    },
    {
      'name': "El Embrujo",
      'artist': "Morat",
      'url':
          "https://streamintmusic.netlify.app/music/Morat%20-%20El%20Embrujo.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2730fea92ebfe052dfef08590ba",
    },
    {
      'name': "Mi Suerte",
      'artist': "Morat",
      'url':
          "https://streamintmusic.netlify.app/music/Morat%20-%20Mi%20Suerte.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273902e93d7f1f67cdb90cfe96c",
    },
    {
      'name': "Mi Vida Entera",
      'artist': "Morat",
      'url':
          "https://streamintmusic.netlify.app/music/Morat%20-%20Mi%20Vida%20Entera.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27390fa215e791c13fe9bacb8bc",
    },
    {
      'name': "Cuando Amas a Alguien",
      'artist': "Noel Schajris (with Axel)",
      'url':
          "https://streamintmusic.netlify.app/music/Noel%20Schajris%20-%20Cuando%20Amas%20a%20Alguien%20(with%20Axel).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273abbfb7d11119778873d4baac",
    },
    {
      'name': "Hilo Rojo",
      'artist': "Río Roma",
      'url':
          "https://streamintmusic.netlify.app/music/R%C3%ADo%20Roma%20-%20Hilo%20Rojo.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273bee9f2ea718958049c67d9b1",
    },
    {
      'name': "Te Adiviné",
      'artist': "Río Roma",
      'url':
          "https://streamintmusic.netlify.app/music/R%C3%ADo%20Roma%20-%20Te%20Adivin%C3%A9.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273a4c9b4811047540cb93e8805",
    },
    {
      'name': "Vino el Amor",
      'artist': "Río Roma",
      'url':
          "https://streamintmusic.netlify.app/music/R%C3%ADo%20Roma%20-%20Vino%20el%20Amor.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2733eb3f679d778b4aa7f3bc7fd",
    },
    {
      'name': "Como Mirarte",
      'artist': "Sebastián Yatra",
      'url':
          "https://streamintmusic.netlify.app/music/Sebasti%C3%A1n%20Yatra%20-%20Como%20Mirarte.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273a309275aa8156e987896c47c",
    },
    {
      'name': "Que Me Alcance la Vida",
      'artist': "Sin Bandera",
      'url':
          "https://streamintmusic.netlify.app/music/Sin%20Bandera%20-%20Que%20Me%20Alcance%20la%20Vida.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2738c6ff5cbed17363658f46732",
    },
    {
      'name': "La Locura",
      'artist': "Yahir",
      'url':
          "https://streamintmusic.netlify.app/music/Yahir%20-%20La%20Locura.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273efa99e38d112b064eb552d04",
    },
    {
      'name': "Cherry Pie",
      'artist': "Warrant",
      'url':
          "https://streamintmusic.netlify.app/music/Warrant%20-%20Cherry%20Pie.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273ca00891c544ffcab44bf7a34",
    },
    {
      'name': "Holy Diver",
      'artist': "Dio",
      'url':
          "https://streamintmusic.netlify.app/music/Dio%20-%20Holy%20Diver.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2732457ab409ae106f8ae1dff89",
    },
    {
      'name': "Rainbow In The Dark",
      'artist': "Dio",
      'url':
          "https://streamintmusic.netlify.app/music/Dio%20-%20Rainbow%20In%20The%20Dark.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2732457ab409ae106f8ae1dff89",
    },
    {
      'name': "Here Without You",
      'artist': "3 Doors Down",
      'url':
          "https://streamintmusic.netlify.app/music/3%20Doors%20Down%20-%20Here%20Without%20You.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27383c39b0d32eb4a2064e1e228",
    },
    {
      'name': "Rock You Like a Hurricane (2011)",
      'artist': "Scorpions",
      'url':
          "https://streamintmusic.netlify.app/music/Scorpions%20-%20Rock%20You%20Like%20a%20Hurricane%20(2011).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273bd0db295c0164ddbc0584ebb",
    },
    {
      'name': "No One Like You",
      'artist': "Scorpions",
      'url':
          "https://streamintmusic.netlify.app/music/Scorpions%20-%20No%20One%20Like%20You.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2730b0fbaf16e4475ad616b41b8",
    },
    {
      'name': "(Your Love Keeps Lifting Me) Higher & Higher",
      'artist': "Jackie Wilson",
      'url':
          "https://streamintmusic.netlify.app/music/Jackie%20Wilson%20-%20(Your%20Love%20Keeps%20Lifting%20Me)%20Higher%20&%20Higher.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273e7ba7ec8dbf10a6db596cfe7",
    },
    {
      'name': "California Dreamin'",
      'artist': "The Beach Boys",
      'url':
          "https://streamintmusic.netlify.app/music/The%20Beach%20Boys%20-%20California%20Dreamin'.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273fe8fbfb90a20a9c725714709",
    },
    {
      'name': "Rock and Roll, Hoochie Koo (Single Version)",
      'artist': "Rick Derringer",
      'url':
          "https://streamintmusic.netlify.app/music/Rick%20Derringer%20-%20Rock%20and%20Roll,%20Hoochie%20Koo%20(Single%20Version).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2739d67c642d1f3c566e4b8f033",
    },
    {
      'name': "Fire and Rain",
      'artist': "James Taylor",
      'url':
          "https://streamintmusic.netlify.app/music/James%20Taylor%20-%20Fire%20and%20Rain.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2731f8c1a0ed8c404c469680cc0",
    },
    {
      'name': "Up Around The Bend",
      'artist': "Creedence Clearwater Revival",
      'url':
          "https://streamintmusic.netlify.app/music/Creedence%20Clearwater%20Revival%20-%20Up%20Around%20The%20Bend.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27361834aa14b97a7d9c693134f",
    },
    {
      'name': "Got Your Number",
      'artist': "The Lloyd-Langton Group",
      'url':
          "https://streamintmusic.netlify.app/music/The%20Lloyd-Langton%20Group%20-%20Got%20Your%20Number.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d00001e0202796972d05be866e3767867",
    },
    {
      'name': "Every Breath You Take",
      'artist': "The Police",
      'url':
          "https://streamintmusic.netlify.app/music/The%20Police%20-%20Every%20Breath%20You%20Take.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273cf390065f5a3336f12143e16",
    },
    {
      'name': "Detroit Rock City (Edit)",
      'artist': "Kiss",
      'url':
          "https://streamintmusic.netlify.app/music/Kiss%20-%20Detroit%20Rock%20City%20(Edit).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273569030ace53d7c4d6fb60aaa",
    },
    {
      'name': "You Don't Mess Around With Jim",
      'artist': "Jim Croce",
      'url':
          "https://streamintmusic.netlify.app/music/Jim%20Croce%20-%20You%20Don't%20Mess%20Around%20With%20Jim.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27398078d325c25a5ac4081cfba",
    },
    {
      'name': "Old Town Road",
      'artist': "Lil Nas X (feat. Billy Ray Cyrus)",
      'url':
          "https://streamintmusic.netlify.app/music/Lil%20Nas%20X%20-%20Old%20Town%20Road%20(feat.%20Billy%20Ray%20Cyrus)%20(Remix).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273c0e7bf5cdd630f314f20586a",
    },
    {
      'name': "John Deere Green",
      'artist': "Joe Diffie",
      'url':
          "https://streamintmusic.netlify.app/music/Joe%20Diffie%20-%20John%20Deere%20Green.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2733223704e053760c4b8a8fc66",
    },
    {
      'name': "A Horse with No Name",
      'artist': "America",
      'url':
          "https://streamintmusic.netlify.app/music/America%20-%20A%20Horse%20with%20No%20Name.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273afb855e6461310dff4046c56",
    },
    {
      'name': "Dust in the Wind",
      'artist': "Kansas",
      'url':
          "https://streamintmusic.netlify.app/music/Kansas%20-%20Dust%20in%20the%20Wind.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27359f0f56a7cd13526b5b4204c",
    },
    {
      'name': "Rock This Town",
      'artist': "Stray Cats",
      'url':
          "https://streamintmusic.netlify.app/music/Stray%20Cats%20-%20Rock%20This%20Town.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273e7c0d749aab04de3eab4ca24",
    },
    {
      'name': "The Power Of Love",
      'artist': "Huey Lewis & The News",
      'url':
          "https://streamintmusic.netlify.app/music/Huey%20Lewis%20&%20The%20News%20-%20The%20Power%20Of%20Love.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2735306ed42ae78f317258c51bb",
    },
    {
      'name': "Workin' for a Livin'",
      'artist': "Huey Lewis & The News",
      'url':
          "https://streamintmusic.netlify.app/music/Huey%20Lewis%20&%20The%20News%20-%20Workin'%20for%20a%20Livin'.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273132c6c15514b51437bb92466",
    },
    {
      'name': "Hot Blooded",
      'artist': "Foreigner",
      'url':
          "https://streamintmusic.netlify.app/music/Foreigner%20-%20Hot%20Blooded.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2735627aa0842d6287bbb223cbf",
    },
    {
      'name': "(I Just) Died In Your Arms",
      'artist': "Cutting Crew",
      'url':
          "https://streamintmusic.netlify.app/music/Cutting%20Crew%20-%20(I%20Just)%20Died%20In%20Your%20Arms.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273fb2faa3ed46d1d0124ca325e",
    },
    {
      'name': "Get Up And Go",
      'artist': "The Go-Go's",
      'url':
          "https://streamintmusic.netlify.app/music/The%20Go-Go's%20-%20Get%20Up%20And%20Go.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2732aba4a59fd6154fa19bf309f",
    },
    {
      'name': "Gunpoint Affection",
      'artist': "Black Market Baby",
      'url':
          "https://streamintmusic.netlify.app/music/Black%20Market%20Baby%20-%20Gunpoint%20Affection.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27395f6be8369508c27951e312a",
    },
    {
      'name': "Waiting for a Girl like You",
      'artist': "Foreigner",
      'url':
          "https://streamintmusic.netlify.app/music/Foreigner%20-%20Waiting%20for%20a%20Girl%20like%20You.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b27362d48acfd5073491df46f7ac",
    },
    {
      'name': "Cold as Ice (2008 Remaster)",
      'artist': "Foreigner",
      'url':
          "https://streamintmusic.netlify.app/music/Foreigner%20-%20Cold%20as%20Ice%20(2008%20Remaster).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273285f67628210374752c56a6e",
    },
    {
      'name': "Angel",
      'artist': "Madonna",
      'url': "https://streamintmusic.netlify.app/music/Madonna%20-%20Angel.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d00001e026b18e58a06aac7763abe319a",
    },
    {
      'name': "Phone To Phone",
      'artist': "Life By Night",
      'url':
          "https://streamintmusic.netlify.app/music/Life%20By%20Night%20-%20Phone%20To%20Phone.mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b273e0f91adfc50d9a6e3995f89b",
    },
    {
      'name': "Lovergirl (Single Version)",
      'artist': "Teena Marie",
      'url':
          "https://streamintmusic.netlify.app/music/Teena%20Marie%20-%20Lovergirl%20(Single%20Version).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2738f21fdb2d89c98636fd16cfc",
    },
    {
      'name': "Venom (Music From The Motion Picture)",
      'artist': "Eminem",
      'url':
          "https://streamintmusic.netlify.app/music/Eminem%20-%20Venom%20(Music%20From%20The%20Motion%20Picture).mp3",
      'cover':
          "https://i.scdn.co/image/ab67616d0000b2731b95097dd6e47dfb02b315c8",
    },
    //CD1
    {
      'name': "Sincerándome",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/01%20-%20Sincer%C3%A1ndome.MP3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Un Viaje a Todas Partes",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/02%20-%20Un%20Viaje%20a%20Todas%20Partes.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "La Carta",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/03%20-%20La%20Carta.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Digan Lo Que Digan",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/04%20-%20Digan%20Lo%20Que%20Digan.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Empieza por Mi Boca",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/05%20-%20Empieza%20por%20Mi%20Boca.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Alguien Me Espera en Madrid",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/06%20-%20Alguien%20Me%20Espera%20en%20Madrid.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Siempre Estaré Aquí",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/07%20-%20Siempre%20Estar%C3%A9%20Aqu%C3%AD.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Te Soñé",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/08%20-%20Te%20So%C3%B1%C3%A9.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Mi Niña Linda",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/09%20-%20Mi%20Ni%C3%B1a%20Linda.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },

    {
      'name': "Eres Tú (Mamá)",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/Carlos%20Rivera%20-%20Sincer%C3%A1ndome/CD1/10%20-%20Eres%20T%C3%BA%20(Mam%C3%A1).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/Carlos Rivera - Sincerándome/cover.jpg",
    },
    {
      'name': "100 Años",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/05%20-%20Carlos%20Rivera%20-%20100%20A%C3%B1os.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Perdiendo la Cabeza",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/06%20-%20Carlos%20Rivera%20-%20Perdiendo%20la%20Cabeza.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Me Muero",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/07%20-%20Carlos%20Rivera%20-%20Me%20Muero.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Que Lo Nuestro Se Quede Nuestro",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/08%20-%20Carlos%20Rivera%20-%20Que%20Lo%20Nuestro%20Se%20Quede%20Nuestro.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Regrésame Mi Corazón",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/09%20-%20Carlos%20Rivera%20-%20Regr%C3%A9same%20Mi%20Coraz%C3%B3n.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "¿Cómo Pagarte?",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/10%20-%20Carlos%20Rivera%20-%20%C2%BFC%C3%B3mo%20Pagarte_.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Sería Más Fácil",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/11%20-%20Carlos%20Rivera%20-%20Ser%C3%ADa%20M%C3%A1s%20F%C3%A1cil.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Solo Tú",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/12%20-%20Carlos%20Rivera%20-%20Solo%20T%C3%BA.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Otras Vidas",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/13%20-%20Carlos%20Rivera%20-%20Otras%20Vidas.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Fascinación",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/14%20-%20Carlos%20Rivera%20-%20Fascinaci%C3%B3n.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Lo Digo (feat. Gente de Zona)",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/16%20-%20Carlos%20Rivera%20-%20Lo%20Digo%20(feat.%20Gente%20de%20Zona).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "La Luna del Cielo",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/17%20-%20Carlos%20Rivera%20-%20La%20Luna%20del%20Cielo.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Bendita Tu Vida",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/19%20-%20Carlos%20Rivera%20-%20Bendita%20Tu%20Vida.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Amo Mi Locura",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/20%20-%20Carlos%20Rivera%20-%20Amo%20Mi%20Locura.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "El Hubiera No Existe",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/21%20-%20Carlos%20Rivera%20-%20El%20Hubiera%20No%20Existe.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Te Esperaba",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/22%20-%20Carlos%20Rivera%20-%20Te%20Esperaba.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Te Amo Hoy (feat. Vanesa Martín)",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/23%20-%20Carlos%20Rivera%20-%20Te%20Amo%20Hoy%20(feat.%20Vanesa%20Mart%C3%ADn).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Día de Lluvia (feat. Abel Pintos)",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/34%20-%20Carlos%20Rivera%20-%20D%C3%ADa%20de%20Lluvia%20(feat.%20Abel%20Pintos).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "La Luna del Cielo",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/36%20-%20Carlos%20Rivera%20-%20La%20Luna%20del%20Cielo%20(En%20Vivo)%20(Sessions%20Recorded%20at%20Abbey%20Road).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Recuérdame",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/37%20-%20Carlos%20Rivera%20-%20Recu%C3%A9rdame.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Vivo por Ella (En Vivo)",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/45%20-%20Carlos%20Rivera%20-%20Vivo%20por%20Ella%20(En%20Vivo).mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },

    {
      'name': "Grito de Guerra",
      'artist': "Carlos Rivera",
      'url':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/49%20-%20Carlos%20Rivera%20-%20Grito%20de%20Guerra.mp3",
      'cover':
          "https://scintillating-quokka-60568d.netlify.app/100Carlos%20Rivera/cover.jpg",
    },
  ];
//?FIN DE LA LISTA DE CANCIONES

//? VARIABLES PARA ENVIAR DATOS AL REPRODUCTOR
  String currentTitle = "",
      currentCover = "",
      currentSinger = "",
      currentSong = "";
  int currentIndex = 0;
  IconData btnIcon = Icons.pause;
//?FIN VARIABLES PARA ENVIAR DATOS AL REPRODUCTOR

//? CREAMOS EL REPRODUCTOR
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
//?FIN DE CREAMOS EL REPRODUCTOR

//?BARRA DE PROGRESO
  Duration duration = Duration();
  Duration position = Duration();
//?FIN BARRA DE PROGRESO

  //22:44 par acualquier aclaración
//?LÓGICA DEL REPRODCUTOR
  playMusic(String url, int index) async {
    if (isPlaying && currentSong != url) {
      audioPlayer.pause();
      Future<void> result = audioPlayer.play(UrlSource(url));
      if (result == 1) {
        setState(() {
          currentSong = url;
          currentIndex = index;
        });
      }
    } else if (!isPlaying) {
      Future<void> result = audioPlayer.play(UrlSource(url));
      if (result == 1) {
        setState(() {
          isPlaying = true;
          btnIcon = Icons.pause;
          currentIndex = index;
        });
      }
    }

    audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        duration = event;
      });
    });

    audioPlayer.onPositionChanged.listen((event) {
      setState(() {
        position = event;
      });
    });

    audioPlayer.onPlayerComplete.listen((event) {
      if (currentIndex < musicList.length) {
        playMusic(musicList[currentIndex + 1]['url'], currentIndex + 1);

        setState(() {
          currentTitle = musicList[currentIndex + 1]['name'];
          currentCover = musicList[currentIndex + 1]['cover'];
          currentSinger = musicList[currentIndex + 1]['artist'];
          
        });
      } else {
        setState(() {
          isPlaying = false;
          btnIcon = Icons.play_arrow;
        });
      }
    });
  }

//?LÓGICA DEL REPRODCUTOR

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Mi playlist",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
//?PLAYLIST PRINCIPAL
          Expanded(
            child: ListView.builder(
                itemCount: musicList.length,
                itemBuilder: (context, index) => customListTile(
                      onTap: () {
                        playMusic(musicList[index]['url'], index);
                        setState(() {
                          currentTitle = musicList[index]['name'];
                          currentCover = musicList[index]['cover'];
                          currentSinger = musicList[index]['artist'];
                          currentIndex = index;
                        });
                      },
                      title: musicList[index]['name'],
                      singer: musicList[index]['artist'],
                      cover: musicList[index]['cover'],
                    )),
          ),
//?FIN DE PLAYLIST

//?REPRODUCTOR DE MÚSICA
          Container(
            //DECORACION
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Color(0x55212121),
                blurRadius: 8.0,
              ),
            ]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8.0, left: 8.0, right: 8.0, top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
//-------------------------------------------------------------------------------------
                      Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                            image: NetworkImage(currentCover),
                          ),
                        ),
                      ),
//-------------------------------------------------------------------------------------
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              currentTitle,
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              currentSinger,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 16.0),
                            ),
                          ],
                        ),
                      ),
//-------------------------------------------------------------------------------------
                      IconButton(
                        icon: Icon(btnIcon),
                        iconSize: 42.0,
                        onPressed: () {
                          if (isPlaying) {
                            audioPlayer.pause();
                            setState(() {
                              btnIcon = Icons.play_arrow;
                              isPlaying = false;
                            });
                          } else {
                            audioPlayer.resume();
                            setState(() {
                              btnIcon = Icons.pause;
                              isPlaying = true;
                            });
                          }
                        },
                      ),
//-------------------------------------------------------------------------------------
                    ],
                  ),
                ),

// //?SLIDER DE LA CANCION
                Slider.adaptive(
                  value: position.inSeconds.toDouble(),
                  min: 0.0,
                  max: duration.inSeconds.toDouble(),
                  onChanged: (value) {
                    final newPosition = Duration(seconds: value.toInt());
                    audioPlayer.seek(newPosition);
                  },
                ),
//?FIN SLIDER DE LA CANCION
              ],
            ),
          ),
//?FIN DE REPRODUCTOR DE MÚSICA
        ],
      ),
    );
  }
}
