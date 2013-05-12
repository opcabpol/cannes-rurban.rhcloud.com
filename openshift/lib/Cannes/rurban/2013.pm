package Cannes::rurban::2013;

#!/usr/bin/perl -- -*- perl -*-
# Cannes 2013 Critics Ratings
# collected by Diego Lerer, ioncinema, indiewire and Reini Urban
# Recalc and sort ratings by all cannes critics from
# ??
# and 16 more western critics from http://www.ioncinema.com/ (scaled to 0-10)
# french: http://www.lefilmfrancais.com/cannes2012/quotidien/ (scale 0-4)
# http://content.yudu.com/Library/A1wwqk/ScreenCannesDay92012/resources/index.htm (scale 0-4)
# us: http://www.indiewire.com/article/cannes-2012-a-guide-to-all-the-films
# Published at http://cannes-rurban.rhcloud.com/2013
# History at https://github.com/rurban/cannes-critics-ratings
# Perl script by Reini Urban (c) 2010, 2011, 2012, 2013
# US ratings:
# A+ 10   A 9   A- 8
# B+ 7    B 6   B- 5
# C+ 4    C 3   C- 2
# D+ 1.5  D 1
# E 0.5   F 0
# Le film français+Screen Daily 0-4: 0-1, 1-2.5, 2-5, 3-7.5, 4-9
# British 0-5: x2

use utf8;
our $DATA= <<'EOF';

"BEHIND THE CANDELABRA" (Steven SODERBERGH) [Competition]
"BORGMAN" (Alex VAN WARMERDAM) [Competition]
"GRIGRIS" (Mahamat-Saleh HAROUN) [Competition]
"HELI" (Amat ESCALANTE) [Competition]
"INSIDE LLEWYN DAVIS" (Ethan COEN, Joel COEN) [Competition]
"JEUNE & JOLIE (YOUNG & BEAUTIFUL)" (François OZON) [Competition]
"JIMMY P. (PSYCHOTHERAPY OF A PLAINS INDIAN)" (Arnaud DESPLECHIN) [Competition]
"LA GRANDE BELLEZZA (THE GREAT BEAUTY)" (Paolo SORRENTINO) [Competition]
"LA VÉNUS À LA FOURRURE (VENUS IN FUR)" (Roman POLANSKI) [Competition]
"LA VIE D'ADÈLE - CHAPITRE 1 & 2 (BLUE IS THE WARMEST COLOUR)" (Abdellatif KECHICHE) [Competition]
"LE PASSÉ (THE PAST)" (Asghar FARHADI) [Competition]
"MICHAEL KOHLHAAS" (Arnaud DES PALLIÈRES) [Competition]
"NEBRASKA" (Alexander PAYNE) [Competition]
"ONLY GOD FORGIVES" (Nicolas WINDING REFN) [Competition]
"ONLY LOVERS LEFT ALIVE" (Jim JARMUSCH) [Competition]
"SOSHITE CHICHI NI NARU (Like Father, Like Son)" (KORE-EDA Hirokazu) [Competition]
"THE IMMIGRANT" (James GRAY) [Competition]
"TIAN ZHU DING (A TOUCH OF SIN)" (JIA Zhangke) [Competition]
"UN CHÂTEAU EN ITALIE (A CASTLE IN ITALY)" (Valeria BRUNI TEDESCHI) [Competition]
"WARA NO TATE (Shield of Straw)" (Takashi MIIKE) [Competition]

UN CERTAIN REGARD

"AS I LAY DYING" (James FRANCO) [Un Certain Regard]
"BENDS" (Flora LAU) [Un Certain Regard]
"DAST-NEVESHTEHAA NEMISOOSAND (Manuscripts Don’t Burn)" (Mohammad RASOULOF) [Un Certain Regard]
"DEATH MARCH" (Adolfo ALIX JR.) [Un Certain Regard]
"FRUITVALE STATION" (Ryan COOGLER) [Un Certain Regard]
"GRAND CENTRAL" (Rebecca ZLOTOWSKI) [Un Certain Regard]
"L'IMAGE MANQUANTE (The missing picture)" (Rithy PANH) [Un Certain Regard]
"L'INCONNU DU LAC (Stranger by the Lake)" (Alain GUIRAUDIE) [Un Certain Regard]
"LA JAULA DE ORO" (Diego QUEMADA-DIEZ) [Un Certain Regard]
"LES SALAUDS (BASTARDS)" (Claire DENIS) [Un Certain Regard]
"MIELE" (Valeria GOLINO) [Un Certain Regard]
"MY SWEET PEPPER LAND" (Hiner SALEEM) [Un Certain Regard]
"NORTE, HANGGANAN NG KASAYSAYAN (NORTE, THE END OF HISTORY)" (Lav DIAZ) [Un Certain Regard]
"OMAR" (Hany ABU-ASSAD) [Un Certain Regard]
"SARAH PRÉFÈRE LA COURSE (SARAH PREFERS TO RUN)" (Chloé ROBICHAUD) [Un Certain Regard]
"THE BLING RING" (Sofia COPPOLA) [Un Certain Regard]
"TORE TANZT (NOTHING BAD CAN HAPPEN)" (Katrin GEBBE) [Un Certain Regard]
"WAKOLDA" (Lucía PUENZO) [Un Certain Regard]

OUT OF COMPETITION

"ALL IS LOST" (J.C CHANDOR) [Out of Competition]
"BLOOD TIES" (Guillaume CANET) [Out of Competition]
"LE DERNIER DES INJUSTES (THE LAST OF THE UNJUST)" (Claude LANZMANN) [Out of Competition]

"THE GREAT GATSBY" (Baz LUHRMANN) [Out of Competition]
Stephanie Zacharek (Village Voice, USA) 7
Todd McCarthy (The Hollywood Reporter, USA) 7
Scott Foundas (Variety, USA) 6
Claudia Puig (USA Today, USA) 5
Eric Kohn (Indiewire, USA) 4.2
Andrew O'Hehir (Salon.com, USA) 4
Keith Uhlich (Time Out New York, USA) 4

"ZULU" (Jérôme SALLE) [Out of Competition]

MIDNIGHT PROJECTIONS

"BLIND DETECTIVE" (Johnnie TO) [Out of Competition]
"MONSOON SHOOTOUT" (Amit KUMAR) [Out of Competition]

SPECIAL SCREENINGS

"BOMBAY TALKIES" (Zoya AKHTAR, Dibakar BANERJEE, Karan JOHAR, Anurag KASHYAP) [Special Screening]
"MAX ROSE" (Daniel NOAH) [Special Screening]
"MUHAMMAD ALI'S GREATEST FIGHT" (Stephen FREARS) [Special Screening]
"OTDAT KONCI (BITE THE DUST)" (Taisia IGUMENTSEVA) [Special Screening]
"SEDUCED AND ABANDONED" (James TOBACK) [Special Screening]
"STOP THE POUNDING HEART" (Roberto MINERVINI) [Special Screening]
"WEEKEND OF A CHAMPION" (Frank SIMON) [Special Screening]

SEMAINE DE LA CRITIC

"AIN'T THEM BODIES SAINTS" (David Lowery) [Semaine]
Sebastian Doggart (Guardian, UK) 10
Peter Debruge (Variety, USA) 8
Jordan Hoffman (Film.com, USA) 8.3

"SALVO" (Fabio Grassadonia & Antonio Piazza) [Semaine]
"SUZANNE" (Katell Quillévéré) [Semaine]
"LE DÉMANTÈLEMENT (The Dismantling)" (Sébastien Pilote) [Semaine]
"FOR THOSE IN PERIL" (Paul Wright) [Semaine]
"THE LUNCHBOX (Dabba)" (Ritesh Batra) [Semaine]
"LES RENCONTRES D’APRÈS MINUIT" (Yann Gonzalez) [Semaine]
"LOS DUEÑOS" (Agustín Toscano & Ezequiel Radusky) [Semaine]
"NOS HÉROS SONT MORTS CE SOIR" (David Perrault) [Semaine]
"THE MAJOR" (Yury Bykov) [Semaine]
"3x3D" (Peter Greenaway, Jean-Luc Godard & Edgar Perâ) [Semaine]

CINEFOUNDATION

"ASUNCIÓN" (Camila LUNA TOLEDO) [Cinefoundation]
"AU-DELÀ DE L’HIVER (AFTER THE WINTER)" (JOW Zhi Wei) [Cinefoundation]
"BABAGA" (Gan DE LANGE) [Cinefoundation]
CONTRAFÁBULA DE UNA NIÑA DISECADA (FABLE OF A BLOOD-DRAINED GIRL) directed by Alejandro IGLESIAS MENDIZÁBAL
"DANSE MACABRE" (Malgorzata RZANEK) [Cinefoundation]
"DUET" (Navid DANESH) [Cinefoundation]
"EN ATTENDANT LE DÉGEL (Waiting for the Thaw)" (Sarah HIRTT) [Cinefoundation]
"EXIL (EXILE)" (Vladilen VIERNY) [Cinefoundation]
"GOING SOUTH" (Jefferson MONEO) [Cinefoundation]
"ÎN ACVARIU (IN THE FISHBOWL)" (Tudor Cristian JURGIU) [Cinefoundation]
"MAÑANA TODAS LAS COSAS (TOMORROW ALL THE THINGS)" (Sebastián SCHJAER) [Cinefoundation]
"NEEDLE" (Anahita GHAZVINIZADEH) [Cinefoundation]
"O ŠUNCE (HAM STORY)" (Eliška CHYTKOVÁ) [Cinefoundation]
"PANDY (PANDAS)" (Matúš VIZÁR) [Cinefoundation]
"SEON (THE LINE)" (KIM Soo-Jin) [Cinefoundation]
"STEPSISTER" (Joey IZZO) [Cinefoundation]
"THE MAGNIFICENT LION BOY" (Ana CARO) [Cinefoundation]
"THE NORM OF LIFE" (Evgeny BYALO) [Cinefoundation]

QUINZAINE

"THE CONGRESS" (Ari Folman) [Quinzaine]
"THE SELFISH GIANT" (Clio Barnard) [Quinzaine]
"UN VOYAGEUR (Ain't Misbehavin)" (Marcel Ophuls) [Quinzaine]
"UGLY" (Anurag Kashyap) [Quinzaine]
"BLUE RUIN" (Jeremy Saulnier) [Quinzaine]
"LA DANZA DE LA REALIDAD (The Dance of Reality)" (Alejandro Jodorowsky) [Quinzaine]
"JODOROWSKY'S DUNE" (Frank Pavich) [Quinzaine]
"ILO ILO" (Anthony Chen) [Quinzaine]
"TIP TOP" (Serge Bozon) [Quinzaine]
"L'ESCALE" (Kaveh Bakhtiari) [Quinzaine]
"EL VERANO DE LOS PECES VOLADORES (The Summer of Flying Fish)" (Marcela Said) [Quinzaine]
"LES GARÇONS ET GUILLAUME, À TABLE ! (Me Myself and Mum)" (Guillaume Gallienne) [Quinzaine]
"THE LAST DAYS ON MARS" (Ruairí Robinson) [Quinzaine]
"A STRANGE COURSE OF EVENTS" (Raphaël Nadjari) [Quinzaine]
"WE ARE WHAT WE ARE" (Jim Mickle) [Quinzaine]
"ATÉ VER A LUZ" (Basil da Cunha) [Quinzaine]
"LES APACHES" (Thierry de Peretti) [Quinzaine]
"LA FILLE DU 14 JUILLET (The Rendez-Vous of Déjà-Vu)" (Antonin Peretjatko) [Quinzaine]
"MAGIC MAGIC" (Sebastián Silva) [Quinzaine]
"ON THE JOB" (Erik Matti) [Quinzaine]
"HENRI" (Yolande Moreau) [Quinzaine]

EOF

our @critics;
$critics[0] = "
Alejandro G. Calvo (Sensacine, España) 
Alex Vicente (Público, España) 
Alexandra Zawia (Wiener Zeitung, Furche, Celluloid, Austria) 
Arthur Mas (Independencia, France) 
Boris Nelepo (Kinote daily, Russia)
Camille Brunel (Independencia, France) 
Carlo Chatrian (Duellanti, Panoramiches, Italy) 
Carlos Heredero (Caimán CDC, España) 
Carlos Reviriego (elcultural.es y de Caiman. Cuadernos de cine, España) 
Cristina Nord (Die Tageszeitung, Germany) 
Dana Linssen (De Filmkrant, Netherlands) 
Diego Batlle (La Nación, OtrosCines, Argentina) 
Diego Lerer (Clarín, Micropsia, Argentina) 
Eugenio Renzi (Independencia, France) 
Eulalia Iglesias (RockDeLux y Caimán CDC, España) 
Fernando Ganzo (Lumiere, España) 
Fernando Juan Lima (El Amante, Argentina) 
Francisco Ferreira (Expresso, Portugal) 
Gabriele Barrera (Segnocinema, Duellanti, Blow Up, Best Movie, Italy) 
Gonzalo de Pedro (Caimán, CDC, España) 
Jaime Pena (El Amante, España/Argentina) 
Javier H. Estrada (Caimán CDC, España) 
José Luis de Lorenzo (A Sala Llena, Argentina) 
Kong Rithdee (The Bangkok Post, Thailand) 
Luciano Barisone (Duellanti/Panoramiche, Italy) 
Luciano Monteagudo (Página/12, Argentina) 
Manu Yáñez (Fotogramas, OtrosCines, España) 
Marcelo Alderete (Festival de Mar del Plata, Argentina) 
Martial Pisani (Independencia, France) 
Nando Salva (El Periódico, España) 
Neil Young (Hollywood Reporter, Tribune, UK) 
Noémie Luciani (Independencia, France) 
Olivier Père (Les Inrockuptibles, France) 
Pamela Bienzobas (Mabuse, Chile) 
Paolo Bertolin (Italy) 
Paolo Moretti (Italy) 
Pedro Butcher (Folha do Sao Paulo, Filme B, Brasil) 
Philipp Engel (Go Mag, España) 
Robert Koehler (Variety, USA) 
Roger Alan Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Rudiger Suchsland (FAZ, Negativ-film, Germany) 
Sergio Wolf (BAFICI, Argentina) 
Scott Foundas (Film Comment, USA) 
Thomas Fioretti (Independencia, France) 
Violeta Kovacsics (España) 
Xavi Serra (Ara, España) 
";
# ioncinema
$critics[1] = "
Christophe Beney (Palmares magazine, France) 
David Calhoun (The Out London, UK) 
Per Juul Carlsen (Danish National Radio, Denmark) 
Paola Casella (Europa, Italy) 
Mike d'Angelo (AV Club, USA) 
Carlos F. Heredero (Cahiers du cinema Espana, Spain) 
Eric Lavallée (Ioncinema.com, Canada) 
Fabien Lemercier (Cineeuropa.org, Belgium) 
Guy Lodge (Variety, InContention, South Africa/USA) 
Isabelle Regnier (Le Monde, France) 
Kevin Jagernauth (Indiewire's The Playlist, USA) 
James Rocchi (MSN Movies, Indiewire's The Playlist, USA) 
Cédric Succivalli (International Cinephil Society, France) 
Clarence Tsui (South China Morning Post, Hong Kong) 
Blake Williams (Ioncinema.com, Canada) 
Liu Min (Sina.com, China) 
Eric Kohn (Indiewire, USA) 
";
# Le film français 0-4
$critics[2] = "
Stéphanie Lamome (Premiere, France)
Arnaud schwartz (la Croix, France)
Fabrice Leclerc (Studio ciné live, France)
Eric Neuhoff (Le Figaro, France)
Stéphane Delorme (Cahiers du cinema, France)
Jaques Mandelbaum (Le Monde, France)
Philippe Rouyer (Positif, France)
Pierre Vavasseur (le Parisien, France)
Pierre Murat (Telerama, France)
Jean Roy (l'Humanite, France)
Serge Kaganski (Les Inrockuptibles, France)
Pierre Fornerod (oeust france, France)
Pascal Merigeau (Observateur, France)
Danielle Attali (Le Journal du Dimanche, France)
Christophe Carriére (L'Express, France)
";
# screen daily 0-4
$critics[3] = "
Nick James (Sight & Sound, UK)
David Stratton (The Australian, Australia)
Derek Malcolm (London Evening, UK)
Jan Schulz-Ojala (Der Tagesspiegel, Germany)
Jose Carlos Avellar (Escrevercinema.com, Brazil)
Dennis Lim (The New York Times, USA)
Michel Ciment (Positif, France)
Kate Muir (The Times, UK)
Bo Green Jensen (Weekandavisen Berlingske, Denmark)
Screen International (Screen International, USA)
";
# indiewire + various other
$critics[4] = "
Aaron Hillis (GreenCine Daily, USA)
Alex Billington (FirstShowing.net, USA)
Allan Hunter (Screen Daily, USA)
Andrei Creţulescu (HBO, Romania) 
Andrew O'Hehir (Salon.com, USA) 
Anna Bielak (Smells Like Screen Spirit, USA)
Anna Tatarska (Fandor, KINO, USA)
Anne Thompson (Indiewire, USA) 
Brian Brooks (indieWIRE, USA) 
Chris Knipp (Filmleaf, USA)
Clementine Gallot (Cahiers du cinema, France)
David Edelstein (New York Magazine-Vulture, USA)
David Ehrlich (Movies.com, Box Office Magazine, Reverse Shot)
David Fear (Time Out New York, USA) 
David Gritten (The Telegraph, UK)
Drew McWeeny (InContention, USA)
Drew Taylor (The Playlist, USA)
Eduardo Valente (Revista Cinema, Brazil) 
Elisabeth Quin (Paris Premiere, France) 
Emanuel Levy (EmanuelLevy.com, USA)
Eric D. Snider (Film.com, USA)
Eugene Hernandez (Film Society of Lincoln Center, USA) 
Frédéric Jaeger (critic.de, Germany)
Glenn Heath Jr. (Slant Magazine, Press Play, USA)
Ignatiy Vishnevetsky (Freelance, USA)
Jon Frosch (France 24, France)
Jonathan Rosenbaum (Chicago Reader, USA) 
Jordan Raup (The Film Stage, USA)
Kaleen Aftab (The Independent, UK)
Karina Longworth (LA Weekly, USA) 
Keith Uhlich (Time Out New York, USA)
Kristy Puchko (Freelance, USA)
Laremy Legel (Film.com, USA) 
Leda Galanou (Flix, France)
Lee Marshall (Screen Daily, USA)
Mark Adams (Screen Daily, USA)
Matt Holmes (Obsessedwithfilm.com, USA) 
Michael Ghennam (Les Fiches du Cinéma, France)
Michael Giltz (The Huffington Post, USA) 
Michal Oleszczyk (Hammer to Nail, USA)
Nev Pierce (Empire, USA)
Patrick Heidmann (Cineman, Germany)
Paul Martin (Indies Movies Online, USA) 
Pete Hammond (Boxoffice Magazine, USA) 
Peter Bradshaw (Guardian, UK) 
Peter Debruge (Variety, USA) 
Peter Howell (The Toronto Star, USA) 
Peter Keogh (Boston Phoenix, USA)
Peter Knegt (indieWIRE, USA) 
Raffi Asdourian (The Film Stage, USA)
Richard Corliss (Time, USA)
Robbie Collins (The Telegraph, UK)
Ruta Buciunaite (theupcoming.co.uk, UK)
Ryland Aldrich (Twitch Film, USA)
Simon Abrams (The Playlist, USA)
Simon Gallagher (filmschoolrejects.com, UK) 
Simon Reynolds (Digital Spy, UK) 
Stephen Garrett (Time Out New York, USA)
Sukhdev Sandhu (Telegraph, UK) 
Tim Grierson (Screen International, L.A. Weekly, USA) 
Tim Robey (Daily Telegraph, England)
Todd McCarthy (The Hollywood Reporter, USA) 
";

our $HEADER = <<"EOF";

<small>Collected and updated daily by Reini Urban, 
from http://micropsia.otroscines.com/ (Diego Lerer) (la crema), http://www.ioncinema.com/ (okay), Le film français (eclectic), Screen Daily (mainstream), Indiewire (mixed) and more critics.<br>
Same as <a href="http://www.facebook.com/notes/reini-urban/cannes-2011-critics/10150578683465012">last years</a>: 0-10 points, only &gt;6.00 avg and &gt;3 international critics [avg/num stddev]. stddev>2: <i>controversial</i>. Critics with stddev &gt;2.5: filtered out. &lt;10 ratings: small.
All sections (updated daily, official selection Competition: bold)</small><p>

EOF

our $FOOTER = "
<pre>
--
http://micropsia.otroscines.com/
http://www.ioncinema.com/
http://www.lefilmfrancais.com/cannes2013/quotidien/
History at https://github.com/rurban/cannes-rurban.rhcloud.com/commits/master

</pre>";

$FOOTER =~ s{http://(.+)\n}{<a href="http://$1">$1</a>\n}g;
1;
