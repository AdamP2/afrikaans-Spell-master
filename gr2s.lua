local gr2s ={}
local syllables = {{"aanskou","aa","n","sk","ou"},
{"aanwend","aa","n","w","e","nd"},
{"aarbei","aa","r","b","ei"},
{"afdroog","a","f","dr","oo","g"},
{"afvee","a","f","v","ee"},
{"agterop","a","g","t","e","r","o","p"},
{"albaster","a","l","b","a","s","t","e","r"},
{"alleen","a","l","l","ee","n"},
{"almal","a","l","m","a","l"},
{"ambulans","a","m","b","u","l","a","n","s"},
{"appelboom","a","p","p","e","l","b","oo","m"},
{"aspris","a","s","p","r","i","s"},
{"aster","a","s","t","e","r"},
{"bakkery","b","a","k","k","e","r","y"},
{"baklei","b","a","kl","ei"},
{"baksteen","b","a","k","st","ee","n"},
{"bang","b","a","ng"},
{"beeld","b","ee","l","d"},
{"been","b","ee","n"},
{"bekommer","b","e","k","o","m","m","e","r"},
{"bekruip","b","e","kr","ui","p"},
{"berg","b","e","rg"},
{"besoek","b","e","s","oe","k"},
{"betaal","b","e","t","aa","l"},
{"bloedrooi","bl","oe","d","r","ooi"},
{"blokkie","bl","o","k","k","ie"},
{"blombak","bl","o","m","b","a","k"},
{"blomme","bl","o","m","m","e"},
{"bloos","bl","oo","s"},
{"boomhuis","b","oo","m","h","ui","s"},
{"boomstomp","b","oo","m","st","o","mp"},
{"braai","br","aai"},
{"breek","br","ee","k"},
{"brein","br","ei","n"},
{"breukdeel","br","eu","k","d","ee","l"},
{"bring","br","i","ng"},
{"broeksak","br","oe","k","s","a","k"},
{"brood","br","oo","d"},
{"bruggie","br","u","g","g","ie"},
{"bruin","br","ui","n"},
{"bult","b","u","lt"},
{"busse","b","u","s","s","e"},
{"bustoer","b","u","s","t","oe","r"},
{"buurman","b","uu","r","m","a","n"},
{"buurvrou","b","uu","r","vr","ou"},
{"dagboek","d","a","g","b","oe","k"},
{"damme","d","a","m","m","e"},
{"diere","d","ie","r","e"},
{"Donderdag","D","o","n","d","e","r","d","a","g"},
{"dorp","d","o","rp"},
{"draai","dr","aai"},
{"drade","dr","a","d","e"},
{"drank","dr","a","nk"},
{"drentel","dr","e","n","t","e","l"},
{"driehoekie","dr","ie","h","oe","k","e"},
{"dronk","dr","o","nk"},
{"droog","dr","oo","g"},
{"dwarslat","dw","a","rs","l","a","t"},
{"fabriek","f","a","br","ie","k"},
{"fietse","f","ie","t","s","e"},
{"foeitog","f","oei","t","o","g"},
{"fontein","f","o","n","t","ei","n"},
{"gang","g","a","ng"},
{"gasvrou","g","a","s","vr","ou"},
{"gehelp","g","e","h","e","lp"},
{"gehoor","g","e","h","oo","r"},
{"gemmerkat","g","e","m","m","e","r","k","a","t"},
{"gemors","g","e","m","o","r","s"},
{"geverf","g","e","v","e","rf"},
{"gieter","g","ie","t","e","r"},
{"glad","gl","a","d"},
{"gleuf","gl","eu","f"},
{"glimlag","gl","i","m","l","a","g"},
{"gloeilamp","gl","oei","l","a","mp"},
{"gluur","gl","uu","r"},
{"glyplank","gl","y","pl","a","nk"},
{"graaf","gr","aa","f"},
{"graan","gr","aa","n"},
{"grafiek","gr","a","f","ie","k"},
{"grasperk","gr","a","s","p","e","rk"},
{"groentetuin","gr","oe","n","t","e","t","ui","n"},
{"groep","gr","oe","p"},
{"groot","gr","oo","t"},
{"handdoek","h","a","nd","d","oe","k"},
{"hardloop","h","a","r","d","l","oo","p"},
{"hemp","h","e","m","p"},
{"herfstyd","h","e","rfs","t","y","d"},
{"hiervan","h","ie","r","v","a","n"},
{"hoeveel","h","oe","v","ee","l"},
{"hoeveelheid","h","oe","v","ee","l","h","ei","d"},
{"hospitaal","h","o","s","p","i","t","aa","l"},
{"houtvloer","h","ou","t","vl","oe","r"},
{"huil","h","ui","l"},
{"jag","j","a","g"},
{"jammer","j","a","m","m","e","r"},
{"Jeugdag","J","eu","g","d","a","g"},
{"joggie","j","o","g","g","ie"},
{"jonkheid","j","o","nk","h","ei","d"},
{"juis","j","ui","s"},
{"jukskei","j","u","k","sk","ei"},
{"julle","j","u","l","l","e"},
{"kalm","k","a","lm"},
{"kameelperd","k","a","m","ee","l","p","e","rd"},
{"kamer","k","a","m","e","r"},
{"kierie","k","ie","r","ie"},
{"kieriebeen","k","ie","r","ie","b","ee","n"},
{"klaswerk","kl","a","s","w","e","rk"},
{"kleiner","kl","ei","n","e","r"},
{"kleurvol","kl","eu","r","v","o","l"},
{"kleurwiel","kl","eu","r","w","ie","l"},
{"klippies","kl","i","p","p","ie","s"},
{"klop","kl","o","p"},
{"klou","kl","ou"},
{"knip","kn","i","p"},
{"koekie","k","oe","k","ie"},
{"koerant","k","oe","r","a","nt"},
{"koevert","k","oe","v","e","rt"},
{"koeverte","k","oe","v","e","rt","e"},
{"koppie","k","o","p","p","ie"},
{"korrek","k","o","r","r","e","k"},
{"kraakbeen","kr","aa","k","b","ee","n"},
{"kraan","kr","aa","n"},
{"krabbel","kr","a","b","b","e","l"},
{"kringloop","kr","i","ng","l","oo","p"},
{"kroos","kr","oo","s"},
{"kuiken","k","ui","k","e","n"},
{"laaikas","l","aai","k","a","s"},
{"lampskerm","l","a","mp","sk","e","rm"},
{"landbou","l","a","nd","b","ou"},
{"lank","l","a","nk"},
{"lapsak","l","a","p","s","a","k"},
{"leesles","l","ee","s","l","e","s"},
{"legkaart","l","e","g","k","aa","rt"},
{"lugballon","l","u","g","b","a","l","l","o","n"},
{"maagpyn","m","aa","g","p","y","n"},
{"maand","m","aa","nd"},
{"middagson","m","i","d","d","a","g","s","o","n"},
{"modder","m","o","d","d","e","r"},
{"moenie","m","oe","n","ie"},
{"monster","m","o","n","st","e","r"},
{"motorfiets","m","o","t","o","r","f","ie","t","s"},
{"muis","m","ui","s"},
{"muntstuk","m","u","n","t","st","u","k"},
{"muskiet","m","u","s","k","ie","t"},
{"naby","n","a","b","y"},
{"nagwag","n","a","g","w","a","g"},
{"natspuit","n","a","t","sp","ui","t"},
{"naweek","n","a","w","ee","k"},
{"neerskryf","n","ee","r","skr","y","f"},
{"netbalbaan","n","e","t","b","a","l","b","aa","n"},
{"netheid","n","e","t","h","ei","d"},
{"neusbrug","n","eu","s","br","u","g"},
{"neutvars","n","eu","t","v","a","rs"},
{"nooit","n","ooi","t"},
{"nounet","n","ou","n","e","t"},
{"nuus","n","uu","s"},
{"oerwoud","oe","r","w","ou","d"},
{"omdraai","o","m","dr","aai"},
{"omlyn","o","m","l","y","n"},
{"onderbroek","o","n","d","e","r","br","oe","k"},
{"ondersoek","o","n","d","e","r","s","oe","k"},
{"oopstoot","oo","p","st","oo","t"},
{"opklim","o","p","kl","i","m"},
{"orrel","o","r","r","e","l"},
{"paddavis","p","a","d","d","a","v","i","s"},
{"papier","p","a","p","ie","r"},
{"pasop","p","a","s","o","p"},
{"plak","pl","a","k"},
{"plant","pl","a","nt"},
{"pleister","pl","ei","s","t","e","r"},
{"plus","pl","u","s"},
{"polonektrui","p","o","l","o","n","e","k","tr","ui"},
{"poppe","p","o","p","p","e"},
{"positief","p","o","s","i","t","ie","f"},
{"potlepel","p","o","t","l","e","p","e","l"},
{"potlood","p","o","t","l","oo","d"},
{"praatkous","pr","aa","t","k","ou","s"},
{"prenteboek","pr","e","nt","e","b","oe","k"},
{"prettig","pr","e","t","t","i","g"},
{"pronk","pr","o","nk"},
{"raas","r","aa","s"},
{"reis","r","ei","s"},
{"rolspel","r","o","l","sp","e","l"},
{"romp","r","o","mp"},
{"roomtert","r","oo","m","t","e","rt"},
{"rugby","r","u","g","b","y"},
{"rustig","r","u","s","t","i","g"},
{"sakgeld","s","a","k","g","e","ld"},
{"samelewing","s","a","k","g","e","ld"},
{"sandkasteel","s","a","nd","k","a","st","ee","l"},
{"sangstuk","s","a","ng","st","u","k"},
{"sappig","s","a","p","p","i","g"},
{"seemeeu","s","ee","m","eeu"},
{"seisoen","s","ei","s","oe","n"},
{"seunskoor","s","eu","n","s","k","oo","r"},
{"sing","s","i","ng"},
{"sirkelrond","s","i","r","k","e","l","r","o","nd"},
{"skiet","sk","ie","t"},
{"skoen","sk","oe","n"},
{"skoenlapper","sk","oe","n","l","a","p","p","e","r"},
{"skooldrag","sk","oo","l","dr","a","g"},
{"skoolruit","sk","oo","l","r","ui","t"},
{"skoolsport","sk","oo","l","sp","o","rt"},
{"skoorsteen","sk","oo","r","st","ee","n"},
{"skottelgoed","sk","o","t","t","e","l","g","oe","d"},
{"skotvry","sk","o","t","vr","y"},
{"skraap","skr","aa","p"},
{"skreeu","ske","eeu"},
{"skrik","skr","i","k"},
{"skuit","sk","ui","t"},
{"skyfies","sk","y","f","ie","s"},
{"slang","sl","a","ng"},
{"slap","sl","a","p"},
{"sleep","sl","ee","p"},
{"sloot","sl","oo","t"},
{"smaaklik","sm","aa","k","l","i","k"},
{"smelt","sm","e","lt"},
{"sneeuman","sn","eeu","m","a","n"},
{"snoek","sn","oe","k"},
{"snoet","sn","oe","t"},
{"soetgoed","s","oe","t","g","oe","d"},
{"soggens","s","o","g","g","e","n","s"},
{"sokker","s","o","k","k","e","r"},
{"somme","s","o","m","m","e"},
{"sonbril","s","o","n","br","i","l"},
{"Sondagskool","S","o","n","d","a","g","sk","oo","l"},
{"sonhoed","s","o","n","h","oe","d"},
{"sonskyn","s","o","n","sk","y","n"},
{"sopnat","s","o","p","n","a","t"},
{"span","sp","a","n"},
{"spanspek","sp","a","n","sp","e","k"},
{"speelgoed","sp","ee","l","g","oe","d"},
{"spoel","sp","oe","l"},
{"spreekbeurt","spr","ee","k","b","eu","rt"},
{"spreeu","spr","eeu"},
{"springtou","spr","i","ng","t","ou"},
{"sproet","spr","oe","t"},
{"staanplek","st","aa","n","pl","e","k"},
{"stert","st","e","rt"},
{"steurnis","st","eu","r","n","i","s"},
{"stoei","st","oei"},
{"stokkie","st","o","k","k","ie"},
{"storm","st","o","rm"},
{"straat","str","aa","t"},
{"strandhuis","str","a","nd","h","ui","s"},
{"streek","str","ee","k"},
{"streep","str","ee","p"},
{"strikkie","str","i","k","k","ie"},
{"strooidak","str","ooi","d","d","a","k"},
{"suiker","s","ui","k","e","r"},
{"suur","s","uu","r"},
{"swaai","sw","aai"},
{"swaaiverhoog","sw","aai","v","e","r","h","oo","g"},
{"swart","sw","a","rt"},
{"swembad","sw","e","m","b","a","d"},
{"swerm","sw","e","rm"},
{"tafeldoek","t","a","f","el","d","oe","k"},
{"tamatiesop","t","a","m","a","t","ie","s","o","p"},
{"tandeborsel","t","a","n","d","e","b","o","r","s","e","l"},
{"tang","t","a","ng"},
{"telbord","t","e","l","b","o","rd"},
{"totdat","t","o","t","d","a","t"},
{"trapkar","tr","a","p","k","a","r"},
{"troetelnaampie","tr","oe","t","e","l","n","aa","m","p","ie"},
{"trompet","tr","o","m","p","e","t"},
{"trourok","tr","ou","r","o","k"},
{"tydsaam","t","y","d","s","aa","m"},
{"uitknip","ui","t","kn","i","p"},
{"uitstappie","ui","t","st","a","p","p","ie"},
{"vakansie","v","a","k","a","n","s","ie"},
{"varkstert","v","a","rk","st","e","rt"},
{"vensterraam","v","e","n","st","e","r","r","aa","m"},
{"verpleeg","v","e","r","pl","ee","g"},
{"versprei","v","e","r","spr","ei"},
{"vleis","vl","ei","s"},
{"vliegvrees","vl","ie","g","vr","ee","s"},
{"vloei","vl","oei"},
{"voedsel","v","oe","d","s","e","l"},
{"voltooi","v","o","l","t","ooi"},
{"vreemd","vr","ee","md"},
{"vroeg","vr","oe","g"},
{"vrou","vr","ou"},
{"vrugteboom","vr","u","g","t","e","b","oo","m"},
{"vullis","v","u","l","l","i","s"},
{"vyftig","v","y","f","t","i","g"},
{"waarheen","w","aa","r","h","ee","n"},
{"waarmee","w","aa","r","m","ee"},
{"waatlemoen","w","aa","t","l","e","m","oe","n"},
{"walvisse","w","a","l","v","i","s","s","e"},
{"warmbloedig","w","a","rm","bl","oe","d","i","g"},
{"wasgoed","w","a","s","g","oe","d"},
{"weerkaart","w","ee","r","k","aa","rt"},
{"weggaan","w","e","g","g","aa","n"},
{"weke","w","e","k","e"},
{"welbekend","w","e","l","b","e","k","e","nd"},
{"werkloos","w","e","rk","l","oo","s"},
{"wiegie","w","ie","g","ie"},
{"wildtuin","w","i","ld","t","ui","n"},
{"wolkbreuk","w","o","lk","br","eu","k"},
{"wurmpie","w","u","rm","p","ie"}}

function gr2s.getSyllable(i)
	return syllables[i]
end
function gr2s.total()
	return #syllables
end
function gr2s.maxlength()
	local maximum = 0
	local maxWord = ""
	local l
	for i=1,#syllables-1 do
		l =string.len(syllables[i])
		if(l>maximum)then
			maximum = l
			maxWord = syllables[i]
		end
	end
	
	return maxWord
end
return gr2s