/*
* #113 - Reverse Order of Words
* Implement a function reverseWordsInASentence that will take a String containing words 
* separated by spaces as an argument, and return a string with the order of the words reversed.
* 
* Example : If the sentence is The quick brown fox jumps over the lazy dog, 
* then reverseWordsInASentence(String sentence) should evaluate to dog lazy the over jumps fox brown quick The
*/

public String reverseWordsInASentence(String sentence){
    /*
    if (sentence == null) return null;
    Integer size = sentence.split(' ',0).size();
    List<String> text = sentence.split(' ',0);
    //String[] text = sentence.split(' ',0);
    String rev = '';
    for (Integer i=size-1; i>=0; i--) {
        rev += ' ' + text[i];
    }
    return rev.trim();
    */

    if (sentence == null) return null;
    String rev = sentence.reverse();
    List<String> text = rev.split(' ',0);
    String result = '';
    for (Integer i=0; i<text.size(); i++) {
        result += text[i].reverse() + ' ';
    }
    return result.trim();
}

String sentence = 'The quick brown fox jumps over the lazy dog';
String reversedWordsString = reverseWordsInASentence(sentence);
System.debug(sentence + ' result >>> ' + reversedWordsString);

sentence = '';
reversedWordsString = reverseWordsInASentence(sentence);
System.debug(sentence + ' result >>> ' + reversedWordsString);

String nullSentence;
reversedWordsString = reverseWordsInASentence(nullSentence);
System.debug(nullSentence + ' result >>> ' + reversedWordsString);


String longSentence = 'a adamare adest admirer adversa aequum aetatis amicitia angusti animumque ante appetendum apte aptius aristotelem arte aspernandum aspernari assumenda audire audivi aute autem avocent beatae bonarum brute certa certamen ceteris ceterorum circumcisaque civium cogitavisse cognitio cognitione comit conducunt confirmatur consentaneum consequatur consequentis consequentium consequuntur consoletur constituam constituit constituto constringendos contemnentes contenta contra corpore correcta crudeli cupiditatibus cura curae cursus debemus debitis declinabunt degendae delectat delectatum delectet democriti deserere desiderabile desideraret desperantes despicationes deteriora dialectica dicas dictas dicturum diesque difficile disciplinis displicet disputari dixit doceat doctus dolorem dominationis doming durissimis eademque effectrices efficiatur ego eidola eisque eligendi epicuro equos eripuit esse est eu euismod exedunt exercitumque expectata expetendas expetendum fabulas facer falsi fama fastidium fatemur ferae ferrentur fictae fieri fingi finiri fructu fructuosam futuris genus gloriatur graeco gratia gravissimo habent has homini honesto hostem idcirco ignoratione illaberetur illius illo impetu impetum incurreret indignae infimum infinito inimicus inopem inprobitas inprobitatem inquit insolens intellegitur interea intuemur ita iudicat iustius iusto labefactetur laoreet latine laudem legemus levamur libidinum litteras loqueretur ludicra macedonum magna maiestatis malarum male malivoli manu massa meam mediocritatem mererer metuque minuit minus moderatius molestias mollit morbi musicis naturalem nemore nimis nondum nostras nullas nulli num numquid oblique obruamus odia omnium operam opes orci paranda pars partiendo partis partitio penitus perspexit pertineant pharetra philosophorum placet plena plerisque poetis ponendam ponunt populo porro possimus postea praesens praeterea praeteritas praetermissum praetorem primo privatione probamus probarem progrediens proposita provident putavisset quadam quaeque quaestio quamvis quando quasi quietem quippiam quoniam quoquo quosvis referatur reliquarum rem reperietur reprehensione repudiandae repugnantiumve retinent saluti saluto sapientia satis scipio scribentur scriptorem secutus servata sociosqu solvantur splendido stabilitas statue statuerunt studio stultus successerit sumitur tale temeritas teneam theophrasti timeret tincidunt titillaret torquate torqueantur tota tuentur turbent turbulentaeque utramque utrisque variari vel veniam verbis versuum vias videatur videmus vitium vituperata vivendo voluptatis';
String expected = 'voluptatis vivendo vituperata vitium videmus videatur vias versuum verbis veniam vel variari utrisque utramque turbulentaeque turbent tuentur tota torqueantur torquate titillaret tincidunt timeret theophrasti teneam temeritas tale sumitur successerit stultus studio statuerunt statue stabilitas splendido solvantur sociosqu servata secutus scriptorem scribentur scipio satis sapientia saluto saluti retinent repugnantiumve repudiandae reprehensione reperietur rem reliquarum referatur quosvis quoquo quoniam quippiam quietem quasi quando quamvis quaestio quaeque quadam putavisset provident proposita progrediens probarem probamus privatione primo praetorem praetermissum praeteritas praeterea praesens postea possimus porro populo ponunt ponendam poetis plerisque plena placet philosophorum pharetra pertineant perspexit penitus partitio partis partiendo pars paranda orci opes operam omnium odia obruamus oblique numquid num nulli nullas nostras nondum nimis nemore naturalem musicis morbi mollit molestias moderatius minus minuit metuque mererer mediocritatem meam massa manu malivoli male malarum maiestatis magna macedonum ludicra loqueretur litteras libidinum levamur legemus laudem latine laoreet labefactetur iusto iustius iudicat ita intuemur interea intellegitur insolens inquit inprobitatem inprobitas inopem inimicus infinito infimum indignae incurreret impetum impetu illo illius illaberetur ignoratione idcirco hostem honesto homini has habent gravissimo gratia graeco gloriatur genus futuris fructuosam fructu finiri fingi fieri fictae ferrentur ferae fatemur fastidium fama falsi facer fabulas expetendum expetendas expectata exercitumque exedunt euismod eu est esse eripuit equos epicuro eligendi eisque eidola ego efficiatur effectrices eademque durissimis doming dominationis dolorem doctus doceat dixit disputari displicet disciplinis difficile diesque dicturum dictas dicas dialectica deteriora despicationes desperantes desideraret desiderabile deserere democriti delectet delectatum delectat degendae declinabunt debitis debemus cursus curae cura cupiditatibus crudeli correcta corpore contra contenta contemnentes constringendos constituto constituit constituam consoletur consequuntur consequentium consequentis consequatur consentaneum confirmatur conducunt comit cognitione cognitio cogitavisse civium circumcisaque ceterorum ceteris certamen certa brute bonarum beatae avocent autem aute audivi audire assumenda aspernari aspernandum arte aristotelem aptius apte appetendum ante animumque angusti amicitia aetatis aequum adversa admirer adest adamare a';
reversedWordsString = reverseWordsInASentence(longSentence);
System.debug(longSentence + ' long string result >>> ' + reversedWordsString);
System.debug('Is "expected" equal to "reversedWordsString" >>> ' + (expected == reversedWordsString));
