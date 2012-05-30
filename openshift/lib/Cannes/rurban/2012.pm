package Cannes::rurban::2012;

#!/usr/bin/perl -- -*- perl -*-
# Cannes 2012 Critics Ratings, collected by Diego Lerer, ioncinema, indiewire and Reini Urban
# Recalc and sort ratings by all cannes critics from
# http://micropsia.otroscines.com/2012/05/cannes-2012-arrancan-los-votos-de-la-critica/
# https://docs.google.com/spreadsheet/ccc?key=0AmdgVGA_rtJzdHhmRmRtejhteGs1V0NiWVJhTWJOUlE
# and 16 more western critics from http://www.ioncinema.com/ (scaled to 0-10)
# french: http://www.lefilmfrancais.com/cannes2012/quotidien/ (scale 0-4)
# http://content.yudu.com/Library/A1wwqk/ScreenCannesDay92012/resources/index.htm (scale 0-4)
# us: http://www.indiewire.com/article/cannes-2012-a-guide-to-all-the-films
# Published at http://rurban.xarch.at/film/Cannes2012.sorted.html
# and https://github.com/rurban/cannes-critics-ratings
# Perl script by Reini Urban (c) 2010, 2011, 2012
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

"MOONRISE KINGDOM" (Wes Anderson) [Competition]
Alejandro G. Calvo 7.5
Alex Vicente 8
Alexandra Zawia 6
Arthur Mas 7.9
Boris Nelepo 8.5
Carlo Chatrian 7.5
Carlos F. Heredero 7.5
Carlos Reviriego 6.8
Cristina Nord 8
Dana Linssen 7.5
Diego Batlle 7.5
Diego Lerer 8.3
Eugenio Renzi 7.6
Eulalia Iglesias 7.5
Fernando Ganzo 6.5
Fernando Juan Lima 9
Francisco Ferreira 8.5
Jaime Pena 6.5
Javier H. Estrada 7
José Luis de Lorenzo 6
Kong Rithdee 7
Luciano Barisone 8
Luciano Monteagudo 8
Manu Yáñez 7
Marcelo Alderete 8
Nando Salva 8.5
Neil Young 7 B
Olivier Père 7.5
Pamela Bienzobas 7.5
Pedro Butcher 7.5
Philipp Engel 9.1
Robert Koehler 6
Roger Alan Koza  8
Rudiger Suchsland  8
Scott Foundas  9
Violeta Kovacsics 7
Xavi Serra 8
 IonCinema:
Christophe Beney 6
David Calhoun 7
Per Juul Carlsen 5
Paola Casella 6
Mike d'Angelo 7.8
#Carlos F. Heredero 6
Eric Lavallée 5
Fabien Lemercier 6 
Guy Lodge 5
Isabelle Regnier 8
Kevin Jagernauth 
James Rocchi 9
Cédric Succivalli 6
Clarence Tsui 6
Blake Williams 5 C+
Liu Min 5
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 5
Fabrice Leclerc 2.5
Eric Neuhoff 5
Stéphane Delorme 7.5
Jaques Mandelbaum 5
Philippe Rouyer 5
Pierre Vavasseur 5
Pierre Murat 5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 5
Pascal Merigeau 2.5
Danielle Attali 5
Christophe Carriére 5
 Screen Daily:
Nick James 5
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 2
Dennis Lim 7.5
Michel Ciment 5
Kate Muir 7.5
Bo Green Jensen 7.5
Screen International 7.5
 Metacritic (12):
Karina Longworth 9
Andrew Schenker (Slant, USA) 8.8
Eric Kohn 8.3 B+
Keith Uhlich 8
Richard Corliss (Time, USA) 8
Kevin Harley (Total Film, USA) 8
Todd McCarthy (The Hollywood Reporter, USA) 8
Peter Bradshaw 8
Pete Hammond (Boxoffice Magazine, USA) 8
Peter Debruge (Variety, USA) 7
David Edelstein (New York Magazine-Vulture, USA) 7
Nev Pierce (Empire, USA) 8
 Indiewire (35):
Simon Abrams 9 A
Ryland Aldrich 9 A
Raffi Asdourian 6 B
Anna Bielak 7 B+
Alex Billington 6 B
David Ehrlich 8 A-
David Fear 6 B
Jon Frosch 7 B+
Leda Galanou 6 B
Clementine Gallot 9 A
Stephen Garrett 1 D
Michael Ghennam
Glenn Heath Jr.
Patrick Heidmann 7 B+
Aaron Hillis 9 A
Frédéric Jaeger 7 B-
Peter Keogh (Boston Phoenix, USA) 9 A
Chris Knipp (Filmleaf) 9 A
Emanuel Levy 8 B
Patrick Z. McGavin 8 A-
Michal Oleszczyk 9 A
Kristy Puchko 7 B+
Jordan Raup (The Film Stage, USA) 5 B-
James Rocchi 9 A
Jonathan Rosenbaum 8 A-
Eric D. Snider (Film.com, USA) 8 A-
Anna Tatarska (Fandor, KINO, USA) 5 B-
Drew Taylor (The Playlist, USA) 9 A
Anne Thompson 8 A-
Ignatiy Vishnevetsky (Freelance, USA) 7 B+
Sarah Watt
 Other:
Simon Gallagher 8 A-
David Gritten (The Telegraph, UK) 8
Alex Billington 7
Claudia Puig (USA Today, USA) 8.75
Manohla Dargis (New York Times, USA) 7
Glenn Kenny (MSN Movies, USA) 10
Derek Malcolm (London Evening Standard, UK) 6

"DE ROUILLE ET D'OS (RUST AND BONE)" (Jacques Audiard) [Competition]
Alejandro G. Calvo 4
Alex Vicente 5
Alexandra Zawia 4.5
Carlo Chatrian 5
Carlos F. Heredero 4.8
Carlos Reviriego 3
Cristina Nord 3.8
Dana Linssen 5.9
Diego Batlle 6.5
Diego Lerer 4.8
Eugenio Renzi 3.1
Eulalia Iglesias 5
Fernando Juan Lima 6.5
Francisco Ferreira 4
Jaime Pena 4
Javier H. Estrada 4
José Luis de Lorenzo 3
Luciano Barisone 5
Luciano Monteagudo 5
Manu Yáñez 2
Marcelo Alderete 1
Nando Salva 6.5
Neil Young 6
Pamela Bienzobas 4.5
Pedro Butcher 5.5
Philipp Engel 6
Robert Koehler 4
Rudiger Suchsland  5
Scott Foundas  8
Violeta Kovacsics 2
Xavi Serra  6
 IonCinema:
Christophe Beney 
David Calhoun 5
Per Juul Carlsen 8
Paola Casella 5
Mike d'Angelo 6.4
#Carlos F. Heredero 4
Eric Lavallée 6
Fabien Lemercier 8 
Guy Lodge 8 B+
Isabelle Regnier 6
Kevin Jagernauth 8
Cédric Succivalli 10
Clarence Tsui 7
Blake Williams 4
Liu Min 7
Eric Kohn 7
 Screen Daily:
Nick James 5
David Stratton 9
Derek Malcolm 7.5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 7.5
Dennis Lim 2.5
Michel Ciment 9
Kate Muir 7.5
Bo Green Jensen 7.5
Screen International 7.5
 Le film français:
Stéphanie Lamome 9
Arnaud schwartz 5
Fabrice Leclerc 9
Eric Neuhoff 7.5
Stéphane Delorme 2.5
Jaques Mandelbaum 7.5
Philippe Rouyer 9
Pierre Vavasseur 9
Pierre Murat 5
Jean Roy 7.5
Serge Kaganski 7.5
Pierre Fornerod 7.5
Pascal Merigeau 7.5
Danielle Attali 9
Christophe Carriére 7.5
 Indiewire: (23)
Ryland Aldrich 7 B+ 
Raffi Asdourian 5 B-
Anna Bielak 3 C
Alex Billington 9 A-
David Fear 7 B+ 
Jon Frosch 7 B+
Leda Galanou 8 A- 
Stephen Garrett 8 A- 
Glenn Heath Jr. 4 C+
Aaron Hillis (GreenCine Daily) 9 A 
Frédéric Jaeger 8 A-
Patrick Z. McGavin (Lightsensitive.typepad.com) 6 B
Michal Oleszczyk 0.5 D
Eric D. Snider (Film.com, USA) 7 B+
Anne Thompson 8 A-
Sarah Watt (Sunday Star Times, New Zealand) 10 A+
 Other:
Peter Bradshaw 8
Simon Gallagher 9 A
David Gritten (The Telegraph, UK) 8
Emanuel Levy 7 B+
Derek Malcolm (London Evening Standard, UK) 8

"HOLY MOTORS" (Leos Carax) [Competition]
Alejandro G. Calvo 9
Alex Vicente 8
Alexandra Zawia 7.7
Arthur Mas 8.3
Boris Nelepo 6.9
Carlo Chatrian 8
Carlos F. Heredero 7.5
Carlos Reviriego 9.5
Cristina Nord 9
Dana Linssen 8.5
Diego Batlle 6.8
Diego Lerer 7.5
Eulalia Iglesias 9.2
Fernando Ganzo 8
Francisco Ferreira 9.9
Jaime Pena 9
Javier H. Estrada 9.5
José Luis de Lorenzo 7
Kong Rithdee 7.5
Luciano Barisone 9
Manu Yáñez 8.5
Marcelo Alderete 8
Nando Salva 7
Pamela Bienzobas 7
Pedro Butcher 9.5
Philipp Engel 10
Robert Koehler 10
Roger Alan Koza  9.5
Rudiger Suchsland  8.5
Sergio Wolf 10
Scott Foundas  8.5
Thomas Fioretti 8.3
Violeta Kovacsics 9
Xavi Serra 8.2
 IonCinema:
Christophe Beney 8
David Calhoun 4
Per Juul Carlsen 9
Paola Casella 8
Mike d'Angelo 8.8 A
#Carlos F. Heredero 6
Eric Lavallée 
Fabien Lemercier 6
Guy Lodge 9 A-
Isabelle Regnier 10
Kevin Jagernauth 5
Cédric Succivalli 10
Clarence Tsui 
Blake Williams 9 A-
Liu Min 9
Eric Kohn 8 A-
 Screen Daily:
Nick James 5
David Stratton 5
Derek Malcolm 2.5
Jan Schulz-Ojala 1
Jose Carlos Avellar 2.5
Dennis Lim 9
Michel Ciment 2.5
Kate Muir 7.5
Bo Green Jensen 9
Screen International 5
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 2.5
Fabrice Leclerc 9
Eric Neuhoff 1
Stéphane Delorme 9
Jaques Mandelbaum 9
Philippe Rouyer 2.5
Pierre Vavasseur 5
Pierre Murat 9
Jean Roy 5
Serge Kaganski 9
Pierre Fornerod 2.5 
Pascal Merigeau 7.5
Danielle Attali 7.5
Christophe Carriére 
 Indiewire (11):
Simon Abrams 
Ryland Aldrich
Raffi Asdourian 7 B+
Anna Bielak 
Alex Billington 
David Ehrlich
David Fear
Jon Frosch 8 A-
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 10 A+
Glenn Heath Jr.
Patrick Heidmann 7 B+
Aaron Hillis 9 A
Frédéric Jaeger
Peter Keogh 
Chris Knipp 
Megan Lehmann (The Hollywood Reporter, USA) 9 A
Emanuel Levy 8 A-
Patrick Z. McGavin 8 A-
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 8 A-
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Simon Gallagher 7 B+
Drew McWeeny 10 A+
Derek Malcolm (London Evening Standard, UK) 4

"COSMOPOLIS" (David Cronenberg) [Competition]
Alejandro G. Calvo 9.9
Alex Vicente 7
Alexandra Zawia 5.9
Arthur Mas 5.9
Boris Nelepo 7.7
Carlos F. Heredero 6
Carlos Reviriego 8
Cristina Nord 8
Diego Batlle 7.5
Diego Lerer 8.2
Eulalia Iglesias 8.5
Fernando Ganzo 6.5
Francisco Ferreira 8.5
Jaime Pena 9.6
Javier H. Estrada 8.3
Kong Rithdee 6.5
Luciano Barisone 7
Luciano Monteagudo 6
Manu Yáñez 8.5
Marcelo Alderete 8
Martial Pisani 5.6
Pedro Butcher 8
Philipp Engel 7
Robert Koehler 3
Roger Alan Koza  9.5
Rudiger Suchsland  7
Scott Foundas  8
Violeta Kovacsics 8.5
Xavi Serra  7.5
 IonCinema:
Christophe Beney 4
David Calhoun
Per Juul Carlsen 
Paola Casella 2
Mike d'Angelo 5.9
#Carlos F. Heredero  
Eric Lavallée 2
Fabien Lemercier 
Guy Lodge 6 B-
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 9
Clarence Tsui 
Blake Williams 7
Liu Min 5
Eric Kohn 6 B
 Screen Daily:
Nick James 7.5
David Stratton 5
Derek Malcolm 7.5
Jan Schulz-Ojala 2.5
Jose Carlos Avellar 2.5
Dennis Lim 7.5
Michel Ciment 7.5
Kate Muir 5
Bo Green Jensen 5
Screen International 5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 2.5
Fabrice Leclerc 5
Eric Neuhoff 2.5
Stéphane Delorme 9
Jaques Mandelbaum 7.5
Philippe Rouyer 5
Pierre Vavasseur 1
Pierre Murat 7.5
Jean Roy 1
Serge Kaganski 7.5
Pierre Fornerod 2.5
Pascal Merigeau 2.5
Danielle Attali 9
Christophe Carriére 1
 Indiewire: (8)
Simon Abrams 9 A
Raffi Asdourian 3 C
Anna Bielak 2 C-
Jon Frosch 3 C
Leda Galanou
Clementine Gallot
Stephen Garrett
Michael Ghennam
Glenn Heath Jr. 5 B
James Rocchi 8 [4/5]
Michal Oleszczyk 7
Anna Tatarska 2 C-
 Other:
Serge Kaganski (Les Inrockuptibles, France) 10
Francois Forestier (Le nouvel Observateur, France) 8
Pierre Murat 8
Fabrice Leclerc 8
Mathieu Carratier (Premiere, France) 7.5 (3/4)
# (Phychologies, Russia) 9 (4/4)
Peter Bradshaw 4

"THE PAPERBOY" (Lee Daniels) [Competition]
Alejandro G. Calvo 1
Alexandra Zawia 3.5
Carlo Chatrian 4
Carlos F. Heredero 3
Carlos Reviriego 2.5
Cristina Nord 5.3
Diego Batlle 3
Diego Lerer 4
Eulalia Iglesias 2
Francisco Ferreira 1
Jaime Pena 4.5
Kong Rithdee 2
Luciano Barisone 5
Manu Yáñez 3
Marcelo Alderete 2
Martial Pisani 7.3
Nando Salva 1.5
Pedro Butcher 4
Philipp Engel 1
Scott Foundas  2.5
Violeta Kovacsics 2
Xavi Serra  2
 IonCinema:
Christophe Beney 
David Calhoun 
Per Juul Carlsen 
Paola Casella 2
Mike d'Angelo 0.9
  Lee Daniels: Worst filmmaker of our time, or worst filmmaker of all time?
#Carlos F. Heredero 2
Eric Lavallée 5
Fabien Lemercier 4
Guy Lodge 6 B-
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 2
Clarence Tsui 
Blake Williams 5
Liu Min 5
Eric Kohn 1.5 D+
 Screen Daily:
Nick James 2.5
David Stratton 
Derek Malcolm 
Jan Schulz-Ojala 5
Jose Carlos Avellar 1
Dennis Lim 
Michel Ciment 5
Kate Muir 5
Bo Green Jensen 5
Screen International 5
 Le film français:
Stéphanie Lamome 2.5
Arnaud schwartz 1
Fabrice Leclerc 7.5
Eric Neuhoff 2.5
Stéphane Delorme 2.5
Jaques Mandelbaum 2.5
Philippe Rouyer 5
Pierre Vavasseur 9
Pierre Murat 1
Jean Roy 2.5
Serge Kaganski 1
Pierre Fornerod 5
Pascal Merigeau 2.5
Danielle Attali 7.5
Christophe Carriére 
 Indiewire (4):
Simon Abrams 
Ryland Aldrich
Raffi Asdourian 
Anna Bielak 
Alex Billington 1.5 D+
David Ehrlich
David Fear
Jon Frosch 
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 
Glenn Heath Jr.
Patrick Heidmann 
Aaron Hillis 3 C
Frédéric Jaeger
Peter Keogh 
Chris Knipp 
Megan Lehmann 
Emanuel Levy 3 C
Patrick Z. McGavin 
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 0 F
  Lurid, humid, squalid and stupid -- a massive failure in every way. bit.ly/KG7wqv
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Peter Bradshaw (Guardian, UK) 8
Xan Brooks (Guardian, UK) 0
Simon Gallagher 4 C+

"KILLING THEM SOFTLY" (Andrew Dominik) [Competition]
Alejandro G. Calvo 8
Alex Vicente 5
Alexandra Zawia 5
Carlo Chatrian 3.02
Carlos F. Heredero 6.8
Carlos Reviriego 7.1
Cristina Nord 3.7
Diego Batlle 6.5
Diego Lerer 6
Eulalia Iglesias 6.9
Fernando Ganzo 3.5
Francisco Ferreira 4
Jaime Pena 5.5
Javier H. Estrada 6.8
José Luis de Lorenzo 6.5
Kong Rithdee 6
Luciano Barisone 1
Luciano Monteagudo 6
Manu Yáñez 6.5
Martial Pisani 4.7
Nando Salva 6.5
Neil Young 6
Pedro Butcher 4
Philipp Engel 7.5
Robert Koehler 5
Roger Alan Koza  5.5
Scott Foundas  3
Violeta Kovacsics 7
Xavi Serra  7.5
 IonCinema:
Christophe Beney 0
David Calhoun
Per Juul Carlsen 
Paola Casella 4
Mike d'Angelo 6.3
#Carlos F. Heredero 4 
Eric Lavallée 6
Fabien Lemercier 6
Guy Lodge        6 B-
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 2
Clarence Tsui 
Blake Williams 7
Liu Min 
Eric Kohn 7 B+
 Screen Daily:
Nick James 7.5
David Stratton 9
Derek Malcolm 5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 5
Dennis Lim 5
Michel Ciment 7.5
Kate Muir 7.5
Bo Green Jensen 7.5
Screen International 9
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 5
Fabrice Leclerc 7.5
Eric Neuhoff 2.5
Stéphane Delorme 1
Jaques Mandelbaum 7.5
Philippe Rouyer 7.5
Pierre Vavasseur 
Pierre Murat 
Jean Roy 5
Serge Kaganski 7.5
Pierre Fornerod 5
Pascal Merigeau 2.5
Danielle Attali 1
Christophe Carriére 
 Indiewire: (17)
Simon Abrams 7 B+
Kaleen Aftab 8 A-
Raffi Asdourian 8 A-
Anna Bielak 6 B
Alex Billington 7.5 B-
David Fear
Jon Frosch 6 B
Leda Galanou
Stephen Garrett
Michael Ghennam
Glenn Heath Jr.
Patrick Heidmann 5 B-
Aaron Hillis 4 C+
Frédéric Jaeger
Patrick Z. McGavin 3 C
Emanuel Levy 7 B+
Michal Oleszczyk
Eric D. Snider
Anna Tatarska 4 C+
Drew Taylor 
Anne Thompson 5 B-
 Other:
Peter Bradshaw 8
James Rocchi 5
Simon Gallagher 8 A-
Mark Adams (Screen Daily, USA) 8
Robbie Collins 10

"REALITY" (Matteo Garrone) [Competition] Grand Prix
Alejandro G. Calvo 4.8
Alex Vicente 4
Alexandra Zawia 6.5
Boris Nelepo 2
Carlo Chatrian 4.8
Carlos F. Heredero 6.5
Carlos Reviriego 6.1
Cristina Nord 6.5
Diego Batlle 6.5
Diego Lerer 5.5
Eulalia Iglesias 6.5
Fernando Ganzo 3
Fernando Juan Lima 5.5
Francisco Ferreira 5
Jaime Pena 3
Javier H. Estrada 5
Luciano Barisone 8
Luciano Monteagudo 8
Manu Yáñez 6
Nando Salva 5
Pedro Butcher 6
Philipp Engel 5
Robert Koehler 7
Rudiger Suchsland  4.5
Scott Foundas  6.5
Violeta Kovacsics 4
Xavi Serra  6
 IonCinema:
Christophe Beney 
David Calhoun 5
Per Juul Carlsen 6
Paola Casella 6
Mike d'Angelo 6.6
#Carlos F. Heredero 
Eric Lavallée 
Fabien Lemercier 6
Guy Lodge 
Isabelle Regnier 6
Kevin Jagernauth 4
Cédric Succivalli 
Clarence Tsui 4
Blake Williams 6 B-
Liu Min 5
Eric Kohn 8 A-
 Screen Daily:
Nick James 5
David Stratton 5
Derek Malcolm 5
Jan Schulz-Ojala 2.5
Jose Carlos Avellar 5
Dennis Lim 5
Michel Ciment 5
Kate Muir 5
Bo Green Jensen 5
Screen International 5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 7.5
Fabrice Leclerc 7.5
Eric Neuhoff 1
Stéphane Delorme 2.5
Jaques Mandelbaum 5
Philippe Rouyer 2.5
Pierre Vavasseur 5
Pierre Murat 5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 5
Pascal Merigeau 5
Danielle Attali 5
Christophe Carriére 7.5
 Indiewire: (18)
Ryland Aldrich 8 A-
Raffi Asdourian 8 A-
David Fear 7 B+
Jon Frosch (France 24) 3 C
Leda Galanou 3 C 
Stephen Garrett 5 B-
Glenn Heath Jr. 6 B
Patrick Heidmann 1.5 D+
Aaron Hillis 7 B+
Frédéric Jaeger 8 A-
Patrick Z. McGavin 4 C+
Michal Oleszczyk 7 B+
Sarah Watt 8 A-
 Other:
Peter Bradshaw 6
Simon Gallagher 7 B+
Robbie Collins (The Telegraph, UK) 8
Emanuel Levy 4 C+

"AMOUR (LOVE)" (Michael Haneke) [Competition] Palme d'Or
Alejandro G. Calvo 6
Alex Vicente 9
Alexandra Zawia 7.2
Boris Nelepo 5
Carlo Chatrian 7.3
Carlos F. Heredero 9.8
Carlos Reviriego 8.2
Cristina Nord 9
Dana Linssen 9.3
Diego Batlle 8.5
Diego Lerer 7.5
Eulalia Iglesias 7.2
Fernando Ganzo 3
Fernando Juan Lima 5
Francisco Ferreira 8.5
Jaime Pena 5.1
Javier H. Estrada 7
José Luis de Lorenzo 7
Kong Rithdee 7
Luciano Barisone 8
Luciano Monteagudo 9
Manu Yáñez 6.5
Marcelo Alderete 6
Nando Salva 9
Pedro Butcher 6
Philipp Engel 9
Robert Koehler 6
Roger Alan Koza  8.5
Rudiger Suchsland  9.5
Scott Foundas  10
Violeta Kovacsics 9
Xavi Serra  7.75
 IonCinema:
Christophe Beney 10
David Calhoun 9
Per Juul Carlsen 6
Paola Casella 9
Mike d'Angelo 7.7 B+
#Carlos F. Heredero 8 
Eric Lavallée 7
Fabien Lemercier 10
Guy Lodge 7 B+
Isabelle Regnier 10
Kevin Jagernauth 8
Cédric Succivalli 10
Clarence Tsui 8
Blake Williams 7
Liu Min 7
Eric Kohn 8 A-
 Screen Daily:
Nick James 9
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 9
Jose Carlos Avellar 7.5
Dennis Lim 5
Michel Ciment 7.5
Kate Muir 9
Bo Green Jensen 7.5
Screen International 9
 Le film français:
Stéphanie Lamome 9
Arnaud schwartz 9
Fabrice Leclerc 7.5
Eric Neuhoff 1
Stéphane Delorme 5
Jaques Mandelbaum 7.5
Philippe Rouyer 9
Pierre Vavasseur 9
Pierre Murat 5
Jean Roy 9
Serge Kaganski 9
Pierre Fornerod 9
Pascal Merigeau 7.5
Danielle Attali 9
Christophe Carriére 7.5
 Indiewire: (23)
Simon Abrams 7 B+
Raffi Asdourian 9 A
Anna Bielak 7 B+
Alex Billington 2 D
David Fear 9 A
Jon Frosch 7 B+
Leda Galanou 8 A-
Stephen Garrett 10 A+
Michael Ghennam 10 A+ 
Glenn Heath Jr. 8 A-
Patrick Heidmann 9 A
Aaron Hillis 8 A-
Frédéric Jaeger 7 B+
Patrick Z. McGavin 9 A
Emanuel Levy 8 A-
Michal Oleszczyk
Eric D. Snider 6 B
Anna Tatarska 7 B+
Drew Taylor 
Anne Thompson 9 A
 Other:
Peter Bradshaw 10

"LAWLESS" (John Hillcoat) [Competition]
Alejandro G. Calvo 6.2
Alex Vicente 4
Alexandra Zawia 4
Carlo Chatrian 4.5
Carlos F. Heredero 6.5
Carlos Reviriego 6.7
Cristina Nord 3.8
Dana Linssen 5.9
Diego Batlle 6.5
Diego Lerer 5.9
Eulalia Iglesias 7.1
Fernando Ganzo 4
Francisco Ferreira 1
Jaime Pena 4.9
Javier H. Estrada 3.5
José Luis de Lorenzo 3
Luciano Barisone 1
Manu Yáñez 6.5
Martial Pisani 5.3
Nando Salva 4.5
Neil Young 5 C+
Pedro Butcher 6.5
Philipp Engel 7
Robert Koehler 3
Rudiger Suchsland  6
Scott Foundas  4
Violeta Kovacsics 6
Xavi Serra  6
 IonCinema:
Christophe Beney 2
David Calhoun 5
Per Juul Carlsen 7
Paola Casella 8
Mike d'Angelo 6.1
#Carlos F. Heredero 4
Eric Lavallée 2 D
Fabien Lemercier 2
Guy Lodge 7 B
Isabelle Regnier 
Kevin Jagernauth 7 B
Cédric Succivalli 5
Clarence Tsui 5
Blake Williams 4 C
Liu Min 
Eric Kohn 2 C-
 Screen Daily:
Nick James 2.5
David Stratton 7.5
Derek Malcolm 5
Jan Schulz-Ojala 2.5
Jose Carlos Avellar 2.5
Dennis Lim 2.5
Michel Ciment 5
Kate Muir 5
Bo Green Jensen 5
Screen International 5
 Le film français (Des Hommes sans loi)
Stéphanie Lamome 7.5
Arnaud schwartz 5
Fabrice Leclerc 7.5
Eric Neuhoff 5
Stéphane Delorme 1
Jaques Mandelbaum 2.5
Philippe Rouyer 5
Pierre Vavasseur 9
Pierre Murat 2.5
Jean Roy 2.5
Serge Kaganski 2.5
Pierre Fornerod 5
Pascal Merigeau 2.5
Danielle Attali 5
Christophe Carriére 2.5
 Indiewire: (24)
Ryland Aldrich 8 A-
Raffi Asdourian 6 B
Anna Bielak 5 B-
Alex Billington 8 B
David Fear 6 B
Jon Frosch 5 B-
Leda Galanou 6 B
Stephen Garrett 6 B
Michael Ghennam 5 B-
Glenn Heath Jr. 5 B-
Patrick Heidmann 4 C+
Frédéric Jaeger
Emanuel Levy 5 B-
Patrick Z. McGavin 2 C-
Michal Oleszczyk 0 F
Eric D. Snider 6 B
Anne Thompson 6 B
Sarah Watt 7 B+
 Other:
Peter Bradshaw 4
Simon Gallagher 10 A+
Robbie Collins (The Telegraph, UK) 6
Ruta Buciunaite 10

"DA-REUN NA-RA-E-SUH (IN ANOTHER COUNTRY)" (Hong Sangsoo) [Competition]
Alejandro G. Calvo 8.5
Alex Vicente 6
Alexandra Zawia 8.3
Arthur Mas 8.5
Boris Nelepo 9
Carlos F. Heredero 7
Carlos Reviriego 7
Cristina Nord 8
Dana Linssen 7.9
Diego Batlle 8.5
Diego Lerer 9
Eulalia Iglesias 8
Fernando Ganzo 8.5
Fernando Juan Lima 9
Francisco Ferreira 8.5
Jaime Pena 8.8
Javier H. Estrada 8.5
José Luis de Lorenzo 8
Kong Rithdee 7
Luciano Barisone 8
Luciano Monteagudo 9
Manu Yáñez 7.5
Marcelo Alderete 10
Martial Pisani 8
Nando Salva 8
Neil Young 6 B-
Pedro Butcher 7.5
Philipp Engel 7
Robert Koehler 8
Roger Alan Koza  9
Rudiger Suchsland  6.8
Sergio Wolf 10
Scott Foundas  5
Thomas Fioretti 8.5
Violeta Kovacsics 7.5
Xavi Serra  7.25
 IonCinema:
Christophe Beney 
David Calhoun 5
Per Juul Carlsen 2 
Paola Casella 5
Mike d'Angelo 5.1 C+
#Carlos F. Heredero 6
Eric Lavallée 
Fabien Lemercier 
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 7 B-
Cédric Succivalli 8
Clarence Tsui 3
Blake Williams 6 B-
Liu Min 
Eric Kohn 
 Screen Daily:
Nick James 5
David Stratton 
Derek Malcolm 5
Jan Schulz-Ojala 5
Jose Carlos Avellar 2.5
Dennis Lim 7.5
Michel Ciment 2.5
Kate Muir 5
Bo Green Jensen 7.5
Screen International 7.5
 Le film français:
Stéphanie Lamome 2.5
Arnaud schwartz 2.5
Fabrice Leclerc 
Eric Neuhoff 1
Stéphane Delorme 7.5
Jaques Mandelbaum 7.5
Philippe Rouyer 1
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 2.5
Serge Kaganski 7.5
Pierre Fornerod 2.5
Pascal Merigeau 2.5
Danielle Attali 1
Christophe Carriére 1
 Indiewire (11):
Raffi Asdourian
Anna Bielak
Alex Billington
David Fear
Jon Frosch 6 B
Leda Galanou 3 C
Clementine Gallot
Stephen Garrett
Michael Ghennam 5 B-
Glenn Heath Jr. (Press Play, USA) 6 B
Patrick Heidmann
Aaron Hillis 7 B+
Frédéric Jaeger 6 B
Emanuel Levy 7 B+
Patrick Z. McGavin 7 B+
Michal Oleszczyk
Sarah Watt
 Other:
Peter Bradshaw 6

"DO-NUI MAT (TASTE OF MONEY)" (Im Sangsoo) [Competition]
Alejandro G. Calvo 3.6
Alexandra Zawia 1.5
Boris Nelepo 1
Carlos F. Heredero 3
Carlos Reviriego 6
Diego Batlle 5
Diego Lerer 3.3
Eulalia Iglesias 3.9
Fernando Ganzo 3.5
#Francisco Ferreira 8.8 before Cannes
Francisco Ferreira 1    at the last day
Jaime Pena 4.5
Kong Rithdee 2.5
Manu Yáñez 6
Pamela Bienzobas 3.7
Pedro Butcher 7
Philipp Engel 5
Robert Koehler 2
Roger Alan Koza  2
Scott Foundas  1
Violeta Kovacsics 4.5
Xavi Serra  4.5
 IonCinema:
Christophe Beney 
David Calhoun 
Per Juul Carlsen 
Paola Casella 
Mike d'Angelo 
#Carlos F. Heredero  
Eric Lavallée 
Fabien Lemercier 
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 
Clarence Tsui 
Blake Williams 
Liu Min 
Eric Kohn 
 Screen Daily:
Nick James 2.5
David Stratton 2.5
Derek Malcolm 
Jan Schulz-Ojala 5
Jose Carlos Avellar 2.5
Dennis Lim 1
Michel Ciment 5
Kate Muir 7.5
Bo Green Jensen 5
Screen International 2.5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

"LIKE SOMEONE IN LOVE" (Abbas Kiarostami) [Competition]
Alejandro G. Calvo 10
Alex Vicente 5
Alexandra Zawia 9
Arthur Mas 4.2
Boris Nelepo 7.2
Carlo Chatrian 7.6
Carlos F. Heredero 7.5
Carlos Reviriego 9.5
Cristina Nord 7
Dana Linssen 7.5
Diego Batlle 8.7
Diego Lerer 9.1
Eulalia Iglesias 9
Fernando Ganzo 7
Fernando Juan Lima 10
Francisco Ferreira 8
Jaime Pena 8.9
Javier H. Estrada 9
José Luis de Lorenzo 6
Kong Rithdee 7
Luciano Barisone 7
Luciano Monteagudo 9
Manu Yáñez 9.5
Marcelo Alderete 9
Martial Pisani 4.5
Nando Salva 7
Pedro Butcher 9
Philipp Engel 7.5
Robert Koehler 8
Roger Alan Koza  10
Sergio Wolf 9
Scott Foundas  9
Violeta Kovacsics 7.5
Xavi Serra  8
 IonCinema:
Christophe Beney 4
David Calhoun 7
Per Juul Carlsen 4
Paola Casella 2
Mike d'Angelo 3
#Carlos F. Heredero  
Eric Lavallée 5 B-
Fabien Lemercier 6
Guy Lodge 4 C+
Isabelle Regnier 
Kevin Jagernauth 3 C-
Cédric Succivalli 3
Clarence Tsui 
Blake Williams 8 B+
Liu Min 
Eric Kohn 7 B+
 Screen Daily:
Nick James 5
David Stratton 5
Derek Malcolm 7.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 5
Dennis Lim 7.5
Michel Ciment 7.5
Kate Muir 7.5
Bo Green Jensen 5
Screen International 5
 Le film français:
Stéphanie Lamome 2.5
Arnaud schwartz 2.5
Fabrice Leclerc 2.5
Eric Neuhoff 1
Stéphane Delorme 5
Jaques Mandelbaum 5
Philippe Rouyer 5
Pierre Vavasseur 5
Pierre Murat 2.5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 1
Pascal Merigeau 5
Danielle Attali 1
Christophe Carriére 2.5
 Indiewire: (16)
Raffi Asdourian 8 A-
Anna Bielak
Alex Billington 8.5 B+
David Fear 7 B+
Jon Frosch 6 B
Leda Galanou 1 D
Clementine Gallot 5 B-
Stephen Garrett 7 B+
Michael Ghennam
Glenn Heath Jr. 9 A
Patrick Heidmann
Aaron Hillis 5 B-
Frédéric Jaeger
Emanuel Levy
Patrick Z. McGavin 7 B+
Michal Oleszczyk
Sarah Watt 4 C+
 Other:
Peter Bradshaw 4

"THE ANGELS' SHARE" (Ken Loach) [Competition] Jury Price
 Two of the jury members laughed through half the film. A promising young director indeed
Alejandro G. Calvo 3.4
Alex Vicente 3
Alexandra Zawia 4
Arthur Mas 7
Boris Nelepo 7
Carlos F. Heredero 4
Carlos Reviriego 1.5
Cristina Nord 4.5
Diego Batlle 6.7
Diego Lerer 5.2
Eulalia Iglesias 4
José Luis de Lorenzo 7
Luciano Monteagudo 6
Manu Yáñez 3
Martial Pisani 6.5
Nando Salva 2
Pedro Butcher 7
Rudiger Suchsland  4.5
Scott Foundas  7
Violeta Kovacsics 3
Xavi Serra  5.5
 IonCinema:
Christophe Beney 6
David Calhoun 
Per Juul Carlsen 6
Paola Casella 6
Mike d'Angelo 5.6
#Carlos F. Heredero 2  
Eric Lavallée 
Fabien Lemercier 6
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 6
Clarence Tsui 4
Blake Williams 6
Liu Min 6
Eric Kohn 4
 Screen Daily:
Nick James 7.5
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 9
Dennis Lim 2.5
Michel Ciment 7.5
Kate Muir 7.5
Bo Green Jensen 5
Screen International 7.5
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 5
Fabrice Leclerc 
Eric Neuhoff 7.5
Stéphane Delorme 1
Jaques Mandelbaum 2.5
Philippe Rouyer 5
Pierre Vavasseur 7.5
Pierre Murat 5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 5
Pascal Merigeau 5
Danielle Attali 7.5
Christophe Carriére 
 Indiewire (6):
Simon Abrams 3 C-
Ryland Aldrich
Raffi Asdourian
Anna Bielak 8 A-
Alex Billington
David Ehrlich
David Fear
Jon Frosch
Leda Galanou
Clementine Gallot
Stephen Garrett
Michael Ghennam
Glenn Heath Jr.
Patrick Heidmann 6 B
Aaron Hillis
Frédéric Jaeger
Peter Keogh 
Chris Knipp 
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 7 B+
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Peter Bradshaw 8
Allan Hunter (Screen Daily, USA) 6
Simon Gallagher 9 A
Derek Malcolm (London Evening Standard, UK) 8

"IM NEBEL (IN THE FOG)" (Sergei Loznitsa) [Competition] Fipresci Price
Alejandro G. Calvo 7.4
Alexandra Zawia 8
Arthur Mas 7.1
Boris Nelepo 3
Carlo Chatrian 7.5
Carlos F. Heredero 8
Carlos Reviriego 7.8
Diego Batlle 7.5
Diego Lerer 7
Eulalia Iglesias 6.9
Fernando Ganzo 4
Francisco Ferreira 6
Jaime Pena 6
Javier H. Estrada 6.7
Kong Rithdee 6
Luciano Barisone 8
Luciano Monteagudo 7
Manu Yáñez 6.5
Nando Salva 8
Pedro Butcher 3
Robert Koehler 7
Rudiger Suchsland  4
Scott Foundas  7.5
Violeta Kovacsics 6.5
Xavi Serra  6.5
 IonCinema:
Christophe Beney 
David Calhoun 
Per Juul Carlsen 7
Paola Casella 8
Mike d'Angelo 5.0
#Carlos F. Heredero 6
Eric Lavallée 
Fabien Lemercier 6
Guy Lodge 5
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 
Clarence Tsui 
Blake Williams 4 C+
Liu Min 
Eric Kohn 5 B
 Screen Daily:
Nick James 9
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 5
Dennis Lim 5
Michel Ciment 5
Kate Muir 7.5
Bo Green Jensen 7.5
Screen International 9
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 7.5
Fabrice Leclerc 
Eric Neuhoff 5
Stéphane Delorme 2.5
Jaques Mandelbaum 7.5
Philippe Rouyer 5
Pierre Vavasseur 
Pierre Murat 7.5
Jean Roy 2.5
Serge Kaganski 5
Pierre Fornerod 2.5
Pascal Merigeau 5
Danielle Attali 2.5
Christophe Carriére 
 Indiewire: (4)
Simon Abrams 9 A
Ryland Aldrich
Raffi Asdourian 7 B+
Anna Bielak 2 C-
Alex Billington  
Anna Tatarska 7 B+
 Other:
Peter Bradshaw 8

"BEYOND THE HILLS" (Cristian Mungiu) [Competition] Best screenplay + actresses
Alejandro G. Calvo 9.4
Alexandra Zawia 7
Carlo Chatrian 6.02
Carlos F. Heredero 7
Carlos Reviriego 7.2
Cristina Nord 3.8
Dana Linssen 7.2
Diego Batlle 7.5
Diego Lerer 7.3
Eulalia Iglesias 7.3
Fernando Juan Lima 8
Francisco Ferreira 2.5
Jaime Pena 7.5
Javier H. Estrada 6
José Luis de Lorenzo 9
Kong Rithdee 6.5
Luciano Barisone 7
Luciano Monteagudo 6
Manu Yáñez 6
Nando Salva 6.5
Neil Young 5 C+
Pedro Butcher 9
Robert Koehler 1
Roger Alan Koza  6.5
Rudiger Suchsland  4
Sergio Wolf 4
Scott Foundas  9
Violeta Kovacsics 5
Xavi Serra  6
 IonCinema:
Christophe Beney 6
David Calhoun 
Per Juul Carlsen 5
Paola Casella 8
Mike d'Angelo 5.9
#Carlos F. Heredero 6
Eric Lavallée 6
Fabien Lemercier 8
Guy Lodge 6
Isabelle Regnier 6
Kevin Jagernauth 8 B+
Cédric Succivalli 8
Clarence Tsui 
Blake Williams 8 A-
Liu Min 10
Eric Kohn 6 B
 Screen Daily:
Nick James 7.5
David Stratton 9
Derek Malcolm 9
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 9
Dennis Lim 5
Michel Ciment 9
Kate Muir 5
Bo Green Jensen 7.5
Screen International 9
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 7.5
Fabrice Leclerc 5
Eric Neuhoff 9
Stéphane Delorme 2.5
Jaques Mandelbaum 7.5
Philippe Rouyer 7.5
Pierre Vavasseur 1
Pierre Murat 7.5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 5
Pascal Merigeau 
Danielle Attali 2.5
Christophe Carriére 2.5
 Indiewire: (17)
Raffi Asdourian 3 C
Anna Bielak 5 B-
Alex Billington
David Fear 7 B+
Jon Frosch 5 B-
Leda Galanou 5 B-
Stephen Garrett
Michael Ghennam 8 A- 
Patrick Heidmann
Frédéric Jaeger
Emanuel Levy 9 A
Patrick Z. McGavin 9 A
Michal Oleszczyk 2 C-
Eric D. Snider 1 D
 Other:
Drew McWeeny (InContention, USA) 2 C-
Peter Bradshaw 8

"BAAD EL MAWKEAA (AFTER THE BATTLE)" (Yousry Nasrallah) [Competition]
Alejandro G. Calvo 3
Alexandra Zawia 3
Boris Nelepo 7.5
Carlo Chatrian 6.01
Carlos F. Heredero 4
Cristina Nord 3
Dana Linssen 5.9
Diego Batlle 4
Diego Lerer 3.7
Eulalia Iglesias 4
Fernando Ganzo 3
Fernando Juan Lima 2
Francisco Ferreira 5
Jaime Pena 5.2
Javier H. Estrada 5
José Luis de Lorenzo 3
Kong Rithdee 5.5
Luciano Barisone 6
Manu Yáñez 5
Martial Pisani 7.1
Nando Salva 4.5
Neil Young 3
Pedro Butcher 4
Robert Koehler 2
Roger Alan Koza  3.5
Rudiger Suchsland  3
Scott Foundas  4
Violeta Kovacsics 5
 IonCinema:
Christophe Beney 2
David Calhoun 3
Per Juul Carlsen 4
Paola Casella 4
Mike d'Angelo 4
#Carlos F. Heredero 2
Eric Lavallée 
Fabien Lemercier 4
Guy Lodge 1.5 D+
Isabelle Regnier 2
Kevin Jagernauth 4
Cédric Succivalli 2
Clarence Tsui 6
Blake Williams 3
Liu Min 4
Eric Kohn 5
 Screen Daily:
Nick James 2.5
David Stratton 2.5
Derek Malcolm 5
Jan Schulz-Ojala 5
Jose Carlos Avellar 5
Dennis Lim 2.5
Michel Ciment 2.5
Kate Muir 2.5
Bo Green Jensen 5
Screen International 5
 Le film français:
Stéphanie Lamome 2.5
Arnaud schwartz 2.5
Fabrice Leclerc 
Eric Neuhoff 1
Stéphane Delorme 1
Jaques Mandelbaum 5
Philippe Rouyer 2.5
Pierre Vavasseur 5
Pierre Murat 2.5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 2.5
Pascal Merigeau 2.5
Danielle Attali 2.5
Christophe Carriére 2.5
 IndieWire: (15)
Raffi Asdourian 3 C 
Jon Frosch 2 C-
Leda Galanou 3 C 
Clementine Gallot 5 B- 
Stephen Garrett 1 D 
Michael Ghennam 1 D 
Glenn Heath Jr. 1 D
Kevin Jagernauth 2 C-
Patrick Z. McGavin 3 C 
Michal Oleszczyk 0 F
 Other:
David Gritten (The Telegraph, UK) 4

"MUD" (Jeff Nichols) [Competition]
Alejandro G. Calvo 7.5
Alex Vicente 7.5
Alexandra Zawia 6.8
Carlos F. Heredero 8.5
Carlos Reviriego 6.7
Cristina Nord 6
Diego Batlle 8
Diego Lerer 7.1
Jaime Pena 6.5
Javier H. Estrada 6.5
Manu Yáñez 5.5
Marcelo Alderete 5
Martial Pisani 5.3
Pamela Bienzobas 6.5
Pedro Butcher 6.5
Robert Koehler 7.5
Roger Alan Koza  6
Scott Foundas  7.5
Violeta Kovacsics 6.5
Xavi Serra  6.5
 IonCinema:
Christophe Beney
David Calhoun
Per Juul Carlsen 
Paola Casella 
Mike d'Angelo 6.2 B- "Ripping yarn with some iffy gender politics, though I give Nichols credit for strenuous efforts to cover his ass"
#Carlos F. Heredero  
Eric Lavallée 
Fabien Lemercier 
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 
Clarence Tsui 
Blake Williams 
Liu Min 
Eric Kohn 
 Screen Daily:
Nick James 
David Stratton 7.5
Derek Malcolm 5
Jan Schulz-Ojala 7.5
Jose Carlos Avellar 5
Dennis Lim 5
Michel Ciment 9
Kate Muir 7.5
Bo Green Jensen 5
Screen International 9
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire: (5) 
Simon Abrams 3 C "shallow and contrived coming of age story"
Ryland Aldrich
Raffi Asdourian 5 B-
Anna Bielak 
Alex Billington 
David Ehrlich
David Fear
Jon Frosch 5 B-
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 
Glenn Heath Jr. 4 C
Patrick Heidmann 
Aaron Hillis 
Frédéric Jaeger
Peter Keogh 
Chris Knipp 
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Peter Bradshaw 6

"VOUS N'AVEZ ENCORE RIEN VU (YOU AIN'T SEEN NOTHIN' YET)" (Alain Resnais) [Competition]
Alejandro G. Calvo 4.9
Alex Vicente 4
Alexandra Zawia 5.7
Arthur Mas 8.1
Boris Nelepo 10
Carlo Chatrian 5
Carlos F. Heredero 7.5
Carlos Reviriego 6.8
Cristina Nord 8
Diego Batlle 7.3
Diego Lerer 7.4
Eulalia Iglesias 7.9
Fernando Ganzo 7
Fernando Juan Lima 10
Francisco Ferreira 8.7
Jaime Pena 8.5
Javier H. Estrada 7
José Luis de Lorenzo 7
Kong Rithdee 6
Luciano Barisone 7
Luciano Monteagudo 7
Manu Yáñez 8
Martial Pisani 8.3
Nando Salva 5
Pedro Butcher 7
Robert Koehler 2
Roger Alan Koza  8.7
Rudiger Suchsland  3.5
Scott Foundas  8
Violeta Kovacsics 8
Xavi Serra  6.5
 IonCinema:
Christophe Beney 8
David Calhoun 6
Per Juul Carlsen 
Paola Casella 7
Mike d'Angelo 7.3 B+
#Carlos F. Heredero 6
Eric Lavallée 
Fabien Lemercier 6
Guy Lodge 3 C
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 9
Clarence Tsui 6
Blake Williams 5 C+
Liu Min 
Eric Kohn 6 B
 Screen Daily:
Nick James 5
David Stratton 5
Derek Malcolm 7.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 9
Dennis Lim 5
Michel Ciment 9
Kate Muir 5
Bo Green Jensen 5
Screen International 7.5
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 9
Fabrice Leclerc 7.5
Eric Neuhoff 1
Stéphane Delorme 5
Jaques Mandelbaum 5
Philippe Rouyer 9
Pierre Vavasseur 5
Pierre Murat 5
Jean Roy 7.5
Serge Kaganski 2.5
Pierre Fornerod 7.5
Pascal Merigeau 7.5
Danielle Attali 7.5
Christophe Carriére 9
 Indiewire: (4)
Raffi Asdourian
Anna Bielak
Alex Billington
David Fear
Jon Frosch
Leda Galanou
Stephen Garrett
Michael Ghennam
Patrick Heidmann 2 C-
Aaron Hillis
Frédéric Jaeger
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Sarah Watt
 Other:
Peter Bradshaw 4

"POST TENEBRAS LUX" (Carlos Reygadas) [Competition] Best director
Alejandro G. Calvo 4
Alex Vicente 6
Alexandra Zawia 5.9
Boris Nelepo 4.5
Carlo Chatrian 5
Carlos Reviriego 3.3
Cristina Nord 4.8
Dana Linssen 8.1
Diego Batlle 6
Diego Lerer 7.6
Eulalia Iglesias 7.5
Fernando Juan Lima 8
Jaime Pena 3
Javier H. Estrada 2.5
Kong Rithdee 6
Luciano Barisone 8
Luciano Monteagudo 8
Manu Yáñez 3
Marcelo Alderete 4
Nando Salva 5.5
Neil Young 3 D+
Pedro Butcher 3
Philipp Engel 6
Robert Koehler 10
Roger Alan Koza  9
Rudiger Suchsland  8
Scott Foundas  9
Violeta Kovacsics 3
Xavi Serra  2
 IonCinema:
Christophe Beney 2
David Calhoun
Per Juul Carlsen 6
Paola Casella 
Mike d'Angelo 4.8
  for now. If demystified, could be 84. Tho' the feeling of ultra-super-mega-pretentiousness might linger.
Carlos F. Heredero 0
Eric Lavallée 6
Fabien Lemercier 6
Guy Lodge 3
Isabelle Regnier 2
Kevin Jagernauth 
Cédric Succivalli 1
Clarence Tsui 
Blake Williams 4 C- 
Liu Min 6
Eric Kohn 5 B-
 Screen Daily:
Nick James 5
David Stratton 2.5
Derek Malcolm 7.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 2.5
Dennis Lim 7.5
Michel Ciment 1
Kate Muir 2.5
Bo Green Jensen 7.5
Screen International 7.5
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 5
Fabrice Leclerc 2.5
Eric Neuhoff 1
Stéphane Delorme 1
Jaques Mandelbaum 2.5
Philippe Rouyer 1
Pierre Vavasseur 1
Pierre Murat 1
Jean Roy 2.5
Serge Kaganski 
Pierre Fornerod 1
Pascal Merigeau 2.5
Danielle Attali 1
Christophe Carriére 1
 Indiewire (8):
Simon Abrams 4 C+
Ryland Aldrich
Raffi Asdourian 
Anna Bielak 4 C+
Alex Billington 7 B+ 
David Ehrlich
David Fear
Jon Frosch 
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 
Glenn Heath Jr.
Patrick Heidmann 
Aaron Hillis 5 B-
Frédéric Jaeger 7 B+
Peter Keogh 
Chris Knipp 
Megan Lehmann 
Emanuel Levy
Patrick Z. McGavin 
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Peter Bradshaw 4

"ON THE ROAD" (Walter Salles) [Competition]
Alejandro G. Calvo 3.5
Alex Vicente 5
Alexandra Zawia 4
Carlo Chatrian 4.81
Carlos F. Heredero 3
Carlos Reviriego 3
Dana Linssen 6.9
Diego Batlle 6
Diego Lerer 5.8
Eulalia Iglesias 4
Fernando Ganzo 2
Fernando Juan Lima 2
Francisco Ferreira 1
Jaime Pena 3
Javier H. Estrada 2.5
José Luis de Lorenzo 2
Kong Rithdee 3
Luciano Barisone 6
Luciano Monteagudo 6
Manu Yáñez 3
Marcelo Alderete 2
Martial Pisani 5
Nando Salva 3
Neil Young 6 B-
Pedro Butcher 6.5
Robert Koehler 3
Roger Alan Koza  4
Rudiger Suchsland  2.5
Scott Foundas  5.5
Violeta Kovacsics 2
Xavi Serra  5.5
 IonCinema:
Christophe Beney 
David Calhoun 
Per Juul Carlsen 5 
Paola Casella 4
Mike d'Angelo 5.1
#Carlos F. Heredero  
Eric Lavallée 5
Fabien Lemercier 4
Guy Lodge 4 C
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 
Clarence Tsui 
Blake Williams 
Liu Min 6
Eric Kohn 6 B
 Screen Daily:
Nick James 5
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 9
Dennis Lim 7.5
Michel Ciment 7.5
Kate Muir 5
Bo Green Jensen 7.5
Screen International 5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 2.5
Fabrice Leclerc 
Eric Neuhoff 5
Stéphane Delorme 2.5
Jaques Mandelbaum 5
Philippe Rouyer 5
Pierre Vavasseur 2.5
Pierre Murat 5
Jean Roy 2.5
Serge Kaganski 2.5
Pierre Fornerod 5
Pascal Merigeau 7.5
Danielle Attali 5
Christophe Carriére 
 Indiewire (15):
Simon Abrams 
Kaleen Aftab 5 B-
Ryland Aldrich
Raffi Asdourian
Anna Bielak 7 B+
Alex Billington 4 C+
David Ehrlich
David Fear
Jon Frosch 7 B+
Leda Galanou
Clementine Gallot 7 B+
Stephen Garrett
Michael Ghennam 2 C-
Glenn Heath Jr.
Patrick Heidmann 4 C+
Aaron Hillis 1.5 D+
Frédéric Jaeger 5 B-
Peter Keogh 
Chris Knipp 
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 6 B
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 3 C
Drew Taylor 
Anne Thompson 7 B+
Ignatiy Vishnevetsky 
Sarah Watt
 Other:
Simon Gallagher 2 C-
Lee Marshall (Screen Daily, USA) 4

"PARADIES : Liebe (PARADISE : Love)" (Ulrich Seidl) [Competition]
Alejandro G. Calvo 3
Alexandra Zawia 6
Arthur Mas 7.7
Boris Nelepo 6.5
Carlos F. Heredero 4
Carlos Reviriego 7
Cristina Nord 6.8
Dana Linssen 6.9
Diego Batlle 6
Diego Lerer 6.7
Eulalia Iglesias 6.5
Fernando Juan Lima 6
Francisco Ferreira 2
Jaime Pena 7
Javier H. Estrada 4.5
José Luis de Lorenzo 6
Kong Rithdee 7
Luciano Barisone 8
Manu Yáñez 6.5
Marcelo Alderete 2
Martial Pisani 6.9
Neil Young 6
Pamela Bienzobas 6.5
Pedro Butcher 2
Philipp Engel 6.5
Robert Koehler 7.5
Roger Alan Koza  7
Rudiger Suchsland  6.5
Sergio Wolf 3
Scott Foundas  8
Violeta Kovacsics 7.5
Xavi Serra  7.5
 IonCinema:
Christophe Beney 4
David Calhoun 4
Per Juul Carlsen 4
Paola Casella 3
Mike d'Angelo 4.5 C+
Carlos F. Heredero 2
Eric Lavallée 4
Fabien Lemercier 4
Guy Lodge 6
Isabelle Regnier 4
Kevin Jagernauth 
Cédric Succivalli 1
Clarence Tsui 4
Blake Williams 6
Liu Min 4
Eric Kohn 
 Screen Daily:
Nick James 5
David Stratton 2.5
Derek Malcolm 2.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 1
Dennis Lim 7.5
Michel Ciment 5
Kate Muir 2.5
Bo Green Jensen 2.5
Screen International 5
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 5
Fabrice Leclerc 2.5
Eric Neuhoff 1
Stéphane Delorme 1
Jaques Mandelbaum 5
Philippe Rouyer 7.5
Pierre Vavasseur 9
Pierre Murat 1
Jean Roy 5
Serge Kaganski 1
Pierre Fornerod 2.5
Pascal Merigeau 1
Danielle Attali 7.5
Christophe Carriére 5
 Indiewire: (17)
Ryland Aldrich 8 A-
Anna Bielak 7 B+
David Fear 8 A-
Jon Frosch 4 C+
Leda Galanou 3 C 
Stephen Garrett 8 A-
Michael Ghennam 4 C+
Aaron Hillis 6 B
Frédéric Jaeger 8 A-
Patrick Z. McGavin 6 B
Michal Oleszczyk 2 C-
Anna Tatarska 8 A-
 Other:
Peter Bradshaw 6
Simon Gallagher 2 C-
Ruta Buciunaite 8
Emanuel Levy 4 C+

"JAGTEN (THE HUNT)" (Thomas Vinterberg) [Competition] Ecumenical Jury Award + Actor
Alejandro G. Calvo 5.1
Alex Vicente 3
Alexandra Zawia 5
Carlo Chatrian 5.5
Carlos F. Heredero 5
Carlos Reviriego 2.5
Diego Batlle 5
Diego Lerer 5.2
Eulalia Iglesias 4
Fernando Juan Lima 4
Francisco Ferreira 1
Jaime Pena 5
Javier H. Estrada 4
José Luis de Lorenzo 8
Kong Rithdee 3
Luciano Monteagudo 7
Manu Yáñez 2
Marcelo Alderete 1
Nando Salva 2.5
Pedro Butcher 2.5
Robert Koehler 7.5
Violeta Kovacsics 2
Xavi Serra  4
 IonCinema:
Christophe Beney 0
David Calhoun 5
Per Juul Carlsen 8
Paola Casella 6
Mike d'Angelo 5.4
#Carlos F. Heredero 4 
Eric Lavallée 3 C
Fabien Lemercier 8
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 8
Clarence Tsui 
Blake Williams 6 B-
Liu Min 10
Eric Kohn 
 Screen Daily:
Nick James 7.5
David Stratton 7.5
Derek Malcolm 7.5
Jan Schulz-Ojala 5
Jose Carlos Avellar 7.5
Dennis Lim 5
Michel Ciment 5
Kate Muir 9
Bo Green Jensen 9
Screen International 7.5
 Le film français:
Stéphanie Lamome 2.5
Arnaud schwartz 7.5
Fabrice Leclerc 2.5
Eric Neuhoff 9
Stéphane Delorme 2.5
Jaques Mandelbaum 2.5
Philippe Rouyer 2.5
Pierre Vavasseur 9
Pierre Murat 1
Jean Roy 2.5
Serge Kaganski 2.5
Pierre Fornerod 7.5
Pascal Merigeau 2.5
Danielle Attali 5
Christophe Carriére 5
 Indiewire: (14)
Raffi Asdourian 6 B
Anna Bielak
Alex Billington 4 C+
David Fear 3 C
Jon Frosch
Leda Galanou 4 C+
Stephen Garrett 2 C-
Michael Ghennam
Patrick Heidmann 8 A-
Aaron Hillis 4 C+
Frédéric Jaeger 8 A-
Emanuel Levy 7 B+
Patrick Z. McGavin 5 B-
Michal Oleszczyk
Anne Thompson 7 B+
Sarah Watt 6 B
 Other:
Peter Bradshaw 8
Ruta Buciunaite 10
Simon Gallagher 10 A+

"THERESE DESQUEYROUX" (Claude Miller) [Out of Competition]
 forgotten in the todoslascriticas spreadsheet
 IonCinema:
Christophe Beney 
David Calhoun 
Per Juul Carlsen 
Paola Casella 
Mike d'Angelo 
#Carlos F. Heredero  
Eric Lavallée 
Fabien Lemercier 
Guy Lodge 
Isabelle Regnier 
Kevin Jagernauth 
Cédric Succivalli 
Clarence Tsui 
Blake Williams 
Liu Min 6
Eric Kohn 
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 
Fabrice Leclerc 5
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 5
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 5
Pascal Merigeau 5
Danielle Attali 5
Christophe Carriére 7.5
 Indiewire (1):
Simo Abrams 3 C

UN CERTAIN REGARD

"MYSTERY" (Lou Ye) [Un Certain Regard]
Boris Nelepo 1.5
Carlos F. Heredero 4
Carlos Reviriego 3
Dana Linssen 5.8
Diego Batlle 4
Diego Lerer 3.5
Eulalia Iglesias 3
Fernando Juan Lima 2
Javier H. Estrada 3
José Luis de Lorenzo 4
Neil Young 5 C+
Robert Koehler 2
Roger Alan Koza  1
Rudiger Suchsland  7
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 2.5
Fabrice Leclerc 
Eric Neuhoff 2.5
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 2.5
Pierre Vavasseur 
Pierre Murat 2.5
Jean Roy 2.5
Serge Kaganski 5
Pierre Fornerod 2.5
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire: (4)
Raffi Asdourian 4 C+
Anna Bielak
Alex Billington
David Fear
Jon Frosch
Leda Galanou
Clementine Gallot
Stephen Garrett
Michael Ghennam 5 B-
Glenn Heath Jr.
Patrick Heidmann
Aaron Hillis
Frédéric Jaeger
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Sarah Watt
Blake Williams 4 C+
 Other:
Peter Bradshaw 6
Simon Gallagher 6 B

"MISS LOVELY" (Ashim Ahluwalia) [Un Certain Regard]
Carlo Chatrian 6.05
Carlos Reviriego 4
Diego Lerer 4.4
Eulalia Iglesias 6.8
Jaime Pena 5.9
Javier H. Estrada 6.3
José Luis de Lorenzo 4
Kong Rithdee 5
Luciano Barisone 7
Robert Koehler 6
Roger Alan Koza  3.5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 5
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

"LA PLAYA D.C." (Juan Andrés Arango) [Un Certain Regard]
Alejandro G. Calvo 5
Carlo Chatrian 5.8
Carlos F. Heredero 6
Carlos Reviriego 5
Cristina Nord 6
Dana Linssen 5.9
Diego Batlle 6.5
Diego Lerer 7.3
Gonzalo de Pedro 5
Jaime Pena 4.5
Javier H. Estrada 5
Neil Young 7 B
Pedro Butcher 4
Roger Alan Koza  6
Rudiger Suchsland  5
 Other:
Mike d'Angelo 
  w/o This is an amazing year but UCR does seem kinda blah. Totally generic downtrodden-kid saga
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

"LES CHEVAUX DE DIEU (GOD'S HORSES)" (Nabil Ayouch) [Un Certain Regard]
Alejandro G. Calvo 1
Carlos F. Heredero 6
Carlos Reviriego 2
Dana Linssen 4.9
Fernando Juan Lima 7
Jaime Pena 3
José Luis de Lorenzo 8
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 7
Fabrice Leclerc 
Eric Neuhoff 2.5
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 2.5
Pierre Vavasseur 
Pierre Murat 
Jean Roy 5
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 2.5
Danielle Attali 
Christophe Carriére 
 Indiewire: (2)
Kaleen Aftab 7 B+
Ryland Aldrich 5 B-

"TROIS MONDES (THREE WORLDS)" (Catherine Corsini) [Un Certain Regard]
Carlo Chatrian 2
Diego Batlle 5.5
Diego Lerer 4.8
Fernando Ganzo 3
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 2.5
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire: (1)
Blake Williams 3 C

"ANTIVIRAL" (Brandon Cronenberg) [Un Certain Regard]
Alejandro G. Calvo 6
Alex Vicente 3
Boris Nelepo 2
Carlo Chatrian 2.02
Carlos F. Heredero 1
Carlos Reviriego 5
Dana Linssen 4.5
Diego Batlle 4
Diego Lerer 6
Fernando Juan Lima 6
Francisco Ferreira 6
Gonzalo de Pedro 4
Jaime Pena 4
Javier H. Estrada 4
José Luis de Lorenzo 6
Kong Rithdee 5.5
Luciano Barisone 5
Manu Yáñez 5.5
Nando Salva 2
Neil Young 3
Pedro Butcher 2
Philipp Engel 6
Roger Alan Koza  3.5
Rudiger Suchsland  6.5
Sergio Wolf 4
Violeta Kovacsics 5.5
Xavi Serra  6
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 2.5
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 5
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 2.5
Serge Kaganski 
Pierre Fornerod 1
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire: (13)
Simon Abrams 6 B
Raffi Asdourian 4 C+
Anna Bielak 3 C
Alex Billington 7 B
David Fear
Jon Frosch
Leda Galanou
Clementine Gallot
Stephen Garrett 4 C+
Michael Ghennam 5 B-
Glenn Heath Jr.
Patrick Heidmann 3 C
Aaron Hillis
Frédéric Jaeger 5 B-
Kevin Jagernauth 5 B-
Eric Kohn 4 C+
Megan Lehmann 6 B
Emanuel Levy
Patrick Z. McGavin
Michal Oleszczyk
Eric D. Snider 5 B-
Sarah Watt
Blake Williams 3 C
 Other:
James Rocchi 5
Simon Gallagher 7 B+

"7 DIAS EN LA HABANA" (BDT, PT, JM, ES, JCT, GN y LC) [Un Certain Regard]
Alex Vicente 3
Carlos F. Heredero 4.5
Carlos Reviriego 3.5
Dana Linssen 3.2
Diego Batlle 4
Diego Lerer 4.4
Fernando Juan Lima 5
Nando Salva 3.5
Roger Alan Koza  3.5
Rudiger Suchsland  2.5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 5
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 5
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 2.5
 Other:
Blake Williams 2 C-
Mike d'Angelo 4.6 - Suleiman's film is typically good, Noé's is scary-sensual, everything else is passable to dreck to Medem.


"LE GRAND SOIR" (Benoit Delépine & Gustave Kervern) [Un Certain Regard] UCR Jury Price
Carlo Chatrian 7.4
Dana Linssen 6.1
Diego Batlle 8.3
Diego Lerer 8
Fernando Juan Lima 7.8
José Luis de Lorenzo 6
Luciano Barisone 7
Rudiger Suchsland  1
Sergio Wolf 4
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 7.5
Fabrice Leclerc 
Eric Neuhoff      1
Stéphane Delorme 
Jaques Mandelbaum 7.5
Philippe Rouyer 7.5
Pierre Vavasseur 
Pierre Murat 7.5
Jean Roy 5
Serge Kaganski 5
Pierre Fornerod 5
Pascal Merigeau 7.5
Danielle Attali 7.5
Christophe Carriére 7.5
 Indiewire (2):
Michael Ghennam 7 B+
Aaron Hillis 4 C+

"LAURENCE ANYWAYS" (Xavier Dolan) [Un Certain Regard]
Alex Vicente 7.5
Alexandra Zawia 3.5
Arthur Mas 5
Boris Nelepo 4.9
Dana Linssen 7.1
Diego Batlle 6
Diego Lerer 2.7
Eulalia Iglesias 6.7
Fernando Juan Lima 7.5
Jaime Pena 8.1
José Luis de Lorenzo 8
Kong Rithdee 6.5
Marcelo Alderete 4
Philipp Engel 4.5
Violeta Kovacsics 5.5
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 1
Stéphane Delorme 7.5
Jaques Mandelbaum 
Philippe Rouyer 2.5
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 7.5
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire (13):
Kaleen Aftab 6 B
Anna Bielak 5 B-
Alex Billington 8 A-
David Fear
Jon Frosch 8 A-
Leda Galanou
Stephen Garrett
Clementine Gallot 8 A
Michael Ghennam
Glenn Heath Jr.
Patrick Heidmann 6 B
Aaron Hillis
Frédéric Jaeger 6 B
Patrick Z. McGavin
Emanuel Levy
Michal Oleszczyk 2 C-
Eric D. Snider
Anna Tatarska 5 B-
Drew Taylor 
Anne Thompson
Guy Lodge 4 C+
Eric Kohn 4 C+
 Other:
Simon Gallagher 2 C-
Ruta Buciunaite 8

"DESPUES DE LUCIA" (Michel Franco) [Un Certain Regard] Top Price UCR
Carlo Chatrian 2.01
Diego Batlle 2
Diego Lerer 2.5
Luciano Barisone 3
Roger Alan Koza  1
Rudiger Suchsland  7
 Le film français:
Stéphanie Lamome 7.5
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 5
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 1
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire: (1)
Kaleen Aftab 8 A-

"AIMER À PERDRE LA RAISON (OUR CHILDREN/LOVING WITHOUT REASON)" (Joachim Lafosse) [Un Certain Regard]
Alex Vicente 7
Carlo Chatrian 7
Eulalia Iglesias 6.1
Fernando Juan Lima 6.75
Javier H. Estrada 3
Kong Rithdee 6.5
Luciano Barisone 6
Martial Pisani 1
Scott Foundas  8
Thomas Fioretti 3
Mike d'Angelo W/O
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 7.5
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 7.5
Pierre Vavasseur 
Pierre Murat 5
Jean Roy 
Serge Kaganski 9
Pierre Fornerod 7.5
Pascal Merigeau 5
Danielle Attali 5
Christophe Carriére 
 Indiewire: (3)
Michael Ghennam 5 B
Frédéric Jaeger 3 C
Blake Williams 3 C

"STUDENT" (Darezhan Omirbayev) [Un Certain Regard]
Alexandra Zawia 8
Arthur Mas 8.2
Boris Nelepo 7
Carlo Chatrian 7.8
Carlos F. Heredero 8.5
Carlos Reviriego 7.5
Cristina Nord 6.5
Eulalia Iglesias 7
Fernando Ganzo 6
Jaime Pena 8
Javier H. Estrada 8.5
José Luis de Lorenzo 3
Kong Rithdee 7.5
Luciano Barisone 8
Marcelo Alderete 7
Martial Pisani 8.1
Neil Young 6
Robert Koehler 8
Roger Alan Koza  8.5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 5
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 7.5
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 1
Jean Roy 2.5
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

"LA PIROGUE" (Moussa Toure) [Un Certain Regard]
Carlo Chatrian 5.05
Diego Batlle 6
Diego Lerer 5.6
Luciano Barisone 7
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 5
Fabrice Leclerc 7.5
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 5
Serge Kaganski 
Pierre Fornerod 5
Pascal Merigeau 
Danielle Attali 5
Christophe Carriére 
 Indiewire: (1)
Blake Williams 4 C+

"ELEFANTE BLANCO" (Pablo Trapero) [Un Certain Regard]
Alejandro G. Calvo 6
Alexandra Zawia 5.5
Carlos F. Heredero 4.5
Carlos Reviriego 5
Dana Linssen 6
Diego Batlle 7.4
Diego Lerer 7.5
Eulalia Iglesias 4.8
Fernando Juan Lima 6
Jaime Pena 4
Javier H. Estrada 4.5
José Luis de Lorenzo 5
Kong Rithdee 5.5
Nando Salva 5
Robert Koehler 2
Roger Alan Koza  6
Rudiger Suchsland  7.7
Violeta Kovacsics 4
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 5
Fabrice Leclerc 
Eric Neuhoff 5
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 2.5
Jean Roy 2.5
Serge Kaganski 5
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Indiewire (3):
Anna Bielak 2 C-
Michael Ghennam 7 B+
Patrick Z. McGavin 3 C
 Other:
Ruta Buciunaite 6

"CONFESSION OF A CHILD OF THE CENTURY" (Sylvie Verheyde) [Un Certain Regard]
Alexandra Zawia 3
Carlo Chatrian 4.01
Carlos F. Heredero 3
Carlos Reviriego 4.5
Fernando Juan Lima 4.5
Jaime Pena 4
Marcelo Alderete 3
 Le film français:
Stéphanie Lamome 5
Arnaud schwartz 2.5
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 1
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 1
Jean Roy 
Serge Kaganski 
Pierre Fornerod 1
Pascal Merigeau 7.5
Danielle Attali 
Christophe Carriére 
 Other:
Catherine Shoard (Guardian, UK) 2

"11.25 THE DAY MISHIMA CHOSE HIS OWN FATE" (Koji Wakamatsu) [Un Certain Regard]
Alejandro G. Calvo 5
Arthur Mas 9
Carlos F. Heredero 1
Cristina Nord 5
Diego Batlle 7.3
Diego Lerer 8
Eulalia Iglesias 6
Fernando Ganzo 6.5
Jaime Pena 7
Javier H. Estrada 7
Kong Rithdee 5
Luciano Barisone 8
Manu Yáñez 7.5
Martial Pisani 8.8
Philipp Engel 4.5
Robert Koehler 4
Roger Alan Koza  6.7
Rudiger Suchsland  6.2
Thomas Fioretti 8.4
Violeta Kovacsics 6
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 7.5
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

"BEASTS OF THE SOUTHERN WILD" (Benh Zeitlin) [Un Certain Regard] Fipresci Price UCR + Camera d'Or
  Sundance
Alejandro G. Calvo 4
Alex Vicente 7
Alexandra Zawia 6
Carlos F. Heredero 4
Carlos Reviriego 6
Cristina Nord 4.5
Diego Batlle 6
Diego Lerer 6.3
Eulalia Iglesias 2.5
Fernando Juan Lima 6
Francisco Ferreira 1
Jaime Pena 2
Javier H. Estrada 3
José Luis de Lorenzo 4
Kong Rithdee 6.5
Luciano Barisone 6
Nando Salva 2
Neil Young 6 B-
Pedro Butcher 4
Philipp Engel 4
Robert Koehler 3 D-
Sergio Wolf 3
Scott Foundas  10
Xavi Serra  5
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 7.4
Fabrice Leclerc 
Eric Neuhoff 5
Stéphane Delorme 5
Jaques Mandelbaum 
Philippe Rouyer 7.5
Pierre Vavasseur 
Pierre Murat 2.5
Jean Roy 7.5
Serge Kaganski 2.5
Pierre Fornerod 7.5
Pascal Merigeau 5
Danielle Attali 
Christophe Carriére 
 Indiewire (39):
Simon Abrams 8 A-
Ryland Aldrich 9 A
Raffi Asdourian 8 A-
Anna Bielak 8 A-
Alex Billington 10 A+
Mike d'Angelo 5 B-
Austin Dale (Indiewire, USA) 8 A-
Edward Douglas (Comingsoon.net, USA) 5 B-
Kate Erbland 6 (filmschoolrejects.com, USA) B
Devin Faraci (Badass Digest, USA) 10 A+
David Ehrlich
David Fear 7 B+ 
Jon Frosch 
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 9 A
William Goss (Film.com, USA) 8 B+
Tim Grierson 6 B
Glenn Heath Jr.
Patrick Heidmann 8 A-
Aaron Hillis 5 B-
Jordan Hoffman (ScreenCrush.com, USA) 8 A-
Frédéric Jaeger 2 C-
Christopher Kelly (Dallas Fort-Worth Star Telegram, USA) 4 C+
Peter Knegt 8 A-
Peter Keogh 
Chris Knipp 
Eric Kohn 7 B+
Megan Lehmann 
Robert Levin (amNew York, USA) 7 B+
Shawn Levy (The Oregonian, USA) 8 A-
Emanuel Levy
John Lichmann (Freelance, USA) 10 A+
Patrick Z. McGavin 8 A-
Michael Nordline (Hammer to Nail, USA) 9 A
Tambay Obenson (Shadow and Act, USA) 9 A
Michal Oleszczyk
Matt Patches (Hollywood.com, USA) 9 A
Kristy Puchko 
Jordan Raup 8 B+
Bryce J Renninger (Indiewire, USA) 8 A-
James Rocchi 
Jonathan Rosenbaum
Nigel Smith (Indiewire, USA) 8 A-
Eric D. Snider
Anna Tatarska 8 B+
Amy Taubin (Film Comment, USA) 9 A
Drew Taylor 
Anne Thompson 9 A
Kim Voynar (Movie City News, USA) 9 A
Ignatiy Vishnevetsky 
Chase Whale (Twitch Film, MTV's NextMovie, USA) 9 A
Sarah Watt
 Other:
Guy Lodge 6 B

"DJECA" (Aida Begic) [Un Certain Regard] UCR Special Jury Mention
Cristina Nord 4.8
Dana Linssen 5.9
Diego Batlle 7
Diego Lerer 6.5
Eulalia Iglesias 6.7
Jaime Pena 4.5
José Luis de Lorenzo 5
Luciano Barisone 8
Robert Koehler 5
Rudiger Suchsland  7
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 5
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 2.5
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 
 Other:
Peter Bradshaw 6

"GIMME THE LOOT" (Adam Leon) [Un Certain Regard]
  SXSW
Carlos F. Heredero 4
Carlos Reviriego 6
Diego Batlle 7.3
Diego Lerer 7
Eulalia Iglesias 7.3
Jaime Pena 5
Javier H. Estrada 5.5
Marcelo Alderete 6
Pedro Butcher 5
Scott Foundas  8
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 5
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 2.5
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 5
Christophe Carriére 2.5
 Other:
Don Simpson (Smells Like Screen Spirit, USA) 6
Andrew Schenker (Slant, USA) 6.5
Reini Urban (facebook, Austria) 4

"RENOIR" (Gilles Bourdos) [Un Certain Regard]
Carlos Reviriego 5.5
Manu Yáñez 5
Roger Alan Koza  5.8
 Le film français:
Stéphanie Lamome 
Arnaud schwartz 
Fabrice Leclerc 
Eric Neuhoff 
Stéphane Delorme 
Jaques Mandelbaum 
Philippe Rouyer 
Pierre Vavasseur 
Pierre Murat 
Jean Roy 
Serge Kaganski 
Pierre Fornerod 
Pascal Merigeau 
Danielle Attali 
Christophe Carriére 

SEMANA DE LA CRÍTICA

"BROKEN" (Rufus Norris) [Semaine]
Jaime Pena 3
Pedro Butcher 1.5
 Other:
Peter Bradshaw 4
Derek Malcolm (London Evening Standard, UK) 6

"AQUÍ Y ALLÁ" (Antonio Méndez Esparza) [Semaine] Semaine Grand Prize
Carlos F. Heredero 6.5
Jaime Pena 5
Neil Young 4
Pamela Bienzobas 4
Roger Alan Koza  4.7

"AU GALOP" (LouisDo de Lencquesaing) [Semaine]
Carlos Reviriego 6.7
Fernando Juan Lima 8
Gonzalo de Pedro 5
Martial Pisani 3.1
Pamela Bienzobas 5
Philipp Engel 8

"LES VOISINS DE DIEU" (Meni Yaesh) [Semaine] Gaul's Society of Authors, Directors and Composers award
Eulalia Iglesias 3.5
Rudiger Suchsland  7
 
"HORS LES MURS" (Damien Lambert) [Semaine]
Fernando Juan Lima 2
Pamela Bienzobas 4

"PEDDLERS" (Vasan Bala) [Semaine]
Carlo Chatrian 5.5
Jaime Pena 5.5
Javier H. Estrada 6.3
Pamela Bienzobas 3
Sergio Wolf 6

"LOS SALVAJES" (Alejandro Fadel) [Semaine] ACID/CCAS support price for distribution
  BAFICI2012
Alejandro G. Calvo 7
Carlo Chatrian 5
Diego Batlle 8.5
Diego Lerer 7.7
Eulalia Iglesias 6.5
Fernando Ganzo 5
Jaime Pena 4
Luciano Barisone 3
Pamela Bienzobas 5.5
Roger Alan Koza  7.2
Sergio Wolf 8
Violeta Kovacsics 7

"SOFIA'S LAST AMBULANCE" (Ilian Metev) [Semaine] Visionary Price Semaine
Neil Young 6
Pamela Bienzobas 6.7

"AUGUSTINE" (Alice Winocour) [Semaine]
Neil Young 7
Thomas Fioretti 4.5

"J’ENRAGE DE SON ABSENCE" (Sandrine Bonnaire) [Semaine]
Alexandra Zawia 5
Boris Nelepo 1.5
Cristina Nord 3.7
Fernando Ganzo 2.5
Fernando Juan Lima 6

"3" (Pablo Stoll Ward) [Quinzaine]
Alejandro G. Calvo 5.8
Carlos F. Heredero 7
Carlos Reviriego 6.9
Dana Linssen 6.1
Diego Batlle 8
Diego Lerer 8.6
Eulalia Iglesias 7.1
Fernando Juan Lima 9
Jaime Pena 6
Javier H. Estrada 6.5
Pamela Bienzobas 7
Roger Alan Koza  6
Sergio Wolf 7

"ADIEU BERTHE, L'ENTERREMENT DE MÉMÉ" (Bruno Podalydès) [Quinzaine]
Javier H. Estrada 4
Martial Pisani 4.9
Thomas Fioretti 4.9

"ALYAH" (Elie Wajeman) [Quinzaine]
Carlo Chatrian 6.5
Javier H. Estrada 6
Pamela Bienzobas 6
Thomas Fioretti 2.9

"CAMILLE REDOUBLE" (Noémie Lvovsky) [Quinzaine] Quinzaine French Language Film Trophy
Alex Vicente 7
Cristina Nord 7
Jaime Pena 5
Javier H. Estrada 4.8
Robert Koehler 3
Thomas Fioretti 5.8

"DAE GI EUI WANG" (Yeun Sang-Ho) [Quinzaine]
Carlo Chatrian 5.5
Diego Batlle 5.5
Javier H. Estrada 6.5
Paolo Bertolin 7

"DANGEROUS LIAISONS" (Hur Jinho) [Quinzaine]
Fernando Juan Lima 2
Javier H. Estrada 6.5

"EL TAAIB (THE REPENTANT)" (Merzak Allouache) [Quinzaine] Best European Quinzaine Film
Javier H. Estrada 6
Luciano Barisone 7
Thomas Fioretti 5.6

"ERNEST ET CÉLESTINE" (Stéphane Aubier, Vincent Patar & Benjamin Renner) [Quinzaine]
Carlo Chatrian 6
Dana Linssen 6.4
Javier H. Estrada 4.5
Pamela Bienzobas 6.8
Sergio Wolf 7

"FOGO" (Yulene Olaizola) [Quinzaine]
Diego Batlle 7
Eulalia Iglesias 6
Fernando Juan Lima 8
Jaime Pena 7.9
Javier H. Estrada 4.5
Neil Young 5
Philipp Engel 6
Robert Koehler 6
Roger Alan Koza  8
Sergio Wolf 6
Thomas Fioretti 5.1

"GANGS OF WASSEYPUR" (Anurag Kashyap) [Quinzaine]
Javier H. Estrada 4.5
Rudiger Suchsland  7.5
Thomas Fioretti 5.3

"INFANCIA CLANDESTINA" (Benjamín Ávila) [Quinzaine]
Carlos Reviriego 6
Diego Batlle 6.8
Diego Lerer 6.8
Eulalia Iglesias 4.5
Jaime Pena 3
Javier H. Estrada 3
José Luis de Lorenzo 6
Nando Salva 3.5
Neil Young 5
Pamela Bienzobas 6.7
Roger Alan Koza  6.5

"LA NOCHE DE ENFRENTE" (Raúl Ruiz) [Quinzaine]
Boris Nelepo 9.5
Carlos F. Heredero 8.5
Cristina Nord 8
Diego Batlle 7
Diego Lerer 6
Fernando Ganzo 6.5
Gonzalo de Pedro 9
Jaime Pena 8.5
Javier H. Estrada 8
Marcelo Alderete 6
Robert Koehler 8
Roger Alan Koza  6
Sergio Wolf 9
Scott Foundas  7.5
Violeta Kovacsics 8
 Other:
Mike d'Angelo 5.6

"LA SIRGA" (William Vega) [Quinzaine]
Carlo Chatrian 6.5
Carlos F. Heredero 6.5
Diego Batlle 6.5
Jaime Pena 3
Javier H. Estrada 6.5
Luciano Barisone 5
Pamela Bienzobas 6
Robert Koehler 7
Roger Alan Koza  6.5
Thomas Fioretti 6.5

"NO" (Pablo Larraín) [Quinzaine] Quinzaine Top Prize ("Art Cinema Award")
Alexandra Zawia 7
Carlo Chatrian 6
Carlos F. Heredero 6
Dana Linssen 8
Diego Batlle 8
Diego Lerer 6.8
Eulalia Iglesias 6.9
Fernando Ganzo 4
Gonzalo de Pedro 7
Jaime Pena 2
Javier H. Estrada 7
Kong Rithdee 7.5
Pamela Bienzobas 8.5
Robert Koehler 8
Roger Alan Koza  7.5
Sergio Wolf 7
Scott Foundas  8.5
Thomas Fioretti 7.6
Violeta Kovacsics 8.5
 Other:
Mike d'Angelo 6.8
Guy Lodge 8.5 A-
Eric Kohn 9 A

"OPÉRATION LIBERTAD" (Nicolas Wadimoff) [Quinzaine]
Dana Linssen 5.9
Javier H. Estrada 4
Sergio Wolf 5

"RENGAINE (HOLD BACK)" (Rachid Djaïdani) [Quinzaine] Fipresci Price Quinzaine
Carlo Chatrian 7.4
Eulalia Iglesias 6
Javier H. Estrada 8
Luciano Barisone 7
Neil Young 7
Pamela Bienzobas 8.2
Robert Koehler 8
Thomas Fioretti 1.8

"ROOM 237" (Rodney Ascher) [Quinzaine]
Alejandro G. Calvo 5.9
Alex Vicente 6
Carlo Chatrian 6.03
Carlos F. Heredero 3.5
Cristina Nord 6
Diego Lerer 3
Eulalia Iglesias 6
Jaime Pena 7.5
Javier H. Estrada 6
Luciano Barisone 6
Marcelo Alderete 6
Pamela Bienzobas 6
Pedro Butcher 7
Robert Koehler 8
Sergio Wolf 3
Thomas Fioretti 5.5
Violeta Kovacsics 6.5
 Indiewire:
Simon Abrams 8 A-
Raffi Asdourian 8 A-
Mike d'Angelo 5.8
David Fear 8 A- 
Tim Grierson 8 A-
Michal Oleszczyk 7 B+
Mike d'Angelo 5.8
Blake Williams 7

"SIGHTSEERS" (Ben Wheatley) [Quinzaine]
Alejandro G. Calvo 6
Alexandra Zawia 3
Boris Nelepo 6
Carlos Reviriego 5.8
Cristina Nord 3.4
Eulalia Iglesias 6.9
Fernando Ganzo 5
Jaime Pena 7.6
Javier H. Estrada 6.7
Marcelo Alderete 7
Neil Young 8
Violeta Kovacsics 7
 Indiewire:
James Rocchi 9 A
 Other:
Peter Bradshaw 6

"SUEÑO Y SILENCIO" (Jaime Rosales) [Quinzaine]
Alejandro G. Calvo 3.5
Carlos F. Heredero 7.5
Carlos Reviriego 4
Diego Batlle 7
Eulalia Iglesias 5.9
Jaime Pena 5.1
Javier H. Estrada 5.5
Luciano Barisone 5
Manu Yáñez 5
Nando Salva 4
Robert Koehler 2
Roger Alan Koza  6
Violeta Kovacsics 6.5
Xavi Serra  4.5
 Other:
Peter Bradshaw 8

"THE WE AND THE I" (Michel Gondry) [Quinzaine]
Alejandro G. Calvo 8
Alex Vicente 7.5
Camille Brunel 8.2
Carlos F. Heredero 4
Diego Batlle 6
Diego Lerer 5
Eulalia Iglesias 4.5
Fernando Juan Lima 5.5
Gonzalo de Pedro 8
Jaime Pena 6
Javier H. Estrada 4
Luciano Barisone 5
Manu Yáñez 8
Marcelo Alderete 3
Nando Salva 6.5
Noémie Luciani 3
Philipp Engel 8.5
Thomas Fioretti 3
Violeta Kovacsics 7
Mike d'Angelo 5.2
 Indiewire ():
Simon Abrams 
Ryland Aldrich
Raffi Asdourian 
Anna Bielak 
Alex Billington 
David Ehrlich
David Fear
Jon Frosch 
Leda Galanou
Clementine Gallot 
Stephen Garrett
Michael Ghennam 
Glenn Heath Jr.
Patrick Heidmann 
Aaron Hillis 
Frédéric Jaeger
Peter Keogh 
Chris Knipp 
Megan Lehmann 
Emanuel Levy
Patrick Z. McGavin 
Michal Oleszczyk
Kristy Puchko 
Jordan Raup 
James Rocchi 
Jonathan Rosenbaum
Eric D. Snider
Anna Tatarska 
Drew Taylor 
Anne Thompson 
Ignatiy Vishnevetsky 
Sarah Watt

"YEK KHANÉVADÉH-E MOHTARAM (A RESPECTABLE FAMILY)" (Massoud Bakhshi) [Quinzaine]
Fernando Juan Lima 3
Javier H. Estrada 4.5
Pamela Bienzobas 7.5
Robert Koehler 6
Thomas Fioretti 6.3

FUERA DE COMPETENCIA

"IO E TE (ME AND YOU)" (Bernardo Bertolucci)
Alejandro G. Calvo 5
Alex Vicente 4
Boris Nelepo 6.9
Carlos F. Heredero 6
Carlos Reviriego 6
Diego Batlle 6.5
Fernando Ganzo 7
Fernando Juan Lima 7
José Luis de Lorenzo 4
Manu Yáñez 5.5
Nando Salva 4.5
Pedro Butcher 7.5
Rudiger Suchsland  6
Violeta Kovacsics 5.5
Xavi Serra  6.5
 Indiewire (3):
Kaleen Aftab 5 B-
Michael Ghennam 3 C
Kevin Jagernauth 2 C-
 Other:
Mike d'Angelo 5.2

"MADAGASCAR 3, EUROPE'S MOST WANTED" (Eric Darnell y Tom McGrath)
Diego Lerer 3.2
Manu Yáñez 3
 Indiewire (2):
Raffi Asdourian 5 B-
Patrick Heidmann 2 C-

"HEMINGWAY & GELLHORN" (Philip Kaufman)
Nando Salva 2
Scott Foundas  8

PROYECCIONES DE MEDIANOCHE

"DARIO ARGENTO'S DRACULA 3D" (Dario Argento)
Alejandro G. Calvo 2
Alexandra Zawia 2
Fernando Juan Lima 5
José Luis de Lorenzo 2
Marcelo Alderete 7
Nando Salva 2
Philipp Engel 4
Sergio Wolf 8
 Indiewire (4):
Simon Abrams 
Kaleen Aftab 
Ryland Aldrich
Raffi Asdourian 1.5 D
Stephen Garrett 3 C
Michael Ghennam 0 F
Eric D. Snider 0 F
 Other:
Simon Gallagher 1.5 D+

"AI TO MAKOTO" (Takashi Miike)
Mike d'Angelo 5.5
Alejandro G. Calvo 2
Boris Nelepo 7
Diego Batlle 4
Fernando Juan Lima 9
Javier H. Estrada 6
José Luis de Lorenzo 8
Rudiger Suchsland  10
Sergio Wolf 6
 Indiewire (2):
Simon Abrams 
Kaleen Aftab 
Ryland Aldrich
Raffi Asdourian 5 B-
Stephen Garrett
Michael Ghennam
Patrick Z. McGavin 5 B-
Eric D. Snider

"UNE JOURNÉE PARTICULIÈRE" (Gilles Jacob y Samuel Faure)
Alejandro G. Calvo 2
José Luis de Lorenzo 2

"THE SAPPHIRES" (Wayne Blair)
Alejandro G. Calvo 2
Fernando Juan Lima 6
Luciano Barisone 3
 Other:
Guy Lodge 8
Eric Kohn 4 C+
Simon Gallagher 7 B+
Henry Barnes (Guardian, UK) 6

"MANIAC" (Franck Khalfoun)
Mike d'Angelo W/O. "Had I known it's a first-person-camera slasher film I wouldn't have bothered. You can't even *see* Elijah Wood!"

"MANIAC" (Franck Khalfoun) [Fuera De Competencia]
Marcelo Alderete 6

"DER MÜLL IM GARTEN EDEN (POLLUTING PARADISE)" (Fatih Akin) 
Alexandra Zawia 3
Cristina Nord 5
Dana Linssen 4.9
Diego Batlle 5
Diego Lerer 4.2
Fernando Juan Lima 4
Javier H. Estrada 3
José Luis de Lorenzo 7
Marcelo Alderete 2
Nando Salva 4
Neil Young 6
Rudiger Suchsland  5
 IndieWire:
Michal Oleszczyk 6 B

"ROMAN POLANSKI: A FILM MEMOIR" (Laurent Bouzereau) [Funciones Especiales]
Alejandro G. Calvo 2
Alex Vicente 3
Alexandra Zawia 3.2
Carlo Chatrian 4
Dana Linssen 5.8
Diego Batlle 5.5
Eulalia Iglesias 5
Fernando Ganzo 3
Fernando Juan Lima 3
Kong Rithdee 6
Luciano Barisone 3
Pedro Butcher 5
Scott Foundas  3
Mike d'Angelo
 Indiewire: (2)
Clementine Gallot 3 C
Kevin Jagernauth 5 B
 Other:
Peter Bradshaw 6
Simon Gallagher 5 B-
Emanuel Levy 7 B+

"THE CENTRAL PARK FIVE" (Ken Burns, Sarah Burns y David McMahon) [Funciones Especiales]
Alejandro G. Calvo 6
Carlo Chatrian 4.88
Carlos Reviriego 5
Eulalia Iglesias 6.5
Jaime Pena 7
Luciano Barisone 6
Manu Yáñez 6
Pedro Butcher 6.5
Philipp Engel 5
Rudiger Suchsland  6.8

"LES INVISIBLES" (Sébastien Lifshitz) [Funciones Especiales]
Carlo Chatrian 6.01
Eulalia Iglesias 6.9
Fernando Juan Lima 7
Luciano Barisone 6
 Indiewire: (4)
Anna Bielak 4 C+
Michael Ghennam 7 B+
Anna Tatarska 3 C
Blake Williams 4 C+

"JOURNAL DE FRANCE" (Claudine Nougaret y Raymond Depardon) [Funciones Especiales]
Alex Vicente 6
Boris Nelepo 7.3
Carlo Chatrian 5.03
Carlos F. Heredero 6
Carlos Reviriego 6.2
Dana Linssen 4.3
Diego Lerer 7
Eulalia Iglesias 6
Fernando Ganzo 7
Jaime Pena 5
Kong Rithdee 6.5
Luciano Barisone 5
Manu Yáñez 5
Marcelo Alderete 6
Philipp Engel 5
Sergio Wolf 8
 Indiewire (2):
Michael Ghennam 6 B
Blake Williams 3 C

"A MUSICA SEGUNDO TOM JOBIM" (Nelson Pereira Dos Santos) [Funciones Especiales]
Martial Pisani 5.9
Pedro Butcher 7
Roger Alan Koza  4.5

"VILLEGAS" (Gonzalo Tobal) [Funciones Especiales]
Carlos F. Heredero 7
Carlos Reviriego 6.5
Diego Batlle 7.2
Diego Lerer 7.2
Fernando Ganzo 6
Fernando Juan Lima 8
Jaime Pena 7
José Luis de Lorenzo 8
Neil Young 5 C+
Pedro Butcher 6
Robert Koehler 4
Roger Alan Koza  6.7
Violeta Kovacsics 5.5

"MEKONG HOTEL" (Apichatpong Weerasethakul) [Funciones Especiales]
Alejandro G. Calvo 7
Alexandra Zawia 7
Boris Nelepo 9
Carlo Chatrian 7.3
Carlos F. Heredero 7
Carlos Reviriego 7.5
Cristina Nord 7
Dana Linssen 7.4
Diego Batlle 7.5
Diego Lerer 7.7
Eulalia Iglesias 7.1
Fernando Ganzo 6.5
Fernando Juan Lima 8.5
Francisco Ferreira 8.5
Gonzalo de Pedro 9
Jaime Pena 7
Javier H. Estrada 7.5
José Luis de Lorenzo 8
Kong Rithdee 7
Luciano Barisone 7
Marcelo Alderete 7
Martial Pisani 8.1
Nando Salva 7.5
Neil Young 4
Pedro Butcher 8.5
Philipp Engel 6.5
Robert Koehler 8
Roger Alan Koza  7.5
Sergio Wolf 7
Violeta Kovacsics 7
Xavi Serra  6
 Indiewire: (11)
Simon Abrams 8 A-
Ryland Aldrich 6 B
Raffi Asdourian 1 D-
Mike d'Angelo 4.1 C
Anna Bielak
Alex Billington
David Fear
Jon Frosch
Leda Galanou
Clementine Gallot
Stephen Garrett
Michael Ghennam
Glenn Heath Jr.
Patrick Heidmann
Aaron Hillis 2 C-
Frédéric Jaeger
Emanuel Levy
Eric Kohn 6 B
Patrick Z. McGavin 8 A-
Michal Oleszczyk 7 B+
Anna Tatarska 5 B-
Sarah Watt
Blake Williams 2.6 D+
 Other:
Ruta Buciunaite 6
Peter Bradshaw 6

"TRASHED" (Candida Brady) [Funciones Especiales]
Eulalia Iglesias 5.9
Neil Young 6

"LE SERMENT DE TOBRUK (Bernard-Henry Lévy) 

"SISTER (L'ENFANT D'EN HAUT)" (Ursula Meier) [Market]
  Berlin
Mike d'Angelo 6.8
 Indiewire:
Michal Oleszczyk 6 B
Eric Kohn 8 A-
Neil Young 1 D-
Tim Robey 7 B+

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

our $HEADDER = <<"EOF";
With the help of: 
<i>"Forth edition of the Apitchang poll of films at Cannes 2012.
This year with 45 international critics"</i> - Diego Lerer<p>

<small>Updated daily from http://micropsia.otroscines.com/ (Diego Lerer) (la crema), http://www.ioncinema.com/ (okay), Le film français (eclectic), Screen Daily (mainstream), Indiewire (mixed) and more critics.<br>
Same as <a href="http://www.facebook.com/notes/reini-urban/cannes-2011-critics/10150578683465012">last years</a>: 0-10 points, only &gt;6.00 avg and &gt;3 international critics [avg/num stddev]. stddev>2: <i>controversial</i>. Critics with stddev &gt;2.5: filtered out. &lt;10 ratings: small.
All sections (updated daily, official selection Competition: bold)</small><p>

EOF

our $FOOTER = "
<pre>
--
http://micropsia.otroscines.com/
http://www.ioncinema.com/
http://www.lefilmfrancais.com/cannes2012/quotidien/

Source at http://rurban.xarch.at/film/Cannes2012.txt
Result at http://rurban.xarch.at/film/Cannes2012.sorted.html
History at http://github.com/rurban/cannes-critics-ratings/

</pre>";

$FOOTER =~ s{http://(.+)\n}{<a href="http://$1">$1</a>\n}g;
1;