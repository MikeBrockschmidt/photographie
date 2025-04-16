List<GalleryItem> galleryData = [
  GalleryItem(
    imageTitle: 'New York',
    imageDate: '2014',
    imageDescription: 'Photographiert bei einem Besuch in New York City',
    imagePath: 'assets/images/photographie/New_York.jpg',
  ),
  GalleryItem(
    imageTitle: 'Ausstellung-Passagen Köln',
    imageDate: '2009',
    imageDescription: 'Photoausstellung von Mike Brockschmidt 2009 in Köln',
    imagePath: 'assets/images/photographie/Ausstellung-Passagen.jpg',
  ),
  GalleryItem(
    imageTitle: 'Eifelturm',
    imageDate: '2011',
    imageDescription: 'Photographiert bei einem Besuch in Paris',
    imagePath: 'assets/images/photographie/Paris.jpg',
  ),
  GalleryItem(
    imageTitle: 'Porsche, Toskana',
    imageDate: '2010',
    imageDescription:
        'Photographiert während eine Classic Car Rallye nahe Florenz',
    imagePath: 'assets/images/photographie/Porsche.jpg',
  ),
  GalleryItem(
    imageTitle: 'Zeche Zollverein, Essen',
    imageDate: '2015',
    imageDescription:
        'Photographiert bei einem Besuch der Extraschicht ua. in Essen',
    imagePath: 'assets/images/photographie/Zeche_Zollverein.jpg',
  ),
  GalleryItem(
    imageTitle: 'Radio City Music Hall, New York',
    imageDate: '2011',
    imageDescription: 'Photographiert bei einem Besuch in New York City',
    imagePath: 'assets/images/photographie/NY-Radio-City-MusicHall.jpg',
  ),
  GalleryItem(
    imageTitle: 'Marokko',
    imageDate: '2015',
    imageDescription: 'Photographiert auf einem Flug kurz vor Marrakesh',
    imagePath: 'assets/images/photographie/Marokko.jpg',
  ),
  GalleryItem(
    imageTitle: 'Love New York',
    imageDate: '2014',
    imageDescription: 'Photographiert bei einem Besuch in New York City',
    imagePath: 'assets/images/photographie/Love-NY.jpg',
  ),
  GalleryItem(
    imageTitle: 'Goodwood Revival',
    imageDate: '2015',
    imageDescription: 'Photographiert während des Goodwood Revivals 2015',
    imagePath: 'assets/images/photographie/Goodwood.jpg',
  ),
  GalleryItem(
    imageTitle: 'Drop, Monaco',
    imageDate: '2017',
    imageDescription:
        'Photographiert in Monaco während des Monaco Historic Grand Prix',
    imagePath: 'assets/images/photographie/Drop.jpg',
  ),
  GalleryItem(
    imageTitle: 'David Bowie',
    imageDate: '2004',
    imageDescription:
        'David Bowie war ein britischer Musiker, Sänger, Produzent und Schauspieler. In seiner annähernd 50 Jahre dauernden Karriere war er mit 26 Studioalben und rund 140 Millionen verkauften Tonträgern einer der kommerziell erfolgreichsten und einflussreichsten Musiker der Rock- und Popmusik.',
    imagePath: 'assets/images/photographie/David-Bowie.jpg',
  ),
  GalleryItem(
    imageTitle: 'Thom Yorke von Radiohead',
    imageDate: '2010',
    imageDescription:
        'Radiohead ist eine britische Rockband, die 1985 in Oxford, England gegründet wurde. Die Band besteht aus Thom Yorke, Jonny Greenwood, Colin Greenwood, Ed O’Brien und Phil Selway. Radioheads experimenteller Ansatz gilt als Wegbereiter für den Sound des Alternative Rocks. Bis 2019 hat die Band fast 40 Mio.',
    imagePath: 'assets/images/photographie/Radiohead.jpg',
  ),
  GalleryItem(
    imageTitle: 'Bono von U2',
    imageDate: '2007',
    imageDescription:
        'U2 ist eine irische Rockband. Sie entstand 1976 in Dublin, fand 1978 zu ihrem heutigen Namen und besteht seitdem aus dem Leadsänger Bono, dem Gitarristen The Edge, dem Bassisten Adam Clayton und dem Schlagzeuger Larry Mullen junior. Die Band wurde 1976 unter dem Namen Feedback gegründet.',
    imagePath: 'assets/images/photographie/U2.jpg',
  ),
  GalleryItem(
    imageTitle: 'The Subways',
    imageDate: '2010',
    imageDescription:
        'The Subways ist eine britische Indie-Rock-Band aus Hertfordshire. Wikipedia',
    imagePath: 'assets/images/photographie/The-Subways.jpg',
  ),
  GalleryItem(
    imageTitle: 'Jan Plefka von Selig',
    imageDate: '02.05.2022',
    imageDescription:
        'Selig ist eine Hamburger Rockband, die Mitte der 1990er Jahre erfolgreich war und sich nach zehnjähriger Trennung 2008 wiedervereinigte. Mit dem Reunion-Album Und endlich unendlich erlangte sie erstmals Goldstatus.',
    imagePath: 'assets/images/photographie/Selig.jpg',
  ),
  GalleryItem(
    imageTitle: 'Mr. Bean in Goodwood',
    imageDate: '2015',
    imageDescription:
        'Mr. Bean (Rowan Atkinson) richtet beim unorthodoxen Lösen seiner kleinen Alltagsprobleme in der Regel Chaos an.',
    imagePath: 'assets/images/photographie/Mr-Bean.jpg',
  ),
  GalleryItem(
    imageTitle: 'Lilly Allen',
    imageDate: '2009',
    imageDescription:
        'Lily Rose Beatrice Allen ist eine britische Popsängerin, Songwriterin und Schauspielerin. Der kommerzielle Durchbruch gelang ihr im Sommer 2006 mit ihrer Debütsingle Smile.',
    imagePath: 'assets/images/photographie/Lilly-Allen.jpg',
  ),
  GalleryItem(
    imageTitle: 'Ben Folds',
    imageDate: '2008',
    imageDescription:
        'Benjamin „Ben“ Scott Folds ist ein US-amerikanischer Sänger und Pianist, der als Gründer der Band Ben Folds Five bekannt wurde.',
    imagePath: 'assets/images/photographie/Ben_Folds.jpg',
  ),
];

class GalleryItem {
  // Attribute
  final String imageTitle;
  final String imageDate;
  final String imageDescription;
  final String imagePath;

  // Konstruktor
  GalleryItem(
      {required this.imageTitle,
      required this.imageDate,
      required this.imageDescription,
      required this.imagePath});
}
