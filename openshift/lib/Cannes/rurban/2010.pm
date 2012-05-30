package Cannes::rurban::2010; # -*- perl -*-

#!/usr/bin/perl -- -*- perl -*- 
# Recalc and sort ratings from http://letrasdecine.blogspot.com/2010/05
# Perl script by Reini Urban (c) 2010
use utf8;
our $DATA= <<'EOF';
"BI, DUNG SO!" Phan Dang Di [Semaine]

"ARMADILLO" Janus Metz [Semaine] Grand Prix Semaine

"BEDEVILLED" Cheol-soo JANG [Semaine]

"LE NOM DES GENS" Michel Leclerc [Semaine]

"COPACABANA" Marc Fitoussi [Semaine]

"PIEDS NUS SUR LES LIMACES (LILY SOMETIMES)" Fabienne Berthaud [Quinzaine] Art Cinema Award

Diego Batlle (La Nación, Otros Cines, Argentina): 6

"ALL GOOD CHILDREN" Alicia Duffy [Quinzaine]

"UTOMLYONNYE SOLNTSEM 2: PREDSTOYANIE (THE EXODUS - Burnt by the sun 2)" Nikita
 MIKHALKOV [Competition]

Robert Koehler: (Variety, EE.UU.): 2
Luciano Monteagudo (Página/12, Argentina): 5
Francisco Ferreira (O Expresso, Portugal): 1

"SZELÍD TEREMTÉS - A FRANKENSTEIN TERV (TENDER SON - The Frankenstein Project)" Kornél MUNDRUCZÓ [Competition]

Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 1
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 2

"THE TREE" Julie Bertuccelli

Robert Koehler: (Variety, EE.UU.): 6

"HAHAHA" HONG Sangsoo [Un Certain Regard]

Olivier Père (Director artístico Festival de Locarno, Francia): 6
Diego Batlle (La Nación, Otros Cines, Argentina): 9
Fernando Ganzo (Lumiére, España): 8,21
Diego Lerer (Clarín, Micropsia, Argentina): 9
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Violeta Kovacsis (Lumiere, España): 8
Luciano Monteagudo (Página/12, Argentina): 9
Carlo Chatrian (Panoramiques, Duellanti, Italia): 9
Robert Koehler: (Variety, EE.UU.): 6
Rüdiger Suchsland (Frankfurter Allgemeigne Zeitung, Artechock, Alemania): 9
Eulalia Iglesias (Cahiers du Cinéma España, España): 8,5
Francisco Ferreira (O Expresso, Portugal): 8

"HORS LA LOI (OUTSIDE OF THE LAW)" Rachid BOUCHAREB [Competition]

Eugenio Renzi (Independencia, Francia): 5
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6
Francisco Ferreira (O Expresso, Portugal): 2
Diego Lerer (Clarín, Micropsia, Argentina): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Cristina Nord ( Die Tageszeitung Alemania): 3
Violeta Kovacsis (Lumiere, España): 5
Luciano Monteagudo (Página/12, Argentina): 4
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 5

"TIGER FACTORY" Ming jin Woo [Quinzaine]

Paolo Bertolin (Cineforum, Italia): 8
Robert Koehler: (Variety, EE.UU.): 7
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 7

"LUNG BOONMEE RALUEK CHAT (Uncle Boonmee Who Can Recall His Past Lives)" Apichatpong Weerasethakul [Competition] PALME D'OR

Paolo Bertolin (Cineforum, Italia): 10
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 10
Fernando Ganzo (Lumiére, España): 10
Diego Batlle (La Nación, Otros Cines, Argentina): 9
Diego Lerer (Clarín, Micropsia, Argentina): 10
Alejandro G. Calvo (Sensacine.com, España): 10
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 10
Eulalia Iglesias (Cahiers du Cinéma España, España): 10
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 10
Luciano Monteagudo (Página/12, Argentina): 9
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 6
Manu Yáñez (Fotogramas, España): 10
Emmanuel Burdeau (Mediapart, Francia): 9,5
Carlo Chatrian (Panoramiques, Duellanti, Italia): 7,5
Luciano Barisone (Panoramiques, Italia): 8
Robert Koehler: (Variety, EE.UU.): 10
Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Scott Foundas (Filmlinc, EE.UU): 9
Mark Peranson (Cinema Scope, Canada): 13,7
Cristina Nord ( Die Tageszeitung Alemania): 10
Francisco Ferreira (O Expresso, Portugal): 10
Gabe Klinger (The Auteurs Notebook, EE.UU.): 10
Eugenio Renzi (Independencia, Francia): 9
Roger Alan Koza (La Voz del Interior, Argentina): 10
Violeta Kovacsis (Lumiere, España): 9
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 10

"LIFE ABOVE ALL" Oliver Schmitz [Un Certain Regard]

Scott Foundas (Filmlinc, EE.UU): 7

"BOXING GYM" Frederick Wiseman

Olivier Père (Director artístico Festival de Locarno, Francia): 5
Francisco Ferreira (O Expresso, Portugal): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Paolo Bertolin (Cineforum, Italia): 8
Alejandro G. Calvo (Sensacine.com, España): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Cristina Nord ( Die Tageszeitung Alemania): 8
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 5

"A ALEGRIA" Felipe Bragança, Marina Meliande [Quinzaine]

Olivier Père (Director artístico Festival de Locarno, Francia): 2
Roger Alan Koza (La Voz del Interior, Argentina): 2
Paolo Bertolin (Cineforum, Italia): 3

"PICCO" Philip Koch [Quinzaine]

Carlo Chatrian (Panoramiques, Duellanti, Italia): 3
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 4
Gabe Klinger (The Auteurs Notebook, EE.UU.): 5

"REBECCA H. (RETURN TO THE DOGS)" Lodge Kerrigan [Un Certain Regard]

Carlo Chatrian (Panoramiques, Duellanti, Italia): 7
Diego Batlle (La Nación, Otros Cines, Argentina): 8
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 8
Emmanuel Burdeau (Mediapart, Francia): 7
Luciano Barisone (Panoramiques, Italia): 7
Robert Koehler: (Variety, EE.UU.): 3
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Scott Foundas (Filmlinc, EE.UU): 0
Fernando Ganzo (Lumiére, España): 5
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6,5
Roger Alan Koza (La Voz del Interior, Argentina): 4
Diego Lerer (Clarín, Micropsia, Argentina): 6
Paolo Bertolin (Cineforum, Italia): 6
Alejandro G. Calvo (Sensacine.com, España): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 7
Eulalia Iglesias (Cahiers du Cinéma España, España): 7
Violeta Kovacsis (Lumiere, España): 8

"SIMON WERNER A DISPARU..." Fabrice Gobert [Un Certain Regard]

Eulalia Iglesias (Cahiers du Cinéma España, España): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Diego Lerer (Clarín, Micropsia, Argentina): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Eugenio Renzi (Independencia, Francia): 3
Fernando Ganzo (Lumiére, España): 0

"MYSTERIES OF LISBON" Raul Ruiz

Robert Koehler: (Variety, EE.UU.): 8

"FAIR GAME" Doug Liman [Competition]

Francisco Ferreira (O Expresso, Portugal): 5,5
Alejandro G. Calvo (Sensacine.com, España): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Violeta Kovacsis (Lumiere, España): 2
Carlo Chatrian (Panoramiques, Duellanti, Italia): 4
Robert Koehler: (Variety, EE.UU.): 3
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 4
Manu Yáñez (Fotogramas, España): 5
Luciano Barisone (Panoramiques, Italia): 2
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 5
Diego Lerer (Clarín, Micropsia, Argentina): 5
Paolo Bertolin (Cineforum, Italia): 7
Eugenio Renzi (Independencia, Francia): 5

"OCTUBRE" Diego Vega y Daniel Vega [Un Certain Regard]

Luciano Barisone (Panoramiques, Italia): 7
Roger Alan Koza (La Voz del Interior, Argentina): 6,50
Carlo Chatrian (Panoramiques, Duellanti, Italia): 8
Diego Batlle (La Nación, Otros Cines, Argentina): 7
Diego Lerer (Clarín, Micropsia, Argentina): 6
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Robert Koehler: (Variety, EE.UU.): 5
Alejandro G. Calvo (Sensacine.com, España): 5
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6

"TODOS VOS SODES CAPITANS" Oliver Laxe [Quinzaine]

Olivier Père (Director artístico Festival de Locarno, Francia): 7
Antoine Thirion (Independencia, Francia): 8
Carlo Chatrian (Panoramiques, Duellanti, Italia): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Luciano Monteagudo (Página/12, Argentina): 7
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 8,5
Fernando Ganzo (Lumiére, España): 7
Robert Koehler: (Variety, EE.UU.): 9
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6
Alejandro G. Calvo (Sensacine.com, España): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Diego Batlle (La Nación, Otros Cines, Argentina): 7,5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Francisco Ferreira (O Expresso, Portugal): 7,5

"LA NOSTRA VITA (OUR LIFE)" Daniele Luchetti [Competition]

Alejandro G. Calvo (Sensacine.com, España): 3
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Diego Lerer (Clarín, Micropsia, Argentina): 6
Luciano Barisone (Panoramiques, Italia): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 3
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 7
Carlo Chatrian (Panoramiques, Duellanti, Italia): 3
Cristina Nord ( Die Tageszeitung Alemania): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 0,5
Violeta Kovacsis (Lumiere, España): 0
Luciano Monteagudo (Página/12, Argentina): 6
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 1
Manu Yáñez (Fotogramas, España): 1
Gabe Klinger (The Auteurs Notebook, EE.UU.): 1

"STONES IN EXILE" Stephen Kijak

Luciano Monteagudo (Página/12, Argentina): 6
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 3
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Diego Lerer (Clarín, Micropsia, Argentina): 6
Roger Alan Koza (La Voz del Interior, Argentina): 5,5
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7

"ROUTE IRISH" Ken Loach [Competition]

Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Diego Batlle (La Nación, Otros Cines, Argentina): 7
Luciano Monteagudo (Página/12, Argentina): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 0
Diego Lerer (Clarín, Micropsia, Argentina): 6
Cristina Nord ( Die Tageszeitung Alemania): 2

"CARLOS" Olivier Assayas

Francisco Ferreira (O Expresso, Portugal): -6-
Gabe Klinger (The Auteurs Notebook, EE.UU.): 7
Fernando Ganzo (Lumiére, España): 5,5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 8,5
Robert Koehler: (Variety, EE.UU.): -8-
Emmanuel Burdeau (Mediapart, Francia): 4
Cristina Nord ( Die Tageszeitung Alemania): 8
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 8
Diego Lerer (Clarín, Micropsia, Argentina): -8- (vistos dos episodios de tres). 
Scott Foundas (Filmlinc, EE.UU): 9

"SHI (POETRY)" Lee Chang-dong [Competition]

Diego Batlle (La Nación + Otros Cines, Argentina): 9
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 8
Carlo Chatrian (Panoramiques Duellanti, Italia): 8
Diego Lerer (Clarín + Micropsia, Argentina): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 9
Alejandro G. Calvo (Sensacine.com, España): 5
Scott Foundas (Filmlinc, EE.UU): 9
Eulalia Iglesias (Cahiers du Cinéma España, España): 7
Luciano Monteagudo (Página/12, Argentina): 8
Luciano Barisone (Panoramiques, Italia): 9
Paolo Bertolin (Cineforum, Italia): 9
Robert Koehler: (Variety, EE.UU.): 9
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 9
Carlo Chatrian (Panoramiques, Duellanti, Italia): 8
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 8
Violeta Kovacsis (Lumiere, España): 7
Manu Yáñez (Fotogramas, España): 7
Scott Foundas (Filmlinc, EE.UU): 10
Cristina Nord ( Die Tageszeitung Alemania): 8
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 6

"UDAAN" Vikramaditya Motwane [Un Certain Regard]

Leonardo D'Espósito (Crítica de la Argentina, Argentina): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 1
Roger Alan Koza (La Voz del Interior, Argentina): 3
Paolo Bertolin (Cineforum, Italia): 8
Robert Koehler: (Variety, EE.UU.): 4

"DES HOMMES ET DES DIEUX (OF GODS AND MEN)" Xavier Beauvois [Competition]

Cristina Nord ( Die Tageszeitung, Alemania): 7
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 10
Francisco Ferreira (O Expresso, Portugal): 8
Gabe Klinger (The Auteurs Notebook, EE.UU.): 9
Violeta Kovacsis (Lumiere, España): 9
Alejandro G. Calvo (Sensacine.com, España): 5
Fernando Ganzo (Lumiere, España): 7
Emmanuel Burdeau (Mediapart, Francia): 9,5
Olivier Père (Director artístico Festival de Locarno, Francia): 10
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Paolo Bertolin (Cineforum, Italia): 8
Robert Koehler (Variety, EE.UU.): 10
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 8,5
Luciano Barisone (Panoramiques, Italia): 8
Diego Batlle (La Nación + Otros Cines, Argentina): 9
Carlo Chatrian (Panoramiques Duellanti, Italia): 8
Diego Lerer (Clarín + Micropsia, Argentina): 9
Luciano Monteagudo (Página/12, Argentina): 6
Roger Alan Koza (La Voz del Interior, Argentina): 9,5

"SCHASTYE MOE (MY JOY)" Sergei Loznitsa [Competition]

Diego Batlle (La Nación + Otros Cines, Argentina): 3
Luciano Monteagudo (Página/12, Argentina): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 9
Alejandro G. Calvo (Sensacine.com, España): 7
Robert Koehler (Variety, EE.UU.): 6
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 7
Luciano Barisone (Panoramiques, Italia): 7
Francisco Ferreira (O Expresso, Portugal): 3
Carlo Chatrian (Panoramiques Duellanti, Italia): 5
Diego Lerer (Clarín + Micropsia, Argentina): 5
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 7
Cristina Nord ( Die Tageszeitung Alemania): 7
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 4
Violeta Kovacsis (Lumiere, España): 8
Manu Yáñez (Fotogramas, España): 6
Scott Foundas (Filmlinc, EE.UU): 8
Paolo Bertolin (Cineforum, Italia): 10

"DES FILLES EN NOIR" Jean-Paul Civeyrac [Quinzaine]

Fernando Ganzo (Lumiere, España): 7
Diego Batlle (La Nación + Otros Cines, Argentina): 6,5
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Alejandro G. Calvo (Sensacine.com, España): 5
Robert Koehler (Variety, EE.UU.): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 6

"LOS LABIOS" Santiago Loza e Iván Fund [Un Certain Regard]

Diego Lerer (Clarín + Micropsia, Argentina): 8
Diego Batlle (La Nación + Otros Cines, Argentina): 8
Roger Alan Koza (La Voz del Interior, Argentina): 8
Cristina Nord (Die Tageszeitung, Alemania): 8
Fernando Ganzo (Lumiere, España): 6,5
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 6,5
Luciano Barisone (Panoramiques, Italia): 5
Carlo Chatrian (Panoramiques Duellanti, Italia): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7,5

"BLUE VALENTINE" Derek Cianfrance [Un Certain Regard]

Cristina Nord (Die Tageszeitung, Alemania): 6
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 5,5
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Diego Lerer (Clarín + Micropsia, Argentina): 7
Eulalia Iglesias (Cahiers du Cinéma España, España): 5
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 8

"CHANTRAPAS" Otar Iosselliani

Olivier Père (Festival de Locarno, Francia): 9
Francisco Ferreira (O Expresso, Portugal): 8
Alejandro G. Calvo (Sensacine.com, España): 9,99
Fernando Ganzo (Lumiere, España): 7,5
Diego Batlle (La Nación + Otros Cines, Argentina): 7,5
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Robert Koehler (Variety, EE.UU.): 8
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 7,5
Carlo Chatrian (Panoramiques Duellanti, Italia): 8
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5

"THE MYHTH OF AMERICAN SLEEPOVER" David Robert Mitchell [Semaine]

Paolo Bertolin (Cineforum, Italia): 7
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7

"ILLÉGAL" Olivier Masset-Depasse [Quinzaine]
  SACD Prize for best French-language film

Paolo Bertolin (Cineforum, Italia): 7
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 0,001

"SOUND OF NOISE" Ola Simonsson & Johanes Stjärne Nilsson [Semaine]

Paolo Bertolin (Cineforum, Italia): 6
Roger Alan Koza (La Voz del Interior, Argentina): 6,5

"AUTOBIOGRAFIA LUI NICOLAE CEAUSESCU" Andrei Ujica

Francisco Ferreira (O Expresso, Portugal): 8
Luciano Monteagudo (Página/12, Argentina): 8
Scott Foundas (Filmlinc, EE.UU): 10
Olivier Père (Director artístico Festival de Locarno, Francia): 9
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Luciano Barisone (Panoramiques, Italia): 8
Carlo Chatrian (Panoramiques Duellanti, Italia): 9
Diego Lerer (Clarín + Micropsia, Argentina): 8
Gabe Klinger (The Auteurs Notebook, EE.UU.): 8
Robert Koehler: (Variety, EE.UU.): 10
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 8,5
Fernando Ganzo (Lumiére, España): 8
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 9
Paolo Bertolin (Cineforum, Italia): 8

"TWO GATES OF SLEEP" Alistair Banks Griffin [Quinzaine]

Gabe Klinger (The Auteurs Notebook, EE.UU.): 2

"COPIE CONFORME (CERTIFIED COPY)" Abbas Kiarostami [Competition]

Carlo Chatrian (Panoramiques Duellanti, Italia): 3
Emmanuel Burdeau (Mediapart, Francia): 6,5
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 9
Fernando Ganzo (Lumiere, España): 9,5
Scott Foundas (Filmlinc, EE.UU): 8
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Eugenio Renzi (Independencia, Francia): 0
Luciano Barisone (Panoramiques, Italia): 8
Robert Koehler (Variety, EE.UU.): 4
Manu Yáñez (Fotogramas, España): 6
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 8,5
Diego Lerer (Clarín + Micropsia, Argentina): 8
Alejandro G. Calvo (Sensacine.com, España): 6
Cristina Nord (Die Tageszeitung, Alemania): 6
Francisco Ferreira (O Expresso, Portugal): 7,5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 5
Violeta Kovacsis (Lumiere, España): 6
Luciano Monteagudo (Página/12, Argentina): 6
Roger Alan Koza (La Voz del Interior, Argentina): 8
Paolo Bertolin (Cineforum, Italia): 7

"FILM SOCIALISME" Jean-Luc Godard [Un Certain Regard]

Cristina Nord (Die Tageszeitung, Alemania): 8
Fernando Ganzo (Lumiere, España): 10
Gabe Klinger (The Auteurs Notebook, EE.UU.): 10
Emmanuel Burdeau (Mediapart, Francia): 9,5
Sergio Wolf (Director artístico de BAFICI, Argentina): 10
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 10
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 10.9
Alejandro G. Calvo (Sensacine.com, España): 9
Olivier Père (Director artístico Festival de Locarno, Francia): 10
Carlo Chatrian (Panoramiques Duellanti, Italia): 9
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Luciano Monteagudo (Página/12, Argentina): 10
Scott Foundas (Filmlinc, EE.UU): 10
Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Eugenio Renzi (Independencia, Francia): 10
Robert Koehler (Variety, EE.UU.): 10
Roger Alan Koza (La Voz del Interior, Argentina): 10
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 10
Diego Lerer (Clarín + Micropsia, Argentina): 8
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 0,3
Francisco Ferreira (O Expresso, Portugal): 10
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 9,5

"ALTING BLIVER GODT IGEN" Christoffer Boe [Quinzaine]

Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 2
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 3
Paolo Bertolin (Cineforum, Italia): 6

"HA 'MESHOTET" Avishai Siva [Quinzaine]

Diego Batlle (La Nación + Otros Cines, Argentina): 5
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 4
Diego Lerer (Clarín + Micropsia, Argentina): 6
Cristina Nord (Die Tageszeitung, Alemania): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 4

"AÑO BISIESTO" Michael Rowe [Quinzaine]

Jaime Pena (El Amante + Cahiers du Cinéma España, España): 5
Carlo Chatrian (Panoramiques Duellanti, Italia): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 3
Roger Alan Koza (La Voz del Interior, Argentina): 5
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 6
Gabe Klinger (The Auteurs Notebook, EE.UU.): 4

"BIUTIFUL" Alejandro González-Iñarritu [Competition]

Roger Alan Koza (La Voz del Interior, Argentina): 3
Alejandro G. Calvo (Sensacine.com, España): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 0
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 0.1
Carlo Chatrian (Panoramiques Duellanti, Italia): 3
Luciano Monteagudo (Página/12, Argentina): 3
Diego Batlle (La Nación + Otros Cines, Argentina): 3
Violeta Kovacsis (Lumiere, España): 0
Carlos F. Heredero (Cahiers du Cinéma España, España): 1
Luciano Barisone (Panoramiques, Italia): 1
Robert Koehler (Variety, EE.UU.): 1
Manu Yáñez (Fotogramas, España): 2
Diego Lerer (Clarín + Micropsia, Argentina): 3
Francisco Ferreira (O Expresso, Portugal): 1
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 0
Scott Foundas (Filmlinc, EE.UU): 0

"TAMARA DREWE" Stephen Frears

Alejandro G. Calvo (Sensacine.com, España): 5
Scott Foundas (Filmlinc, EE.UU): 0

"O ESTRANHO CASO DA ANGELICA" Manoel Oliveira [Un Certain Regard]

Francisco Ferreira (O Expresso, Portugal): 10
Scott Foundas (Filmlinc, EE.UU): 10
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 9
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 10
Gabe Klinger (The Auteurs Notebook, EE.UU.): 8
Luciano Barisone (Panoramiques, Italia): 9
Carlo Chatrian (Panoramiques Duellanti, Italia): 9
Paolo Bertolin (Cineforum. Italia): 9
Violeta Kovacsis (Lumiere, España): 8
Robert Koehler (Variety, EE.UU.): 10
Olivier Père (Director artístico Festival de Locarno, Francia): 9
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Roger Alan Koza (La Voz del Interior, Argentina): 10
Diego Lerer (Clarín + Micropsia, Argentina): 8
Alejandro G. Calvo (Sensacine.com, España): 9
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 8
Carlos Reviriego (Cahiers du Cinéma España, España): 8
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Manu Yáñez (Fotogramas, España): 9
Luciano Monteagudo (Página/12, Argentina): 9
Eulalia Iglesias (Cahiers du Cinéma España, España): 8
Cristina Nord (Die Tageszeitung, Alemania): 8
Mark Peranson (CinemaScope, Canada): 10,3
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 5

"CARANCHO" Pablo Trapero [Un Certain Regard]

Diego Lerer (Clarín + Micropsia, Argentina): 8
Diego Batlle (La Nación + Otros Cines, Argentina): 8
Roger Alan Koza (La Voz del Interior, Argentina): 8
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 9
Fernando Ganzo (Lumiere, España): 5
Olivier Père (Director artístico Festival de Locarno, Francia): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 7
Luciano Barisone (Panoramiques, Italia): 4
Robert Koehler (Variety, EE.UU.): 6
Manu Yáñez (Fotogramas, España): 7
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 6,5
Alejandro G. Calvo (Sensacine.com, España): 8
Violeta Kovacsis (Lumiere, España): 7
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 5,5
Luciano Monteagudo (Página/12, Argentina): 8

"OUTRAGE" Takeshi Kitano [Competition]

Scott Foundas (Filmlinc, EE.UU): 4
Alejandro G. Calvo (Sensacine.com, España): 8
Emmanuel Burdeau (Mediapart, Francia): 7
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 6
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Fernando Ganzo (Lumiere, España): 6
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 7
Diego Lerer (Clarín + Micropsia, Argentina): 7
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 5
Luciano Barisone (Panoramiques, Italia): 3
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Cristina Nord (Die Tageszeitung, Alemania): 5
Luciano Monteagudo (Página/12, Argentina): 6
Carlo Chatrian (Panoramiques Duellanti, Italia): 6
Violeta Kovacsis (Lumiere, España): 7
Roger Alan Koza (La Voz del Interior, Argentina): 6
Manu Yáñez (Fotogramas, España): 8
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 6
Paolo Bertolin (Cineforum, Italia): 8

"HAI SHANG CHUAN QI (I WISH I KNEW)" Jia Zhang-ke [Un Certain Regard]

Francisco Ferreira (O Expresso, Portugal): 5
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 4
Alejandro G. Calvo (Sensacine.com, España): 4
Emmanuel Burdeau (Mediapart, Francia): 9
Diego Batlle (La Nación + Otros Cines, Argentina): 9
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 9
Fernando Ganzo (Lumiere, España): 6
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 6,9
Diego Lerer (Clarín + Micropsia, Argentina): 7
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 4
Eugenio Renzi (Independencia, Francia): 8
Luciano Barisone (Panoramiques, Italia): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5
Cristina Nord (Die Tageszeitung, Alemania): 6
Luciano Monteagudo (Página/12, Argentina): 6
Violeta Kovacsis (Lumiere, España): 9
Scott Foundas (Filmlinc, EE.UU): 7
Robert Koehler (Variety, EE.UU.): 9
Paolo Bertolin (Cineforum, Italia): 8

"LE QUATTRO VOLTE" Michelangelo Frammartino [Quinzaine] Best European Film Quinzaine
    Palm Dog Award for best performance by a dog

Carlos Reviriego (Cahiers du Cinéma España, España): 10
Luciano Barisone (Panoramiques, Italia): 8
Carlo Chatrian (Panoramiques, Duellanti, Italia): 9
Eulalia Iglesias (Cahiers du Cinéma España, España): 8
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 7
Violeta Kovacsis (Lumiere, España): 9
Robert Koehler: (Variety, EE.UU.): 10
Alejandro G. Calvo (Sensacine.com, España): 8
Diego Batlle (La Nación, Otros Cines, Argentina): 10
Luciano Monteagudo (Página/12, Argentina): 9

"CLEVELAND CONTRE WALL STREET" Jean-Stèphane Bron [Quinzaine]

Diego Batlle (La Nación + Otros Cines, Argentina): 7
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 6
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Luciano Barisone (Panoramiques, Italia): 7
Luciano Monteagudo (Página/12, Argentina): 5

"LA CASA MUDA" Gustavo Hernandez [Quinzaine]

Gabe Klinger (The Auteurs Notebook, EE.UU.): 0
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 5
Robert Koehler: (Variety, EE.UU.): 0
Alejandro G. Calvo (Sensacine.com, España): 3
Roger Alan Koza (La Voz del Interior, Argentina): 0
Carlos F. Heredero (Cahiers du Cinéma España, España): 3
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 2
Mark Peranson (CinemaScope, Canada): 0 (-2)
Cristina Nord ( Die Tageszeitung Alemania): 2

"COUNTDOWN TO ZERO" Lucy Walker

Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 1

"L'AUTRE MONDE" Gilles Marchand

Carlos Reviriego (Cahiers du Cinéma España, España): 4
Emmanuel Burdeau (Mediapart, Francia): 7
Olivier Père (Director artístico Festival de Locarno, Francia): 2

"R U THERE" David Verbeek [Un Certain Regard]

Diego Batlle (La Nación, Otros Cines, Argentina): 6
Roger Alan Koza (La Voz del Interior, Argentina): 7
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 4
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 4
Diego Lerer (Clarín, Micropsia, Argentina): 6
Eugenio Renzi (Independencia, Francia): 4
Luciano Monteagudo (Página/12, Argentina): 7
Olivier Père (Director artístico Festival de Locarno, Francia): 2

"PAL ADRIENN" Ágnes Kocsis [Un Certain Regard]

Eulalia Iglesias (Cahiers du Cinéma España, España): 7
Diego Lerer (Clarín, Micropsia, Argentina): 5
Eugenio Renzi (Independencia, Francia): 5
Luciano Barisone (Panoramiques, Italia): 7

"LA PRINCESSE DE MONTPENSIER (THE PRINCESS OF MONTPENSIER)" Bertrand Tavernier [Competition]

Francisco Ferreira (O Expresso, Portugal): 1
Cristina Nord ( Die Tageszeitung Alemania): 5
Eulalia Iglesias (Cahiers du Cinéma España, España): 4
Fernando Ganzo (Lumiere, España): 3
Scott Foundas (Filmlinc, EE.UU): 8
Manu Yáñez (Fotogramas, España): 4
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 1
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 8
Luciano Monteagudo (Página/12, Argentina): 5
Violeta Kovacsis (Lumiere, España): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7

"SOMOS LO QUE HAY" Jorge Michel Grau [Quinzaine]

Roger Alan Koza (La Voz del Interior, Argentina): 4
Paolo Bertolin (Cineforum, Italia): 8
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 0
Carlos Reviriego (Cahiers du Cinéma España, España): 0
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 6
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 2

"INSIDE JOB" Charles Fergusson

Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Robert Koehler: (Variety, EE.UU.): 4
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 8,5
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5
Scott Foundas (Filmlinc, EE.UU): 9
Manu Yáñez (Fotogramas, España): 6
Violeta Kovacsis (Lumiere, España): 6
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7,5

"BELLE ÉPINE" Rebecca Zlotowski [Semaine]

Fernando Ganzo (Lumiere, España): 6
Olivier Père (Director artístico Festival de Locarno, Francia): 7
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Robert Koehler: (Variety, EE.UU.): 7
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 8
Scott Foundas (Filmlinc, EE.UU): 5

"SANDCASTLE" Boo Junfeng [Semaine]

Roger Alan Koza (La Voz del Interior, Argentina): 5
Paolo Bertolin (Cineforum, Italia): 7
Carlo Chatrian (Panoramiques, Duellanti, Italia): 5
Luciano Barisone (Panoramiques, Italia): 5

"ABEL" Diego Luna

Roger Alan Koza (La Voz del Interior, Argentina): 3

"RUBBER" Quentin Dupieux [Semaine]

Olivier Père (Director artístico Festival de Locarno, Francia): 8
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 8
Robert Koehler: (Variety, EE.UU.): 6
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 7
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6,5

"KABOOM" Gregg Araki

Robert Koehler: (Variety, EE.UU.): 7
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6
Paolo Bertolin (Cineforum, Italia): 8
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 7
Carlo Chatrian (Panoramiques, Duellanti, Italia): 6

"LES AMOURS IMAGINAIRES (HEARTBEATS)" Xavier Dolan [Un Certain Regard]

Diego Batlle (La Nación, Otros Cines, Argentina): 7
Olivier Père (Director artístico Festival de Locarno, Francia): 0
Diego Lerer (Clarín, Micropsia, Argentina): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 4
Paolo Bertolin (Cineforum, Italia): 10
Luciano Barisone (Panoramiques, Italia): 4
Carlos Reviriego (Cahiers du Cinéma España, España): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 6
Carlos F. Heredero (Cahiers du Cinéma España, España): 4 
Carlo Chatrian (Panoramiques, Duellanti, Italia): España, España): 3
Violeta Kovacsis (Lumiere, España): 4

"UNTER DIR DIE STADT (THE CITY BELOW)" Christoph Hochhäussler [Un Certain Regard]

Emmanuel Burdeau (Mediapart, Francia): 3
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Robert Koehler: (Variety, EE.UU.): 3
Diego Lerer (Clarín, Micropsia, Argentina): 6
Olivier Père (Director artístico Festival de Locarno, Francia): 5
Cristina Nord ( Die Tageszeitung Alemania): 6
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 2
Alejandro G. Calvo (Sensacine.com, España): 5
Fernando Ganzo (Lumiere, España): 3
Luciano Barisone (Panoramiques, Italia): 7
Carlos Reviriego (Cahiers du Cinéma España, España): 3
Francisco Ferreira (O Expresso, Portugal): 8
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 3
Luciano Monteagudo (Página/12, Argentina): 6
Carlo Chatrian (Panoramiques, Duellanti, Italia): 7
Violeta Kovacsis (Lumiere, España): 4
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 6,5

"UN HOMME QUI CRIE (A SCREAMING MAN)" Mahamat-Saleh Haroun [Competition]

Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Robert Koehler: (Variety, EE.UU.): 8
Alejandro G. Calvo (Sensacine.com, España): 8
Fernando Ganzo (Lumiere, España): 5
Scott Foundas (Filmlinc, EE.UU): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6
Diego Lerer (Clarín, Micropsia, Argentina): 6
Luciano Barisone (Panoramiques, Italia): 7
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 7
Carlos Reviriego (Cahiers du Cinéma España, España): 7
Cristina Nord ( Die Tageszeitung Alemania): 6
Francisco Ferreira (O Expresso, Portugal): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Roger Alan Koza (La Voz del Interior, Argentina): 6,5
Manu Yáñez (Fotogramas, España): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Luciano Monteagudo (Página/12, Argentina): 7
Violeta Kovacsis (Lumiere, España): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 4

"ANOTHER YEAR" Mike Leigh [Competition]

Francisco Ferreira (O Expresso, Portugal): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 4
Alejandro G. Calvo (Sensacine.com, España): 7
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Robert Koehler: (Variety, EE.UU.): 1
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 4
Violeta Kovacsis (Lumiere, España): 4
Diego Lerer (Clarín, Micropsia, Argentina): 4
Cristina Nord ( Die Tageszeitung Alemania): 2
Roger Alan Koza (La Voz del Interior, Argentina): 2
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Luciano Monteagudo (Página/12, Argentina): 4
Scott Foundas (Filmlinc, EE.UU): 9
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 2,5
Luciano Barisone (Panoramiques, Italia): 6
Carlos Reviriego (Cahiers du Cinéma España, España): 5,5
Carlo Chatrian (Panoramiques, Duellanti, Italia): 6
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 0

"YOU WILL MEET A TALL DARK STRANGER" Woody Allen

Francisco Ferreira (O Expresso, Portugal): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 7
Luciano Monteagudo (Página/12, Argentina): 5
Alejandro G. Calvo (Sensacine.com, España): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 5
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 5
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 5
Diego Lerer (Clarín, Micropsia, Argentina): 5
Violeta Kovacsis (Lumiere, España): 6
Scott Foundas (Filmlinc, EE.UU): 6
Carlos Reviriego (Cahiers du Cinéma España, España): 5
Manu Yáñez (Fotogramas, España): 4

"PETIT BÉBÉ JÉSUS DE FLANDR" Gust Van den Berghe [Quinzaine]

Jaime Pena (El Amante, Cahiers du Cinéma España, España): 0
Eulalia Iglesias (Cahiers du Cinéma España, España): 2
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 0
Paolo Bertolin (Cineforum, Italia): 4

"LA MIRADA INVISIBLE" Diego Lerman [Quinzaine]

Diego Batlle (La Nación, Otros Cines, Argentina): 7
Diego Lerer (Clarín, Micropsia, Argentina): 7
Roger Alan Koza (La Voz del Interior, Argentina): 7
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 6,5
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 6
Alejandro G. Calvo (Sensacine.com, España): 5
Emmanuel Burdeau (Mediapart, Francia): 4
Manu Yáñez (Fotogramas, España): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Carlos Reviriego (Cahiers du Cinéma España, España): 5

"AURORA" Cristi Puiu [Un Certain Regard]

Alejandro G. Calvo (Sensacine.com, España): 7
Diego Batlle (La Nación, Otros Cines, Argentina): 8
Robert Koehler: (Variety, EE.UU.): 7
Diego Lerer (Clarín, Micropsia, Argentina): 8
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 7
Cristina Nord (Die Tageszeitung Alemania): 8
Violeta Kovacsis (Lumiere, España): 8
Luciano Barisone (Panoramiques, Italia): 8
Carlo Chatrian (Panoramiques, Duellanti, Italia): 7
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 9
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 8
Paolo Bertolin (Cineforum, Italia): 7
Francisco Ferreira (O Expresso, Portugal): 7
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5
Luciano Monteagudo (Página/12, Argentina): 8
Scott Foundas (Filmlinc, EE.UU): 10
Carlos Reviriego (Cahiers du Cinéma España, España): 8
Carlos F. Heredero (Cahiers du Cinéma España, España): 9
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7

"SVET-AKE" Aktan Arym Kubat [Quinzaine]

Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 2
Olivier Père (Director artístico Festival de Locarno, Francia): 7
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 6
Paolo Bertolin (Cineforum, Italia): 8

"UN POISON VIOLENT (A GIFT)" Katell Quillévéré [Quinzaine]

Fernando Ganzo (Lumiere, España): 2
Diego Lerer (Clarín, Micropsia, Argentina): 4
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 3
Carlo Chatrian (Panoramiques, Duellanti, Italia): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 5,5
Francisco Ferreira (O Expresso, Portugal): 5
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Luciano Monteagudo (Página/12, Argentina): 5
Alejandro G. Calvo (Sensacine.com, España): 5
Gabe Klinger (The Auteurs Notebook, EE.UU.): 6
Emmanuel Burdeau (Mediapart, Francia): 7
Diego Batlle (La Nación, Otros Cines, Argentina): 4
Robert Koehler: (Variety, EE.UU.): 4
Carlos Reviriego (Cahiers du Cinéma España, España): 6

"SHIT YEAR" Cam Archer [Quinzaine]

Olivier Père (Festival de Locarno, Francia): 0
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 2
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 6
Paolo Bertolin (Cineforum, Italia): 8
Mark Peranson (CinemaScope, Canada): 0,2

"LIONS LOVE... (AND LIES)" 1969 Agnès Varda

Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 8

"CHATROOM" Hideo Nakata [Un Certain Regard]

Diego Batlle (La Nación, Otros Cines, Argentina): 3
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 2
Robert Koehler: (Variety, EE.UU.): 1
Diego Lerer (Clarín, Micropsia, Argentina): 2
Violeta Kovacsis (Lumiere, España): 2
Carlo Chatrian (Panoramiques, Duellanti, Italia): 3
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 2
Manu Yáñez (Fotogramas, España): 1
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 6
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 2

"WALL STREET: MONEY NEVER SLEEPS" Oliver Stone

Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria):8
Alejandro G. Calvo (Sensacine.com, España): 1
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Eulalia Iglesias (Cahiers du Cinéma España, España): 3
Diego Lerer (Clarín, Micropsia, Argentina): 5
Emmanuel Burdeau (Mediapart, Francia): 2,2
Cristina Nord ( Die Tageszeitung Alemania): 2
Violeta Kovacsis (Lumiere, España): 4
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 3
Manu Yáñez (Fotogramas, España): 4
Francisco Ferreira (O Expresso, Portugal): 3
Scott Foundas (Filmlinc, EE.UU): 2
Carlos Reviriego (Cahiers du Cinéma España, España): 1
Carlos F. Heredero (Cahiers du Cinéma España, España): 2

"BENDA BILILI!" Florent de la Tullaye, Renaud Barret [Quinzaine]

Carlo Chatrian (Panoramiques, Duellanti, Italia): 5
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 3

 David Gritten 4/5 http://www.telegraph.co.uk/culture/film/cannes-film-festival/7719324/Cannes-Film-Festival-2010-Benda-Bilili-review.html

"MARTI, DUPA CRACIUN  (TUESDAY, AFTER CHRISTMAS)" Radu Muntean [Un Certain Regard]

Gabe Klinger (The Auteurs Notebook, EE.UU.): 4
Robert Koehler: (Variety, EE.UU.): 8
Olivier Père (Director artístico Festival de Locarno, Francia): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Alejandro G. Calvo (Sensacine.com, España): 6
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 8
Carlos Reviriego (Cahiers du Cinéma España, España): 8
Diego Batlle (La Nación, Otros Cines, Argentina): 8
Paolo Bertolin (Cineforum. Italia): 8
Eulalia Iglesias (Cahiers du Cinéma España, España): 6,5
Diego Lerer (Clarín, Micropsia, Argentina): 7
Gonzalo de Pedro (Cahiers du Cinéma España, Público, España): 4
Cristina Nord ( Die Tageszeitung Alemania): 7
Francisco Ferreira (O Expresso, Portugal): 6
Roger Alan Koza (La Voz del Interior, Argentina): 7
Scott Foundas (Filmlinc, EE.UU): 8
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 7

"NOSTALGIA DE LA LUZ" Patricio Guzmán

Luciano Barisone (Panoramiques, Italia): 8
Carlo Chatrian (Panoramiques, Duellanti, Italia): 8
Eugenio Renzi (Independencia, Francia): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 8
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 7,5
Luciano Monteagudo (Página/12, Argentina): 7
Eulalia Iglesias (Cahiers du Cinéma España, España): 7,5
Cristina Nord ( Die Tageszeitung Alemania): 7
Roger Alan Koza (La Voz del Interior, Argentina): 7

"THE HOUSEMAID" Im Sang-soo [Competition]

Luciano Barisone (Panoramiques, Italia): 5
Carlo Chatrian (Panoramiques, Duellanti, Italia): 4
Robert Koehler: (Variety, EE.UU.): 3
Eugenio Renzi (Independencia, Francia): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 3
Olivier Père (Director artístico Festival de Locarno, Francia): 7
Alejandro G. Calvo (Sensacine.com, España): 6
Carlos Reviriego (Cahiers du Cinéma España, España): 5
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 4
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Manu Yáñez (Fotogramas, España): 5
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 3
Eulalia Iglesias (Cahiers du Cinéma España, España): 5
Diego Lerer (Clarín, Micropsia, Argentina): 6
Cristina Nord ( Die Tageszeitung Alemania): 2
Violeta Kovacsis (Lumiere, España): 5
Paolo Bertolin (Cineforum, Italia): 8
Francisco Ferreira (O Expresso, Portugal): 5
Scott Foundas (Filmlinc, EE.UU): 4

"DRAQUILA - L'ITALIA CHE TREMA" Sabina Guzzanti

Alejandro G. Calvo (Sensacine.com, España): 3
Luciano Barisone (Panoramiques, Italia): 5
Emmanuel Burdeau (Mediapart, Francia): 5
Eugenio Renzi (Independencia, Francia): 5
Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 4
Carlos Reviriego (Cahiers du Cinéma España, España): 5
Diego Batlle (La Nación, Otros Cines, Argentina): 6
Luciano Monteagudo (Página/12, Argentina): 5
Eulalia Iglesias (Cahiers du Cinéma España, España): 5
Diego Lerer (Clarín, Micropsia, Argentina): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 5

"RIZHAO CHONGQING (CHONGQING BLUES)" Wang Xiaoshuai [Competition]

Alejandro G. Calvo (Sensacine.com, España): 3
Eulalia Iglesias (Cahiers du Cinéma España, España): 4
Luciano Barisone (Panoramiques): 4
Carlo Chatrian (Panoramiques, Duellanti, Italia): 3
Paolo Bertolin (Cineforum. Italia): 8
Violeta Kovacsis (Lumiere, España): 5
Robert Koehler: (Variety, EE.UU.): 3
Emmanuel Burdeau (Mediapart, Francia): 4
Eugenio Renzi (Independencia, Francia): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Roger Alan Koza (La Voz del Interior, Argentina): 3
Jaime Pena (El Amante, Cahiers du Cinéma España, España): 3
Carlos Reviriego (Cahiers du Cinéma España, España): 2
Diego Batlle (La Nación, Otros Cines, Argentina): 4
Manu Yáñez (Fotogramas, España): 2
Luciano Monteagudo (Página/12, Argentina): 3
Diego Lerer (Clarín, Micropsia, Argentina): 4
Cristina Nord ( Die Tageszeitung Alemania): 2
Francisco Ferreira (O Expresso, Portugal): 2
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung, Artechock, Alemania): 6

"TOURNÉE (ON TOUR)" Mathieu Amalric [Competition]

Carlo Chatrian (Panoramiques Duellanti, Italia): 7
Eugenio Renzi (Independencia, Francia): 7,6
Emmanuel Burdeau (Mediapart, Francia): 7
Carlos Reviriego (Cahiers du Cinéma España, España): 8
Alejandro G. Calvo (Sensacine.com, España): 7
Diego Batlle (La Nación + Otros Cines, Argentina): 7
Carlos F. Heredero (Cahiers du Cinéma España, España): 6
Leonardo D'Espósito (Crítica de la Argentina, Argentina) 9
Diego Lerer (Clarín + Micropsia, Argentina): 8
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 7
Eulalia Iglesias (Cahiers du Cinéma España, España): 7
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 8
Violeta Kovacsis (Lumiere, España): 7
Robert Koehler (Variety, EE.UU.): 5
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 7,5
Scott Foundas (Filmlinc, EE.UU): 5
Manu Yáñez (Fotogramas, España): 8
Luciano Monteagudo (Página/12, Argentina): 6
Gabe Klinger (The Auteurs Notebook, EE.UU.): 8
Olivier Père (Director artístico Festival de Locarno, Francia): 4
Cristina Nord (Die Tageszeitung, Alemania): 5
Francisco Ferreira (O Expresso, Portugal): 7
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 3,5

"ROBIN HOOD" Ridley Scott

Eugenio Renzi (Independencia, Francia): 6,9
Francisco Ferreira (O Expresso, Portugal): 3
Diego Lerer (Clarín + Micropsia, Argentina): 5
Diego Batlle (La Nación + Otros Cines, Argentina): 6
Gonzalo de Pedro (Cahiers du Cinéma España + Público, España): 2
Markus Keuschnigg (ORF Radio FM4, Die Presse, Austria): 2
Carlo Chatrian (Panoramiques Duellanti, Italia): 3
Alejandro G. Calvo (Sensacine.com, España): 3
Emmanuel Burdeau (Mediapart, Francia): 7
Carlos Reviriego (Cahiers du Cinéma España, España): 4
Carlos F. Heredero (Cahiers du Cinéma España, España): 4
Leonardo D'Espósito (Crítica de la Argentina, Argentina): 5
Violeta Kovacsis (Lumiere, España): 2
Eulalia Iglesias (Cahiers du Cinéma España, España): 3
Scott Foundas (Filmlinc, EE.UU): 8 (The film maudit of Cannes already).
Jaime Pena (El Amante + Cahiers du Cinéma España, España): 5
Manu Yáñez (Fotogramas, España): 3
Luciano Monteagudo (Página/12, Argentina): 5
Rüdiger Suchsland (Frankfurter Allgemeine Zeitung + Artechock, Alemania): 5

"."
--
http://letrasdecine.blogspot.com/2010/05
http://www.facebook.com/note.php?note_id=10150174713060012
http://rurban.xarch.at/film/Cannes2010.txt
http://rurban.xarch.at/film/Cannes2010.zip

EOF

our $HEADER = <<"EOF";
<i>Second edition of the survey / poll of films at Cannes 2010.</i> - Diego Lerer<p>

<small>0-10 points, only >6.00 avg and >3 international critics [avg/num stddev]. stddev>2: <i>controversial</i>.
Official selection competition: bold)</small><p>
EOF

our $FOOTER = "
<pre>
--
http://letrasdecine.blogspot.com/2010/05
http://www.facebook.com/note.php?note_id=10150174713060012

Source at http://rurban.xarch.at/film/Cannes2010.txt
Result at http://rurban.xarch.at/film/Cannes2010.sorted.html
History at http://github.com/rurban/cannes-critics-ratings/

</pre>";

$FOOTER =~ s{http://(.+)\n}{<a href="http://$1">$1</a>\n}g;
1;