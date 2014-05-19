package Cannes::rurban::2014;

#!/usr/bin/perl -- -*- perl -*-
# Cannes 2014 Critics Ratings
# collected by Diego Lerer, ioncinema, indiewire, screendaily and Reini Urban
# Recalc and sort ratings by all cannes critics http://www.todaslascriticas.com.ar/cannes
# and 16 more western critics from http://www.ioncinema.com/ (scaled to 0-10)
# french: http://www.lefilmfrancais.com/cannes2014/quotidien/ (scale 0-4) Safari yes, chrome no
# http://jury.critic.de/cannes/
# http://www.screendaily.com/festivals/cannes/cannes-2014-screens-dailies/5071703.article?blocktitle=DIGITAL-EDITIONS&contentID=41755   (scale 0-4) Safari yes, chrome no
# http://lci.tf1.fr/cinema/news/festival-de-cannes-2014-les-etoiles-de-la-presse-cinema-8419004.html
# More:
# http://www.indiewire.com/critic/
# http://www.guardian.co.uk/film/series/first-look-review+cannes-2014
#
# Published at http://cannes-rurban.rhcloud.com/2014
# History at https://github.com/rurban/cannes-critics-ratings
# Perl script by Reini Urban (c) 2010, 2011, 2012, 2013, 2014
# US ratings:
# A+ 10   A 9   A- 8
# B+ 7    B 6   B- 5 (or 6)
# C+ 4    C 3   C- 2
# D+ 1.5  D 1
# E 0.5   F 0
# Le film français+Screen Daily 0-4: 0: 1, 1: 2.5, 2: 5, 3: 7.5, 4: 9
# British 0-5: x2
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1

use utf8;
our $DATA= <<'EOF';

COMPETITION

"MR TURNER" (Mike LEIGH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010559/year/2014.html
Scott Foundas                   http://variety.com/2014/film/reviews/cannes-film-review-mr-turner-1201182098/
Roger Alan Koza       6
Alexandra Zawia       8
Robert Koehler        
Diego Batlle          7             http://www.otroscines.com/festivales_detalle.php?idnota=8575&idsubseccion=148
Diego Lerer           6.5
Fernando Ganzo        3.5
Eulàlia Iglesias     7.5
Ángel Quintana       8
José Luis Losa       5.5
Pedro Butcher         7
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        
Violeta Kovacsics     6.5
Luciano Monteagudo    8
Jaime Pena            4.5
Rüdiger Suchsland    
Carlos Heredero       7
Luciano Barisone      
Giona Nazzaro         8
Dana Linssen          5
Cristina Nord         4
Francisco Ferreira    6.5
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         7.5
Marcelo Alderete      
Michal Oleszczyk      9         http://www.rogerebert.com/cannes/cannes-2014-dispatch-lust-for-light-in-mike-leighs-mr-turner
Manu Yañez            5
Carlos Reviriego      7
Fernando Juan Lima    5
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           7
Fredy Friedlander     6
Pablo Scholz          
Alejandro Calvo       7
Xavi Serra            7
Guido Castillo        
Pamela Bienzobas      
Javier Estrada        5.5
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       6
Frédéric Jaeger       4
Till Kadritzke        
Daniel Kasman         5         https://mubi.com/notebook/posts/cannes-2014-mike-leighs-mr-turner
Michael Kienzl        
Nino Klinger          6         http://www.critic.de/film/mr-turner-6710/
#Dana Linssen         5  (#5)
#Cristina Nord        4  (#4)
Rüdiger Suchsland     2.5
#Alexandra Zawia      9  (#8.5)
# ioncinema 0-5
Nicolas Bell          7
Christophe Beney      
David Calhoun         9         http://www.timeout.com/us/film/mr-turner
Per Juul Carlsen      8
Paola Casella         7
Mike d'Angelo         6.8	http://thedissolve.com/features/postcards-from-cannes/562-test/
# https://twitter.com/gemko/status/466876493541699584
Manon Dumais          6
#Carlos Heredero      6
Eric Kohn             8	        http://www.indiewire.com/article/cannes-review-why-mike-leighs-mr-turner-starring-timothy-spall-isnt-your-average-biopic
Eric Lavallée         6
Fabien Lemercier      8
Guy Lodge             6         http://www.hitfix.com/in-contention/review-mike-leigh-paints-his-own-portrait-in-lovely-robust-mr-turner/single-page
Liu Min               8
Isabelle Regnier      4
Cédric Succivalli     8
Blake Williams        6
# Screen Daily (0-4)
Robbie Collin	      9		http://www.telegraph.co.uk/culture/film/filmreviews/10833174/Mr-Turner-review-supremely-enjoyable.html
David Stratton        7.5
Derek Malcolm         9
Jan Schulz-Ojala      9
Jose Carlos Avellar   7.5
Stephanie Zacharek    9         http://www.villagevoice.com/2014-05-14/film/mr-turner-cannes-review/
Michel Ciment         5
Kate Muir/Wendy Ide   9
Bo Green Jensen       9
Screen International  9
# Le film français 0-4 (0: 1, 1: 2.5, 2: 5, 3: 7.5, 4: 9)
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       2.5
Eric Neuhoff          1
Stéphane Delorme      5
Thomas Sotinel        2.5
Philippe Rouyer       5
Pierre Vavasseur      5
Pierre Murat          2.5
Jean Roy              7.5
Serge Kaganski        1
Pierre Fornerod       5
Pascal Merigeau       7.5
Danielle Attali       5
Christophe Carriére   9
# TF1.fr (0-5)
Aurelien Allin        4
Evangeline Barbaroux  2
Thomas Baurez         4
Stephanie Belpeche    
Stéphanie Lamome      4
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       6
Life Caroline         6
#critics
Peter Bradshaw        10	http://www.theguardian.com/film/2014/may/15/mr-turner-cannes-review-mike-leigh-2014
Leslie Felperin   	        http://www.hollywoodreporter.com/review/mr-turner-cannes-review-704352
Oliver Lyttleton      8         http://blogs.indiewire.com/theplaylist/cannes-review-mike-leighs-mr-turner-ranks-among-his-very-best-films-20140515
Kenneth Turan                   http://www.latimes.com/entertainment/envelope/moviesnow/la-et-mn-cannes-mike-leigh-20140515-column.html
Jonathan Romney                 http://www.screendaily.com/5071722.article
Geoffrey MacNab       10        http://www.independent.co.uk/arts-entertainment/films/reviews/mr-turner-first-look-cannes-review-mike-leigh-returns-with-a-rich-character-study-9375692.html
David Calhoun         10        http://www.timeout.com/london/film/mr-turner
Craig Skinner         7         http://www.filmdivider.com/mr-turner-review/
Jamie Graham          10        http://www.totalfilm.com/news/cannes-2014-mr-turner-reaction-review
John Bleasdale        8         http://www.cine-vue.com/2014/05/cannes-2014-mr-turner-review.html
David Sexton          8         http://www.standard.co.uk/goingout/film/mr-turner-cannes-film-festival--film-review-timothy-spall-does-his-finest-work-in-mike-leighs-new-film-9373697.html
Jason Gorber          5         http://twitchfilm.com/2014/05/cannes-2014-review-mr-turner-paints-a-blurry-picture.html
Nikola Grozdanović   8.5       http://waytooindie.com/review/movie/mr-turner-cannes-review/
Rebecca Cope                    http://www.harpersbazaar.co.uk/culture-news/going-out/cannes-film-festival-2014-mr-turner-review
Barbara Scharres                http://www.rogerebert.com/cannes/cannes-2014-day-two-mr-turner-that-lovely-girl-party-girl
Josef Lederle                   http://www.filmdienst.de/aktuelles/blogbeitraege/einzelansicht/artikel/cannes-14-yin-yang.html
Joachim Kurz                    http://www.kino-zeit.de/blog/cannes/mr-turner
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/15/cannes-14-mr-turner-von-mike-leigh/
Glenn Heath Jr        4         https://twitter.com/MatchCuts/status/466941360923504640
Richard Mowe          8         http://www.eyeforfilm.co.uk/review/mr-turner-2014-film-review-by-richard-mowe
Nigel M Smith                   http://www.indiewire.com/article/cannes-timothy-spall-on-the-three-year-experience-of-becoming-mr-turner-for-mike-leigh


"TIMBUKTU" (Abderrahmane SISSAKO) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100009821/year/2014.html
Scott Foundas         
Roger Alan Koza       6.5
Alexandra Zawia       7.5
Robert Koehler        
Diego Batlle          7          http://www.otroscines.com/festivales_detalle.php?idnota=8575&idsubseccion=148
Diego Lerer           7.5
Fernando Ganzo        4.5
Eulàlia Iglesias     7
Ángel Quintana       7
José Luis Losa       7.5
Pedro Butcher         6
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        5.5
Violeta Kovacsics     5.5
Luciano Monteagudo    7
Jaime Pena            6
Rüdiger Suchsland    
Carlos Heredero       5.5
Luciano Barisone      
Giona Nazzaro         4.5
Dana Linssen          8
Cristina Nord         9
Francisco Ferreira    3
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         8
Marcelo Alderete      
Michal Oleszczyk      
Manu Yañez           8.5
Carlos Reviriego      7.5
Fernando Juan Lima    5.5
Paolo Bertolin        
Nando Salva           
Philip Engel          7.5
Inma Merino           7
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       6
Xavi Serra            6
Guido Castillo        
Pamela Bienzobas      7.5
Javier Estrada        8
Boris Nelepo          
# Screen Daily (0-4)
Robbie Collin         5
David Stratton        7.5
Derek Malcolm         5
Jan Schulz-Ojala      2.5
Jose Carlos Avellar   7.5
Stephanie Zacharek    5.7
Michel Ciment         7.5
Kate Muir/Wendy Ide   7.5
Bo Green Jensen       7.5
Screen International  7.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       6
Frédéric Jaeger       6
Till Kadritzke        7.5
Daniel Kasman         7.5    https://mubi.com/notebook/posts/cannes-2014-abderrahmane-sissakos-timbuktu
Michael Kienzl        6
Nino Klinger          6
Dana Linssen          9
Cristina Nord         9      http://www.taz.de/Kolumne-Cannes-Cannes/!138525/
Rüdiger Suchsland     
# ioncinema 0-5
Nicolas Bell          5
Christophe Beney      
David Calhoun         8
Per Juul Carlsen      6
Paola Casella         5
#Mike d'Angelo        6 #(5.9)
Manon Dumais          6
#Carlos Heredero      6 #(5.5)
Eric Kohn   	      8
Eric Lavallée         6 #(5)
Fabien Lemercier      8
Guy Lodge             7
Liu Min               8
Isabelle Regnier      8
Cédric Succivalli     8
Blake Williams        6 #(5)
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       9
Fabrice Leclerc       9
Eric Neuhoff          7.5
Stéphane Delorme      5
Thomas Sotinel        7.5
Philippe Rouyer       7.5
Pierre Vavasseur      9
Pierre Murat          5
Jean Roy              7.5
Serge Kaganski        7.5
Pierre Fornerod       5
Pascal Merigeau       7.5
Danielle Attali       9
Christophe Carriére   7.5
# TF1.fr (0-5)
Aurelien Allin        6
Evangeline Barbaroux  8
Thomas Baurez         
Stephanie Belpeche    8
Stéphanie Lamome      4
Romaine Le Vern       
Mehdi Omais           8
Philippe Rouyer       6
Life Caroline         8
# critics
Mike d'Angelo         5.9	https://twitter.com/gemko/status/466691923143843840
Peter Bradshaw        8         http://www.theguardian.com/film/2014/may/14/cannes-film-festival-review-timbuktu
Nikola Grozdanović    6.5       http://waytooindie.com/review/movie/timbuktu-cannes-review/
A.A. Dowd             5
Josef Lederle                   http://www.filmdienst.de/aktuelles/blogbeitraege/einzelansicht/artikel/cannes-14-yin-yang.html
Jessica Kiang         7
Craig Skinner         7
Joachim Kurz                    http://www.kino-zeit.de/blog/cannes/timbuktu
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/15/cannes-14-timbuktu-von-abderrahmane-sissako/
Glenn Heath Jr        7.5       https://twitter.com/MatchCuts/status/466687416531968004
Tim Robey             8         http://www.telegraph.co.uk/culture/film/filmreviews/10833200/Cannes-2014-Timbuktu-brutal-Sharia-Law-fable.html

"THE CAPTIVE" (Atom EGOYAN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100001748/year/2014.html
Alexandra Zawia       1
Diego Batlle          2         http://www.otroscines.com/festivales_detalle.php?idnota=8575&idsubseccion=148
Diego Lerer           1.5
Fernando Ganzo        3.5
Eulàlia Iglesias     4
Ángel Quintana       1.5
José Luis Losa       2.5
Pedro Butcher         3.5
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        4
Violeta Kovacsics     5.5
Luciano Monteagudo    3
Jaime Pena            0.5
Rüdiger Suchsland    
Carlos Heredero       4.5
Luciano Barisone      
Giona Nazzaro         4.5
Dana Linssen          
Cristina Nord         
Francisco Ferreira    2
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         
Marcelo Alderete      
Michal Oleszczyk      1.5
Manu Yañez           
Carlos Reviriego      3.5
Fernando Juan Lima    3.5
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           2
Fredy Friedlander     6
Pablo Scholz          
Alejandro Calvo       3
Xavi Serra            6
Guido Castillo        
Pamela Bienzobas      
Javier Estrada        
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        5         http://www.critic.de/film/the-captive-6693/
Daniel Kasman         4         http://www.mubi.com/notebook/posts/cannes-2014-atom-egoyans-the-captive-mathieu-amalrics-the-blue-room
Michael Kienzl        5
Nino Klinger          6
Rüdiger Suchsland     6         http://www.negativ-film.de/2014/05/so-bist-du-meine-tochter-nimmermehr-cannes-blog-4-folge
#Alexandra Zawia      1 (#1)
# ioncinema 0-5
Nicolas Bell          4
Christophe Beney      
David Calhoun         4
Per Juul Carlsen      6
Paola Casella         5
#Mike d'Angelo        5
Manon Dumais          4
#Carlos Heredero      4
#Eric Kohn   	      4
Eric Lavallée         
Fabien Lemercier      4
Guy Lodge             
Liu Min               4
Isabelle Regnier      2
Cédric Succivalli     5
Blake Williams        5
# Screen Daily (0-4)
Robbie Collin         7.5
David Stratton        2.5
Derek Malcolm         5
Jan Schulz-Ojala      1
Jose Carlos Avellar   2.5
Stephanie Zacharek    1
Michel Ciment         5
Kate Muir/Wendy Ide   5
Bo Green Jensen       5
Screen International  7.5
# Le film français 0-4
Stéphanie Lamome      9
Arnaud Schwartz       7.5
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      1
Thomas Sotinel        2.5
Philippe Rouyer       7.5
Pierre Vavasseur      2.5
Pierre Murat          1
Jean Roy              2.5
Serge Kaganski        2.5
Pierre Fornerod       5
Pascal Merigeau       2.5
Danielle Attali       5
Christophe Carriére   2.5
# TF1.fr (0-5)
Aurelien Allin        8
Evangeline Barbaroux  6
Thomas Baurez         
Stephanie Belpeche    8
Stéphanie Lamome      10
Romaine Le Vern       10
Mehdi Omais           2
Philippe Rouyer       8
Life Caroline         8
# criticwire
Eric Kohn             3         http://www.indiewire.com/article/cannes-review-with-the-ryan-reynolds-thriller-the-captive-has-atom-egoyan-lost-his-way-for-good
Mike d'Angelo         4.6	https://twitter.com/gemko/status/467224279982309376
Blake Williams        4.7	https://twitter.com/Astrostic/status/467224160545284096
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/16/cannes-14-the-captive-von-atom-egoyan/
Craig Skinner         3
Glenn Heath Jr        3         https://twitter.com/MatchCuts/status/467257765250220032
Richard Mowe          6         http://www.eyeforfilm.co.uk/review/the-captive-2014-film-review-by-richard-mowe
Robbie Collin         8         http://www.telegraph.co.uk/culture/film/filmreviews/10834352/The-Captive-review-queasily-unsettling.html
Nick James                      http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2014-girls-found-lost-girlhood-captives

"WINTER SLEEP (Kis Uykusu)" (Nuri Bilge CEYLAN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100012204/year/2014.html
Roger Alan Koza       8
Alexandra Zawia       8.5
Diego Batlle          8       http://www.otroscines.com/festivales_detalle.php?idnota=8575&idsubseccion=148
Diego Lerer           8
Fernando Ganzo        4
Eulàlia Iglesias     8
Ángel Quintana       9
José Luis Losa       9
Pedro Butcher         8.5
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        
Violeta Kovacsics     7
Luciano Monteagudo    8
Jaime Pena            6
Rüdiger Suchsland    
Carlos Heredero       9.5
Luciano Barisone      
Giona Nazzaro         5
Dana Linssen          8
Cristina Nord         8.5
Francisco Ferreira    7
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         9.5
Marcelo Alderete      
Michal Oleszczyk      7
Manu Yañez           
Carlos Reviriego      8.5
Fernando Juan Lima    7
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           9
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       
Xavi Serra            8
Guido Castillo        
Pamela Bienzobas      6.5
Javier Estrada        7.5
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale
Arnaud Hée           
Christoph Huber       
Frédéric Jaeger       7.5
Till Kadritzke        9
Daniel Kasman         4
Michael Kienzl        7.5       http://www.critic.de/film/winter-sleep-6704/
Nino Klinger          9
Dana Linssen          
Boris Nelepo          
#Cristina Nord        7.5 (#8.5)
Rüdiger Suchsland               http://www.negativ-film.de/2014/05/der-tag-des-winters-der-tag-der-engen-kammern-cannes-blog-5-folge
# ioncinema 0-5
Nicolas Bell          7
Christophe Beney      
David Calhoun         8         http://www.timeout.com/london/film/winter-sleep
Per Juul Carlsen      
Paola Casella         6
#Mike d'Angelo        
Manon Dumais          7
#Carlos Heredero      10  (#9.5)
Eric Kohn   	      9         http://www.indiewire.com/article/cannes-review-why-nuri-bilge-ceylans-winter-sleep-is-a-three-hour-plus-trip-worth-taking
Eric Lavallée         7
Fabien Lemercier      8
Guy Lodge             4
Liu Min               9
Isabelle Regnier      6
Cédric Succivalli     9
Blake Williams        6
# Screen Daily (0-4)
Robbie Collin         9
David Stratton        9
Derek Malcolm         9
Jan Schulz-Ojala      5
Jose Carlos Avellar   9
Stephanie Zacharek    5
Michel Ciment         9
Kate Muir/Wendy Ide   7.5
Bo Green Jensen       7.5
Screen International  9
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       9
Fabrice Leclerc       7.5
Eric Neuhoff          1
Stéphane Delorme      2.5
Thomas Sotinel        7.5
Philippe Rouyer       9
Pierre Vavasseur      
Pierre Murat          9
Jean Roy              7.5
Serge Kaganski        7.5
Pierre Fornerod       7.5
Pascal Merigeau       9
Danielle Attali       9
Christophe Carriére   2.5
# TF1.fr (0-5)
Aurelien Allin        4
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      4
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       10
Life Caroline         
# criticwire
Mike d'Angelo         5.5	https://twitter.com/gemko/status/467339736504606720
# Epic portrait of a prick, shot in an amazing location. Admirable, w/a magnificent lead perf, but sooo grueling.
Peter Labuza          7         http://thefilmstage.com/reviews/cannes-review-winter-sleep/
Nikola Grozdanović    9.7       http://waytooindie.com/review/movie/winter-sleep-cannes-review/
Jessica Kiang         3         http://blogs.indiewire.com/theplaylist/cannes-review-nuri-bilge-ceylans-winter-sleep-20140516
Debora Young (Hollywood Reporter)   http://www.hollywoodreporter.com/review/winter-sleep-kis-uykusu-cannes-704978
Xan Brooks            8         http://www.theguardian.com/film/2014/may/16/cannes-2014-winter-sleep-review-nuri-bilge-ceylan
#Eric Kohn             8         http://www.indiewire.com/article/cannes-review-why-nuri-bilge-ceylans-winter-sleep-is-a-three-hour-plus-trip-worth-taking
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/16/cannes-14-winter-sleep-kis-uykusu-von-nuri-bilge-ceylan/
Craig Skinner         7
Glenn Heath Jr        9         https://twitter.com/MatchCuts/status/467343190031622144
Richard Mowe          7         http://www.eyeforfilm.co.uk/review/winter-sleep-2014-film-review-by-richard-mowe
Donald Clarke         8         http://www.irishtimes.com/blogs/screenwriter/2014/05/17/cannes-review-of-winter-sleep/
Tom Christie                    http://blogs.indiewire.com/thompsononhollywood/cannes-review-could-nuri-bilge-ceylons-winter-sleep-grab-the-palme-dor-from-critics-baby-mr-turner
Mahnola Dargis                  http://www.nytimes.com/2014/05/19/movies/red-army-is-among-the-notables-at-festival.html

"SAINT LAURENT" (Bertrand BONELLO) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100009757/year/2014.html
Roger Alan Koza       7
Alexandra Zawia       6
Diego Batlle          6.5       https://twitter.com/dmbatlle/status/467652788311556096
Diego Lerer           7
Fernando Ganzo        
Eulàlia Iglesias     7
Ángel Quintana       8.5
José Luis Losa       9
Pedro Butcher         7.5
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        6
Violeta Kovacsics     7.5
Luciano Monteagudo    5
Jaime Pena            5.5
Rüdiger Suchsland    
Carlos Heredero       2.5
Luciano Barisone      
Giona Nazzaro         
Dana Linssen          
Cristina Nord         8.5
Francisco Ferreira    8
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         6.5
Marcelo Alderete      
Michal Oleszczyk      
Manu Yañez           
Carlos Reviriego      4
Fernando Juan Lima    7
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           7.5
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       6
Xavi Serra            
Guido Castillo        
Pamela Bienzobas      7
Javier Estrada        6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       6
Frédéric Jaeger       7.5
Till Kadritzke        
Daniel Kasman         5
Michael Kienzl        7.5       http://www.critic.de/film/saint-laurent-6703/
Nino Klinger          
Boris Nelepo          9
#Cristina Nord        9 (#8.5)
#Alexandra Zawia      6 (#6)
# ioncinema 0-5
Nicolas Bell          6
Christophe Beney      
David Calhoun         5
Per Juul Carlsen      2
Paola Casella         6
Mike d'Angelo         4.9       https://twitter.com/gemko/status/467605075788300288
Manon Dumais          6
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         6
Fabien Lemercier      8
Guy Lodge                       http://variety.com/2014/film/reviews/cannes-film-review-saint-laurent-1201184381/
Liu Min               4
Isabelle Regnier      8
Cédric Succivalli     10
Blake Williams        6.3       https://twitter.com/Astrostic/status/467593132788695040
# Screen Daily (0-4)
Robbie Collin         2.5       http://www.telegraph.co.uk/culture/film/cannes-film-festival/10838188/Saint-Laurent-review-thunderously-vapid.html
David Stratton        2.5
Derek Malcolm         5
Jan Schulz-Ojala      5
Jose Carlos Avellar   2.5
Stephanie Zacharek    5
Michel Ciment         7.5
Kate Muir/Wendy Ide   2.5
Bo Green Jensen       5
Screen International  5
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      7.5
Thomas Sotinel        7.5
Philippe Rouyer       7.5
Pierre Vavasseur      5
Pierre Murat          9
Jean Roy              2.5
Serge Kaganski        9
Pierre Fornerod       5
Pascal Merigeau       2.5
Danielle Attali       2.5
Christophe Carriére   7.5
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  6
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      8
Romaine Le Vern       
Mehdi Omais           4
Philippe Rouyer       8
Life Caroline         6
#
Mike d'Angelo         4.9	https://twitter.com/gemko/status/467605075788300288
Richard Mowe          6         http://www.eyeforfilm.co.uk/review/saint-laurent-2014-film-review-by-richard-mowe
John Frosch                     https://twitter.com/jonfrosch_f24/status/467597511696584704
Scott Foundas                   https://twitter.com/foundasonfilm/status/467597100000485376
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/17/cannes-14-saint-laurent-von-bertrand-bonello/
Glenn Heath Jr        6.5       https://twitter.com/MatchCuts/status/467633645873025024
Peter Bradshaw        4         http://www.theguardian.com/film/2014/may/17/saint-laurent-cannes-2014
Richard Mowe          6         http://www.eyeforfilm.co.uk/review/saint-laurent-2014-film-review-by-richard-mowe
Barbara Scharres                http://www.rogerebert.com/cannes/cannes-2014-day-four-saint-laurent-the-wonders-the-crossing
#Robbie Collin         4        http://www.telegraph.co.uk/culture/film/cannes-film-festival/10838188/Saint-Laurent-review-thunderously-vapid.html
Jordan Cronk                    http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2014-eyes-have-it-saint-laurent-bertrand
Nikola Grozdanović     2        http://blogs.indiewire.com/theplaylist/cannes-review-bertrand-bonellos-saint-laurent-starring-gaspard-ulliel-lea-seydoux-louis-garrel-more-20140517

"WILD TALES (RELATOS SALVAJES)" (Damian SZIFRON) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100003777/year/2014.html
Scott Foundas         
Roger Alan Koza       4.5
Alexandra Zawia       4.5
Robert Koehler        
Diego Batlle          8.5
Diego Lerer           7.5
Fernando Ganzo        4
Eulàlia Iglesias     6
Ángel Quintana       2.5
José Luis Losa       4.5
Pedro Butcher         4.5
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        
Violeta Kovacsics     5
Luciano Monteagudo    5
Jaime Pena            8
Rüdiger Suchsland    
Carlos Heredero       6
Luciano Barisone      
Giona Nazzaro         
Dana Linssen          
Cristina Nord         1
Francisco Ferreira    
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         
Marcelo Alderete      
Michal Oleszczyk      
Manu Yañez           
Carlos Reviriego      3
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           3
Fredy Friedlander     8
Pablo Scholz          
Alejandro Calvo       6
Xavi Serra            5
Guido Castillo        
Pamela Bienzobas      6
Javier Estrada        5.5
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       6
Till Kadritzke        6         http://www.critic.de/film/wild-tales-6714/
Daniel Kasman         
#Cristina Nord        2.5  (#1)
Rüdiger Suchsland               http://www.negativ-film.de/2014/05/der-tag-des-winters-der-tag-der-engen-kammern-cannes-blog-5-folge
#Rüdiger Suchsland               http://www.negativ-film.de/2014/05/cannes-ist-keine-geschmacksfrage-cannes-blog-3-folge
# ioncinema 0-5
Nicolas Bell          5
Christophe Beney      
David Calhoun         5
Per Juul Carlsen      5
Paola Casella         6
#Mike d'Angelo        7 (#6.2)
Manon Dumais          6
#Carlos Heredero      5
#Eric Kohn   	      10 (#9)
Eric Lavallée         
Fabien Lemercier      5
Guy Lodge             
Liu Min               6
Isabelle Regnier      4
Cédric Succivalli     7
Blake Williams        5.3       https://twitter.com/Astrostic/status/467381660791889920
# Screen Daily (0-4)
Robbie Collin         5
David Stratton        5
Derek Malcolm         5
Jan Schulz-Ojala      2.5
Jose Carlos Avellar   2.5
Stephanie Zacharek    7.5
Michel Ciment         7.5
Kate Muir/Wendy Ide   5
Bo Green Jensen       7.5
Screen International  7.5
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       5
Fabrice Leclerc       7.5
Eric Neuhoff          7.5
Stéphane Delorme      1
Thomas Sotinel        5
Philippe Rouyer       5
Pierre Vavasseur      5
Pierre Murat          1
Jean Roy              5
Serge Kaganski        5
Pierre Fornerod       5
Pascal Merigeau       2.5
Danielle Attali       7.5
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    6
Stéphanie Lamome      6
Romaine Le Vern       4
Mehdi Omais           6
Philippe Rouyer       2
Life Caroline         
#
Mike d'Angelo         6.2	https://twitter.com/gemko/status/467444715580035073
Jay Weissberg (Variety, US)     http://variety.com/2014/film/reviews/cannes-film-review-wild-tales-1201184260/
David Rooney                    http://www.hollywoodreporter.com/review/wild-tales-relatos-salvajes-cannes-705074
Fionnuala Halligan (Screen Daily) http://www.screendaily.com/reviews/the-latest/wild-tales/5071980.article?blocktitle=Other-latest-Reviews&contentID=592
Eric Kohn             9         http://www.indiewire.com/article/cannes-review-pedro-almodovar-produced-wild-tales-is-a-brilliant-social-satire
Thomas Sotinel                  http://www.lemonde.fr/festival-de-cannes/article/2014/05/17/relatos-salvajes-les-nouveaux-monstres-des-antipodes_4420397_766360.html?xtmc=szifron&xtcr=1
Michael Sennhauser              http://sennhausersfilmblog.ch/2014/05/16/cannes-14-relatos-salvajes-von-damian-szifron/
Peter Bradshaw        8         http://www.theguardian.com/film/2014/may/17/cannes-2014-wild-tales-review-argentinian-portmanteau-movie-is-a-box-of-delights
Donald Clarke         8         http://www.irishtimes.com/blogs/screenwriter/2014/05/17/cannes-review-of-wild-tales/

"THE HOMESMAN" (Tommy Lee JONES) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100011777/year/2014.html
Roger Alan Koza       6.5
Alexandra Zawia       5
Diego Batlle          8
Diego Lerer           9
Fernando Ganzo        5
Eulàlia Iglesias     5.5
Ángel Quintana       7.5
José Luis Losa       6.5
Pedro Butcher         8.5
Carlo Chatrian        8
Jaime Pena            4
Carlos Heredero       6.5
Giona Nazzaro         9
Cristina Nord         4.5
Francisco Ferreira    3.5
Ronald Rovers         3.5
Carlos Reviriego      6.5
Inma Merino           6
Fredy Friedlander     6
Alejandro Calvo       8
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       4
Frédéric Jaeger       6        http://www.critic.de/film/the-homesman-6708/
Till Kadritzke        6
Daniel Kasman         
Michael Kienzl        
Nino Klinger          6
#Dana Linssen         
#Cristina Nord        4
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          4
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         7
#Mike d'Angelo        
Manon Dumais          6
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      0
Cédric Succivalli     1.5
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         7.5
David Stratton        7.5
Derek Malcolm         5
Jan Schulz-Ojala      7.5
Jose Carlos Avellar   5
Stephanie Zacharek    5
Michel Ciment         7.5
Kate Muir/Wendy Ide   5
Bo Green Jensen       7.5
Screen International  7.5
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       7.5
Fabrice Leclerc       
Eric Neuhoff          9
Stéphane Delorme      1
Thomas Sotinel        1
Philippe Rouyer       7.5
Pierre Vavasseur      7.5
Pierre Murat          2.5
Jean Roy              5
Serge Kaganski        5
Pierre Fornerod       7.5
Pascal Merigeau       5
Danielle Attali       5
Christophe Carriére   5
# TF1.fr (0-5)
Aurelien Allin        8
Evangeline Barbaroux  6
Thomas Baurez         4
Stephanie Belpeche    
Stéphanie Lamome      6
Romaine Le Vern       
Mehdi Omais           8
Philippe Rouyer       8
Life Caroline         6
#
Mike d'Angelo         5.7       https://twitter.com/gemko/status/467950300775841792
Keith Uhlich          4         http://www.timeout.com/us/film/the-homesman
Glenn Heath Jr        8         https://twitter.com/MatchCuts/status/466942277106286592
Oliver Lyttleton      6         http://blogs.indiewire.com/theplaylist/cannes-review-tommy-lee-jones-awkwardly-interesting-the-homesman-co-starring-hilary-swank-and-meryl-streep-20140518
Eric Kohn             5         http://www.indiewire.com/article/cannes-review-is-tommy-lee-jones-the-homesman-the-strangest-movie-in-competition-at-cannes
Robbie Collin         8         http://www.telegraph.co.uk/culture/film/filmreviews/10839215/Cannes-2014-The-Homesman-review-Swank-and-Jones-are-sensational.html
Geoff Andrew                    http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2014-flat-out-west-tommy-lee-jones-s
Peter Bradshaw        8         http://www.theguardian.com/film/2014/may/18/the-homesman-cannes-review-tommy-lee-jones-hilary-swank

"LE MERAVIGLIE (The Wonders)" (Alice ROHRWACHER) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010668/year/2014.html
Scott Foundas         
Roger Alan Koza       7
Alexandra Zawia       6
Robert Koehler        
Diego Batlle          7.5
Diego Lerer           
Fernando Ganzo        5
Eulàlia Iglesias     7
Ángel Quintana       6
José Luis Losa       5
Pedro Butcher         7
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        7
Violeta Kovacsics     6
Luciano Monteagudo    6.5
Jaime Pena            6.5
Rüdiger Suchsland    
Carlos Heredero       6.5
Luciano Barisone      
Giona Nazzaro         7
Dana Linssen          7
Cristina Nord         
Francisco Ferreira    7.5
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         8
Marcelo Alderete      
Michal Oleszczyk      
Manu Yañez           
Carlos Reviriego      7
Fernando Juan Lima    6.5
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           7
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       7.5
Xavi Serra            
Guido Castillo        
Pamela Bienzobas      7
Javier Estrada        
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          7.5
#Dana Linssen         6  (#7)
Cristina Nord         7.5
Rüdiger Suchsland     
#Alexandra Zawia      6  (#6)
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         7
Per Juul Carlsen      5
Paola Casella         5
#Mike d'Angelo        
Manon Dumais          5
#Carlos Heredero      5
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      5
Guy Lodge             
Liu Min               6
Isabelle Regnier      6
Cédric Succivalli     9
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         9
David Stratton        2.5
Derek Malcolm         5
Jan Schulz-Ojala      7.5
Jose Carlos Avellar   7.5
Stephanie Zacharek    5
Michel Ciment         2.5
Kate Muir/Wendy Ide   7.5
Bo Green Jensen       7.5
Screen International  9
# Le film français 0-4
Stéphanie Lamome      2.5
Arnaud Schwartz       2.5
Fabrice Leclerc       
Eric Neuhoff          2.5
Stéphane Delorme      2.5
Thomas Sotinel        2.5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          2.5
Jean Roy              2.5
Serge Kaganski        5
Pierre Fornerod       
Pascal Merigeau       2.5
Danielle Attali       2.5
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        2
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      2
Romaine Le Vern       
Mehdi Omais           2
Philippe Rouyer       2
Life Caroline         2
#
Mike d'Angelo         6.2       https://twitter.com/gemko/status/467747296390959104
Eric Kohn                       http://www.indiewire.com/article/countdown-to-cannes-is-alice-rohrwachers-the-wonders-is-already-a-frontrunner-for-the-palme-dor
Deborah Young                   http://www.hollywoodreporter.com/review/wonders-le-meraviglie-cannes-review-705155
Donald Clarke         6         http://www.irishtimes.com/blogs/screenwriter/2014/05/17/cannes-review-of-the-wonders/
Jay Weissberg                   http://variety.com/2014/film/reviews/cannes-film-review-the-wonders-1201184521/
Barbara Scharres                http://www.rogerebert.com/cannes/cannes-2014-day-four-saint-laurent-the-wonders-the-crossing
Peter Bradshaw        6         http://www.theguardian.com/film/2014/may/17/cannes-2014-the-miracles-review
Marc van de Klashorst           http://icsfilm.org/news/257-la-meraviglie

"FOXCATCHER" (Bennett MILLER) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100006317/year/2014.html
Alexandra Zawia       7.5
Diego Batlle          8
Diego Lerer           8
Pedro Butcher         4
Violeta Kovacsics     7.5
Carlos Heredero       5.5
Giona Nazzaro         5
Carlos Reviriego      5
Alejandro Calvo       7
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            5
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        6
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      7.5 #7
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge                     http://www.hitfix.com/in-contention/review-tatum-ruffalo-and-carell-excel-in-evocative-unsettling-foxcatcher
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        8
Evangeline Barbaroux  2
Thomas Baurez         
Stephanie Belpeche    4
Stéphanie Lamome      8
Romaine Le Vern       4
Mehdi Omais           4
Philippe Rouyer       
Life Caroline         4
#
Eric Kohn             8       http://www.indiewire.com/article/cannes-review-channing-tatum-anchors-bennett-millers-icy-foxcatcher-but-the-revelation-is-steve-carrell
Jessica Kiang         9       http://blogs.indiewire.com/theplaylist/cannes-review-bennett-millers-foxcatcher-starring-steve-carell-channing-tatum-mark-ruffalo-vanessa-redgrave-20140518
Nigel M Smith                 http://www.indiewire.com/article/cannes-why-steve-carell-didnt-change-his-approach-for-foxcatcher-the-darkest-project-of-his-career
Justin Chang                  http://variety.com/2014/film/reviews/cannes-film-review-foxcatcher-1201185646/
Todd McCarthy                 http://www.hollywoodreporter.com/movie/foxcatcher/review/705537
Peter Labuza          7       http://thefilmstage.com/reviews/cannes-review-foxcatcher/
Anne Thompson                 http://blogs.indiewire.com/thompsononhollywood/cannes-review-foxcatcher-tells-riveting-murder-tale
Peter Bradshaw       10       https://twitter.com/PeterBradshaw1/status/468311837092876288
Mike d'Angelo         5.0     https://twitter.com/gemko/status/468324360521281536


"MAPS TO THE STARS" (David CRONENBERG) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100004169/year/2014.html
Roger Alan Koza       5.5
Alexandra Zawia       4.5
Diego Batlle          7
Diego Lerer           6
Eulàlia Iglesias     7
Ángel Quintana       6
José Luis Losa       7
Pedro Butcher         7.5
Violeta Kovacsics     8.5
Jaime Pena            6
Carlos Heredero       4.5
Giona Nazzaro         10
Dana Linssen          7.5
Francisco Ferreira    4
Carlos Reviriego      4.5
Inma Merino           5.5
Fredy Friedlander     7
Alejandro Calvo       10
Javier Estrada        5.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            7.5
Christoph Huber       
Frédéric Jaeger       6
Till Kadritzke        
Daniel Kasman         7.5
Michael Kienzl        
Nino Klinger          
Dana Linssen          
Boris Nelepo          7.5
Cristina Nord         
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         5
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         9     http://www.telegraph.co.uk/culture/film/filmreviews/10838381/Cannes-2014-Maps-to-the-Stars-review-a-nightmare-you-dont-want-to-wake-from.html
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  6
Thomas Baurez         8
Stephanie Belpeche    8
Stéphanie Lamome      8
Romaine Le Vern       10
Mehdi Omais           8
Philippe Rouyer       10
Life Caroline         8
#
Peter Bradshaw        8         http://www.theguardian.com/film/2014/may/18/maps-to-the-stars-cannes-review-julianne-moore-robert-pattinson
Oliver Lyttleton      7         http://blogs.indiewire.com/theplaylist/review-david-cronenbergs-maps-to-the-stars-with-robert-pattinson-mia-wasikowska-julianne-moore-john-cusack-20140518
Mike d'Angelo         3.5       https://twitter.com/gemko/status/468151676961292289
Todd McCarthy                   http://www.hollywoodreporter.com/review/maps-stars-cannes-review-705374
Eric Kohn             7         http://www.indiewire.com/article/cannes-review-maps-to-the-stars-is-david-cronenbergs-angriest-movie
Peter Debruge                   http://variety.com/2014/film/reviews/cannes-film-review-david-cronenbergs-maps-to-the-stars-1201185571/

"DEUX JOURS, UNE NUIT (TWO DAYS, ONE NIGHT)" (Jean-Pierre and Luc DARDENNE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100004439/year/2014.html
Dana Linssen          5.5
Ronald Rovers         7.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       6
Till Kadritzke        6
Daniel Kasman         
#Cristina Nord        2.5  (#1)
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"STILL THE WATER (FUTATSUME NO MADO)" (KAWASE Naomi) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100009507/year/2014.html

# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"THE SEARCH" (Michel HAZANAVICIUS) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010964/year/2014.html
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"ADIEU AU LANGAGE (GOODBYE TO LANGUAGE)" (Jean-Luc GODARD) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100011773/year/2014.html
Diego Lerer           7.5
Fernando Ganzo        9
Pamela Bienzobas      0
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"JIMMY’S HALL" (Ken LOACH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100007371/year/2014.html
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"MOMMY" (Xavier DOLAN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010779/year/2014.html
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"CLOUDS OF SILS MARIA" (Olivier ASSAYAS) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100009214/year/2014.html
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#

"LEVIATHAN" (Andrey ZVYAGINTSEV) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010863/year/2014.html
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Dana Linssen          
Boris Nelepo          
#Cristina Nord        
Rüdiger Suchsland     
#Alexandra Zawia      
# ioncinema 0-5
Nicolas Bell          
Christophe Beney      
David Calhoun         
Per Juul Carlsen      
Paola Casella         
#Mike d'Angelo        
Manon Dumais          
#Carlos Heredero      
#Eric Kohn   	      
Eric Lavallée         
Fabien Lemercier      
Guy Lodge             
Liu Min               
Isabelle Regnier      
Cédric Succivalli     
Blake Williams        
# Screen Daily (0-4)
Robbie Collin         
David Stratton        
Derek Malcolm         
Jan Schulz-Ojala      
Jose Carlos Avellar   
Stephanie Zacharek    
Michel Ciment         
Kate Muir/Wendy Ide   
Bo Green Jensen       
Screen International  
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
# TF1.fr (0-5)
Aurelien Allin        
Evangeline Barbaroux  
Thomas Baurez         
Stephanie Belpeche    
Stéphanie Lamome      
Romaine Le Vern       
Mehdi Omais           
Philippe Rouyer       
Life Caroline         
#


UN CERTAIN REGARD

"PARTY GIRL" (Marie AMACHOUKELI-BARSACQ, Claire BURGER, Samuel THEIS) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100001880/year/2014.html
Scott Foundas         
Roger Alan Koza       4.5
Alexandra Zawia       3
Robert Koehler        
Diego Batlle          7
Diego Lerer           6
Fernando Ganzo        
Eulàlia Iglesias     
Ángel Quintana       5.5
José Luis Losa       3
Pedro Butcher         5
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        
Violeta Kovacsics     4.5
Luciano Monteagudo    5.5
Jaime Pena            4.5
Rüdiger Suchsland    
Carlos Heredero       6
Luciano Barisone      
Giona Nazzaro         
Dana Linssen          5.5
Cristina Nord         
Francisco Ferreira    1
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         6
Marcelo Alderete      
Michal Oleszczyk      3
Manu Yañez           3
Carlos Reviriego      4
Fernando Juan Lima    6
Paolo Bertolin        
Nando Salva           
Philip Engel          3.5
Inma Merino           6
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       5.5
Xavi Serra            5
Guido Castillo        
Pamela Bienzobas      
Javier Estrada        
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       6
Till Kadritzke        
Daniel Kasman         
Rüdiger Suchsland     7.5
# Le film français 0-4
Stéphanie Lamome      7.5
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          5
Stéphane Delorme      2.5
Thomas Sotinel        
Philippe Rouyer       7.5
Pierre Vavasseur      9
Pierre Murat          5
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       5
Danielle Attali       
Christophe Carriére   5
# criticwire
Peter Bradshaw                 http://www.theguardian.com/film/2014/may/15/cannes-party-girl-review-un-certain-regard
Craig Skinner         3
Nikola Grozdanović           http://waytooindie.com/news/cannes-2014-party-girl/
Beatrice Behn                http://www.kino-zeit.de/blog/cannes/party-girl
Glenn Heath Jr        4.5    https://twitter.com/MatchCuts/status/466942277106286592
Nigel M Smith                  http://www.indiewire.com/article/family-therapy-at-cannes-why-party-girl-is-unlike-anything-playing-at-the-festival

"THAT LOVELY GIRL (HARCHECK MI HEADRO/LOIN DE MON PERE)" (Keren YEDAYA) [Un Certain Regard] 
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100008335/year/2014.html
Roger Alan Koza            2
Diego Batlle          4
Diego Lerer           3
Ángel Quintana       5
José Luis Losa       6.5
Jaime Pena            3.5
Carlos Heredero       6
Giona Nazzaro         1
Michal Oleszczyk      4
Fernando Juan Lima    2
Philip Engel          4
Inma Merino           5
Javier Estrada        4.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       1
Till Kadritzke        1
Daniel Kasman         1
Michael Kienzl        2.5
Nino Klinger          1
# Le film français 0-4
Stéphanie Lamome      1
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      1
Thomas Sotinel        
Philippe Rouyer       1
Pierre Vavasseur      
Pierre Murat          7.5
Jean Roy              
Serge Kaganski        1
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Guy Lodge                      https://twitter.com/GuyLodge/status/467065149237755904
Jason Gorber                   https://twitter.com/filmfest_ca/status/467059925605445632
Oliver Lyttleton      0        http://blogs.indiewire.com/theplaylist/cannes-review-keren-yedayas-israeli-incest-drama-that-lovely-girl-20140515
Mike d'Angelo         4.3	https://twitter.com/gemko/status/467076682512625664
Tim Robey             4       https://twitter.com/trim_obey/status/466942019282419712


"THE BLUE ROOM (La chambre bleue)" (Mathieu AMALRIC) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100005442/year/2014.html
Alexandra Zawia       6.5
Robert Koehler        
Diego Batlle          8        http://t.co/DEhUnw3MD1
Diego Lerer           8
Fernando Ganzo        7.5
Eulàlia Iglesias     8
Ángel Quintana       7
José Luis Losa       8.5
Pedro Butcher         6
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        8
Violeta Kovacsics     8
Luciano Monteagudo    8
Jaime Pena            7.5
Rüdiger Suchsland    
Carlos Heredero       7
Luciano Barisone      
Giona Nazzaro         8
Dana Linssen          7.5
Cristina Nord         6.5
Francisco Ferreira    7
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         6
Marcelo Alderete      
Michal Oleszczyk      
Manu Yañez           
Carlos Reviriego      6.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          
Inma Merino           6
Fredy Friedlander     7
Pablo Scholz          
Alejandro Calvo       8.5
Xavi Serra            6.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
# revised critic.de +++ 8.5, ++ 6.5?, + 6.5, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            7.5
Christoph Huber       9
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         6         http://www.mubi.com/notebook/posts/cannes-2014-atom-egoyans-the-captive-mathieu-amalrics-the-blue-room
Michael Kienzl        2.5
Boris Nelepo          6
#Cristina Nord        6 (#6.5 +)
#Alexandra Zawia      6 (#6.5 +)
Rüdiger Suchsland               http://www.negativ-film.de/2014/05/der-tag-des-winters-der-tag-der-engen-kammern-cannes-blog-5-folge
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       7.5
Fabrice Leclerc       9
Eric Neuhoff          2.5
Stéphane Delorme      7.5
Thomas Sotinel        7.5
Philippe Rouyer       7.5
Pierre Vavasseur      5
Pierre Murat          1
Jean Roy              5
Serge Kaganski        7.5
Pierre Fornerod       5
Pascal Merigeau       7.5
Danielle Attali       2.5
Christophe Carriére   
#
Glenn Heath Jr        5         https://twitter.com/MatchCuts/status/467258586784346112
Tom Christie                    http://blogs.indiewire.com/thompsononhollywood/mathieu-amalric-the-blue-room-cannes-review
Boyd van Hoeij        7         http://www.indiewire.com/article/cannes-review-how-the-blue-room-proves-that-mathieu-amalric-is-a-true-actor-director
Robbie Collin         8         http://www.telegraph.co.uk/culture/film/cannes-film-festival/10837928/The-Blue-Room-review-narrative-effervescence.html

"AMOUR FOU" (Jessica HAUSNER) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100008384/year/2014.html
Roger Alan Koza      7.5
Alexandra Zawia       6.5
Eulàlia Iglesias     7.5
Ángel Quintana       6
José Luis Losa       5.5
Jaime Pena            5
Carlos Heredero       5.5
Giona Nazzaro         6.5
Dana Linssen          6.5
Cristina Nord         8
Carlos Reviriego      7
Fernando Juan Lima    7
Inma Merino           6.5
Fredy Friedlander     5
Alejandro Calvo       7.5
Javier Estrada        6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale
Arnaud Hée           
Christoph Huber       2.5
Frédéric Jaeger       7.5
Till Kadritzke        5
Daniel Kasman         4
Michael Kienzl        
Nino Klinger          7.5       http://www.critic.de/film/amour-fou-6725/
Boris Nelepo          5
Rüdiger Suchsland               http://www.negativ-film.de/2014/05/der-tag-des-winters-der-tag-der-engen-kammern-cannes-blog-5-folge
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Beatrice Behn                   http://www.kino-zeit.de/blog/cannes/amour-fou
Mike d'Angelo         4.5       https://twitter.com/gemko/status/467746984057925632
Blake Williams        7.1       https://twitter.com/Astrostic/status/467422806540832770


"RUN" (Philippe LACOTE) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100000813/year/2014.html
José Luis Losa       1
Carlo Chatrian        6.5
Javier Estrada        4.5
Nino Klinger          6
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       2.5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"THE DISAPPEARANCE OF ELEANOR RIGBY: THEM" (Ned BENSON) [Un Certain Regard] The short version
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100000266/year/2014.html
Alexandra Zawia       2
Diego Batlle          4
Eulàlia Iglesias     5
Ángel Quintana       4
Violeta Kovacsics     5
Jaime Pena            6.5
Carlos Heredero       7
Giona Nazzaro         2
Carlos Reviriego      6
Fernando Juan Lima    4
Inma Merino           3.5
Alejandro Calvo       4
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        2.5
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
Boris Nelepo          
#Alexandra Zawia      1.5  (#2)
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          5
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          2.5
Jean Roy              
Serge Kaganski        
Pierre Fornerod       2.5
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Guy Lodge             6         https://twitter.com/GuyLodge/status/467713034207916032
Oliver Lyttleton      5         http://blogs.indiewire.com/theplaylist/cannes-review-the-disappearance-of-eleanor-rigby-them-starring-jessica-chastain-james-mcavoy-isabelle-huppert-20140517
Xan Brooks            6         http://www.theguardian.com/film/2014/may/17/cannes-2014-review-disappearance-eleanor-rigby
Richard Mowe          8         http://www.eyeforfilm.co.uk/review/eleanor-rigby-2013-film-review-by-richard-mowe

"WHITE GOD (Fehér Isten)" (Kornel Mundruczo) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100009237/year/2014.html
Roger Alan Koza       2
Ángel Quintana       4.5
Carlos Heredero       2
Giona Nazzaro         5
Ronald Rovers         6
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      5
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          7.5
Jean Roy              
Serge Kaganski        5
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
Guy Lodge                      http://variety.com/2014/film/reviews/cannes-film-review-white-god-1201184899/

"TURIST" (Ruben OSTLUND) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010409/year/2014.html

Alexandra Zawia       6
Diego Batlle          7
Jaime Pena            7.5
Dana Linssen          3.5
Javier Estrada        6.5

Blake Williams     6.0
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         6
Michael Kienzl        
Nino Klinger          
Dana Linssen          
#Cristina Nord         
Rüdiger Suchsland     
#Alexandra Zawia      6 #6
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       7.5
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          2.5
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Henry Barnes          8      http://www.theguardian.com/film/2014/may/18/cannes-2014-force-majuere-review

"HERMOSA JUVENTUD (Beautiful Youth)" (Jaime ROSALES) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100000218/year/2014.html
Roger Alan Koza       6
Diego Batlle          6.5
Diego Lerer           6.5
Eulàlia Iglesias     6
Ángel Quintana       6.5
José Luis Losa       6
Jaime Pena            6
Carlos Heredero       7
Carlos Reviriego      5.5
Inma Merino           6.5
Javier Estrada        6
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        6
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
#Boris Nelepo          
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              5
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"JAUJA" (Lisandro ALONSO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100001614/year/2014.html
Roger Alan Koza       10
Alexandra Zawia       10
Diego Batlle          9
Diego Lerer           10        http://t.co/bNxBECmTW3
Eulàlia Iglesias     8.5
Ángel Quintana       9
José Luis Losa       7
Pedro Butcher         7
Carlo Chatrian        9.5
Violeta Kovacsics     9.5
Luciano Monteagudo    9.5
Jaime Pena            10
Carlos Heredero       9.5
Giona Nazzaro         10
Dana Linssen          8
Francisco Ferreira    9
Carlos Reviriego      9.5
Inma Merino           8.5
Alejandro Calvo       9
Javier Estrada        9.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        9
Daniel Kasman         
Michael Kienzl        
Nino Klinger          
Boris Nelepo          6
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   
#
Jordan Cronk         9         https://twitter.com/JordanCronk/status/468081203351158784
Nikola Grozdanović   9.8       http://waytooindie.com/review/movie/jauja-cannes-review/

"A GIRL AT MY DOOR (DOHEE-YA)" (July JUNG aka JUNG Joo-Ri) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010477/year/2014.html
Roger Alan Koza       6
Carlos Heredero       6
Dana Linssen          5
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"XENIA" (Panos KOUTRAS) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100006042/year/2014.html
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"BIRD PEOPLE" (Pascale FERRAN) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100000816/year/2014.html
Dana Linssen          6
Arnaud Hée            5
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"TITLI" (Kanu BEHL) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100005440/year/2014.html
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"LOST RIVER" (Ryan GOSLING) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100012165/year/2014.html
# Le film français 0-4
Stéphanie Lamome      
Arnaud Schwartz       
Fabrice Leclerc       
Eric Neuhoff          
Stéphane Delorme      
Thomas Sotinel        
Philippe Rouyer       
Pierre Vavasseur      
Pierre Murat          
Jean Roy              
Serge Kaganski        
Pierre Fornerod       
Pascal Merigeau       
Danielle Attali       
Christophe Carriére   

"THE SALT OF THE EARTH" (Juliano Ribeiro SALGADO and Wim WENDERS) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100008611/year/2014.html

"FANTASIA" (Wang CHAO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100002470/year/2014.html

"SNOW IN PARADISE" (Andrew HULME) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010768/year/2014.html

"CHARLIE’S COUNTRY" (Rolf de HEER) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100010761/year/2014.html

"INCOMPRESA (The Misunderstood)" (Asia ARGENTO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100002304/year/2014.html

SPECIAL SCREENINGS

"GRACE OF MONACO" (Olivier DAHAN) [Out of Competition]
  http://www.festival-cannes.fr/en/
Scott Foundas         2
Roger Alan Koza       2
Alexandra Zawia       0
Robert Koehler        
Diego Batlle          4.5
Diego Lerer           4
Fernando Ganzo        0.5
Eulàlia Iglesias     2.5
Ángel Quintana       2
José Luis Losa       0
Pedro Butcher         3
Jose Luis De Lorenzo  
Alex Vicente          
Carlo Chatrian        4
Violeta Kovacsics     5
Luciano Monteagudo    3
Jaime Pena            0.5
Rüdiger Suchsland    
Carlos Heredero       0
Luciano Barisone      
Giona Nazzaro         1
Dana Linssen          2
Cristina Nord         1.5
Francisco Ferreira    1
Cecilia Martinez      
Paolo Moretti         
Neil Young            
Ronald Rovers         2
Marcelo Alderete      
Michal Oleszczyk      1.5
Manu Yañez           3
Carlos Reviriego      1
Fernando Juan Lima    2
Paolo Bertolin        
Nando Salva           
Philip Engel          2
Inma Merino           1
Fredy Friedlander     
Pablo Scholz          
Alejandro Calvo       0
Xavi Serra            1.5
Guido Castillo        
Pamela Bienzobas      
Javier Estrada        2.5
Boris Nelepo          
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5 (or 1.5), --- 1
Miriam Bale              
Arnaud Hée            1
Christoph Huber       2.5
Frédéric Jaeger       2.5     http://www.critic.de/film/grace-of-monaco-5745/
Till Kadritzke       
Daniel Kasman             
Michael Kienzl        4
Nino Klinger          5
#Dana Linssen          2.5 (#2)
# Le film français 0-4
Stéphanie Lamome      1
Arnaud Schwartz       2.5
Fabrice Leclerc       2.5
Eric Neuhoff          2.5
Stéphane Delorme      
Thomas Sotinel        1
Philippe Rouyer       2.5
Pierre Vavasseur      5
Pierre Murat          1
Jean Roy              2.5
Serge Kaganski        1
Pierre Fornerod       2.5
Pascal Merigeau       1
Danielle Attali       2.5
Christophe Carriére   5
# criticwire
Cédric Succivalli    5
Kevin Jagernauth        
Ryland Aldrich          
Craig Skinner        1
Alex Billington         
Patrick McGavin         
Mike d'Angelo        3.3    https://twitter.com/gemko/status/466516357241376768
Michael Sennhauser      
John Bleasdale          
Marc van de Klashorst   
Catherine Shoard     
Eric Kohn            5	    http://www.indiewire.com/article/cannes-review-nicole-kidman-is-a-solid-grace-kelly-in-grace-of-monaco-but-is-it-fact-or-fiction
Peter Bradshaw       2      http://www.theguardian.com/film/2014/may/14/grace-of-monaco-cannes-review-nicole-kidman
Jonathan Romney      2      http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2013-close-physical
Stephen Dalton       2      http://www.hollywoodreporter.com/review/grace-monaco-cannes-review-703460
Oliver Lyttleton     0      http://blogs.indiewire.com/theplaylist/cannes-review-olivier-dahans-grace-of-monaco-starring-nicole-kidman-tim-roth-20140514 
Robbie Collin        2      http://www.telegraph.co.uk/culture/film/filmreviews/10829756/Grace-of-Monaco-Cannes-2014-review.html
Nicholas Barber      2      http://www.bbc.com/culture/story/20140514-review-princess-grace-of-monaco
Richard Corliss      2      http://time.com/98922/review-grace-of-monaco-scandal/
Fionnuala Hannigan   2      http://www.screendaily.com/reviews/the-latest/grace-of-monaco/5071634.article
Scott Foundas        2	    http://variety.com/2014/film/reviews/cannes-film-review-grace-of-monaco-1201180574/
Guy Lodge            	    http://www.hitfix.com/in-contention/review-grace-of-monaco-opens-cannes-on-a-graceless-note
Peter Labuza         2      http://thefilmstage.com/reviews/cannes-review-grace-of-monaco/
Jamie Graham		    http://www.totalfilm.com/news/cannes-2014-grace-of-monaco-reaction-review-1  
David Jenkins		    http://www.littlewhitelies.co.uk/features/festivals/cannes-2014-grace-of-monaco-26700
Jordan Hoffman	     3	    http://www.vanityfair.com/vf-hollywood/grace-of-monaco-cannes?mbid=social_twitter
Rebecca Cope                http://www.harpersbazaar.co.uk/culture-news/going-out/cannes-film-festival-2014-mr-turner-review
A.A. Dowd            3      http://www.avclub.com/article/cannes-14-day-one-grace-monaco-opens-fest-whimper-204709
Blake Williams       1.5
Joachim Kurz                http://www.kino-zeit.de/blog/cannes/grace-of-monaco
Richard Mowe         4      http://www.eyeforfilm.co.uk/review/grace-of-monaco-2014-film-review-by-richard-mowe

"HOW TO TRAIN YOUR DRAGON 2" (Dean DEBLOIS) [Out Of Competition]
Michal Oleszczyk      8
Xavi Serra            6
Craig Skinner         7
Oliver Lyttleton      5
Robbie Collin         6     http://www.telegraph.co.uk/culture/film/filmreviews/10836129/How-to-Train-Your-Dragon-2-review-armrest-gripping-fun.html 

"SILVERED WATER, SYRIA SELF-PORTRAIT (EAU ARGENTEE)" (Mohammed OSSAMA) [Special Screening]
Carlo Chatrian        9.5
Luciano Monteagudo    8.5
Luciano Barisone      9
Giona Nazzaro         8
Francisco Ferreira    9
Inma Merino           8
Javier Estrada        7.5
Jean-Baptiste Morain             http://cannes2014.lesinrocks.com/2014/05/17/eau-argentee-syrie-autoportrait-beau-et-troublant-moment-du-festival/

"RED ARMY" (Gabe POLSKY) [Special Screening]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100011577/year/2014.html
Diego Batlle          7
Diego Lerer           6.5
José Luis Losa       6.5
Jaime Pena            5.5
Giona Nazzaro         6.5
#
Rüdiger Suchsland               http://www.negativ-film.de/2014/05/der-tag-des-winters-der-tag-der-engen-kammern-cannes-blog-5-folge
Donald Clarke         10        http://www.irishtimes.com/blogs/screenwriter/2014/05/17/cannes-review-of-red-army/
Mahnola Dargis                  http://www.nytimes.com/2014/05/19/movies/red-army-is-among-the-notables-at-festival.html

"THE SALVATION" (Kristian LEVRING) [Out Of Competition - Midnight]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100005263/year/2014.html
Eulàlia Iglesias     5.5
Ángel Quintana       4.5
Giona Nazzaro         6.5
Alejandro Calvo       7
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        
Nino Klinger          4
Boris Nelepo          
#
Beatrice Behn                  http://www.kino-zeit.de/blog/cannes/the-salvation
Jessica Kiang         4        http://blogs.indiewire.com/theplaylist/cannes-review-kristian-levrings-the-salvation-starring-mads-mikkelsen-eva-green-20140517
Mike d'Angelo         6.5      https://twitter.com/gemko/status/468154346707095552

"KHALIL GIBRAN’S THE PROPHET" (Roger ALLERS, Gaëtan BRIZZI, ...) [Special Screening]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100016282/year/2014.html

"THE OWNERS" (Adilkhan Yerzhanov) [Special Screening]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100002115/year/2014.html
Giona Nazzaro         8

"THE ROVER" (David MICHOD) [Out Of Competition - Midnight]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/100004744/year/2014.html
Diego Batlle         7       https://twitter.com/dmbatlle/status/467652788311556096
Diego Lerer           6
Ángel Quintana       5.5
José Luis Losa       5.5
Jaime Pena            6.5
Giona Nazzaro         6
Fernando Juan Lima    7
Alejandro Calvo       5
Eric Kohn             4       http://www.indiewire.com/article/cannes-review-robert-pattinson-and-guy-pearce-cant-quite-salvage-david-michods-the-rover
Peter Bradshaw                http://www.theguardian.com/film/2014/may/17/the-rover-review-cannes-robert-pattinson
Jessica Kiang         7       http://blogs.indiewire.com/theplaylist/cannes-review-david-michods-the-rover-20140517

"CARICATURISTES – FANTASSINS DE LA DEMOCRATIE" (Stephanie VALLOATTO) [Special Screening]

"EL ARDOR" (Pablo Fendrik) [Special Screening]
Diego Lerer           7.5
José Luis Losa       0.5
Till Kadritzke        7.5

"COMING HOME (GUI LAI)" (Zhang YIMOU) [Out Of Competition]

"LES GENS DU MONDE (People of the World)" (Yves JEULAND) [Out Of Competition]

"GERONIMO" (Tony Gatlif) [Special Screening]

"IN THE NAME OF MY DAUGHTER (L'HOMME QU'ON AIMAIT TROP)" (Andre Techine) [Out Of Competition]

"OF MEN AND WAR" (Laurent Bécue-Renard) [Special Screening]

"MAIDAN" (Sergei LOZNITSA) [Special Screening]

"THE BRIDGES OF SARAJEVO" (various directors) [Special Screening]

"THE TARGET (PYOJEOK)" (YOON Hong-seung aka Chang) [Out Of Competition - Midnight]
Paolo Bertolin   5


QUINZAINE

"BANDE DE FILLES (Girlhood)" (Céline SCIAMMA) [Quinzaine]
Eulàlia Iglesias     7.5
Ángel Quintana       7
José Luis Losa       5.5
Violeta Kovacsics     7
Jaime Pena            6
Carlos Heredero       6.5
Luciano Barisone      5.5
Dana Linssen          6.5
Cristina Nord         7.5
Francisco Ferreira    1.5
Ronald Rovers         7
Manu Yañez           7
Carlos Reviriego      6.5
Fernando Juan Lima    7
Philip Engel          7.5
Alejandro Calvo       7
Xavi Serra            6
Pamela Bienzobas      7
Javier Estrada        7
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
# revised critic.de +++ 9, ++ 6.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale              
Arnaud Hée               
Christoph Huber          
Frédéric Jaeger          
Till Kadritzke        7.5     http://www.critic.de/film/bande-de-filles-6683/
Daniel Kasman         2.5
#Dana Linssen          7.5  (#6.5)
#
Peter Debruge                 http://variety.com/2014/film/reviews/cannes-festival-review-girlhood-1201181925/
Marc van de Klashorst         http://icsfilm.org/news/251-bande-de-filles
Alex Billington               https://twitter.com/firstshowing/status/467039356532686849
Eric Kohn             8       https://twitter.com/erickohn/status/467039545964634112
Blake Williams        3
Eric Lavallée         4
Jessica Kiang         8
Glenn Heath Jr        2       https://twitter.com/MatchCuts/status/467071641135374336
Nick James                    http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2014-girls-found-lost-girlhood-captives
Adam Woodward                 http://www.littlewhitelies.co.uk/features/articles/cannes-2014-girlhood-catch-me-daddy-26752

"CATCH ME DADDY" (Daniel WOLFE) [Quinzaine]
Roger Alan Koza       4
Luciano Barisone      7
Javier Estrada        7
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            
Christoph Huber       
Frédéric Jaeger       2.5
Till Kadritzke        
Daniel Kasman         
# criticwire
Oliver Lyttleton      6     http://blogs.indiewire.com/theplaylist/cannes-review-daniel-wolfes-gorgeous-but-unsatisfying-thriller-social-realism-hybrid-catch-me-daddy-20140516
Richard Mowe          8     http://www.eyeforfilm.co.uk/review/catch-me-daddy-2014-film-review-by-richard-mowe
Robbie Collin         8     http://www.telegraph.co.uk/culture/film/cannes-film-festival/10834201/Catch-Me-Daddy-review-blistering.html
Adam Woodward               http://www.littlewhitelies.co.uk/features/articles/cannes-2014-girlhood-catch-me-daddy-26752


"GETT – LE PROCÈS DE VIVIANNE AMSALEM (Gett, The Trial Of Viviane Amsallem)" (Ronit et Shlomi ELKABETZ) [Quinzaine]
José Luis Losa       7
Luciano Barisone      7.5
Javier Estrada        7
Jay Weissberg                   http://variety.com/2014/film/reviews/cannes-film-review-gett-the-trial-of-viviane-amsalem-1201184801/

"NATIONAL GALLERY" (Frederick WISEMAN) [Quinzaine]
Alexandra Zawia       7
Diego Lerer           8
Pedro Butcher         8.5
Jaime Pena            6
Carlos Heredero       9
Luciano Barisone      7
Giona Nazzaro         8
Cristina Nord         9
Javier Estrada        8.5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale           
Arnaud Hée            9
Christoph Huber       7.5
Frédéric Jaeger       7.5
Till Kadritzke        
Daniel Kasman         7.5
Michael Kienzl        6     http://www.critic.de/film/national-gallery-6792/
Nino Klinger          
Dana Linssen          6
Boris Nelepo          
#Cristina Nord        9  (#9)
# 
Tim Robey                   https://twitter.com/trim_obey/status/467612160185864192
Keith Uhlich          10    http://www.timeout.com/us/film/national-gallery
Blake Williams        7.5   https://twitter.com/Astrostic/status/467724076228677632
Donato d'Elia (LoudVision, Italy)   http://www.loudvision.it/cinema-interviste-cannes-2014---270.html
Isabel Stevens              http://www.bfi.org.uk/news-opinion/sight-sound-magazine/comment/festivals/cannes-2014-behind-scenes-museum-frederick

"LES COMBATTANTS (Fighters)" (Thomas CAILLEY) [Quinzaine]
Luciano Barisone      7
Dana Linssen          5
Javier Estrada        6.5

"A HARD DAY" (KIM Seong-Hun) [Quinzaine]
Paolo Bertolin        7
Javier Estrada        5
#
Michael Kienzl        6
#
Jessica Kiang         9     http://blogs.indiewire.com/theplaylist/cannes-review-twisty-inventive-hilarious-korean-cop-thriller-a-hard-day-is-a-total-blast-20140518

"REFUGIADO" (Diego LERMAN) [Quinzaine]
Roger Alan Koza       7
Diego Batlle          8
Diego Lerer           8
Ángel Quintana       4
Luciano Monteagudo    7

"MANGE TES MORTS (Eat Your Bones)" (Jean-Charles HUE) [Quinzaine]
Carlo Chatrian        6

"COLD IN JULY" (Jim MICKLE) [Quinzaine]
  Sundance Midnight
Diego Lerer           7
Carlo Chatrian        8
Violeta Kovacsics     8
Giona Nazzaro         7.5
Alejandro Calvo       6.5
#
Arnaud Hée         4
Anne-Katrin Titze (Eye For Film, UK)   8   http://www.eyeforfilm.co.uk/review/cold-in-july-2014-film-review-by-anne-katrin-titze

"THESE FINAL HOURS" (Zach HILDITCH) [Quinzaine]
Giona Nazzaro         4.5

"QUEEN AND COUNTRY" (John BOORMAN) [Quinzaine]

"WHIPLASH" (Damien CHAZELLE) [Quinzaine]
  Sundance

"TU DORS NICOLE" (Stéphane LAFLEUR) [Quinzaine]

"LE CONTE DE LA PRINCESSE KAGUYA (The Story Of Princess Kaguya)" (Isao TAKAHATA) [Quinzaine]

"NEXT TO HER (AY LI LAYLA)" (Asaf KORMAN) [Quinzaine]

"ALLELUIA" (Fabrice du WELZ) [Quinzaine]

"PRIDE" (Matthew WARCHUS) [Quinzaine]

"P’TIT QUINQUIN" (Bruno DUMONT) [Special Screening]

SEMAINE

"FAIRE: L'AMOUR" (Djinn CARRÉNARD) [Semaine]
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale              
Arnaud Hée               
Christoph Huber          
Frédéric Jaeger          7.5
Till Kadritzke           
Daniel Kasman            

"DARKER THAN MIDNIGHT (Più Buio di Mezzanotte)" (Sebastiano RISO) [Semaine]
Eulàlia Iglesias     5
Ángel Quintana       4.5
José Luis Losa       5
Jaime Pena            3
Luciano Barisone      5.5
Giona Nazzaro         4
Javier Estrada        5
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale              
Arnaud Hée               
Christoph Huber          
Frédéric Jaeger          6
Till Kadritzke           4
Daniel Kasman             

"THE TRIBE (Plemya)" (Myroslav SLABOSHPYTSKIY) [Semaine]

"IT FOLLOWS" (David Robert MITCHELL) [Semaine]
Carlo Chatrian        7.5
Giona Nazzaro         7
Javier Estrada        6.5
#
Michael Kienzl        6
Glenn Heath Jr        7.5       https://twitter.com/MatchCuts/status/467634182446145536
Mike d'Angelo         7.4       https://twitter.com/gemko/status/467785498082443264
Blake Williams        5.9       https://twitter.com/Astrostic/status/467945918663507968
Jessica Kiang         6         http://blogs.indiewire.com/theplaylist/cannes-review-david-robert-mitchells-hotly-buzzed-horror-it-follows-20140518

"GENTE DE BIEN" (Franco LOLLI) [Semaine]
Roger Alan Koza       7
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
Miriam Bale              
Arnaud Hée               
Christoph Huber          
Frédéric Jaeger          6
Till Kadritzke           
Daniel Kasman            

"WHEN ANIMALS DREAM (Når Dyrene Drømmer)" (Jonas Alexander ARNBY) [Semaine]

"HOPE" (Boris LOJKINE) [Semaine]

"SELF MADE (Boreg)" (Shira GEFFEN) [Semaine]
Fredy Friedlander     4.5

"HIPPOCRATES" (Thomas LILTI) [Special Screening]

"BREATHE (Respire)" (Mélanie LAURENT) [Special Screening]
Jessica Kiang         7         http://blogs.indiewire.com/theplaylist/cannes-review-insightful-layered-teen-respire-directed-by-melanie-laurent-20140517

"THE KINDERGARTEN TEACHER (Haganenet / L’Institutrice)" (Nadav LAPID) [Special Screening]

"FLA" (Djinn Carrénard) [Opening Film]
Roger Alan Koza            3
Frédéric Jaeger       7.5      http://www.critic.de/film/faire-lamour-6772/

"WELCOME TO NEW YORK" (Abel Ferrara) [Laptop on the beach]
Blake Williams        6.6       https://twitter.com/Astrostic/status/467778997783629825
Eric Kohn             6         http://www.indiewire.com/article/review-with-sex-soul-searching-and-a-naked-gerard-depardieu-abel-ferraras-dsk-drama-welcome-to-new-york-is-totally-bonkers
Matt Mueller                    http://blogs.indiewire.com/thompsononhollywood/cannes-gerard-depardieu-and-abel-ferrara-unveil-welcome-to-new-york
Tim Robey             4         http://www.telegraph.co.uk/culture/film/filmreviews/10838940/Cannes-2014-Welcome-to-New-York-review-As-portraiture-it-flops.html
Rachel Donadio (New York Times, USA)  http://artsbeat.blogs.nytimes.com/2014/05/18/cannes-film-festival-strauss-kahn-film-under-fire/
Jon Frosch                      http://www.theatlantic.com/entertainment/archive/2014/05/the-dominique-strauss-kahn-movie-has-arrived-at-cannes/371120/

EOF

our @critics;
$critics[0] = "
Alejandro Calvo (Sensacine, España) 
Alex Vicente (Público, España) 
Alexandra Zawia (ray, Austria)
Ángel Quintana (Cahiers du cinema Espana, España)
Antoine Thirion (Cinema Scope, ex-Cahiers du cinéma, France)
Boris Nelepo (Seance.ru, Russia)
Carlo Chatrian (Festival de Locarno, Italy) 
Carlos Heredero (Caimán CDC, España) 
Carlos Reviriego (elcultural.es y de Caiman. Cuadernos de cine, España) 
Cecilia Martinez (A Sala Llena Online, Argentina) 
Cristina Nord (Die Tageszeitung, Deutschland) 
Dana Linssen (De Filmkrant, Netherlands) 
Diego Batlle (La Nación, OtrosCines, Argentina) 
Diego Lerer (Clarín, Micropsia, Argentina) 
Eugenio Renzi (Independencia, France) 
Eulàlia Iglesias (RockDeLux y Caimán CDC, España) 
Fernando Ganzo (Lumiere, España) 
Fernando Juan Lima (El Amante, Argentina) 
Francisco Ferreira (Expresso, Portugal) 
Jaime Pena (El Amante, España, Argentina) 
Jose Luis De Lorenzo (A Sala Llena, Argentina) 
José Luis Losa (Cineuropa, España)
Kieron Corless (Time Out London, UK)
Luciano Barisone (Duellanti/Panoramiche, Italy) 
Giona Nazzaro (Gender DocuFilm Festival, Italy)
Luciano Monteagudo (Página/12, Argentina) 
Marcelo Alderete (Festival de Mar del Plata, Argentina) 
Michal Oleszczyk (RogerEbert.com, Hammer to Nail, USA)
Nando Salva (El Periódico, España) 
Neil Young (Hollywood Reporter, Tribune, UK) 
Pablo O. Scholz (Clarín, Argentina)
Paolo Bertolin (Venice International Film Festival, Italy) 
Paolo Moretti (Italy) 
Pedro Butcher (Folha do Sao Paulo, Filme B, Brazil) 
Philip Engel (Go Mag, España) 
Robert Koehler (Variety, USA) 
Roger Alan Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Rüdiger Suchsland (Negativ-film, arteschock, Deutschland) 
Scott Foundas (Film Comment, USA) 
Violeta Kovacsics (Caimán Cuadernos de Cine, España) 
Javier Estrada (Caimán CDC, España) 
Pamela Bienzobas (Mabuse, Chile) 
Xavi Serra (Ara, España) 
Guido Castillo (Freelance, España)
Ronald Rovers (Cinema.nl, Netherlands)
Alvaro Arroba (Cinema Scope, España)
Inma Merino (España)
Fredy Friedlander (Leedor.com, Argentina) http://www.leedor.com/contenidos/cine/66o-festival-de-cannes
";
# ioncinema
$critics[1] = "
Nicolas Bell (Ioncinema.com, USA)
Christophe Beney (Accreds, France)
David Calhoun (Time Out London, UK)
Per Juul Carlsen (Danish National Radio, Denmark)
Paola Casella (Europa, Italy)
Mike d'Angelo (AV Club, USA)
Manon Dumais (Voir, Canada)
Eric Kohn (Indiewire, USA)
Eric Lavallée (Ioncinema.com, Canada)
Fabien Lemercier (Cineuropa.org, Belgium)
Guy Lodge (Variety, InContention, South Africa, USA)
Liu Min (Sina.com, China)
Isabelle Regnier (Le Monde, France)
Cédric Succivalli (International Cinephil Society, France)
Blake Williams (Ioncinema.com, Canada)
";
#Carlos Heredero (Caimán Cuadernos de Cine, España)
# Le film français 0-4
$critics[2] = "
Stéphanie Lamome (Premiere, France)
Arnaud Schwartz (la Croix, France)
Fabrice Leclerc (Studio ciné live, France)
Eric Neuhoff (Le Figaro, France)
Stéphane Delorme (Cahiers du cinema, France)
Thomas Sotinel (Le Monde, France)
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
# http://issuu.com/emap_/docs/screen_cannes_day_1_2013
$critics[3] = "
Nick James (Sight & Sound, UK) 
David Stratton (The Australian, Australia) 
Derek Malcolm (London Evening, UK) 
Jan Schulz-Ojala (Der Tagesspiegel, Deutschland) 
Jose Carlos Avellar (Escrevercinema.com, Brazil) 
Stephanie Zacharek (Village Voice, USA)
Dennis Lim (New York Times, USA)
Michel Ciment (Positif, France) 
Kate Muir/Wendy Ide (The Times, UK) 
Kate Muir (The Times, UK) 
Wendy Ide (The Times, UK) 
Bo Green Jensen (Weekandavisen Berlingske, Denmark) 
Screen International (Screen International, USA) 
";
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
$critics[4] = "
Miriam Bale (MUBI, USA)
Arnaud Hée (Critikat.com, France)
Christoph Huber (Die Presse, Austria)
Frédéric Jaeger (critic.de, Deutschland)
Till Kadritzke (critic.de, Deutschland)
Daniel Kasman (MUBI, USA)
Michael Kienzl (critic.de, Deutschland)
Nino Klinger (critic.de, Deutschland)
";
# TF1.fr
$critics[5] = "
Aurelien Allin (Cinemateaser, France)
Evangeline Barbaroux (LCI, France)
Thomas Baurez (Studio CineLive, France)
Stephanie Belpeche (JDD, France)
Stéphanie Lamome (First, France)
Romaine Le Vern (TF1 News, France)
Mehdi Omais (Metro, France)
Philippe Rouyer (Positif, France)
Life Caroline (20 minutes, Suisse)
";
# Life Caroline == Catherine Magnin?
# indiewire + various other
$critics[6] = "
Adam Cook (MUBI, USA)
A.A. Dowd (AV Club, Time Out Chicago, USA)
Aaron Hillis (GreenCine Daily, USA)
Adam Batty (Hope Lies at 24 Frames Per Second, UK)
Alex Billington (FirstShowing.net, USA)
Allan Hunter (Screen Daily, USA)
Allison Loring (Film School Rejects, USA)
Andrei Creţulescu (HBO, Romania) 
Andrew O'Hehir (Salon.com, USA) 
Anna Bielak (Smells Like Screen Spirit, USA)
Anna Tatarska (Fandor, KINO, USA)
Anne Thompson (Indiewire, USA)
Barbara Scharres (RogerEbert.com, USA)
Beatrice Behn (Kino-Zeit, Deutschland)
Boyd van Hoeij (The Hollywood Reporter, Winq/Mate, Filmkrant, Cineuropa, Ex-Variety, Luxembourg)
Brian Brooks (indieWIRE, USA) 
Caryn James (indieWIRE, ex-New York Times, USA)
Catherine Shoard (Guardian, UK)
Chris Knipp (Filmleaf, USA)
Clarence Tsui (South China Morning Post, Hong Kong)
Clementine Gallot (Cahiers du cinema, France)
Craig Skinner (Film Divider, UK)
Craig Williams (Cine Vue, UK)
David Edelstein (New York Magazine-Vulture, USA)
David Ehrlich (Movies.com, Box Office Magazine, Reverse Shot)
David Fear (Time Out New York, USA) 
David Gritten (The Telegraph, UK)
David Jenkins (Little White Lies blog, UK)
David Rooney (The Hollywood Reporter, USA)
David Sexton (Evening Standard, UK)
David Sterrit (Tikkun Magazine, USA)
Don Simpson (Smells Like Screen Spirit, USA)
Donald Clarke (Irish Times, Ireland)
Drew McWeeny (InContention, USA)
Drew Taylor (The Playlist, USA)
Eduardo Valente (Revista Cinema, Brazil) 
Elisabeth Quin (Paris Premiere, France) 
Emanuel Levy (EmanuelLevy.com, USA)
Eric D. Snider (Film.com, USA)
Ethan Anderton (FirstShowing.net, USA)
Eugene Hernandez (Film Society of Lincoln Center, USA) 
Fico Cangiano (CineXpress, Puerto Rico)
Fionnuala Hannigan (Screen Daily, USA)
Frédéric Jaeger (critic.de, Deutschland)
Geoffrey MacNab (The Independent, UK)
Glenn Heath Jr (Slant Magazine, Press Play, USA)
Ignatiy Vishnevetsky (Freelance, USA)
James Rocchi (MSN Movies, Indiewire's The Playlist, USA) 
Jason Gorber (Twitch, Canada)
Jessica Kiang (The Playlist, USA)
Jo Ann Titmarsh (FlickeringMyth.com, UK)
Joachim Kurz (Kino-Zeit, Deutschland)
Joe Bendel (Libertas Film Magazine, The Epoch Times, USA)
John Bleasdale (Cine Vue, UK)
Jon Frosch (France 24, France)
Jonathan Romney (Screen Daily, UK)
Jonathan Rosenbaum (Chicago Reader, USA) 
Jordan Cronk (Sight & Sound, UK)
Jordan Hoffman (Film.com, ScreenCrush.com, Badass Digest, USA)
Jordan Raup (The Film Stage, USA)
Josef Lederle (Filmdienst, Deutschland)
Justin Chang (Variety, USA)
Kaleen Aftab (The Independent, UK)
Karina Longworth (LA Weekly, USA) 
Kenneth Turan (Los Angeles Times, USA)
Keith Uhlich (Time Out New York, USA)
Kevin Jagernauth (Indiewire's The Playlist, USA) 
Kirk Honeycott (The Hollywood Reporter, USA)
Kristy Puchko (Freelance, USA)
Laremy Legel (Film.com, USA) 
Leda Galanou (Flix, France)
Lee Marshall (Screen Daily, USA)
Leslie Felperin (The Hollywood Reporter, USA)
Logan Hill (Vulture, New York Times, This American Life, WSJ, Rolling Stone, Wired, GQ, USA)
Manohla Dargis (New York Times, USA)
Marc van de Klashorst (IntlCinephileSociety, Netherlands)
Mark Adams (Screen Daily, USA)
Mathilde Cesbron (Le Figaro, France)
Matt Holmes (Obsessedwithfilm.com, USA) 
Maxime Pargaud (Le Figaro, France)
Michael Ghennam (Les Fiches du Cinéma, France)
Michael Giltz (The Huffington Post, USA)
Michael Sennhauser (SRF, Suisse)
Nev Pierce (Empire, USA)
Nicholas Barber (BBC, UK)
Nigel M Smith (Indiewire, USA)
Nikola Grozdanović (Way Too Indie, Canada)
Oliver Lyttleton (The Playlist, USA)
Patrick Heidmann (Cineman, Deutschland)
Patrick McGavin (Light Sensitive, Stop Smiling, The Nation, USA)
Paul Martin (Indies Movies Online, USA) 
Pete Hammond (Boxoffice Magazine, USA) 
Peter Bradshaw (Guardian, UK) 
Peter Debruge (Variety, USA) 
Peter Howell (The Toronto Star, USA) 
Peter Keogh (Boston Phoenix, USA)
Peter Knegt (indieWIRE, USA) 
Raffi Asdourian (The Film Stage, USA)
Rebecca Cope (Harper's Bazaar, USA)
Richard Corliss (Time, USA)
Richard Mowe (Eye For Film, UK)
Robbie Collin (The Telegraph, UK)
Robert Gassaway (The Flicksation Podcast, USA)
Rodrigo Perez (The Playlist, USA)
Ruta Buciunaite (theupcoming.co.uk, UK)
Ryland Aldrich (Twitch Film, USA)
Sebastian Doggart (Guardian, UK)
Shaun Munro (filmschoolrejects.com, USA)
Simon Abrams (The Playlist, USA)
Simon Gallagher (filmschoolrejects.com, UK) 
Simon Reynolds (Digital Spy, UK) 
Stephen Dalton (The Hollywood Reporter, USA)
Stephen Garrett (Time Out New York, USA)
Sukhdev Sandhu (The Telegraph, UK) 
Tim Grierson (Screen International, L.A. Weekly, USA) 
Tim Robey (The Telegraph, England)
Todd McCarthy (The Hollywood Reporter, USA) 
Xan Brooks (Guardian, UK)
Yair Raveh (Cinema Scope, Israel)
Peter Labuza (The Film Stage, USA)
Jamie Graham (Total Film, UK)
";
# former apichatpoll members
$critics[7] = "
Arthur Mas (Independencia, France) 
Camille Brunel (Independencia, France) 
Gabriele Barrera (Segnocinema, Duellanti, Blow Up, Best Movie, Italy) 
Gonzalo de Pedro (Caimán, CDC, España) 
Kong Rithdee (The Bangkok Post, Thailand) 
Manu Yañez (Fotogramas, OtrosCines, España) 
Martial Pisani (Independencia, France) 
Noémie Luciani (Independencia, France) 
Olivier Père (Les Inrockuptibles, France) 
Sergio Wolf (BAFICI, Argentina) 
Thomas Fioretti (Independencia, France) 
";

our $HEADER = <<"EOF";

<small>Collected and updated daily by Reini Urban from 7 critic polls.
The ApichatPoll http://www.todaslascriticas.com.ar/cannes (Diego Lerer+Javier Fish) (la crema),
http://www.ioncinema.com/ (okay),
Le film français (eclectic),
http://jury.critic.de/cannes/ (german),
Screen Daily (US/UK mainstream),
Indiewire (mixed), 
and more papers and individual critics.<br>

<br>
<b>Ratings</b>:<br>
0-10 points, only &gt;6.00 avg and &gt;3 international critics [avg/num stddev].<br>
Critics with stddev &gt;2.5: filtered out
<i>(Filtered to help with inaccuracies with low numbers).</i><br>
<b>Formatting</b>:<br>
stddev &gt;2: <i>controversial (italic)</i>.<br>
&lt;10 ratings: small.<br>
Competition: <b>bold</b><br>
 <br>
All sections updated daily. </small><p>

EOF

our $FOOTER = "
<pre>
--
Source & History:
https://github.com/rurban/cannes-rurban.rhcloud.com/blob/master/openshift/lib/Cannes/rurban/2014.pm

</pre>";

$HEADER =~ s{(https?)://(.+?) }{<a href="$1://$2">$2</a> }g;
$FOOTER =~ s{(https?)://(.+)\n}{<a href="$1://$2">$2</a>\n}g;
1;
