package Cannes::rurban::2013;

#!/usr/bin/perl -- -*- perl -*-
# Cannes 2013 Critics Ratings
# collected by Diego Lerer, ioncinema, indiewire and Reini Urban
# Recalc and sort ratings by all cannes critics from
# ??
# and 16 more western critics from http://www.ioncinema.com/ (scaled to 0-10)
# french: http://www.lefilmfrancais.com/cannes2013/quotidien/ (scale 0-4)
# http://jury.critic.de/cannes/
# http://www.screendaily.com/festivals/cannes/cannes-2013-screens-dailies/5056024.article (scale 0-4)
# us: http://www.indiewire.com/article/cannes-2012-a-guide-to-all-the-films
# http://www.indiewire.com/critic/
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
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1

use utf8;
our $DATA= <<'EOF';

"HELI" (Amat ESCALANTE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409854/year/2013.html
Roger Alan Koza      6
Diego Batlle         4.5
Diego Lerer          6
Alex Vicente         
José Luis de Lorenzo 1
Cecilia Martinez     4
Fernando Ganzo       
Eulàlia Iglesias     6
Ángel Quintana       6
José Luis Losa       7.5
Pedro Butcher        4
Kieron Corless       
Luciano Barisone     7
Carlo Chatrian       
Violeta Kovacsics    3
Luciano Monteagudo   4
Jaime Pena           4
Rüdiger Suchsland    7.5
Carlos Heredero      5.5
Robert Koehler       4
Dana Linssen         7
Cristina Nord        4.5
Francisco Ferreira   
Paolo Moretti        
Neil Young           4.5       http://www.jigsawlounge.co.uk/film/reviews/canas13/
Scott Foundas        
Marcelo Alderete     
Alexandra Zawia      5.5
Boris Nelepo         1
Carlos Reviriego     6.5
Fernando Juan Lima   5
Paolo Bertolin       
Nando Salva          4
Philipp Engel        7
Eugenio Renzi        
Michal Oleszczyk     7.5
Pablo O. Scholz      4.5
Alejandro G. Calvo   
Xavi Serra           5.5
Guido Castillo       5
Ronald Rovers        7.5
Javier H. Estrada    4.5
Rose Kuo             
Pamela Bienzobas     
Alvaro Arroba        
Kevin Jagernauth     5        http://blogs.indiewire.com/theplaylist/cannes-review-heli-a-beautifully-shot-but-despairing-look-at-corrupted-lives-20130515
Ryland Aldrich       6        http://www.indiewire.com/film/heli
Craig Skinner        7        http://www.indiewire.com/film/heli
Mike d'Angelo        4.4      http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Michael Sennhauser (SRF, Suisse) http://sennhausersfilmblog.ch/2013/05/16/cannes-13-heli-von-amat-escalante/
# Screen Daily (0-4)
Nick James           5
David Stratton       5
Derek Malcolm        5
Jan Schulz-Ojala     5
Jose Carlos Avellar  7.5
Dennis Lim           5
Michel Ciment        5
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      7.5
Screen International 7.5
Joachim Kurz 	      	     http://www.kino-zeit.de/blog/cannes/heli
Adam Cook            2.5     http://jury.critic.de/cannes/ 
Arnaud Hee           
Christoph Huber      2.5     http://jury.critic.de/cannes/ 
Frédéric Jaeger      4       http://jury.critic.de/cannes/
Till Kadritzke       5       http://www.critic.de/film/heli-5547/
Daniel Kasman        2.5     http://jury.critic.de/cannes/ 
Michael Kienzl       6       http://jury.critic.de/cannes/ 
Marc van de Klashorst 4      http://icsfilm.org/news/184-cannes-2013-review-heli
# ioncinema 0-5
Nicolas Bell         5
Christophe Beney     7
David Calhoun        8
Per Juul Carlsen     6
#Mike d'Angelo       5
Carlos F. Heredero   4
Aaron Hillis         
#Eric Kohn           6
Eric Lavallée        6        C+
Fabien Lemercier     6
Guy Lodge            5
Liu Min              4
Isabelle Regnier     7
Cédric Succivalli    
Blake Williams       5
#Neil Young          5

"JEUNE & JOLIE (YOUNG & BEAUTIFUL)" (François OZON) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409938/year/2013.html
Roger Koza            5.5
Diego Batlle          6
Diego Lerer           6
Alex Vicente          
Jose Luis De Lorenzo  7
Cecilia Martinez      8
Fernando Ganzo        3.5
Eulàlia Iglesias      7
Ángel Quintana        7
José Luis Losa        6
Pedro Butcher         6
Kieron Corless        
Luciano Barisone      6
Carlo Chatrian        
Violeta Kovacsics     4
Luciano Monteagudo    5.5
Jaime Pena            5
Rüdiger Suchsland     7
Carlos F. Heredero    5
Robert Koehler        5
Dana Linssen          
Cristina Nord         4
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       6.5
Boris Nelepo          3
Carlos Reviriego      6.5
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           7.5
Philip Engel          7.5
Eugenio Renzi         
Michal Oleszczyk      6.5
Pablo O. Scholz       6
Alejandro G. Calvo    5.5
Xavi Serra            6
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     4.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba        3.5
Mike d'Angelo        6.6 http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Eric Kohn            7   http://www.indiewire.com/article/cannes-sofia-coppolas-the-bling-ring-and-francois-ozons-young-and-beautiful-find-teens-living-dangerously
Kevin Jagernauth     3   http://blogs.indiewire.com/theplaylist/review-being-young-beautiful-isnt-easy-in-francois-ozons-latest-20130516
Michael Sennhauser (SRF, Suisse) http://sennhausersfilmblog.ch/2013/05/16/cannes-13-jeune-et-jolie-von-franois-ozon/
Jo Ann Titmarsh (FlickeringMyth.com, UK) 4.5 http://www.flickeringmyth.com/2013/05/66th-cannes-film-festival-review-jeune.html
# Screen Daily (0-4)
Nick James           7.5
David Stratton       2.5
Derek Malcolm        5
Jan Schulz-Ojala     5
Jose Carlos Avellar  2.5
Dennis Lim           2.5
Michel Ciment        1
Kate Muir/Wendy Ide  5
Bo Green Jensen      5
Screen International 5
Ryland Aldrich       6        http://www.indiewire.com/film/jeune-et-jolie
Craig Skinner        3        http://www.indiewire.com/film/jeune-et-jolie
Clementine Gallot    3        http://www.indiewire.com/film/jeune-et-jolie
Patrick Heidmann     6        http://www.indiewire.com/film/jeune-et-jolie
Joachim Kurz 	      	      http://www.kino-zeit.de/blog/cannes/jeune-jolie
Adam Cook            
Arnaud Hee           
Christoph Huber      
Frédéric Jaeger      6       http://www.critic.de/film/jeune-et-jolie-5534/
Till Kadritzke       7.5     http://jury.critic.de/cannes/ 
Daniel Kasman        
Michael Kienzl       5       http://jury.critic.de/cannes/ 
# ioncinema 0-5
Nicolas Bell         6
Christophe Beney     8
David Calhoun        6
Per Juul Carlsen     8
#Mike d'Angelo       7
Carlos F. Heredero   
Aaron Hillis         
#Eric Kohn            
Eric Lavallée        4
Fabien Lemercier     6
Guy Lodge            
Liu Min              
Isabelle Regnier     6
Cédric Succivalli    
Blake Williams       5
#Neil Young          

"TIAN ZHU DING (A TOUCH OF SIN)" (JIA Zhangke) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409320/year/2013.html
Roger Koza            9
Diego Batlle          7.5
Diego Lerer           8.5     http://micropsia.otroscines.com/2013/05/cannes-2013-a-touch-of-sin-de-jia-zhang-ke-competencia/
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        3
Eulàlia Iglesias      6.5
Ángel Quintana        8.5
José Luis Losa        7
Pedro Butcher         8.5
Kieron Corless        
Luciano Barisone      8
Carlo Chatrian        5
Violeta Kovacsics     7
Luciano Monteagudo    
Jaime Pena            9
Rüdiger Suchsland    
Carlos F. Heredero    7.5
Robert Koehler        
Dana Linssen          8
Cristina Nord         8
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      5
Alexandra Zawia       8.5
Boris Nelepo          6
Carlos Reviriego      
Fernando Juan Lima    10
Paolo Bertolin        
Nando Salva           6.5
Philip Engel          
Eugenio Renzi         
Michal Oleszczyk      8.5
Pablo O. Scholz       
Alejandro G. Calvo    4
Xavi Serra            7.5
Guido Castillo        8.5
Ronald Rovers         6.5
Javier H. Estrada     8.5
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         4
Mike d'Angelo        5.9      http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
Beatrice Behn        6        http://www.indiewire.com/film/a-touch-of-sin
Clementine Gallot    6        http://www.indiewire.com/film/a-touch-of-sin
Justin Chang                  http://variety.com/2013/film/reviews/cannes-film-review-a-touch-of-sin-1200482687/
Adam Cook            5       http://jury.critic.de/cannes/
Arnaud Hee           
Christoph Huber      9       http://jury.critic.de/cannes/
Frédéric Jaeger      7.5     http://jury.critic.de/cannes/
Till Kadritzke       
Daniel Kasman        7.5     http://jury.critic.de/cannes/
Michael Kienzl       7.5     http://www.critic.de/film/a-touch-of-sin-5598/
# Screen Daily (0-4)
Nick James           7.5
David Stratton       5
Derek Malcolm        7.5
Jan Schulz-Ojala     7.5
Jose Carlos Avellar  7.5
Dennis Lim           9
Michel Ciment        9
Kate Muir/Wendy Ide  7.5
Bo Green Jensen      5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     8
David Calhoun        7
Per Juul Carlsen     2
#Mike d'Angelo       6
Carlos F. Heredero   
Aaron Hillis         
#Eric Kohn            
Eric Lavallée        
Fabien Lemercier     5
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          

"LE PASSÉ (THE PAST)" (Asghar FARHADI) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11407556/year/2013.html
Mike d'Angelo         8.2     http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
Roger Koza            
Diego Batlle          6.5
Diego Lerer           6.5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     6.5
Ángel Quintana       4.5
José Luis Losa       5
Pedro Butcher         1
Kieron Corless        2
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     5.5
Luciano Monteagudo    6
Jaime Pena            4.5
Rüdiger Suchsland    8
Carlos F. Heredero    6
Robert Koehler        5
Dana Linssen          5
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      1.5
Alexandra Zawia       6
Boris Nelepo          
Carlos Reviriego      
Fernando Juan Lima    4.5
Paolo Bertolin        
Nando Salva           8
Philip Engel          
Eugenio Renzi         
Michal Oleszczyk      
Pablo O. Scholz       6.5
Alejandro G. Calvo    4.5
Xavi Serra            
Guido Castillo        7
Ronald Rovers         7.5
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         2.5
Eric Kohn             8       http://www.indiewire.com/article/cannes-how-asgar-farhadis-the-past-confirms-his-mastery-of-human-behavior
Lee Marshall                  http://www.screendaily.com/reviews/the-latest/the-past/5056283.article?blocktitle=Latest-Reviews&contentID=592
Kevin Jagernauth      6       http://blogs.indiewire.com/theplaylist/cannes-review-the-past-a-mostly-powerful-look-at-the-messiness-of-stasis-20130517
Ryland Aldrich        8       http://www.indiewire.com/film/the-past
Beatrice Behn         8       http://www.indiewire.com/film/the-past
Clementine Gallot     8       http://www.indiewire.com/film/the-past
Patrick Heidmann      5       http://www.indiewire.com/film/the-past
Raffi Asdourian       7       http://thefilmstage.com/reviews/cannes-review-the-past/
Joachim Kurz 	      	      http://www.kino-zeit.de/blog/cannes/le-passe
Justin Chang                  http://variety.com/2013/film/reviews/cannes-film-review-the-past-1200482880/
Adam Cook             5       http://jury.critic.de/cannes/
Arnaud Hee            5
Christoph Huber       
Frédéric Jaeger       9       http://jury.critic.de/cannes/
Till Kadritzke        6       
Daniel Kasman         5       
Michael Kienzl        7.5     http://www.critic.de/film/the-past-5535/
# Screen Daily (0-4)
Nick James           5
David Stratton       7.5
Derek Malcolm        7.5
Jan Schulz-Ojala     9
Jose Carlos Avellar  5
Dennis Lim           2.5
Michel Ciment        7.5
Kate Muir/Wendy Ide  9
Bo Green Jensen      7.5
Screen International 7.5
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     
David Calhoun        
Per Juul Carlsen     
#Mike d'Angelo       
Carlos F. Heredero   
Aaron Hillis         
#Eric Kohn            
Eric Lavallée        6    http://www.indiewire.com/film/the-past
Fabien Lemercier     
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          

"JIMMY P. (PSYCHOTHERAPY OF A PLAINS INDIAN)" (Arnaud DESPLECHIN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409900/year/2013.html
Mike d'Angelo        3.5      http://www.avclub.com/articles/cannes-2013-day-three,97927/
Roger Koza            7
Diego Batlle          7
Diego Lerer           7
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        4
Eulàlia Iglesias     8
Ángel Quintana       
José Luis Losa       8
Pedro Butcher         6.5
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     8
Luciano Monteagudo    6
Jaime Pena            
Rüdiger Suchsland    
Carlos F. Heredero    9
Robert Koehler        7
Dana Linssen          
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       
Boris Nelepo          6.5
Carlos Reviriego      
Fernando Juan Lima    
Paolo Bertolin        
Nando Salva           
Philip Engel          
Eugenio Renzi         
Michal Oleszczyk      
Pablo O. Scholz       6.5
Alejandro G. Calvo    5
Xavi Serra            
Guido Castillo        5
Ronald Rovers         1
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         4
Adam Cook            
Arnaud Hee           
Christoph Huber 
Frédéric Jaeger      7.5     http://jury.critic.de/cannes/
Till Kadritzke       7.5     http://jury.critic.de/cannes/
Daniel Kasman        5       http://jury.critic.de/cannes/
Michael Kienzl       
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     
David Calhoun        
Per Juul Carlsen     
#Mike d'Angelo       
Carlos F. Heredero   
Aaron Hillis         
#Eric Kohn            
Eric Lavallée        
Fabien Lemercier     
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          

"SOSHITE CHICHI NI NARU (Like Father, Like Son)" (KORE-EDA Hirokazu) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11406706/year/2013.html
Mike d'Angelo        4.2      http://www.avclub.com/articles/cannes-2013-day-three,97927/
Roger Koza            5.5
Diego Batlle          7
Diego Lerer           5
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        
Eulàlia Iglesias     4
Ángel Quintana       5
José Luis Losa       3.5
Pedro Butcher         8
Kieron Corless        4.5
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     8
Luciano Monteagudo    
Jaime Pena            5.5
Rüdiger Suchsland    
Carlos F. Heredero    6.5
Robert Koehler        
Dana Linssen          7.5
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       5
Boris Nelepo          4
Carlos Reviriego      
Fernando Juan Lima    
Paolo Bertolin        
Nando Salva           
Philip Engel          
Eugenio Renzi         
Michal Oleszczyk      
Pablo O. Scholz       
Alejandro G. Calvo    7.5
Xavi Serra            
Guido Castillo        8
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         
Adam Cook            5        http://jury.critic.de/cannes/
Arnaud Hee           
Christoph Huber      6        http://jury.critic.de/cannes/
Frédéric Jaeger      7.5      http://jury.critic.de/cannes/
Till Kadritzke       7.5      http://jury.critic.de/cannes/
Daniel Kasman        
Michael Kienzl       6       http://jury.critic.de/cannes/
# ioncinema 0-5
Nicolas Bell         
Christophe Beney     
David Calhoun        
Per Juul Carlsen     
#Mike d'Angelo       
Carlos F. Heredero   
Aaron Hillis         
#Eric Kohn            
Eric Lavallée        
Fabien Lemercier     
Guy Lodge            
Liu Min              
Isabelle Regnier     
Cédric Succivalli    
Blake Williams       
#Neil Young          

"BORGMAN" (Alex VAN WARMERDAM) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409861/year/2013.html

"INSIDE LLEWYN DAVIS" (Ethan COEN, Joel COEN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11405872/year/2013.html
Luciano Monteagudo    6.5
Pablo O. Scholz       7.5

"WARA NO TATE (Shield of Straw)" (Takashi MIIKE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11408059/year/2013.html

"UN CHÂTEAU EN ITALIE (A CASTLE IN ITALY)" (Valeria BRUNI TEDESCHI) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409902/year/2013.html

"BEHIND THE CANDELABRA" (Steven SODERBERGH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11407636/year/2013.html
Alejandro G. Calvo 0

"LA GRANDE BELLEZZA (THE GREAT BEAUTY)" (Paolo SORRENTINO) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409775/year/2013.html
Arnaud Hee            1      --- http://jury.critic.de/cannes/

"ONLY GOD FORGIVES" (Nicolas WINDING REFN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11408165/year/2013.html
Ronald Rovers         8

"GRIGRIS" (Mahamat-Saleh HAROUN) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409856/year/2013.html

"NEBRASKA" (Alexander PAYNE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409873/year/2013.html

"LA VIE D'ADÈLE - CHAPITRE 1 & 2 (BLUE IS THE WARMEST COLOUR)" (Abdellatif KECHICHE) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409897/year/2013.html

"THE IMMIGRANT" (James GRAY) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409863/year/2013.html

"MICHAEL KOHLHAAS" (Arnaud DES PALLIÈRES) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409909/year/2013.html

"LA VÉNUS À LA FOURRURE (VENUS IN FUR)" (Roman POLANSKI) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409865/year/2013.html

"ONLY LOVERS LEFT ALIVE" (Jim JARMUSCH) [Competition]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11411996/year/2013.html


UN CERTAIN REGARD

"THE BLING RING" (Sofia COPPOLA) [Un Certain Regard]
Mike d'Angelo        3.2   http://www.avclub.com/articles/cannes-2013-day-one-sofia-coppola-offers-the-first,97832/
Kevin Jagernauth     4     http://blogs.indiewire.com/theplaylist/cannes-review-sofia-coppola-the-bling-ring-a-mostly-empty-exercise-in-excess-20130516
Roger Koza           5.5           
Diego Batlle         7.5
Diego Lerer          7
Alex Vicente         
José Luis de Lorenzo 6
Cecilia Martinez     6
Fernando Ganzo       5
Eulàlia Iglesias     5.5
Ángel Quintana       5
José Luis Losa       6.5
Pedro Butcher        7
Kieron Corless       
Luciano Barisone     4
Carlo Chatrian       
Violeta Kovacsics    6
Luciano Monteagudo   7
Jaime Pena           6.5
Rüdiger Suchsland    8.5
Carlos Heredero      6
Robert Koehler       
Dana Linssen         5.5
Cristina Nord        5.5
Francisco Ferreira   
Paolo Moretti        
Neil Young           4                http://www.jigsawlounge.co.uk/film/reviews/canas13/
Scott Foundas        
Marcelo Alderete     6.5
Alexandra Zawia      3
Boris Nelepo         5.5
Carlos Reviriego     
Fernando Juan Lima   
Paolo Bertolin       
Nando Salva          6.5
Philipp Engel        7.5
Eugenio Renzi        
Michal Oleszczyk     2
Pablo O. Scholz      5.5
Alejandro G. Calvo   7
Xavi Serra           5
Guido Castillo       8
Ronald Rovers        7.5
Javier H. Estrada    6.5
Rose Kuo             
Pamela Bienzobas     
Alvaro Arroba        1.5
Eric Kohn            6   http://www.indiewire.com/article/cannes-sofia-coppolas-the-bling-ring-and-francois-ozons-young-and-beautiful-find-teens-living-dangerously
Peter Bradshaw       6   http://www.guardian.co.uk/film/2013/may/16/bling-ring-cannes-2013-review
Guy Lodge            7   http://www.hitfix.com/in-contention/review-sofia-coppola-flips-the-celebrity-mirror-in-taut-smart-the-bling-ring
Mark Adams (Screen Daily, USA)               http://www.screendaily.com/reviews/the-latest/the-bling-ring/5056168.article
David Jenkins (Little White Lies blog, UK)   http://www.littlewhitelies.co.uk/features/festivals/cannes-2013-the-bling-ring-review-23895
Kaleem Aftab (The Independent, UK)   8	     http://www.independent.co.uk/arts-entertainment/films/reviews/the-bling-ring-review-emma-watson-leaves-hermoine-behind-in-sofia-coppolas-new-film-8618418.html
Cath Clarke (Time Out London, UK) 8 http://www.timeout.com/london/film/the-bling-ring
Robbie Collin (The Telegraph, UK) 8 http://www.telegraph.co.uk/culture/film/cannes-film-festival/10061235/Cannes-2013-The-Bling-Ring-review.html
Scott Foundas           http://variety.com/2013/film/reviews/cannes-film-review-the-bling-ring-1200482052/
Graham Fuller (Vanity Fair) http://www.vanityfair.com/hollywood/2013/06/movie-review-sofia-coppola-bling-ring
Todd McCarthy http://www.hollywoodreporter.com/movie/bling-ring/review/523429
Matt Mueller (Thompson on Hollywood, US) http://blogs.indiewire.com/thompsononhollywood/cannes-review-coppolas-the-bling-ring
Michael Sennhauser (SRF, Suisse) http://sennhausersfilmblog.ch/2013/05/16/cannes-13-the-bling-ring-von-sofia-coppola/
# Criticwire
Beatrice Behn         3 	http://www.indiewire.com/film/the-bling-ring
Craig Skinner         1.5 	http://www.indiewire.com/film/the-bling-ring
Ryland Aldrich        5 	http://www.indiewire.com/film/the-bling-ring
David Sterrit         7 	http://www.indiewire.com/film/the-bling-ring
Adam Cook             6          http://mubi.com/notebook/posts/cannes-2013-dialogues-sofia-coppolas-the-bling-ring
Arnaud Hee            
Christoph Huber       5       http://jury.critic.de/cannes/
Frédéric Jaeger       5       http://jury.critic.de/cannes/
Till Kadritzke        6       http://www.critic.de/film/the-bling-ring-5396/
Daniel Kasman         2.5     http://mubi.com/notebook/posts/cannes-2013-dialogues-sofia-coppolas-the-bling-ring
Michael Kienzl        5       http://jury.critic.de/cannes/

"FRUITVALE STATION" (Ryan COOGLER) [Un Certain Regard]
  Sundance - Main Prices
Eric Kohn (Indiewire, USA) 8.3 http://www.indiewire.com/article/sundance-review-ryan-cooglers-fruitvale-renders-a-tragic-police-shooting-in-personal-terms
Todd McCarthy (The Hollywood Reporter, USA) 8 http://www.metacritic.com/movie/fruitvale-station/critic-reviews
Geoff Berkshire (Variety, USA) 5 http://www.metacritic.com/movie/fruitvale-station/critic-reviews
Roger Alan Koza      
Diego Batlle         6
Diego Lerer          5.5
Alex Vicente         
José Luis de Lorenzo 9
Cecilia Martinez     7
Fernando Ganzo       
Eulàlia Iglesias     4
Ángel Quintana       4.5
José Luis Losa       1
Pedro Butcher        2
Kieron Corless       
Luciano Barisone     5
Carlo Chatrian       
Violeta Kovacsics    
Luciano Monteagudo   
Jaime Pena           4
Rüdiger Suchsland    
Carlos Heredero      3
Robert Koehler       3
Dana Linssen         
Cristina Nord        
Francisco Ferreira   
Paolo Moretti        
Neil Young           5     https://twitter.com/JigsawLounge/status/335142409858072576
Scott Foundas        
Marcelo Alderete     
Alexandra Zawia      1.5
Boris Nelepo         
Carlos Reviriego     1
Fernando Juan Lima   4
Paolo Bertolin       
Nando Salva          1
Philipp Engel        2.5
Eugenio Renzi        
Michal Oleszczyk     
Pablo O. Scholz      6
Alejandro G. Calvo   4
Xavi Serra           4
Guido Castillo       6
Ronald Rovers        
Javier H. Estrada    3.5
Rose Kuo             
Pamela Bienzobas     
Alvaro Arroba        
Mike d'Angelo        w/o      https://twitter.com/gemko/status/335147871613640704
Jo Ann Titmarsh (FlickeringMyth.com, UK) 8 http://www.flickeringmyth.com/2013/05/66th-cannes-film-festival-review.html
Jessica Kiang        6        http://blogs.indiewire.com/theplaylist/cannes-review-fruitvale-station-recounts-a-tragic-true-life-story-with-good-performances-and-good-intentions-but-little-subtlety-20130517
Adam Cook                     
Arnaud Hee            
Christoph Huber       
Frédéric Jaeger      2.5     http://jury.critic.de/cannes/
Till Kadritzke       4       http://jury.critic.de/cannes/ 
Daniel Kasman         
Michael Kienzl       4       http://jury.critic.de/cannes/ 

"L'INCONNU DU LAC (Stranger by the Lake)" (Alain GUIRAUDIE) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409923/year/2013.html
Mike d'Angelo        5       http://www.avclub.com/articles/cannes-2013-day-two-iranian-director-asghar-farhad,97892/
Roger Koza            10
Diego Batlle          7.5
Diego Lerer           6
Alex Vicente          
Jose Luis De Lorenzo  
Cecilia Martinez      
Fernando Ganzo        8
Eulàlia Iglesias     7.5
Ángel Quintana       8
José Luis Losa       
Pedro Butcher         8.5
Kieron Corless        
Luciano Barisone      
Carlo Chatrian        
Violeta Kovacsics     8
Luciano Monteagudo    9.5
Jaime Pena            7.5
Rüdiger Suchsland    
Carlos F. Heredero    6.5
Robert Koehler        10
Dana Linssen          7
Cristina Nord         
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       
Boris Nelepo          7.5
Carlos Reviriego      
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           
Philip Engel          
Eugenio Renzi         
Michal Oleszczyk      
Pablo O. Scholz       
Alejandro G. Calvo    7.5
Xavi Serra            
Guido Castillo        
Ronald Rovers         
Javier H. Estrada     
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         7.5
Clementine Gallot    8       http://www.indiewire.com/film/linconnu-du-lac
Adam Cook            6       http://jury.critic.de/cannes/
Arnaud Hee 
Christoph Huber 
Frédéric Jaeger      7.5     http://www.critic.de/film/linconnu-du-lac-5580/
Till Kadritzke 
Daniel Kasman 
Michael Kienzl 

"MIELE" (Valeria GOLINO) [Un Certain Regard]
  (Italy premiered already Mai 1st)
Lee Marshall (Screen Daily, USA)  http://www.screendaily.com/reviews/the-latest/miele/5054710.article?blocktitle=UN-CERTAIN-REGARD&contentID=40442
Kevin Jagernauth     6        http://blogs.indiewire.com/theplaylist/cannes-review-death-lingers-lifts-in-thoughtful-miele-20130517
Carlos F. Heredero   6
Robert Koehler        2.5
Fernando Juan Lima   3.5
Adam Cook            2.5     http://jury.critic.de/cannes/
Arnaud Hee           
Christoph Huber      
Frédéric Jaeger      
Till Kadritzke       
Daniel Kasman        
Michael Kienzl       

"GRAND CENTRAL" (Rebecca ZLOTOWSKI) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409904/year/2013.html
Mike d'Angelo         https://twitter.com/gemko/status/335789145567948802
Diego Batlle          7
Fernando Ganzo        0.5
Eulàlia Iglesias     7.5
Luciano Monteagudo    5.5
Robert Koehler        2
Alexandra Zawia       4
Pablo O. Scholz       5.5
Guido Castillo        6
Ronald Rovers         3.5
Frédéric Jaeger      9     http://jury.critic.de/cannes/
Lee Marshall               http://www.screendaily.com/reviews/the-latest/grand-central/5056361.article?blocktitle=Cannes-Reviews&contentID=1842

"BENDS" (Flora LAU) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11404616/year/2013.html
Diego Lerer           6
Robert Koehler        7

"L'IMAGE MANQUANTE (The missing picture)" (Rithy PANH) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409770/year/2013.html

"DEATH MARCH" (Adolfo ALIX JR.) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409819/year/2013.html

"OMAR" (Hany ABU-ASSAD) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409601/year/2013.html

"AS I LAY DYING" (James FRANCO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11406263/year/2013.html

"SARAH PRÉFÈRE LA COURSE (SARAH PREFERS TO RUN)" (Chloé ROBICHAUD) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409764/year/2013.html

"LES SALAUDS (BASTARDS)" (Claire DENIS) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409929/year/2013.html

"WAKOLDA" (Lucía PUENZO) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11412006/year/2013.html

"LA JAULA DE ORO" (Diego QUEMADA-DIEZ) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409875/year/2013.html

"MY SWEET PEPPER LAND" (Hiner SALEEM) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11416039/year/2013.html

"NORTE, HANGGANAN NG KASAYSAYAN (NORTE, THE END OF HISTORY)" (Lav DIAZ) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409844/year/2013.html

"TORE TANZT (NOTHING BAD CAN HAPPEN)" (Katrin GEBBE) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11411998/year/2013.html

"DAST-NEVESHTEHAA NEMISOOSAND (Manuscripts Don’t Burn)" (Mohammad RASOULOF) [Un Certain Regard]
  http://www.festival-cannes.fr/en/archives/ficheFilm/id/11409842/year/2013.html

OUT OF COMPETITION

"ALL IS LOST" (J.C CHANDOR) [Out of Competition]

"BLOOD TIES" (Guillaume CANET) [Out of Competition]

"LE DERNIER DES INJUSTES (THE LAST OF THE UNJUST)" (Claude LANZMANN) [Out of Competition]

"THE GREAT GATSBY" (Baz LUHRMANN) [Out of Competition]
  (US premiered already May 7)
Stephanie Zacharek (Village Voice, USA) 7 http://www.villagevoice.com/2013-05-08/film/gatsby-s-sometimes-great-but-not-always-good/full/
Todd McCarthy (The Hollywood Reporter, USA) 7 http://www.hollywoodreporter.com/movie/great-gatsby/review/451988
Richard Corliss (Time, USA) 7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
David Edelstein (New York Magazine-Vulture, USA) 7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
A.O.Scott (New York Times, USA) 7 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Scott Foundas (Variety, USA) 6 http://variety.com/2013/film/reviews/the-great-gatsby-review-1200447930/#!1/review-tobey-maguire/
Claudia Puig (USA Today, USA) 5 http://www.usatoday.com/story/life/movies/2013/05/08/great-gatsby-review/2107037/
Eric Kohn (Indiewire, USA) 4.2 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Andrew O'Hehir (Salon.com, USA) 4 http://www.metacritic.com/movie/the-great-gatsby/critic-reviews
Keith Uhlich (Time Out New York, USA) 4 http://www.timeout.com/us/film/the-great-gatsby-movie-review
Roger Koza            3.5
Diego Batlle          6
Diego Lerer           6.5
Alex Vicente          
Jose Luis De Lorenzo  2
Cecilia Martinez      5
Fernando Ganzo        0
Eulàlia Iglesias      6
Ángel Quintana        5
José Luis Losa        1
Pedro Butcher         
Kieron Corless        
Luciano Barisone      1
Carlo Chatrian        2
Violeta Kovacsics     5
Luciano Monteagudo    5
Jaime Pena            5.5
Rüdiger Suchsland     6.5       http://www.negativ-film.de/2013/05/die-letzte-party-cannes-blog-2-folge
Carlos F. Heredero    3
Robert Koehler        2
Dana Linssen          6
Cristina Nord         3
Francisco Ferreira    
Paolo Moretti         
Neil Young            
Scott Foundas         
Marcelo Alderete      
Alexandra Zawia       2
Boris Nelepo          6.5
Carlos Reviriego      3
Fernando Juan Lima    8
Paolo Bertolin        
Nando Salva           7
Philip Engel          4
Eugenio Renzi         
Michal Oleszczyk      
Pablo O. Scholz       5
Alejandro G. Calvo    6.5
Xavi Serra            4
Guido Castillo        7
Ronald Rovers         6
Javier H. Estrada     3
Rose Kuo              
Pamela Bienzobas      
Alvaro Arroba         1.5
Michael Sennhauser (SRF, Suisse) http://sennhausersfilmblog.ch/2013/05/15/cannes-13-the-great-gatsby-von-baz-luhrman/
# Le film français 0-4
Stéphanie Lamome      5
Arnaud Schwartz       5
Fabrice Leclerc       7.5
Eric Neuhoff          1
Stéphane Delorme      2.5   
Thomas Sotinel        2.5
Philippe Rouyer       2.5
Pierre Vavasseur      
Pierre Murat          
Jean Roy              5
Serge Kaganski        1
Pierre Fornerod       5
Pascal Merigeau       
Danielle Attali       5
Christophe Carriére   2.5
Craig Williams (Cine Vue) 2 	http://www.indiewire.com/film/the-great-gatsby
Fico Cangiano (CineXpress) 4
Adam Batty            3 	http://www.indiewire.com/film/the-great-gatsby
Robert Gassaway       2 	http://www.indiewire.com/film/the-great-gatsby
Yair Raveh            7 	http://www.indiewire.com/film/the-great-gatsby
Patrick Heidmann      4 	http://www.indiewire.com/film/the-great-gatsby
Adam Cook             
Arnaud Hee           
Christoph Huber       2.5     http://jury.critic.de/cannes/
Frédéric Jaeger       6       http://jury.critic.de/cannes/
Till Kadritzke        6       http://www.critic.de/film/the-great-gatsby-4168/
Daniel Kasman                 
Michael Kienzl        4       http://jury.critic.de/cannes/

"ZULU" (Jérôme SALLE) [Out of Competition]

MIDNIGHT PROJECTIONS

"MONSOON SHOOTOUT" (Amit KUMAR) [Out of Competition]

"BLIND DETECTIVE" (Johnnie TO) [Out of Competition]

SPECIAL SCREENINGS

"STOP THE POUNDING HEART" (Roberto MINERVINI) [Special Screening]

"OTDAT KONCI (BITE THE DUST)" (Taisia IGUMENTSEVA) [Special Screening]
José Luis Losa       6.5
Pablo O. Scholz       4

"BOMBAY TALKIES" (Zoya AKHTAR, Dibakar BANERJEE, Karan JOHAR, Anurag KASHYAP) [Special Screening]

"SEDUCED AND ABANDONED" (James TOBACK) [Special Screening]

"MUHAMMAD ALI'S GREATEST FIGHT" (Stephen FREARS) [Special Screening]

"WEEKEND OF A CHAMPION" (Frank SIMON) [Special Screening]

"MAX ROSE" (Daniel NOAH) [Special Screening]


SEMAINE DE LA CRITIC

"AIN'T THEM BODIES SAINTS" (David Lowery) [Semaine]
  (Sundance)
Sebastian Doggart (Guardian, UK) 10 http://www.guardian.co.uk/film/2013/jan/25/aint-them-bodies-saints-review
Jordan Hoffman (Film.com, USA) 8.3 http://www.metacritic.com/movie/aint-them-bodies-saints/critic-reviews
Peter Debruge (Variety, USA) 8 http://variety.com/2013/film/reviews/ain-t-them-bodies-saints-1117949039/
Todd McCarthy (The Hollywood Reporter, USA) 7 http://www.metacritic.com/movie/aint-them-bodies-saints/critic-reviews
Ethan Anderton        8       http://www.indiewire.com/film/aint-them-bodies-saints
Don Simpson           9       http://www.indiewire.com/film/aint-them-bodies-saints
Allison Loring        9       http://www.indiewire.com/film/aint-them-bodies-saints
A.A. Dowd             4       http://www.indiewire.com/film/aint-them-bodies-saints
Jordan Raup           8       http://www.indiewire.com/film/aint-them-bodies-saints
Kyle Smith (New York Post, USA) 1.5     http://www.indiewire.com/film/aint-them-bodies-saints
Sam Adams (Los Angeles Times, Philadelphia Inquirer, A.V. Club) 8 http://www.indiewire.com/film/aint-them-bodies-saints
Eric Kohn             9       http://www.indiewire.com/film/aint-them-bodies-saints
Sam Adams (Los Angeles Times, Philadelphia Inquirer, A.V. Club) 8 http://www.indiewire.com/film/aint-them-bod
Rodrigo Perez         8       http://www.indiewire.com/film/aint-them-bodies-saints
Alex Billington       8       http://www.indiewire.com/film/aint-them-bodies-saints


"SALVO" (Fabio Grassadonia & Antonio Piazza) [Semaine]
Roger Koza            8
Violeta Kovacsics     6
José Luis Losa        0
Jaime Pena            4.5
Javier H. Estrada     7

"SUZANNE" (Katell Quillévéré) [Semaine]
Diego Lerer           6.5
Ángel Quintana       7.5
Jaime Pena            7
Neil Young            7    https://twitter.com/JigsawLounge/status/335140082728194048
Adam Cook            
Arnaud Hee           4
Christoph Huber      
Frédéric Jaeger      
Till Kadritzke       5
Daniel Kasman        
Michael Kienzl       

"LE DÉMANTÈLEMENT (The Dismantling)" (Sébastien Pilote) [Semaine]
Robert Koehler        2

"FOR THOSE IN PERIL" (Paul Wright) [Semaine]
Robert Koehler        4

"THE LUNCHBOX (Dabba)" (Ritesh Batra) [Semaine]

"LES RENCONTRES D’APRÈS MINUIT" (Yann Gonzalez) [Semaine]

"LOS DUEÑOS" (Agustín Toscano & Ezequiel Radusky) [Semaine]
Diego Batlle          7.5
Diego Lerer           6.5
Carlo Chatrian        6.5

"NOS HÉROS SONT MORTS CE SOIR" (David Perrault) [Semaine]

"THE MAJOR" (Yury Bykov) [Semaine]

"3x3D" (Peter Greenaway, Jean-Luc Godard & Edgar Perâ) [Semaine]


QUINZAINE

"THE CONGRESS" (Ari Folman) [Quinzaine]
Jessica Kiang        4.5  http://blogs.indiewire.com/theplaylist/cannes-review-ari-folmans-the-congress-has-too-a-little-too-much-of-everything-20130516
Guy Lodge            5	  http://www.hitfix.com/in-contention/review-robin-wright-gets-animated-in-messy-sometimes-mesmerising-the-congress
Fernando Ganzo        10
Rüdiger Suchsland    6
Carlos F. Heredero    6
Dana Linssen          6
Alejandro G. Calvo    5
Guido Castillo        4
Alvaro Arroba         10
Eric Kohn            9   http://www.indiewire.com/article/cannes-is-ari-folmans-the-congress-the-most-anti-hollywood-movie-ever-made
Adam Cook                     
Arnaud Hee            2.5     http://jury.critic.de/cannes/
Christoph Huber       
Frédéric Jaeger       
Till Kadritzke        
Daniel Kasman         
Michael Kienzl        

"THE SELFISH GIANT" (Clio Barnard) [Quinzaine]
Mike d'Angelo         6.8        http://www.avclub.com/articles/cannes-2013-day-three,97927/
Diego Batlle          7.5
Diego Lerer           7
Eulàlia Iglesias     6.5
Ángel Quintana       5.5
Kieron Corless        5
Jaime Pena            5
Neil Young            6.5
Guido Castillo        8
Ronald Rovers         7.5
Guy Lodge                        http://variety.com/2013/film/reviews/the-selfish-giant-review-1200480590/
Clementine Gallot     7          http://www.indiewire.com/film/the-selfish-giant

"UN VOYAGEUR (Ain't Misbehavin)" (Marcel Ophuls) [Quinzaine]
Roger Koza            6
Diego Batlle          8
Eulàlia Iglesias     6
Ángel Quintana       5.5
José Luis Losa       5
Kieron Corless        4
Luciano Monteagudo    8.5
Jaime Pena            3.5
Robert Koehler        0.5
Marcelo Alderete      2.5
Boris Nelepo          5
Pablo O. Scholz       8
Alejandro G. Calvo    6
Adam Cook            
Arnaud Hee           
Christoph Huber      6       http://jury.critic.de/cannes/
Frédéric Jaeger      4       http://jury.critic.de/cannes/
Till Kadritzke       
Daniel Kasman        4       http://jury.critic.de/cannes/
Michael Kienzl       

"UGLY" (Anurag Kashyap) [Quinzaine]
Kieron Corless       3
Christoph Huber      6       http://jury.critic.de/cannes/
Frédéric Jaeger      2.5     http://jury.critic.de/cannes/

"BLUE RUIN" (Jeremy Saulnier) [Quinzaine]
Michael Kienzl       2.5     http://jury.critic.de/cannes/

"LA DANZA DE LA REALIDAD (The Dance of Reality)" (Alejandro Jodorowsky) [Quinzaine]
Roger Koza            1
Luciano Monteagudo    0.5
Boris Nelepo          7.5
Alvaro Arroba         3.5
Eric Kohn             7        http://www.indiewire.com/article/cannes-review-the-dance-of-reality-alejandro-jodorworskys-first-film-in-23-years-is-a-wacky-intimate-return-to-form
Christoph Huber      9       http://jury.critic.de/cannes/
Daniel Kasman        6       http://jury.critic.de/cannes/
Michael Kienzl       5       http://jury.critic.de/cannes/

"JODOROWSKY'S DUNE" (Frank Pavich) [Quinzaine]
Boris Nelepo          4

"ILO ILO" (Anthony Chen) [Quinzaine]

"TIP TOP" (Serge Bozon) [Quinzaine]

"L'ESCALE" (Kaveh Bakhtiari) [Quinzaine]

"EL VERANO DE LOS PECES VOLADORES (The Summer of Flying Fish)" (Marcela Said) [Quinzaine]

"LES GARÇONS ET GUILLAUME, À TABLE ! (Me Myself and Mum)" (Guillaume Gallienne) [Quinzaine]

"THE LAST DAYS ON MARS" (Ruairí Robinson) [Quinzaine]

"A STRANGE COURSE OF EVENTS" (Raphaël Nadjari) [Quinzaine]

"WE ARE WHAT WE ARE" (Jim Mickle) [Quinzaine]
Tim Grierson (Screen Daily, USA)   http://www.screendaily.com/reviews/the-latest/we-are-what-we-are/5055835.article?blocktitle=DIRECTORS'-FORTNIGHT&contentID=40446

"ATÉ VER A LUZ" (Basil da Cunha) [Quinzaine]

"LES APACHES" (Thierry de Peretti) [Quinzaine]

"LA FILLE DU 14 JUILLET (The Rendez-Vous of Déjà-Vu)" (Antonin Peretjatko) [Quinzaine]
Fernando Ganzo        7
Carlo Chatrian        5
Arnaud Hee            5      +-  http://jury.critic.de/cannes/

"MAGIC MAGIC" (Sebastián Silva) [Quinzaine]
  (Sundance)
Sebastian Doggart (Guardian, UK) 6 http://www.guardian.co.uk/film/2013/jan/25/magic-magic-first-look-review
Russ Fischer (slashfilm.com, USA) 7
Chris Bumbray (joblo.com, USA) 7
Mark Olsen (LA Times, USA) http://articles.latimes.com/2013/jan/27/entertainment/la-et-mn-sundance-michael-cera-magic-20130126
Nicolas Bell (Ioncinema.com, Canada) http://www.ioncinema.com/reviews/magic-magic-review
Clementine Gallot    6       http://www.indiewire.com/film/magic-magic
Ethan Anderson       3       http://www.indiewire.com/film/magic-magic
Don Simpson          8       http://www.indiewire.com/film/magic-magic
Joe Bendel           4       http://www.indiewire.com/film/magic-magic
Eric Kohn            4       http://www.indiewire.com/film/magic-magic
Arnaud Hee           2.5     http://jury.critic.de/cannes/

"ON THE JOB" (Erik Matti) [Quinzaine]

"HENRI" (Yolande Moreau) [Quinzaine]

EOF

our @critics;
$critics[0] = "
Alejandro G. Calvo (Sensacine, España) 
Alex Vicente (Público, España) 
Alexandra Zawia (Wiener Zeitung, Furche, Celluloid, Austria)
Ángel Quintana (Cahiers du cinema Espana, España)
Boris Nelepo (Kinote daily, Russia)
Carlo Chatrian (Duellanti, Panoramiches, Italy) 
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
Jaime Pena (El Amante, España/Argentina) 
José Luis de Lorenzo (A Sala Llena, Argentina) 
José Luis Losa (Cineuropa, España)
Kieron Corless (Time Out London, UK)
Luciano Barisone (Duellanti/Panoramiche, Italy) 
Luciano Monteagudo (Página/12, Argentina) 
Marcelo Alderete (Festival de Mar del Plata, Argentina) 
Michal Oleszczyk (Hammer to Nail, USA)
Nando Salva (El Periódico, España) 
Neil Young (Hollywood Reporter, Tribune, UK) 
Pablo O. Scholz (Clarín, Argentina)
Paolo Bertolin (Venice International Film Festival, Italy) 
Paolo Moretti (Italy) 
Pedro Butcher (Folha do Sao Paulo, Filme B, Brasil) 
Philipp Engel (Go Mag, España) 
Robert Koehler (Variety, USA) 
Roger Alan Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Roger Koza (La Voz del Interior, Con los ojos abiertos, Argentina) 
Rüdiger Suchsland (FAZ, Negativ-film, Deutschland) 
Scott Foundas (Film Comment, USA) 
Violeta Kovacsics (Caimán Cuadernos de Cine, España) 
Javier H. Estrada (Caimán CDC, España) 
Pamela Bienzobas (Mabuse, Chile) 
Xavi Serra (Ara, España) 
Guido Castillo (Freelance, España)
";
# ioncinema
$critics[1] = "
Nicolas Bell (Ioncinema.com, Canada)
Christophe Beney (Palmares magazine, France) 
David Calhoun (Time Out London, UK) 
Per Juul Carlsen (Danish National Radio, Denmark) 
Mike d'Angelo (AV Club, USA) 
Carlos F. Heredero (Cahiers du cinema Espana, España) 
Aaron Hillis
Eric Kohn (Indiewire, USA) 
Eric Lavallée (Ioncinema.com, Canada) 
Fabien Lemercier (Cineeuropa.org, Belgium) 
Guy Lodge (Variety, InContention, South Africa/USA) 
Liu Min (Sina.com, China) 
Isabelle Regnier (Le Monde, France) 
Cédric Succivalli (International Cinephil Society, France) 
Clarence Tsui (South China Morning Post, Hong Kong) 
Blake Williams (Ioncinema.com, Canada) 
";
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
Dennis Lim (The New York Times, USA) 
Michel Ciment (Positif, France) 
Kate Muir (The Times, UK) 
Wendy Ide (The Times, UK) 
Bo Green Jensen (Weekandavisen Berlingske, Denmark) 
Screen International (Screen International, USA) 
";
# critic.de +++ 9, ++ 7.5, + 6, +- 5, - 4, -- 2.5, --- 1
$critics[4] = "
Adam Cook (MUBI)
Arnaud Hee (Critikat.com)
Christoph Huber (Die Presse, AT)
Frédéric Jaeger (critic.de, D)
Till Kadritzke (critic.de, D)
Daniel Kasman (MUBI)
Michael Kienzl (critic.de, D)
";
# indiewire + various other
$critics[5] = "
Kevin Jagernauth (Indiewire's The Playlist, USA) 
James Rocchi (MSN Movies, Indiewire's The Playlist, USA) 
A.A. Dowd (Time Out Chicago, USA)
Aaron Hillis (GreenCine Daily, USA)
Alex Billington (FirstShowing.net, USA)
Allan Hunter (Screen Daily, USA)
Allison Loring (Film School Rejects, USA)
Andrei Creţulescu (HBO, Romania) 
Andrew O'Hehir (Salon.com, USA) 
Anna Bielak (Smells Like Screen Spirit, USA)
Anna Tatarska (Fandor, KINO, USA)
Anne Thompson (Indiewire, USA) 
Beatrice Behn (Kino-Zeit, Deutschland)
Brian Brooks (indieWIRE, USA) 
Chris Knipp (Filmleaf, USA)
Clementine Gallot (Cahiers du cinema, France)
Craig Skinner (Craig Skinner on Film, HeyUGuys, BleedingCool)
David Edelstein (New York Magazine-Vulture, USA)
David Ehrlich (Movies.com, Box Office Magazine, Reverse Shot)
David Fear (Time Out New York, USA) 
David Gritten (The Telegraph, UK)
David Jenkins (Little White Lies blog, UK)
David Sterrit (Tikkun Magazine)
Don Simpson (Smells Like Screen Spirit, USA)
Drew McWeeny (InContention, USA)
Drew Taylor (The Playlist, USA)
Eduardo Valente (Revista Cinema, Brazil) 
Elisabeth Quin (Paris Premiere, France) 
Emanuel Levy (EmanuelLevy.com, USA)
Eric D. Snider (Film.com, USA)
Eugene Hernandez (Film Society of Lincoln Center, USA) 
Ethan Anderton (FirstShowing.net, USA)
Frédéric Jaeger (critic.de, Deutschland)
Glenn Heath Jr. (Slant Magazine, Press Play, USA)
Ignatiy Vishnevetsky (Freelance, USA)
Jessica Kiang (The Playlist, USA)
Joachim Kurz (Kino-Zeit, Deutschland)
Jon Frosch (France 24, France)
Jonathan Rosenbaum (Chicago Reader, USA) 
Jordan Raup (The Film Stage, USA)
Justin Chang (Variety, USA)
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
Michael Sennhauser (SRF, Suisse)
Michael Giltz (The Huffington Post, USA) 
Nev Pierce (Empire, USA)
Patrick Heidmann (Cineman, Deutschland)
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
# former apichatpoll members
$critics[6] = "
Arthur Mas (Independencia, France) 
Camille Brunel (Independencia, France) 
Gabriele Barrera (Segnocinema, Duellanti, Blow Up, Best Movie, Italy) 
Gonzalo de Pedro (Caimán, CDC, España) 
Kong Rithdee (The Bangkok Post, Thailand) 
Manu Yáñez (Fotogramas, OtrosCines, España) 
Martial Pisani (Independencia, France) 
Noémie Luciani (Independencia, France) 
Olivier Père (Les Inrockuptibles, France) 
Sergio Wolf (BAFICI, Argentina) 
Thomas Fioretti (Independencia, France) 
";

our $HEADER = <<"EOF";

<small>Collected and updated daily by Reini Urban, 
from the ApichatPoll http://www.todaslascriticas.com.ar/cannes (Diego Lerer+Javier Fish) (la crema),
http://www.ioncinema.com/ (okay),
Le film français (eclectic),
http://jury.critic.de/cannes/ (german),
Screen Daily (US/UK mainstream),
Indiewire (mixed) and more critics.<br>

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
http://www.todaslascriticas.com.ar/cannes
http://www.ioncinema.com/
History at https://github.com/rurban/cannes-rurban.rhcloud.com/commits/master/

</pre>";

$HEADER =~ s{(https?)://(.+?) }{<a href="$1://$2">$2</a> }g;
$FOOTER =~ s{(https?)://(.+)\n}{<a href="$1://$2">$2</a>\n}g;
1;
