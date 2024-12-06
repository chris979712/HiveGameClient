π
{C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Properties\AssemblyInfo.cs
[

 
assembly

 	
:

	 

AssemblyTitle

 
(

 
$str

 )
)

) *
]

* +
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[ 
assembly 	
:	 
!
AssemblyConfiguration  
(  !
$str! #
)# $
]$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str +
)+ ,
], -
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[## 
assembly## 	
:##	 

	ThemeInfo## 
(## &
ResourceDictionaryLocation$$ 
.$$ 
None$$ #
,$$# $&
ResourceDictionaryLocation'' 
.'' 
SourceAssembly'' -
)** 
]** 
[44 
assembly44 	
:44	 

AssemblyVersion44 
(44 
$str44 $
)44$ %
]44% &
[55 
assembly55 	
:55	 

AssemblyFileVersion55 
(55 
$str55 (
)55( )
]55) *˙;
sC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\MainWindow.xaml.cs
	namespace 	
HiveGameWPFApp
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
this 
. 
Closing 
+= 
MainWindowClosing -
;- .
} 	
private   
void   !
IntroVideo_MediaEnded   *
(  * +
object  + 1
sender  2 8
,  8 9
RoutedEventArgs  : I
e  J K
)  K L
{!! 	
NavigationFrame## 
.## 
Navigate## $
(##$ %
new##% (
Views##) .
.##. /
	LoginView##/ 8
(##8 9
)##9 :
)##: ;
;##; <
}%% 	
private'' 
void'' &
NavigationFrame_Navigating'' /
(''/ 0
object''0 6
sender''7 =
,''= >%
NavigatingCancelEventArgs''? X
e''Y Z
)''Z [
{(( 	
var)) 
fadeOutAnimation))  
=))! "
new))# &
DoubleAnimation))' 6
())6 7
$num))7 8
,))8 9
$num)): ;
,)); <
TimeSpan))= E
.))E F
FromSeconds))F Q
())Q R
$num))R U
)))U V
)))V W
;))W X
NavigationFrame** 
.** 
BeginAnimation** *
(*** +
Frame**+ 0
.**0 1
OpacityProperty**1 @
,**@ A
fadeOutAnimation**B R
)**R S
;**S T
}++ 	
private-- 
void-- %
NavigationFrame_Navigated-- .
(--. /
object--/ 5
sender--6 <
,--< =
NavigationEventArgs--> Q
e--R S
)--S T
{.. 	
var// 
fadeInAnimation// 
=//  !
new//" %
DoubleAnimation//& 5
(//5 6
$num//6 7
,//7 8
$num//9 :
,//: ;
TimeSpan//< D
.//D E
FromSeconds//E P
(//P Q
$num//Q T
)//T U
)//U V
;//V W
NavigationFrame00 
.00 
BeginAnimation00 *
(00* +
Frame00+ 0
.000 1
OpacityProperty001 @
,00@ A
fadeInAnimation00B Q
)00Q R
;00R S
}11 	
private33 
void33 
MainWindowClosing33 &
(33& '
object33' -
sender33. 4
,334 5
System336 <
.33< =
ComponentModel33= K
.33K L
CancelEventArgs33L [
e33\ ]
)33] ^
{44 	
LoggerManager55 
logger55  
=55! "
new55# &
LoggerManager55' 4
(554 5
this555 9
.559 :
GetType55: A
(55A B
)55B C
)55C D
;55D E
try66 
{77 $
UserSessionManagerClient88 (
sessionManager88) 7
=888 9
new88: =$
UserSessionManagerClient88> V
(88V W
)88W X
;88X Y
UserSession99 
session99 #
=99$ %%
VerifyExistingUserSession99& ?
(99? @
)99@ A
;99A B
if:: 
(:: 
	Constants:: 
.:: 
	IsInMatch:: '
)::' (
{;; 
sessionManager<< "
.<<" #

Disconnect<<# -
(<<- .
session<<. 5
,<<5 6
true<<6 :
)<<: ;
;<<; <
}== 
else>> 
{?? 
sessionManager@@ "
.@@" #

Disconnect@@# -
(@@- .
session@@. 5
,@@5 6
false@@6 ;
)@@; <
;@@< =
}AA 
}BB 
catchCC 
(CC %
EndpointNotFoundExceptionCC ,
endPointExceptionCC- >
)CC> ?
{DD 
loggerEE 
.EE 
LogErrorEE 
(EE  
endPointExceptionEE  1
)EE1 2
;EE2 3
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4

PropertiesFF4 >
.FF> ?
	ResourcesFF? H
.FFH I#
dialogEndPointExceptionFFI `
)FF` a
;FFa b
}GG 
catchHH 
(HH 
TimeoutExceptionHH #
timeOutExceptionHH$ 4
)HH4 5
{II 
loggerJJ 
.JJ 
LogErrorJJ 
(JJ  
timeOutExceptionJJ  0
)JJ0 1
;JJ1 2
DialogManagerKK 
.KK !
ShowErrorMessageAlertKK 3
(KK3 4

PropertiesKK4 >
.KK> ?
	ResourcesKK? H
.KKH I'
dialogComunicationExceptionKKI d
)KKd e
;KKe f
}LL 
catchMM 
(MM "
CommunicationExceptionMM )"
communicationExceptionMM* @
)MM@ A
{NN 
loggerOO 
.OO 
LogErrorOO 
(OO  "
communicationExceptionOO  6
)OO6 7
;OO7 8
DialogManagerPP 
.PP !
ShowErrorMessageAlertPP 3
(PP3 4

PropertiesPP4 >
.PP> ?
	ResourcesPP? H
.PPH I"
dialogTimeOutExceptionPPI _
)PP_ `
;PP` a
}QQ 
}SS 	
privateUU 
staticUU 
UserSessionUU "%
VerifyExistingUserSessionUU# <
(UU< =
)UU= >
{VV 	
intWW 
	idAccountWW 
;WW 
stringXX 
usernameXX 
;XX 
stringYY 
	codematchYY 
;YY 
UserSessionZZ 
sessionPlayerZZ %
=ZZ& '
newZZ( +
UserSessionZZ, 7
(ZZ7 8
)ZZ8 9
;ZZ9 :
if[[ 
([[  
UserProfileSingleton[[ #
.[[# $
username[[$ ,
==[[- /
null[[0 4
)[[4 5
{\\ 
	idAccount]] 
=]] 
$num]] 
;]] 
username^^ 
=^^ 
$str^^ .
;^^. /
	codematch__ 
=__ 
$str__ $
;__$ %
}`` 
elseaa 
{bb 
	idAccountcc 
=cc  
UserProfileSingletoncc 0
.cc0 1
	idAccountcc1 :
;cc: ;
usernamedd 
=dd  
UserProfileSingletondd /
.dd/ 0
usernamedd0 8
;dd8 9
ifee 
(ee 
MatchSingletonee !
.ee! "
	codeMatchee" +
==ee, .
nullee/ 3
)ee3 4
{ff 
	codematchgg 
=gg 
$strgg  (
;gg( )
}hh 
elseii 
{jj 
	codematchkk 
=kk 
MatchSingletonkk  .
.kk. /
	codeMatchkk/ 8
;kk8 9
}ll 
}mm 
sessionPlayernn 
.nn 
	codeMatchnn #
=nn$ %
	codematchnn& /
;nn/ 0
sessionPlayeroo 
.oo 
usernameoo "
=oo# $
usernameoo% -
;oo- .
sessionPlayerpp 
.pp 
	idAccountpp #
=pp$ %
	idAccountpp& /
;pp/ 0
returnqq 
sessionPlayerqq  
;qq  !
}rr 	
}tt 
}uu Î>
lC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\App.xaml.cs
	namespace 	
HiveGameWPFApp
 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
private 
static 
readonly 
MediaPlayer  +
_mediaPlayer, 8
=9 :
new; >
MediaPlayer? J
(J K
)K L
;L M
private 
static 
string 
_currentMusicPath /
=0 1
string2 8
.8 9
Empty9 >
;> ?
private 
static 
bool 
_isMusicPlaying +
=, -
HiveGameWPFApp. <
.< =

Properties= G
.G H
SettingsH P
.P Q
DefaultQ X
.X Y
SoundY ^
==_ a
$strb f
;f g
public 
static 
MediaPlayer !
MediaPlayer" -
=>. 0
_mediaPlayer1 =
;= >
	protected 
override 
void 
	OnStartup  )
() *
StartupEventArgs* :
e; <
)< =
{ 	
base 
. 
	OnStartup 
( 
e 
) 
; 
string 
savedLanguage  
=! "
HiveGameWPFApp# 1
.1 2

Properties2 <
.< =
Settings= E
.E F
DefaultF M
.M N
LanguageN V
;V W
if 
( 
string 
. 
IsNullOrEmpty $
($ %
savedLanguage% 2
)2 3
)3 4
{ 
savedLanguage 
= 
CultureInfo  +
.+ ,
CurrentCulture, :
.: ;
Name; ?
.? @

StartsWith@ J
(J K
$strK O
)O P
?Q R
$strS Z
:[ \
$str] d
;d e
HiveGameWPFApp   
.   

Properties   )
.  ) *
Settings  * 2
.  2 3
Default  3 :
.  : ;
Language  ; C
=  D E
savedLanguage  F S
;  S T
HiveGameWPFApp!! 
.!! 

Properties!! )
.!!) *
Settings!!* 2
.!!2 3
Default!!3 :
.!!: ;
Save!!; ?
(!!? @
)!!@ A
;!!A B
}"" 
ChangeLanguage$$ 
($$ 
savedLanguage$$ (
)$$( )
;$$) *
if&& 
(&& 
_isMusicPlaying&& 
&&&&  "
!&&# $
string&&$ *
.&&* +
IsNullOrEmpty&&+ 8
(&&8 9
_currentMusicPath&&9 J
)&&J K
)&&K L
{'' 
	PlayMusic(( 
((( 
_currentMusicPath(( +
)((+ ,
;((, -
})) 
}** 	
public-- 
static-- 
void-- 
ChangeLanguage-- )
(--) *
string--* 0
cultureCode--1 <
)--< =
{.. 	
CultureInfo// 
culture// 
=//  !
new//" %
CultureInfo//& 1
(//1 2
cultureCode//2 =
)//= >
;//> ?
Thread00 
.00 
CurrentThread00  
.00  !
CurrentCulture00! /
=000 1
culture002 9
;009 :
Thread11 
.11 
CurrentThread11  
.11  !
CurrentUICulture11! 1
=112 3
culture114 ;
;11; <
HiveGameWPFApp22 
.22 

Properties22 %
.22% &
Settings22& .
.22. /
Default22/ 6
.226 7
Reset227 <
(22< =
)22= >
;22> ?
HiveGameWPFApp33 
.33 

Properties33 %
.33% &
Settings33& .
.33. /
Default33/ 6
.336 7
Language337 ?
=33@ A
cultureCode33B M
;33M N
HiveGameWPFApp44 
.44 

Properties44 %
.44% &
Settings44& .
.44. /
Default44/ 6
.446 7
Save447 ;
(44; <
)44< =
;44= >
}55 	
public88 
static88 
void88 
	PlayMusic88 $
(88$ %
string88% +
	musicPath88, 5
)885 6
{99 	
if:: 
(:: 
_currentMusicPath:: !
==::" $
	musicPath::% .
||::/ 1
!::2 3
_isMusicPlaying::3 B
)::B C
return::D J
;::J K
_mediaPlayer<< 
.<< 
Stop<< 
(<< 
)<< 
;<<  
_mediaPlayer== 
.== 
Open== 
(== 
new== !
Uri==" %
(==% &
	musicPath==& /
,==/ 0
UriKind==1 8
.==8 9
RelativeOrAbsolute==9 K
)==K L
)==L M
;==M N
_mediaPlayer>> 
.>> 

MediaEnded>> #
-=>>$ &"
MediaPlayer_MediaEnded>>' =
;>>= >
_mediaPlayer?? 
.?? 

MediaEnded?? #
+=??$ &"
MediaPlayer_MediaEnded??' =
;??= >
_mediaPlayer@@ 
.@@ 
Play@@ 
(@@ 
)@@ 
;@@  
_currentMusicPathAA 
=AA 
	musicPathAA  )
;AA) *
_mediaPlayerBB 
.BB 
VolumeBB 
=BB  !
$numBB" &
;BB& '
}CC 	
privateEE 
staticEE 
voidEE "
MediaPlayer_MediaEndedEE 2
(EE2 3
objectEE3 9
senderEE: @
,EE@ A
	EventArgsEEB K
eEEL M
)EEM N
{FF 	
_mediaPlayerGG 
.GG 
PositionGG !
=GG" #
TimeSpanGG$ ,
.GG, -
ZeroGG- 1
;GG1 2
_mediaPlayerHH 
.HH 
PlayHH 
(HH 
)HH 
;HH  
}II 	
publicKK 
staticKK 
voidKK 
ToggleMusicKK &
(KK& '
)KK' (
{LL 	
ifMM 
(MM 
_isMusicPlayingMM 
)MM  
{NN 
_mediaPlayerOO 
.OO 
PauseOO "
(OO" #
)OO# $
;OO$ %
_isMusicPlayingPP 
=PP  !
falsePP" '
;PP' (
HiveGameWPFAppQQ 
.QQ 

PropertiesQQ )
.QQ) *
SettingsQQ* 2
.QQ2 3
DefaultQQ3 :
.QQ: ;
SoundQQ; @
=QQA B
$strQQC H
;QQH I
HiveGameWPFAppRR 
.RR 

PropertiesRR )
.RR) *
SettingsRR* 2
.RR2 3
DefaultRR3 :
.RR: ;
SaveRR; ?
(RR? @
)RR@ A
;RRA B
}SS 
elseTT 
{UU 
_mediaPlayerVV 
.VV 
PlayVV !
(VV! "
)VV" #
;VV# $
_isMusicPlayingWW 
=WW  !
trueWW" &
;WW& '
HiveGameWPFAppXX 
.XX 

PropertiesXX )
.XX) *
SettingsXX* 2
.XX2 3
DefaultXX3 :
.XX: ;
SoundXX; @
=XXA B
$strXXC G
;XXG H
HiveGameWPFAppYY 
.YY 

PropertiesYY )
.YY) *
SettingsYY* 2
.YY2 3
DefaultYY3 :
.YY: ;
SaveYY; ?
(YY? @
)YY@ A
;YYA B
}ZZ 
}]] 	
public`` 
static`` 
bool`` 
IsMusicPlaying`` )
=>``* ,
_isMusicPlaying``- <
;``< =
}cc 
}dd ãb
ÖC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\VerifyEmailAndUsername.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class "
VerifyEmailAndUsername /
:0 1
Page2 6
{ 
public "
VerifyEmailAndUsername %
(% &
)& '
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private 
void 
Image_MouseDown $
($ %
object% +
sender, 2
,2 3 
MouseButtonEventArgs4 H
eI J
)J K
{ 	
GoToLoginView 
( 
) 
; 
}   	
private"" 
void"" 
GoToLoginView"" "
(""" #
)""# $
{## 	
	LoginView$$ 
	loginView$$ 
=$$  !
new$$" %
	LoginView$$& /
($$/ 0
)$$0 1
;$$1 2
this%% 
.%% 
NavigationService%% "
.%%" #
Navigate%%# +
(%%+ ,
	loginView%%, 5
)%%5 6
;%%6 7
}&& 	
private'' 
void'' 
BtnConfirm_Click'' %
(''% &
object''& ,
sender''- 3
,''3 4
RoutedEventArgs''5 D
e''E F
)''F G
{(( 	
txtb_Username)) 
.)) 
BorderBrush)) %
=))& '
Brushes))( /
.))/ 0
Yellow))0 6
;))6 7

txtb_Email** 
.** 
BorderBrush** "
=**# $
Brushes**% ,
.**, -
Yellow**- 3
;**3 4
if++ 
(++ 
ValidateFields++ 
(++ 
)++  
)++  !
{,, 
if-- 
(-- '
ValidateExistingUserAccount-- /
(--/ 0
)--0 1
)--1 2
{.. %
SendEmailVerificationCode// -
(//- .
)//. /
;/// 0
}00 
}11 
else22 
{33 
DialogManager44 
.44 !
ShowErrorMessageAlert44 3
(443 4

Properties444 >
.44> ?
	Resources44? H
.44H I
dialogWrongData44I X
)44X Y
;44Y Z
}55 
}66 	
private88 
void88 %
SendEmailVerificationCode88 .
(88. /
)88/ 0
{99 	
LoggerManager:: 
logger::  
=::! "
new::# &
LoggerManager::' 4
(::4 5
this::5 9
.::9 :
GetType::: A
(::A B
)::B C
)::C D
;::D E
try;; 
{<< 
	HiveProxy== 
.== 
UserManagerClient== +
userManagerClient==, =
===> ?
new==@ C
	HiveProxy==D M
.==M N
UserManagerClient==N _
(==_ `
)==` a
;==a b
	HiveProxy>> 
.>> *
EmailVerificationManagerClient>> 8*
emailVerificationManagerClient>>9 W
=>>X Y
new>>Z ]*
EmailVerificationManagerClient>>^ |
(>>| }
)>>} ~
;>>~ 
Profile?? 
userProfile?? #
=??$ %
userManagerClient??& 7
.??7 8$
GetUserProfileByUsername??8 P
(??P Q
txtb_Username??Q ^
.??^ _
Text??_ c
)??c d
;??d e
if@@ 
(@@ 
userProfile@@ 
.@@ 
	idProfile@@ (
==@@) +
	Constants@@, 5
.@@5 6
ErrorOperation@@6 D
)@@D E
{AA 
DialogManagerBB !
.BB! "!
ShowErrorMessageAlertBB" 7
(BB7 8

PropertiesBB8 B
.BBB C
	ResourcesBBC L
.BBL M
dialogDataBaseErrorBBM `
)BB` a
;BBa b
}CC 
elseDD 
{EE  
UserProfileSingletonFF (
.FF( )
InstanceFF) 1
.FF1 2
CreateInstanceFF2 @
(FF@ A
userProfileFFA L
)FFL M
;FFM N
intGG 
resultEmailSendedGG )
=GG* +*
emailVerificationManagerClientGG, J
.GGJ K!
SendVerificationEmailGGK `
(GG` a
userProfileGGa l
.GGl m
emailGGm r
)GGr s
;GGs t
ifHH 
(HH 
resultEmailSendedHH (
==HH) +
	ConstantsHH, 5
.HH5 6
SuccesOperationHH6 E
)HHE F
{II 
DialogManagerJJ %
.JJ% &#
ShowSuccessMessageAlertJJ& =
(JJ= >

PropertiesJJ> H
.JJH I
	ResourcesJJI R
.JJR S*
dialogEmailVerificationMessageJJS q
)JJq r
;JJr s
EditCredentialsViewKK +
editCredentialsViewKK, ?
=KK@ A
newKKB E
EditCredentialsViewKKF Y
(KKY Z
)KKZ [
;KK[ \
thisLL 
.LL 
NavigationServiceLL .
.LL. /
NavigateLL/ 7
(LL7 8
editCredentialsViewLL8 K
)LLK L
;LLL M
}MM 
elseNN 
{OO 
DialogManagerPP %
.PP% &!
ShowErrorMessageAlertPP& ;
(PP; <

PropertiesPP< F
.PPF G
	ResourcesPPG P
.PPP Q"
dialogCouldntSendEmailPPQ g
)PPg h
;PPh i
}QQ 
}RR 
}SS 
catchTT 
(TT %
EndpointNotFoundExceptionTT ,
endPointExceptionTT- >
)TT> ?
{UU 
loggerVV 
.VV 
LogFatalVV 
(VV  
endPointExceptionVV  1
)VV1 2
;VV2 3
DialogManagerWW 
.WW !
ShowErrorMessageAlertWW 3
(WW3 4

PropertiesWW4 >
.WW> ?
	ResourcesWW? H
.WWH I#
dialogEndPointExceptionWWI `
)WW` a
;WWa b
}XX 
catchYY 
(YY 
TimeoutExceptionYY #
timeOutExceptionYY$ 4
)YY4 5
{ZZ 
logger[[ 
.[[ 
LogWarn[[ 
([[ 
timeOutException[[ /
)[[/ 0
;[[0 1
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4

Properties\\4 >
.\\> ?
	Resources\\? H
.\\H I"
dialogTimeOutException\\I _
)\\_ `
;\\` a
}]] 
catch^^ 
(^^ "
CommunicationException^^ )"
communicationException^^* @
)^^@ A
{__ 
logger`` 
.`` 
LogFatal`` 
(``  "
communicationException``  6
)``6 7
;``7 8
DialogManageraa 
.aa !
ShowErrorMessageAlertaa 3
(aa3 4

Propertiesaa4 >
.aa> ?
	Resourcesaa? H
.aaH I'
dialogComunicationExceptionaaI d
)aad e
;aae f
}bb 
}cc 	
privateee 
boolee '
ValidateExistingUserAccountee 0
(ee0 1
)ee1 2
{ff 	
LoggerManagergg 
loggergg  
=gg! "
newgg# &
LoggerManagergg' 4
(gg4 5
thisgg5 9
.gg9 :
GetTypegg: A
(ggA B
)ggB C
)ggC D
;ggD E
boolhh 

validationhh 
=hh 
falsehh #
;hh# $
tryii 
{jj 
	HiveProxykk 
.kk 
UserManagerClientkk +
userManagerClientkk, =
=kk> ?
newkk@ C
	HiveProxykkD M
.kkM N
UserManagerClientkkN _
(kk_ `
)kk` a
;kka b
intll 
resultValidationll $
=ll% &
userManagerClientll' 8
.ll8 9&
VerifyExistingAccesAccountll9 S
(llS T

txtb_EmailllT ^
.ll^ _
Textll_ c
,llc d
txtb_Usernamelld q
.llq r
Textllr v
)llv w
;llw x
ifmm 
(mm 
resultValidationmm #
==mm$ &
	Constantsmm' 0
.mm0 1
DataMatchesmm1 <
)mm< =
{nn 

validationoo 
=oo  
trueoo! %
;oo% &
}pp 
elseqq 
ifqq 
(qq 
resultValidationqq (
==qq) +
	Constantsqq, 5
.qq5 6
NoDataMatchesqq6 C
)qqC D
{rr 
DialogManagerss !
.ss! "#
ShowWarningMessageAlertss" 9
(ss9 :

Propertiesss: D
.ssD E
	ResourcesssE N
.ssN O(
dialogCouldntFindUserAccountssO k
)ssk l
;ssl m
}tt 
elseuu 
ifuu 
(uu 
resultValidationuu (
==uu) +
	Constantsuu, 5
.uu5 6
ErrorOperationuu6 D
)uuD E
{vv 
DialogManagerww !
.ww! "!
ShowErrorMessageAlertww" 7
(ww7 8

Propertiesww8 B
.wwB C
	ResourceswwC L
.wwL M
dialogDataBaseErrorwwM `
)ww` a
;wwa b
}xx 
}yy 
catchzz 
(zz %
EndpointNotFoundExceptionzz ,
endPointExceptionzz- >
)zz> ?
{{{ 
logger|| 
.|| 
LogFatal|| 
(||  
endPointException||  1
)||1 2
;||2 3
DialogManager}} 
.}} !
ShowErrorMessageAlert}} 3
(}}3 4

Properties}}4 >
.}}> ?
	Resources}}? H
.}}H I#
dialogEndPointException}}I `
)}}` a
;}}a b
}~~ 
catch 
( 
TimeoutException #
timeOutException$ 4
)4 5
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogWarn
ÅÅ 
(
ÅÅ 
timeOutException
ÅÅ /
)
ÅÅ/ 0
;
ÅÅ0 1
DialogManager
ÇÇ 
.
ÇÇ #
ShowErrorMessageAlert
ÇÇ 3
(
ÇÇ3 4

Properties
ÇÇ4 >
.
ÇÇ> ?
	Resources
ÇÇ? H
.
ÇÇH I$
dialogTimeOutException
ÇÇI _
)
ÇÇ_ `
;
ÇÇ` a
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ )$
communicationException
ÑÑ* @
)
ÑÑ@ A
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogFatal
ÜÜ 
(
ÜÜ  $
communicationException
ÜÜ  6
)
ÜÜ6 7
;
ÜÜ7 8
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I)
dialogComunicationException
ááI d
)
áád e
;
ááe f
}
àà 
return
ââ 

validation
ââ 
;
ââ 
}
ää 	
private
åå 
bool
åå 
ValidateFields
åå #
(
åå# $
)
åå$ %
{
çç 	
bool
éé 
validateUsername
éé !
=
éé" #
	Validator
éé$ -
.
éé- .
ValidateUsername
éé. >
(
éé> ?
txtb_Username
éé? L
.
ééL M
Text
ééM Q
)
ééQ R
;
ééR S
bool
èè 
validateEmail
èè 
=
èè  
	Validator
èè! *
.
èè* +
ValidateEmail
èè+ 8
(
èè8 9

txtb_Email
èè9 C
.
èèC D
Text
èèD H
)
èèH I
;
èèI J
if
êê 
(
êê 
!
êê 
validateUsername
êê  
)
êê  !
{
ëë 
txtb_Username
íí 
.
íí 
BorderBrush
íí )
=
íí* +
Brushes
íí, 3
.
íí3 4
Red
íí4 7
;
íí7 8
}
ìì 
if
îî 
(
îî 
!
îî 
validateEmail
îî 
)
îî 
{
ïï 

txtb_Email
ññ 
.
ññ 
BorderBrush
ññ &
=
ññ' (
Brushes
ññ) 0
.
ññ0 1
Red
ññ1 4
;
ññ4 5
}
óó 
return
òò 
validateUsername
òò #
&&
òò$ &
validateEmail
òò' 4
;
òò4 5
}
ôô 	
}
öö 
}õõ „t
}C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\StatisticsView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
StatisticsView '
:( )
Page* .
{ 
public  
ObservableCollection #
<# $
PlayerStatistic$ 3
>3 4
WorldStatisticsData5 H
{I J
getK N
;N O
setP S
;S T
}U V
public  
ObservableCollection #
<# $
PlayerStatistic$ 3
>3 4"
PersonalStatisticsData5 K
{L M
getN Q
;Q R
setS V
;V W
}X Y
public 
StatisticsView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
LoadSampleData   
(   
)   
;   
}"" 	
private$$ 
void$$ 
LoadSampleData$$ #
($$# $
)$$$ %
{%% 	
}(( 	
private** 
void** '
BtnPersonalStatistics_Click** 0
(**0 1
object**1 7
sender**8 >
,**> ?
RoutedEventArgs**@ O
e**P Q
)**Q R
{++ 	$
stckp_PersonalStatistics,, $
.,,$ %

Visibility,,% /
=,,0 1

Visibility,,2 <
.,,< =
Visible,,= D
;,,D E!
stckp_WorldStatistics-- !
.--! "

Visibility--" ,
=--- .

Visibility--/ 9
.--9 :
	Collapsed--: C
;--C D"
GetPersonalLeaderBoard.. "
(.." #
)..# $
;..$ %
}00 	
private22 
void22 "
GetPersonalLeaderBoard22 +
(22+ ,
)22, -
{33 	
LoggerManager44 
logger44  
=44! "
new44# &
LoggerManager44' 4
(444 5
this445 9
.449 :
GetType44: A
(44A B
)44B C
)44C D
;44D E
	HiveProxy55 
.55 $
LeaderBoardManagerClient55 .$
leaderBoardManagerClient55/ G
=55H I
new55J M
	HiveProxy55N W
.55W X$
LeaderBoardManagerClient55X p
(55p q
)55q r
;55r s
try66 
{77 
LeaderBoardPlayer88 !
leaderBoardPlayer88" 3
=884 5$
leaderBoardManagerClient886 N
.88N O"
GetPersonalLeaderBoard88O e
(88e f 
UserProfileSingleton88f z
.88z {
	idAccount	88{ Ñ
)
88Ñ Ö
;
88Ö Ü
if99 
(99 
leaderBoardPlayer99 $
.99$ %
	idAccount99% .
==99/ 1
	Constants992 ;
.99; <
NoDataMatches99< I
)99I J
{:: 
DialogManager;; !
.;;! "!
ShowErrorMessageAlert;;" 7
(;;7 8

Properties;;8 B
.;;B C
	Resources;;C L
.;;L M'
dialogNoPersonalLeaderboard;;M h
);;h i
;;;i j
}<< 
else== 
if== 
(== 
leaderBoardPlayer== )
.==) *
	idAccount==* 3
====4 6
	Constants==7 @
.==@ A
ErrorOperation==A O
)==O P
{>> 
DialogManager?? !
.??! "!
ShowErrorMessageAlert??" 7
(??7 8

Properties??8 B
.??B C
	Resources??C L
.??L M
dialogDataBaseError??M `
)??` a
;??a b
}@@ 
elseAA 
{BB "
PersonalStatisticsDataCC *
=CC+ ,
newCC- 0 
ObservableCollectionCC1 E
<CCE F
PlayerStatisticCCF U
>CCU V
{DD 
newEE 
PlayerStatisticEE +
{FF 
ProfileImageGG (
=GG) * 
UserProfileSingletonGG+ ?
.GG? @

imageRouteGG@ J
,GGJ K
NameHH  
=HH! "
leaderBoardPlayerHH# 4
.HH4 5
usernameHH5 =
,HH= >
WinsII  
=II! "
leaderBoardPlayerII# 4
.II4 5
totalWonMatchesII5 D
,IID E
LossesJJ "
=JJ# $
leaderBoardPlayerJJ% 6
.JJ6 7
totalLostMatchesJJ7 G
,JJG H

TotalGamesKK &
=KK' (
leaderBoardPlayerKK) :
.KK: ;
totalMatchesKK; G
}LL 
}MM 
;MM !
dg_PersonalStatisticsNN )
.NN) *
ItemsSourceNN* 5
=NN6 7"
PersonalStatisticsDataNN8 N
;NNN O
}OO 
}PP 
catchQQ 
(QQ %
EndpointNotFoundExceptionQQ ,
endPointExceptionQQ- >
)QQ> ?
{RR 
loggerSS 
.SS 
LogFatalSS 
(SS  
endPointExceptionSS  1
)SS1 2
;SS2 3
DialogManagerTT 
.TT !
ShowErrorMessageAlertTT 3
(TT3 4

PropertiesTT4 >
.TT> ?
	ResourcesTT? H
.TTH I#
dialogEndPointExceptionTTI `
)TT` a
;TTa b
}UU 
catchVV 
(VV 
TimeoutExceptionVV #
timeOutExceptionVV$ 4
)VV4 5
{WW 
loggerXX 
.XX 
LogWarnXX 
(XX 
timeOutExceptionXX /
)XX/ 0
;XX0 1
DialogManagerYY 
.YY !
ShowErrorMessageAlertYY 3
(YY3 4

PropertiesYY4 >
.YY> ?
	ResourcesYY? H
.YYH I"
dialogTimeOutExceptionYYI _
)YY_ `
;YY` a
}ZZ 
catch[[ 
([[ "
CommunicationException[[ )"
communicationException[[* @
)[[@ A
{\\ 
logger]] 
.]] 
LogFatal]] 
(]]  "
communicationException]]  6
)]]6 7
;]]7 8
DialogManager^^ 
.^^ !
ShowErrorMessageAlert^^ 3
(^^3 4

Properties^^4 >
.^^> ?
	Resources^^? H
.^^H I'
dialogComunicationException^^I d
)^^d e
;^^e f
}__ 
}`` 	
privatebb 
voidbb $
BtnWorldStatistics_Clickbb -
(bb- .
objectbb. 4
senderbb5 ;
,bb; <
RoutedEventArgsbb= L
ebbM N
)bbN O
{cc 	$
stckp_PersonalStatisticsdd $
.dd$ %

Visibilitydd% /
=dd0 1

Visibilitydd2 <
.dd< =
	Collapseddd= F
;ddF G!
stckp_WorldStatisticsee !
.ee! "

Visibilityee" ,
=ee- .

Visibilityee/ 9
.ee9 :
Visibleee: A
;eeA B!
GetGlobalLeaderboardsff !
(ff! "
)ff" #
;ff# $
}gg 	
privateii 
voidii !
GetGlobalLeaderboardsii *
(ii* +
)ii+ ,
{jj 	
LoggerManagerkk 
loggerkk  
=kk! "
newkk# &
LoggerManagerkk' 4
(kk4 5
thiskk5 9
.kk9 :
GetTypekk: A
(kkA B
)kkB C
)kkC D
;kkD E
	HiveProxyll 
.ll $
LeaderBoardManagerClientll .$
leaderBoardManagerClientll/ G
=llH I
newllJ M
	HiveProxyllN W
.llW X$
LeaderBoardManagerClientllX p
(llp q
)llq r
;llr s
trymm 
{nn 
LeaderBoardPlayeroo !
[oo! "
]oo" #
leaderBoardsoo$ 0
=oo1 2$
leaderBoardManagerClientoo3 K
.ooK L%
GetAllPlayersLeaderboardsooL e
(ooe f
)oof g
;oog h
Listpp 
<pp 
LeaderBoardPlayerpp &
>pp& '
leaderBoardsSortedpp( :
=pp; <
leaderBoardspp= I
.ppI J
OrderByDescendingppJ [
(pp[ \
leaderboardpp\ g
=>pph j
leaderboardppk v
.ppv w
totalWonMatches	ppw Ü
)
ppÜ á
.
ppá à
ToList
ppà é
(
ppé è
)
ppè ê
;
ppê ë
Listqq 
<qq 
PlayerStatisticqq $
>qq$ %
playerStatisticListqq& 9
=qq: ;
newqq< ?
Listqq@ D
<qqD E
PlayerStatisticqqE T
>qqT U
(qqU V
)qqV W
;qqW X
forrr 
(rr 
intrr #
indexLeaderBoardsSortedrr 0
=rr1 2
$numrr3 4
;rr4 5#
indexLeaderBoardsSortedrr6 M
<rrN O
leaderBoardsSortedrrP b
.rrb c
Countrrc h
;rrh i$
indexLeaderBoardsSorted	rrj Å
++
rrÅ É
)
rrÉ Ñ
{ss 
PlayerStatistictt #
playerStatistictt$ 3
=tt4 5
newtt6 9
PlayerStatistictt: I
(ttI J
)ttJ K
{uu 
Namevv 
=vv 
leaderBoardsSortedvv 1
[vv1 2#
indexLeaderBoardsSortedvv2 I
]vvI J
.vvJ K
usernamevvK S
,vvS T
ProfileImageww $
=ww% &
leaderBoardsSortedww' 9
[ww9 :#
indexLeaderBoardsSortedww: Q
]wwQ R
.wwR S
imageProfilewwS _
,ww_ `

TotalGamesxx "
=xx# $
leaderBoardsSortedxx% 7
[xx7 8#
indexLeaderBoardsSortedxx8 O
]xxO P
.xxP Q
totalMatchesxxQ ]
,xx] ^
Lossesyy 
=yy  
leaderBoardsSortedyy! 3
[yy3 4#
indexLeaderBoardsSortedyy4 K
]yyK L
.yyL M
totalLostMatchesyyM ]
,yy] ^
Winszz 
=zz 
leaderBoardsSortedzz 1
[zz1 2#
indexLeaderBoardsSortedzz2 I
]zzI J
.zzJ K
totalWonMatcheszzK Z
,zzZ [
Rank{{ 
={{ #
indexLeaderBoardsSorted{{ 6
+{{7 8
$num{{9 :
}|| 
;|| 
playerStatisticList}} '
.}}' (
Add}}( +
(}}+ ,
playerStatistic}}, ;
)}}; <
;}}< =
}~~ 
dg_WorldStatistics "
." #
ItemsSource# .
=/ 0
playerStatisticList1 D
;D E
}
ÄÄ 
catch
ÅÅ 
(
ÅÅ '
EndpointNotFoundException
ÅÅ ,
endPointException
ÅÅ- >
)
ÅÅ> ?
{
ÇÇ 
logger
ÉÉ 
.
ÉÉ 
LogFatal
ÉÉ 
(
ÉÉ  
endPointException
ÉÉ  1
)
ÉÉ1 2
;
ÉÉ2 3
DialogManager
ÑÑ 
.
ÑÑ #
ShowErrorMessageAlert
ÑÑ 3
(
ÑÑ3 4

Properties
ÑÑ4 >
.
ÑÑ> ?
	Resources
ÑÑ? H
.
ÑÑH I%
dialogEndPointException
ÑÑI `
)
ÑÑ` a
;
ÑÑa b
}
ÖÖ 
catch
ÜÜ 
(
ÜÜ 
TimeoutException
ÜÜ #
timeOutException
ÜÜ$ 4
)
ÜÜ4 5
{
áá 
logger
àà 
.
àà 
LogWarn
àà 
(
àà 
timeOutException
àà /
)
àà/ 0
;
àà0 1
DialogManager
ââ 
.
ââ #
ShowErrorMessageAlert
ââ 3
(
ââ3 4

Properties
ââ4 >
.
ââ> ?
	Resources
ââ? H
.
ââH I$
dialogTimeOutException
ââI _
)
ââ_ `
;
ââ` a
}
ää 
catch
ãã 
(
ãã $
CommunicationException
ãã )$
communicationException
ãã* @
)
ãã@ A
{
åå 
logger
çç 
.
çç 
LogFatal
çç 
(
çç  $
communicationException
çç  6
)
çç6 7
;
çç7 8
DialogManager
éé 
.
éé #
ShowErrorMessageAlert
éé 3
(
éé3 4

Properties
éé4 >
.
éé> ?
	Resources
éé? H
.
ééH I)
dialogComunicationException
ééI d
)
ééd e
;
éée f
}
èè 
}
êê 	
private
íí 
void
íí 
Image_MouseDown
íí $
(
íí$ %
object
íí% +
sender
íí, 2
,
íí2 3"
MouseButtonEventArgs
íí4 H
e
ííI J
)
ííJ K
{
ìì 	
GoToMainMenuView
îî 
(
îî 
)
îî 
;
îî 
}
ïï 	
private
óó 
void
óó 
GoToMainMenuView
óó %
(
óó% &
)
óó& '
{
òò 	
MainMenu
ôô 
mainMenu
ôô 
=
ôô 
new
ôô  #
MainMenu
ôô$ ,
(
ôô, -
)
ôô- .
;
ôô. /
this
öö 
.
öö 
NavigationService
öö "
.
öö" #
Navigate
öö# +
(
öö+ ,
mainMenu
öö, 4
)
öö4 5
;
öö5 6
}
õõ 	
private
úú 
void
úú !
DataGrid_LoadingRow
úú (
(
úú( )
object
úú) /
sender
úú0 6
,
úú6 7"
DataGridRowEventArgs
úú8 L
e
úúM N
)
úúN O
{
ùù 	
e
üü 
.
üü 
Row
üü 
.
üü 
Header
üü 
=
üü 
(
üü 
e
üü 
.
üü 
Row
üü !
.
üü! "
GetIndex
üü" *
(
üü* +
)
üü+ ,
+
üü- .
$num
üü/ 0
)
üü0 1
.
üü1 2
ToString
üü2 :
(
üü: ;
)
üü; <
;
üü< =
}
†† 	
}
¢¢ 
public
§§ 

class
§§ 
PlayerStatistic
§§  
{
•• 
public
¶¶ 
int
¶¶ 
Rank
¶¶ 
{
¶¶ 
get
¶¶ 
;
¶¶ 
set
¶¶ "
;
¶¶" #
}
¶¶$ %
public
ßß 
string
ßß 
ProfileImage
ßß "
{
ßß# $
get
ßß% (
;
ßß( )
set
ßß* -
;
ßß- .
}
ßß/ 0
public
®® 
string
®® 
Name
®® 
{
®® 
get
®®  
;
®®  !
set
®®" %
;
®®% &
}
®®' (
public
©© 
int
©© 
Wins
©© 
{
©© 
get
©© 
;
©© 
set
©© "
;
©©" #
}
©©$ %
public
™™ 
int
™™ 
Losses
™™ 
{
™™ 
get
™™ 
;
™™  
set
™™! $
;
™™$ %
}
™™& '
public
´´ 
int
´´ 

TotalGames
´´ 
{
´´ 
get
´´  #
;
´´# $
set
´´% (
;
´´( )
}
´´* +
}
¨¨ 
}ÆÆ ê£
{C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\RegisterView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
RegisterView %
:& '
Page( ,
{ 
public 
RegisterView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
pwb_Password 
. 
PasswordChanged (
+=) +'
PwbPassword_PasswordChanged, G
;G H
pwb_ConfirmPassword 
.  
PasswordChanged  /
+=0 2+
ConfirmPassword_PasswordChanged3 R
;R S
} 	
private 
void 
Image_MouseDown $
($ %
object% +
sender, 2
,2 3 
MouseButtonEventArgs4 H
eI J
)J K
{   	
GoToLoginView!! 
(!! 
)!! 
;!! 
}"" 	
private$$ 
void$$ 
GoToLoginView$$ "
($$" #
)$$# $
{%% 	
	LoginView&& 
	loginView&& 
=&&  !
new&&" %
	LoginView&&& /
(&&/ 0
)&&0 1
;&&1 2
this'' 
.'' 
NavigationService'' "
.''" #
Navigate''# +
(''+ ,
	loginView'', 5
)''5 6
;''6 7
}(( 	
private** 
void** "
BtnCreateAccount_Click** +
(**+ ,
object**, 2
sender**3 9
,**9 :
RoutedEventArgs**; J
e**K L
)**L M
{++ 	
RestartColorTxtBox,, 
(,, 
),,  
;,,  !
Profile-- 
newProfileToAdd-- #
=--$ %
new--& )
Profile--* 1
{.. 
username// 
=// 
txtb_Username// (
.//( )
Text//) -
,//- .
password00 
=00 
pwb_Password00 '
.00' (
Password00( 0
,000 1
email11 
=11 

txtb_Email11 "
.11" #
Text11# '
}22 
;22 
if44 
(44 
VerifyField44 
(44 
)44 
)44 
{55 
if66 
(66 !
ValidateSamePasswords66 )
(66) *
)66* +
)66+ ,
{77 
int88 
insertionResult88 '
=88( )
AddUser88* 1
(881 2
newProfileToAdd882 A
)88A B
;88B C
if99 
(99 
insertionResult99 '
==99( *
$num99+ ,
)99, -
{:: 
DialogManager;; %
.;;% &#
ShowSuccessMessageAlert;;& =
(;;= >

Properties;;> H
.;;H I
	Resources;;I R
.;;R S 
dialogAccountCreated;;S g
);;g h
;;;h i
GoToLoginView<< %
(<<% &
)<<& '
;<<' (
}== 
}>> 
else?? 
{@@ 
DialogManagerAA !
.AA! "#
ShowWarningMessageAlertAA" 9
(AA9 :

PropertiesAA: D
.AAD E
	ResourcesAAE N
.AAN O%
dialogMissmatchesPasswordAAO h
)AAh i
;AAi j
}BB 
}CC 
elseDD 
{EE 
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4

PropertiesFF4 >
.FF> ?
	ResourcesFF? H
.FFH I
dialogWrongDataFFI X
)FFX Y
;FFY Z
}GG 
}HH 	
publicJJ 
intJJ 
AddUserJJ 
(JJ 
ProfileJJ "
profileJJ# *
)JJ* +
{KK 	
LoggerManagerLL 
loggerLL  
=LL! "
newLL# &
LoggerManagerLL' 4
(LL4 5
thisLL5 9
.LL9 :
GetTypeLL: A
(LLA B
)LLB C
)LLC D
;LLD E
intMM 
insertionResultMM 
=MM  !
-MM" #
$numMM# $
;MM$ %
tryOO 
{PP 
	HiveProxyQQ 
.QQ 
UserManagerClientQQ +
userManagerClientQQ, =
=QQ> ?
newQQ@ C
	HiveProxyQQD M
.QQM N
UserManagerClientQQN _
(QQ_ `
)QQ` a
;QQa b
intRR 
validationExistedRR %
=RR& '
userManagerClientRR( 9
.RR9 :&
VerifyExistingAccesAccountRR: T
(RRT U
profileRRU \
.RR\ ]
emailRR] b
,RRb c
profileRRd k
.RRk l
usernameRRl t
)RRt u
;RRu v
ifTT 
(TT 
validationExistedTT %
==TT& (
$numTT) *
)TT* +
{UU 
ProfileVV 
newProfileToAddVV +
=VV, -*
AddDefaultInformationToProfileVV. L
(VVL M
profileVVM T
)VVT U
;VVU V
insertionResultWW #
=WW$ %
userManagerClientWW& 7
.WW7 8
AddUserWW8 ?
(WW? @
newProfileToAddWW@ O
)WWO P
;WWP Q
}XX 
elseYY 
ifYY 
(YY 
validationExistedYY *
>=YY+ -
$numYY. /
)YY/ 0
{ZZ 
DialogManager[[ !
.[[! "!
ShowErrorMessageAlert[[" 7
([[7 8

Properties[[8 B
.[[B C
	Resources[[C L
.[[L M 
dialogExistinAccount[[M a
)[[a b
;[[b c
}\\ 
else]] 
if]] 
(]] 
validationExisted]] *
==]]+ -
-]]. /
$num]]/ 0
)]]0 1
{^^ 
DialogManager__ !
.__! "!
ShowErrorMessageAlert__" 7
(__7 8

Properties__8 B
.__B C
	Resources__C L
.__L M
dialogDataBaseError__M `
)__` a
;__a b
}`` 
}aa 
catchbb 
(bb %
EndpointNotFoundExceptionbb ,
endPointExceptionbb- >
)bb> ?
{cc 
loggerdd 
.dd 
LogFataldd 
(dd  
endPointExceptiondd  1
)dd1 2
;dd2 3
DialogManageree 
.ee !
ShowErrorMessageAlertee 3
(ee3 4

Propertiesee4 >
.ee> ?
	Resourcesee? H
.eeH I#
dialogEndPointExceptioneeI `
)ee` a
;eea b
}ff 
catchgg 
(gg 
TimeoutExceptiongg #
timeOutExceptiongg$ 4
)gg4 5
{hh 
loggerii 
.ii 
LogWarnii 
(ii 
timeOutExceptionii /
)ii/ 0
;ii0 1
DialogManagerjj 
.jj !
ShowErrorMessageAlertjj 3
(jj3 4

Propertiesjj4 >
.jj> ?
	Resourcesjj? H
.jjH I"
dialogTimeOutExceptionjjI _
)jj_ `
;jj` a
}kk 
catchll 
(ll "
CommunicationExceptionll )"
communicationExceptionll* @
)ll@ A
{mm 
loggernn 
.nn 
LogFatalnn 
(nn  "
communicationExceptionnn  6
)nn6 7
;nn7 8
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I'
dialogComunicationExceptionooI d
)ood e
;ooe f
}pp 
returnrr 
insertionResultrr "
;rr" #
}ss 	
publicuu 
Profileuu *
AddDefaultInformationToProfileuu 5
(uu5 6
Profileuu6 =
profileuu> E
)uuE F
{vv 	
stringww 
hashedPasswordww !
=ww" #
Hasherww$ *
.ww* +

hashToSHA2ww+ 5
(ww5 6
profileww6 =
.ww= >
passwordww> F
)wwF G
;wwG H
Profileyy 

newProfileyy 
=yy  
newyy! $
Profileyy% ,
{zz 
email{{ 
={{ 
profile{{ 
.{{  
email{{  %
,{{% &
username|| 
=|| 
profile|| "
.||" #
username||# +
,||+ ,
password}} 
=}} 
hashedPassword}} )
,}}) *
nickname~~ 
=~~ 
profile~~ "
.~~" #
username~~# +
,~~+ ,
	imagePath 
= 
ProfileGenerator ,
., -#
RandomChooserAvatarIcon- D
(D E
)E F
,F G
createdDate
ÄÄ 
=
ÄÄ 
DateTime
ÄÄ &
.
ÄÄ& '
Now
ÄÄ' *
,
ÄÄ* +
description
ÅÅ 
=
ÅÅ 
ProfileGenerator
ÅÅ .
.
ÅÅ. /(
RandomDescriptionGenerator
ÅÅ/ I
(
ÅÅI J
)
ÅÅJ K
,
ÅÅK L

reputation
ÇÇ 
=
ÇÇ 
$num
ÇÇ  
}
ÉÉ 
;
ÉÉ 
return
ÖÖ 

newProfile
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
public
àà 
bool
àà #
ValidateSamePasswords
àà )
(
àà) *
)
àà* +
{
ââ 	
return
ää "
txtb_PasswordDisplay
ää '
.
ää' (
Text
ää( ,
==
ää- /)
txtb_ConfirmPasswordDisplay
ää0 K
.
ääK L
Text
ääL P
;
ääP Q
}
ãã 	
public
çç 
void
çç  
RestartColorTxtBox
çç &
(
çç& '
)
çç' (
{
éé 	
txtb_Username
èè 
.
èè 
BorderBrush
èè %
=
èè& '
Brushes
èè( /
.
èè/ 0
White
èè0 5
;
èè5 6

txtb_Email
êê 
.
êê 
BorderBrush
êê "
=
êê# $
Brushes
êê% ,
.
êê, -
White
êê- 2
;
êê2 3
brd_Password
ëë 
.
ëë 
BorderBrush
ëë $
=
ëë% &
Brushes
ëë' .
.
ëë. /
White
ëë/ 4
;
ëë4 5!
brd_PasswordConfirm
íí 
.
íí  
BorderBrush
íí  +
=
íí, -
Brushes
íí. 5
.
íí5 6
White
íí6 ;
;
íí; <
}
ìì 	
public
ïï 
bool
ïï 
VerifyField
ïï 
(
ïï  
)
ïï  !
{
ññ 	
bool
óó 
username
óó 
=
óó 
	Validator
óó %
.
óó% &
ValidateUsername
óó& 6
(
óó6 7
txtb_Username
óó7 D
.
óóD E
Text
óóE I
)
óóI J
;
óóJ K
bool
òò 
email
òò 
=
òò 
	Validator
òò "
.
òò" #
ValidateEmail
òò# 0
(
òò0 1

txtb_Email
òò1 ;
.
òò; <
Text
òò< @
)
òò@ A
;
òòA B
bool
ôô 
password
ôô 
=
ôô 
	Validator
ôô %
.
ôô% &
ValidatePassword
ôô& 6
(
ôô6 7
pwb_Password
ôô7 C
.
ôôC D
Password
ôôD L
)
ôôL M
;
ôôM N
bool
öö 
confirmPassword
öö  
=
öö! "
	Validator
öö# ,
.
öö, -
ValidatePassword
öö- =
(
öö= >
pwb_Password
öö> J
.
ööJ K
Password
ööK S
)
ööS T
;
ööT U
if
úú 
(
úú 
!
úú 
username
úú 
)
úú 
txtb_Username
úú (
.
úú( )
BorderBrush
úú) 4
=
úú5 6
Brushes
úú7 >
.
úú> ?
Red
úú? B
;
úúB C
if
ùù 
(
ùù 
!
ùù 
email
ùù 
)
ùù 

txtb_Email
ùù "
.
ùù" #
BorderBrush
ùù# .
=
ùù/ 0
Brushes
ùù1 8
.
ùù8 9
Red
ùù9 <
;
ùù< =
if
ûû 
(
ûû 
!
ûû 
password
ûû 
)
ûû 
brd_Password
ûû '
.
ûû' (
BorderBrush
ûû( 3
=
ûû4 5
Brushes
ûû6 =
.
ûû= >
Red
ûû> A
;
ûûA B
if
üü 
(
üü 
!
üü 
confirmPassword
üü  
)
üü  !!
brd_PasswordConfirm
üü" 5
.
üü5 6
BorderBrush
üü6 A
=
üüB C
Brushes
üüD K
.
üüK L
Red
üüL O
;
üüO P
return
°° 
username
°° 
&&
°° 
password
°° '
&&
°°( *
email
°°+ 0
&&
°°1 3
confirmPassword
°°4 C
;
°°C D
}
¢¢ 	
private
§§ 
void
§§ )
PwbPassword_PasswordChanged
§§ 0
(
§§0 1
object
§§1 7
sender
§§8 >
,
§§> ?
RoutedEventArgs
§§@ O
e
§§P Q
)
§§Q R
{
•• 	*
UpdatePasswordVisibilityIcon
¶¶ (
(
¶¶( )
pwb_Password
¶¶) 5
,
¶¶5 6&
tgbtn_PasswordVisibility
¶¶7 O
)
¶¶O P
;
¶¶P Q+
UpdatePetImageBasedOnPassword
ßß )
(
ßß) *
)
ßß* +
;
ßß+ ,
}
®® 	
private
™™ 
void
™™ -
ConfirmPassword_PasswordChanged
™™ 4
(
™™4 5
object
™™5 ;
sender
™™< B
,
™™B C
RoutedEventArgs
™™D S
e
™™T U
)
™™U V
{
´´ 	*
UpdatePasswordVisibilityIcon
¨¨ (
(
¨¨( )!
pwb_ConfirmPassword
¨¨) <
,
¨¨< =-
tgbtn_ConfirmPasswordVisibility
¨¨> ]
)
¨¨] ^
;
¨¨^ _+
UpdatePetImageBasedOnPassword
≠≠ )
(
≠≠) *
)
≠≠* +
;
≠≠+ ,
}
ÆÆ 	
private
∞∞ 
void
∞∞ -
BtnPasswordVisibility_MouseDown
∞∞ 4
(
∞∞4 5
object
∞∞5 ;
sender
∞∞< B
,
∞∞B C"
MouseButtonEventArgs
∞∞D X
e
∞∞Y Z
)
∞∞Z [
{
±± 	&
TogglePasswordVisibility
≤≤ $
(
≤≤$ %
true
≤≤% )
,
≤≤) *

isPassword
≤≤+ 5
:
≤≤5 6
true
≤≤7 ;
)
≤≤; <
;
≤≤< =
ChangePetImage
≥≥ 
(
≥≥ 
$str
≥≥ G
)
≥≥G H
;
≥≥H I
}
¥¥ 	
private
∂∂ 
void
∂∂ +
BtnPasswordVisibility_MouseUp
∂∂ 2
(
∂∂2 3
object
∂∂3 9
sender
∂∂: @
,
∂∂@ A"
MouseButtonEventArgs
∂∂B V
e
∂∂W X
)
∂∂X Y
{
∑∑ 	&
TogglePasswordVisibility
∏∏ $
(
∏∏$ %
false
∏∏% *
,
∏∏* +

isPassword
∏∏, 6
:
∏∏6 7
true
∏∏8 <
)
∏∏< =
;
∏∏= >
}
ππ 	
private
ªª 
void
ªª 4
&BtnConfirmPasswordVisibility_MouseDown
ªª ;
(
ªª; <
object
ªª< B
sender
ªªC I
,
ªªI J"
MouseButtonEventArgs
ªªK _
e
ªª` a
)
ªªa b
{
ºº 	&
TogglePasswordVisibility
ΩΩ $
(
ΩΩ$ %
true
ΩΩ% )
,
ΩΩ) *

isPassword
ΩΩ+ 5
:
ΩΩ5 6
false
ΩΩ7 <
)
ΩΩ< =
;
ΩΩ= >
ChangePetImage
ææ 
(
ææ 
$str
ææ G
)
ææG H
;
ææH I
}
øø 	
private
¡¡ 
void
¡¡ 2
$BtnConfirmPasswordVisibility_MouseUp
¡¡ 9
(
¡¡9 :
object
¡¡: @
sender
¡¡A G
,
¡¡G H"
MouseButtonEventArgs
¡¡I ]
e
¡¡^ _
)
¡¡_ `
{
¬¬ 	&
TogglePasswordVisibility
√√ $
(
√√$ %
false
√√% *
,
√√* +

isPassword
√√, 6
:
√√6 7
false
√√8 =
)
√√= >
;
√√> ?
}
ƒƒ 	
private
∆∆ 
void
∆∆ *
UpdatePasswordVisibilityIcon
∆∆ 1
(
∆∆1 2
PasswordBox
∆∆2 =
passwordBox
∆∆> I
,
∆∆I J
ToggleButton
∆∆K W
toggleButton
∆∆X d
)
∆∆d e
{
«« 	
toggleButton
»» 
.
»» 

Visibility
»» #
=
»»$ %
!
»»& '
string
»»' -
.
»»- .
IsNullOrEmpty
»». ;
(
»»; <
passwordBox
»»< G
.
»»G H
Password
»»H P
)
»»P Q
?
»»R S

Visibility
»»T ^
.
»»^ _
Visible
»»_ f
:
»»g h

Visibility
»»i s
.
»»s t
	Collapsed
»»t }
;
»»} ~
}
…… 	
private
ÀÀ 
void
ÀÀ &
TogglePasswordVisibility
ÀÀ -
(
ÀÀ- .
bool
ÀÀ. 2
	isVisible
ÀÀ3 <
,
ÀÀ< =
bool
ÀÀ> B

isPassword
ÀÀC M
)
ÀÀM N
{
ÃÃ 	
if
ÕÕ 
(
ÕÕ 

isPassword
ÕÕ 
)
ÕÕ 
{
ŒŒ 
ToggleVisibility
œœ  
(
œœ  !
	isVisible
œœ! *
,
œœ* +
brd_Password
œœ, 8
,
œœ8 9!
brd_PasswordDisplay
œœ: M
,
œœM N"
txtb_PasswordDisplay
œœO c
,
œœc d
pwb_Password
œœe q
)
œœq r
;
œœr s
}
–– 
else
—— 
{
““ 
ToggleVisibility
””  
(
””  !
	isVisible
””! *
,
””* +!
pwb_ConfirmPassword
””, ?
,
””? @(
brd_PasswordDisplayConfirm
””A [
,
””[ \)
txtb_ConfirmPasswordDisplay
””] x
,
””x y"
pwb_ConfirmPassword””z ç
)””ç é
;””é è
}
‘‘ 
}
’’ 	
private
◊◊ 
void
◊◊ 
ToggleVisibility
◊◊ %
(
◊◊% &
bool
◊◊& *
	isVisible
◊◊+ 4
,
◊◊4 5
	UIElement
◊◊6 ?
passwordElement
◊◊@ O
,
◊◊O P
	UIElement
◊◊Q Z
displayElement
◊◊[ i
,
◊◊i j
TextBox
◊◊k r
displayTextBox◊◊s Å
,◊◊Å Ç
PasswordBox◊◊É é
passwordBox◊◊è ö
)◊◊ö õ
{
ÿÿ 	
passwordElement
ŸŸ 
.
ŸŸ 

Visibility
ŸŸ &
=
ŸŸ' (
	isVisible
ŸŸ) 2
?
ŸŸ3 4

Visibility
ŸŸ5 ?
.
ŸŸ? @
	Collapsed
ŸŸ@ I
:
ŸŸJ K

Visibility
ŸŸL V
.
ŸŸV W
Visible
ŸŸW ^
;
ŸŸ^ _
displayElement
⁄⁄ 
.
⁄⁄ 

Visibility
⁄⁄ %
=
⁄⁄& '
	isVisible
⁄⁄( 1
?
⁄⁄2 3

Visibility
⁄⁄4 >
.
⁄⁄> ?
Visible
⁄⁄? F
:
⁄⁄G H

Visibility
⁄⁄I S
.
⁄⁄S T
	Collapsed
⁄⁄T ]
;
⁄⁄] ^
if
‹‹ 
(
‹‹ 
	isVisible
‹‹ 
)
‹‹ 
displayTextBox
›› 
.
›› 
Text
›› #
=
››$ %
passwordBox
››& 1
.
››1 2
Password
››2 :
;
››: ;
else
ﬁﬁ 
passwordBox
ﬂﬂ 
.
ﬂﬂ 
Password
ﬂﬂ $
=
ﬂﬂ% &
displayTextBox
ﬂﬂ' 5
.
ﬂﬂ5 6
Text
ﬂﬂ6 :
;
ﬂﬂ: ;
}
‡‡ 	
private
„„ 
void
„„ +
UpdatePetImageBasedOnPassword
„„ 2
(
„„2 3
)
„„3 4
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
string
ÂÂ 
.
ÂÂ 
IsNullOrEmpty
ÂÂ $
(
ÂÂ$ %
pwb_Password
ÂÂ% 1
.
ÂÂ1 2
Password
ÂÂ2 :
)
ÂÂ: ;
&&
ÂÂ< >
string
ÂÂ? E
.
ÂÂE F
IsNullOrEmpty
ÂÂF S
(
ÂÂS T!
pwb_ConfirmPassword
ÂÂT g
.
ÂÂg h
Password
ÂÂh p
)
ÂÂp q
)
ÂÂq r
{
ÊÊ 
ChangePetImage
ÁÁ 
(
ÁÁ 
$str
ÁÁ ;
)
ÁÁ; <
;
ÁÁ< =
}
ËË 
else
ÈÈ 
{
ÍÍ 
ChangePetImage
ÎÎ 
(
ÎÎ 
$str
ÎÎ H
)
ÎÎH I
;
ÎÎI J
}
ÏÏ 
}
ÌÌ 	
private
ÔÔ 
void
ÔÔ 
ChangePetImage
ÔÔ #
(
ÔÔ# $
string
ÔÔ$ *
	imagePath
ÔÔ+ 4
)
ÔÔ4 5
{
 	
img_Pet
ÒÒ 
.
ÒÒ 
Source
ÒÒ 
=
ÒÒ 
new
ÒÒ  
BitmapImage
ÒÒ! ,
(
ÒÒ, -
new
ÒÒ- 0
Uri
ÒÒ1 4
(
ÒÒ4 5
	imagePath
ÒÒ5 >
,
ÒÒ> ?
UriKind
ÒÒ@ G
.
ÒÒG H
Relative
ÒÒH P
)
ÒÒP Q
)
ÒÒQ R
;
ÒÒR S
}
ÚÚ 	
}
ıı 
}ˆˆ ñ_
~C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\EditProfileView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
EditProfileView (
:) *
Page+ /
{ 
private 
string 
imageRouteProfile (
=) * 
UserProfileSingleton+ ?
.? @

imageRoute@ J
;J K
public 
EditProfileView 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "+
ChargeAccountProfileInformation +
(+ ,
), -
;- .
} 	
private!! 
void!! 
Image_MouseDown!! $
(!!$ %
object!!% +
sender!!, 2
,!!2 3 
MouseButtonEventArgs!!4 H
e!!I J
)!!J K
{"" 	
GoToMainMenuView## 
(## 
)## 
;## 
}$$ 	
private&& 
void&& +
ChargeAccountProfileInformation&& 4
(&&4 5
)&&5 6
{'' 	
txtb_Description(( 
.(( 
Text(( !
=((" # 
UserProfileSingleton(($ 8
.((8 9
description((9 D
;((D E
txtb_Nickname)) 
.)) 
Text)) 
=))   
UserProfileSingleton))! 5
.))5 6
nickname))6 >
;))> ?
img_ProfilePic** 
.** 
Source** !
=**" #
new**$ '
BitmapImage**( 3
(**3 4
new**4 7
Uri**8 ;
(**; < 
UserProfileSingleton**< P
.**P Q

imageRoute**Q [
,**[ \
UriKind**] d
.**d e
Relative**e m
)**m n
)**n o
;**o p
}++ 	
private-- 
void-- 
GoToMainMenuView-- %
(--% &
)--& '
{.. 	
MainMenu// 
mainMenu// 
=// 
new//  #
MainMenu//$ ,
(//, -
)//- .
;//. /
this00 
.00 
NavigationService00 "
.00" #
Navigate00# +
(00+ ,
mainMenu00, 4
)004 5
;005 6
}11 	
private22 
void22 "
ChangeProfilePic_Click22 +
(22+ ,
object22, 2
sender223 9
,229 :
RoutedEventArgs22; J
e22K L
)22L M
{33 	
popup_Profile44 
.44 
IsOpen44  
=44! "
true44# '
;44' (
}55 	
private77 
void77 ,
 ListProfilePics_SelectionChanged77 5
(775 6
object776 <
sender77= C
,77C D%
SelectionChangedEventArgs77E ^
e77_ `
)77` a
{88 	
if99 
(99 
lsb_ProfilePics99 
.99  
SelectedItem99  ,
is99- /
ListBoxItem990 ;
selectedItem99< H
)99H I
{:: 
string;; 
selectedImage;; $
=;;% &
selectedItem;;' 3
.;;3 4
Tag;;4 7
.;;7 8
ToString;;8 @
(;;@ A
);;A B
;;;B C
img_ProfilePic<< 
.<< 
Source<< %
=<<& '
new<<( +
BitmapImage<<, 7
(<<7 8
new<<8 ;
Uri<<< ?
(<<? @
selectedImage<<@ M
,<<M N
UriKind<<O V
.<<V W
Relative<<W _
)<<_ `
)<<` a
;<<a b
imageRouteProfile== !
===" #
selectedImage==$ 1
;==1 2
popup_Profile>> 
.>> 
IsOpen>> $
=>>% &
false>>' ,
;>>, -
}?? 
}@@ 	
privateBB 
voidBB 
BtnConfirm_ClickBB %
(BB% &
objectBB& ,
senderBB- 3
,BB3 4
RoutedEventArgsBB5 D
eBBE F
)BBF G
{CC 	
RecolorFieldsDD 
(DD 
)DD 
;DD 
ifEE 
(EE 
ValidateFieldsEE 
(EE 
)EE  
)EE  !
{FF 
ifGG 
(GG 
!GG  
ValidateModificationGG )
(GG) *
)GG* +
)GG+ ,
{HH 
ModifyUserProfileII %
(II% &
)II& '
;II' (
}JJ 
elseKK 
{LL 
DialogManagerMM !
.MM! "#
ShowWarningMessageAlertMM" 9
(MM9 :

PropertiesMM: D
.MMD E
	ResourcesMME N
.MMN O-
!dialogSameDataProfileModificationMMO p
)MMp q
;MMq r
}NN 
}OO 
elsePP 
{QQ 
DialogManagerRR 
.RR !
ShowErrorMessageAlertRR 3
(RR3 4

PropertiesRR4 >
.RR> ?
	ResourcesRR? H
.RRH I
dialogWrongDataRRI X
)RRX Y
;RRY Z
}SS 
}TT 	
publicVV 
voidVV 
ModifyUserProfileVV %
(VV% &
)VV& '
{WW 	
LoggerManagerXX 
loggerXX  
=XX! "
newXX# &
LoggerManagerXX' 4
(XX4 5
thisXX5 9
.XX9 :
GetTypeXX: A
(XXA B
)XXB C
)XXC D
;XXD E
ProfileYY 
profileToUpdateYY #
=YY$ %
newYY& )
ProfileYY* 1
(YY1 2
)YY2 3
;YY3 4
profileToUpdateZZ 
.ZZ 
nicknameZZ $
=ZZ% &
txtb_NicknameZZ' 4
.ZZ4 5
TextZZ5 9
;ZZ9 :
profileToUpdate[[ 
.[[ 
description[[ '
=[[( )
txtb_Description[[* :
.[[: ;
Text[[; ?
;[[? @
profileToUpdate\\ 
.\\ 
	imagePath\\ %
=\\& '
imageRouteProfile\\( 9
;\\9 :
try]] 
{^^ 
	HiveProxy__ 
.__ 
UserManagerClient__ +
userManager__, 7
=__8 9
new__: =
	HiveProxy__> G
.__G H
UserManagerClient__H Y
(__Y Z
)__Z [
;__[ \
int`` 
modificationResult`` &
=``' (
userManager``) 4
.``4 5
UpdateProfile``5 B
(``B C
profileToUpdate``C R
,``R S 
UserProfileSingleton``T h
.``h i
email``i n
)``n o
;``o p
ifaa 
(aa 
modificationResultaa %
==aa& (
$numaa) *
)aa* +
{bb 
DialogManagercc !
.cc! "#
ShowSuccessMessageAlertcc" 9
(cc9 :

Propertiescc: D
.ccD E
	ResourcesccE N
.ccN O
dialogUpdatedDataccO `
)cc` a
;cca b 
UserProfileSingletondd (
.dd( )
nicknamedd) 1
=dd2 3
txtb_Nicknamedd4 A
.ddA B
TextddB F
;ddF G 
UserProfileSingletonee (
.ee( )
descriptionee) 4
=ee5 6
txtb_Descriptionee7 G
.eeG H
TexteeH L
;eeL M 
UserProfileSingletonff (
.ff( )

imageRouteff) 3
=ff4 5
imageRouteProfileff6 G
;ffG H
GoToMainMenuViewgg $
(gg$ %
)gg% &
;gg& '
}hh 
elsehh 
ifhh 
(hh 
modificationResulthh +
==hh, .
-hh/ 0
$numhh0 1
)hh1 2
{ii 
DialogManagerjj !
.jj! "!
ShowErrorMessageAlertjj" 7
(jj7 8

Propertiesjj8 B
.jjB C
	ResourcesjjC L
.jjL M
dialogDataBaseErrorjjM `
)jj` a
;jja b
}kk 
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm ,
endPointExceptionmm- >
)mm> ?
{nn 
loggeroo 
.oo 
LogFataloo 
(oo  
endPointExceptionoo  1
)oo1 2
;oo2 3
DialogManagerpp 
.pp !
ShowErrorMessageAlertpp 3
(pp3 4

Propertiespp4 >
.pp> ?
	Resourcespp? H
.ppH I#
dialogEndPointExceptionppI `
)pp` a
;ppa b
}qq 
catchrr 
(rr 
TimeoutExceptionrr #
timeOutExceptionrr$ 4
)rr4 5
{ss 
loggertt 
.tt 
LogWarntt 
(tt 
timeOutExceptiontt /
)tt/ 0
;tt0 1
DialogManageruu 
.uu !
ShowErrorMessageAlertuu 3
(uu3 4

Propertiesuu4 >
.uu> ?
	Resourcesuu? H
.uuH I"
dialogTimeOutExceptionuuI _
)uu_ `
;uu` a
}vv 
catchww 
(ww "
CommunicationExceptionww )"
communicationExceptionww* @
)ww@ A
{xx 
loggeryy 
.yy 
LogFatalyy 
(yy  "
communicationExceptionyy  6
)yy6 7
;yy7 8
DialogManagerzz 
.zz !
ShowErrorMessageAlertzz 3
(zz3 4

Propertieszz4 >
.zz> ?
	Resourceszz? H
.zzH I'
dialogComunicationExceptionzzI d
)zzd e
;zze f
}{{ 
}|| 	
private~~ 
bool~~  
ValidateModification~~ )
(~~) *
)~~* +
{ 	
return
ÄÄ 
txtb_Description
ÄÄ #
.
ÄÄ# $
Text
ÄÄ$ (
==
ÄÄ) +"
UserProfileSingleton
ÄÄ, @
.
ÄÄ@ A
description
ÄÄA L
&&
ÄÄM O
txtb_Nickname
ÄÄP ]
.
ÄÄ] ^
Text
ÄÄ^ b
==
ÄÄc e"
UserProfileSingleton
ÄÄf z
.
ÄÄz {
nicknameÄÄ{ É
&&ÄÄÑ Ü
imageRouteProfile
ÅÅ !
==
ÅÅ" $"
UserProfileSingleton
ÅÅ% 9
.
ÅÅ9 :

imageRoute
ÅÅ: D
;
ÅÅD E
}
ÇÇ 	
public
ÑÑ 
bool
ÑÑ 
ValidateFields
ÑÑ "
(
ÑÑ" #
)
ÑÑ# $
{
ÖÖ 	
bool
ÜÜ  
nicknameValidation
ÜÜ #
=
ÜÜ$ %
	Validator
ÜÜ& /
.
ÜÜ/ 0
ValidateNickName
ÜÜ0 @
(
ÜÜ@ A
txtb_Nickname
ÜÜA N
.
ÜÜN O
Text
ÜÜO S
)
ÜÜS T
;
ÜÜT U
bool
áá #
descriptionValidation
áá &
=
áá' (
	Validator
áá) 2
.
áá2 3!
ValidateDescription
áá3 F
(
ááF G
txtb_Description
ááG W
.
ááW X
Text
ááX \
)
áá\ ]
;
áá] ^
if
àà 
(
àà 
!
àà  
nicknameValidation
àà #
)
àà# $
{
ââ 
txtb_Nickname
ää 
.
ää 
BorderBrush
ää )
=
ää* +
Brushes
ää, 3
.
ää3 4
Red
ää4 7
;
ää7 8
}
ãã 
if
åå 
(
åå 
!
åå #
descriptionValidation
åå &
)
åå& '
{
çç 
txtb_Description
éé  
.
éé  !
BorderBrush
éé! ,
=
éé- .
Brushes
éé/ 6
.
éé6 7
Red
éé7 :
;
éé: ;
}
èè 
return
êê  
nicknameValidation
êê %
&&
êê& (#
descriptionValidation
êê) >
;
êê> ?
}
ëë 	
public
ìì 
void
ìì 
RecolorFields
ìì !
(
ìì! "
)
ìì" #
{
îî 	
txtb_Description
ïï 
.
ïï 
BorderBrush
ïï (
=
ïï) *
Brushes
ïï+ 2
.
ïï2 3
White
ïï3 8
;
ïï8 9
txtb_Nickname
ññ 
.
ññ 
BorderBrush
ññ %
=
ññ& '
Brushes
ññ( /
.
ññ/ 0
White
ññ0 5
;
ññ5 6
}
óó 	
}
ôô 
}öö µÿ
xC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\LoginView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
	LoginView "
:# $
Page% )
{ 
public 
	LoginView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
pwb_Password 
. 
PasswordChanged (
+=) +'
PwbPassword_PasswordChanged, G
;G H
if 
( 
App 
. 
IsMusicPlaying "
)" #
{ 
App 
. 
	PlayMusic 
( 
$str /
)/ 0
;0 1
} 
} 	
private   
void   
BtnLogin_Click   #
(  # $
object  $ *
sender  + 1
,  1 2
RoutedEventArgs  3 B
e  C D
)  D E
{!! 	
txtb_Username"" 
."" 
BorderBrush"" %
=""& '
new""( +
SolidColorBrush"", ;
(""; <
Colors""< B
.""B C
White""C H
)""H I
;""I J
brd_Password## 
.## 
BorderBrush## $
=##% &
new##' *
SolidColorBrush##+ :
(##: ;
Colors##; A
.##A B
White##B G
)##G H
;##H I
Profile%% 
userAccount%% 
=%%  !
new%%" %
Profile%%& -
{&& 
username'' 
='' 
txtb_Username'' (
.''( )
Text'') -
,''- .
password(( 
=(( 
pwb_Password(( '
.((' (
Password((( 0
})) 
;)) 
if++ 
(++ 
verifyFields++ 
(++ 
)++ 
)++ 
{,, 
int-- 
validateCredentials-- '
=--( )
ValidateCredentials--* =
(--= >
userAccount--> I
)--I J
;--J K
if// 
(// 
validateCredentials// '
==//( *
$num//+ ,
)//, -
{00 '
ValidateExistingUserSession11 /
(11/ 0
)110 1
;111 2
}22 
else33 
if33 
(33 
validateCredentials33 ,
==33- /
$num330 1
)331 2
{44 
DialogManager55 !
.55! "!
ShowErrorMessageAlert55" 7
(557 8

Properties558 B
.55B C
	Resources55C L
.55L M(
dialogMissmatchesCredentials55M i
)55i j
;55j k
}66 
}77 
else88 
{99 
DialogManager:: 
.:: !
ShowErrorMessageAlert:: 3
(::3 4

Properties::4 >
.::> ?
	Resources::? H
.::H I
dialogWrongData::I X
)::X Y
;::Y Z
};; 
}<< 	
public>> 
bool>> 
verifyFields>>  
(>>  !
)>>! "
{?? 	
bool@@ 
passwordValidation@@ #
=@@$ %
	Validator@@& /
.@@/ 0
ValidatePassword@@0 @
(@@@ A
pwb_Password@@A M
.@@M N
Password@@N V
)@@V W
;@@W X
boolAA 
usernameValidationAA #
=AA$ %
	ValidatorAA& /
.AA/ 0
ValidateUsernameAA0 @
(AA@ A
txtb_UsernameAAA N
.AAN O
TextAAO S
)AAS T
;AAT U
ifCC 
(CC 
!CC 
passwordValidationCC #
)CC# $
{DD 
brd_PasswordEE 
.EE 
BorderBrushEE (
=EE) *
BrushesEE+ 2
.EE2 3
RedEE3 6
;EE6 7
}FF 
ifGG 
(GG 
!GG 
usernameValidationGG #
)GG# $
{HH 
txtb_UsernameII 
.II 
BorderBrushII )
=II* +
BrushesII, 3
.II3 4
RedII4 7
;II7 8
}JJ 
returnLL 
passwordValidationLL %
&&LL& (
usernameValidationLL) ;
;LL; <
}MM 	
publicOO 
voidOO '
ValidateExistingUserSessionOO /
(OO/ 0
)OO0 1
{PP 	
boolQQ %
existingSessionValidationQQ *
=QQ+ ,
falseQQ- 2
;QQ2 3
LoggerManagerRR 
loggerRR  
=RR! "
newRR# &
LoggerManagerRR' 4
(RR4 5
thisRR5 9
.RR9 :
GetTypeRR: A
(RRA B
)RRB C
)RRC D
;RRD E
	HiveProxySS 
.SS $
UserSessionManagerClientSS .$
userSessionManagerClientSS/ G
=SSH I
newSSJ M$
UserSessionManagerClientSSN f
(SSf g
)SSg h
;SSh i
tryTT 
{UU 
UserSessionVV 
sessionVV #
=VV$ %
newVV& )
UserSessionVV* 5
(VV5 6
)VV6 7
{WW 
usernameXX 
=XX  
UserProfileSingletonXX 3
.XX3 4
usernameXX4 <
,XX< =
	idAccountYY 
=YY  
UserProfileSingletonYY  4
.YY4 5
	idAccountYY5 >
}ZZ 
;ZZ %
existingSessionValidation[[ )
=[[* +$
userSessionManagerClient[[, D
.[[D E
VerifyConnectivity[[E W
([[W X
session[[X _
)[[_ `
;[[` a
if\\ 
(\\ %
existingSessionValidation\\ -
)\\- .
{]] 
DialogManager^^ !
.^^! "#
ShowWarningMessageAlert^^" 9
(^^9 :

Properties^^: D
.^^D E
	Resources^^E N
.^^N O!
dialogExistingSession^^O d
)^^d e
;^^e f
}__ 
else`` 
{aa $
userSessionManagerClientbb ,
.bb, -
ConnectToGamebb- :
(bb: ;
sessionbb; B
)bbB C
;bbC D
DisplayMainMenuViewcc '
(cc' (
)cc( )
;cc) *
}dd 
}ee 
catchff 
(ff %
EndpointNotFoundExceptionff ,
endPointExceptionff- >
)ff> ?
{gg 
loggerhh 
.hh 
LogFatalhh 
(hh  
endPointExceptionhh  1
)hh1 2
;hh2 3
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I#
dialogEndPointExceptioniiI `
)ii` a
;iia b
}jj 
catchkk 
(kk 
TimeoutExceptionkk #
timeOutExceptionkk$ 4
)kk4 5
{ll 
loggermm 
.mm 
LogWarnmm 
(mm 
timeOutExceptionmm /
)mm/ 0
;mm0 1
DialogManagernn 
.nn !
ShowErrorMessageAlertnn 3
(nn3 4

Propertiesnn4 >
.nn> ?
	Resourcesnn? H
.nnH I"
dialogTimeOutExceptionnnI _
)nn_ `
;nn` a
}oo 
catchpp 
(pp "
CommunicationExceptionpp )"
communicationExceptionpp* @
)pp@ A
{qq 
loggerrr 
.rr 
LogFatalrr 
(rr  "
communicationExceptionrr  6
)rr6 7
;rr7 8
DialogManagerss 
.ss !
ShowErrorMessageAlertss 3
(ss3 4

Propertiesss4 >
.ss> ?
	Resourcesss? H
.ssH I'
dialogComunicationExceptionssI d
)ssd e
;sse f
}tt 
}uu 	
publicww 
intww 
ValidateCredentialsww &
(ww& '
Profileww' .
profileww/ 6
)ww6 7
{xx 	
LoggerManageryy 
loggeryy  
=yy! "
newyy# &
LoggerManageryy' 4
(yy4 5
thisyy5 9
.yy9 :
GetTypeyy: A
(yyA B
)yyB C
)yyC D
;yyD E
intzz 
validationResultzz  
=zz! "
-zz# $
$numzz$ %
;zz% &
try|| 
{}} 
string~~ 
hashedPassword~~ %
=~~& '
Hasher~~( .
.~~. /

hashToSHA2~~/ 9
(~~9 :
profile~~: A
.~~A B
password~~B J
)~~J K
;~~K L
string 
username 
=  !
profile" )
.) *
username* 2
;2 3
IUserManager
ÄÄ 
userManager
ÄÄ (
=
ÄÄ) *
new
ÄÄ+ .
	HiveProxy
ÄÄ/ 8
.
ÄÄ8 9
UserManagerClient
ÄÄ9 J
(
ÄÄJ K
)
ÄÄK L
;
ÄÄL M
validationResult
ÅÅ  
=
ÅÅ! "
userManager
ÅÅ# .
.
ÅÅ. /'
VerifyPasswordCredentials
ÅÅ/ H
(
ÅÅH I
username
ÅÅI Q
,
ÅÅQ R
hashedPassword
ÅÅS a
)
ÅÅa b
;
ÅÅb c
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ '
EndpointNotFoundException
ÉÉ ,
endPointException
ÉÉ- >
)
ÉÉ> ?
{
ÑÑ 
logger
ÖÖ 
.
ÖÖ 
LogFatal
ÖÖ 
(
ÖÖ  
endPointException
ÖÖ  1
)
ÖÖ1 2
;
ÖÖ2 3
DialogManager
ÜÜ 
.
ÜÜ #
ShowErrorMessageAlert
ÜÜ 3
(
ÜÜ3 4

Properties
ÜÜ4 >
.
ÜÜ> ?
	Resources
ÜÜ? H
.
ÜÜH I%
dialogEndPointException
ÜÜI `
)
ÜÜ` a
;
ÜÜa b
}
áá 
catch
àà 
(
àà 
TimeoutException
àà #
timeOutException
àà$ 4
)
àà4 5
{
ââ 
logger
ää 
.
ää 
LogWarn
ää 
(
ää 
timeOutException
ää /
)
ää/ 0
;
ää0 1
DialogManager
ãã 
.
ãã #
ShowErrorMessageAlert
ãã 3
(
ãã3 4

Properties
ãã4 >
.
ãã> ?
	Resources
ãã? H
.
ããH I$
dialogTimeOutException
ããI _
)
ãã_ `
;
ãã` a
}
åå 
catch
çç 
(
çç $
CommunicationException
çç )$
communicationException
çç* @
)
çç@ A
{
éé 
logger
èè 
.
èè 
LogFatal
èè 
(
èè  $
communicationException
èè  6
)
èè6 7
;
èè7 8
DialogManager
êê 
.
êê #
ShowErrorMessageAlert
êê 3
(
êê3 4

Properties
êê4 >
.
êê> ?
	Resources
êê? H
.
êêH I)
dialogComunicationException
êêI d
)
êêd e
;
êêe f
}
ëë 
switch
ìì 
(
ìì 
validationResult
ìì $
)
ìì$ %
{
îî 
case
ïï 
-
ïï 
$num
ïï 
:
ïï 
DialogManager
ññ !
.
ññ! "#
ShowErrorMessageAlert
ññ" 7
(
ññ7 8

Properties
ññ8 B
.
ññB C
	Resources
ññC L
.
ññL M!
dialogDataBaseError
ññM `
)
ññ` a
;
ñña b
break
óó 
;
óó 
case
òò 
$num
òò 
:
òò !
obtainSingletonData
ôô '
(
ôô' (
profile
ôô( /
)
ôô/ 0
;
ôô0 1
break
öö 
;
öö 
}
õõ 
return
ùù 
validationResult
ùù #
;
ùù# $
}
ûû 	
public
†† 
void
†† !
obtainSingletonData
†† '
(
††' (
Profile
††( /
profile
††0 7
)
††7 8
{
°° 	
LoggerManager
¢¢ 
logger
¢¢  
=
¢¢! "
new
¢¢# &
LoggerManager
¢¢' 4
(
¢¢4 5
this
¢¢5 9
.
¢¢9 :
GetType
¢¢: A
(
¢¢A B
)
¢¢B C
)
¢¢C D
;
¢¢D E
try
§§ 
{
•• 
IUserManager
¶¶ 
userManager
¶¶ (
=
¶¶) *
new
¶¶+ .
UserManagerClient
¶¶/ @
(
¶¶@ A
)
¶¶A B
;
¶¶B C
string
ßß 
hashedPassword
ßß %
=
ßß& '
Hasher
ßß( .
.
ßß. /

hashToSHA2
ßß/ 9
(
ßß9 :
profile
ßß: A
.
ßßA B
password
ßßB J
)
ßßJ K
;
ßßK L
Profile
®® 
userAccount
®® #
=
®®$ %
userManager
®®& 1
.
®®1 2
GetUserProfile
®®2 @
(
®®@ A
profile
®®A H
.
®®H I
username
®®I Q
,
®®Q R
hashedPassword
®®S a
)
®®a b
;
®®b c
if
™™ 
(
™™ 
userAccount
™™ 
!=
™™  "
null
™™# '
)
™™' (
{
´´ "
UserProfileSingleton
¨¨ (
.
¨¨( )
Instance
¨¨) 1
.
¨¨1 2
CreateInstance
¨¨2 @
(
¨¨@ A
userAccount
¨¨A L
)
¨¨L M
;
¨¨M N
}
≠≠ 
}
ÆÆ 
catch
ØØ 
(
ØØ '
EndpointNotFoundException
ØØ ,
endPointException
ØØ- >
)
ØØ> ?
{
∞∞ 
logger
±± 
.
±± 
LogFatal
±± 
(
±±  
endPointException
±±  1
)
±±1 2
;
±±2 3
DialogManager
≤≤ 
.
≤≤ #
ShowErrorMessageAlert
≤≤ 3
(
≤≤3 4

Properties
≤≤4 >
.
≤≤> ?
	Resources
≤≤? H
.
≤≤H I%
dialogEndPointException
≤≤I `
)
≤≤` a
;
≤≤a b
}
≥≥ 
catch
¥¥ 
(
¥¥ 
TimeoutException
¥¥ #
timeOutException
¥¥$ 4
)
¥¥4 5
{
µµ 
logger
∂∂ 
.
∂∂ 
LogWarn
∂∂ 
(
∂∂ 
timeOutException
∂∂ /
)
∂∂/ 0
;
∂∂0 1
DialogManager
∑∑ 
.
∑∑ #
ShowErrorMessageAlert
∑∑ 3
(
∑∑3 4

Properties
∑∑4 >
.
∑∑> ?
	Resources
∑∑? H
.
∑∑H I$
dialogTimeOutException
∑∑I _
)
∑∑_ `
;
∑∑` a
}
∏∏ 
catch
ππ 
(
ππ $
CommunicationException
ππ )$
communicationException
ππ* @
)
ππ@ A
{
∫∫ 
logger
ªª 
.
ªª 
LogFatal
ªª 
(
ªª  $
communicationException
ªª  6
)
ªª6 7
;
ªª7 8
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4

Properties
ºº4 >
.
ºº> ?
	Resources
ºº? H
.
ººH I)
dialogComunicationException
ººI d
)
ººd e
;
ººe f
}
ΩΩ 
}
ææ 	
private
¿¿ 
int
¿¿ "
GenerateGuestProfile
¿¿ (
(
¿¿( )
)
¿¿) *
{
¡¡ 	
int
¬¬ 
creationResult
¬¬ 
=
¬¬  
	Constants
¬¬! *
.
¬¬* +
ErrorOperation
¬¬+ 9
;
¬¬9 :
LoggerManager
√√ 
logger
√√  
=
√√! "
new
√√# &
LoggerManager
√√' 4
(
√√4 5
this
√√5 9
.
√√9 :
GetType
√√: A
(
√√A B
)
√√B C
)
√√C D
;
√√D E
try
ƒƒ 
{
≈≈ 
	HiveProxy
∆∆ 
.
∆∆ &
UserSessionManagerClient
∆∆ 2&
userSessionManagerClient
∆∆3 K
=
∆∆L M
new
∆∆N Q
	HiveProxy
∆∆R [
.
∆∆[ \&
UserSessionManagerClient
∆∆\ t
(
∆∆t u
)
∆∆u v
;
∆∆v w
string
«« 
randomUsername
«« %
=
««& '
ProfileGenerator
««( 8
.
««8 9#
RandomChooserUsername
««9 N
(
««N O
)
««O P
;
««P Q
UserSession
»» 
guestSession
»» (
=
»») *
new
»»+ .
UserSession
»»/ :
(
»»: ;
)
»»; <
{
…… 
username
   
=
   
randomUsername
   -
,
  - .
	idAccount
ÀÀ 
=
ÀÀ 
	Constants
ÀÀ  )
.
ÀÀ) *
DefaultGuestId
ÀÀ* 8
}
ÃÃ 
;
ÃÃ 
while
ÕÕ 
(
ÕÕ &
userSessionManagerClient
ÕÕ /
.
ÕÕ/ 0 
VerifyConnectivity
ÕÕ0 B
(
ÕÕB C
guestSession
ÕÕC O
)
ÕÕO P
)
ÕÕP Q
{
ŒŒ 
guestSession
œœ  
.
œœ  !
username
œœ! )
=
œœ* +
ProfileGenerator
œœ, <
.
œœ< =#
RandomChooserUsername
œœ= R
(
œœR S
)
œœS T
;
œœT U
}
–– 
Profile
—— 
profileGuest
—— $
=
——% &
new
——' *
Profile
——+ 2
(
——2 3
)
——3 4
{
““ 
idAccesAccount
”” "
=
””# $
	Constants
””% .
.
””. /
DefaultGuestId
””/ =
,
””= >
	idProfile
‘‘ 
=
‘‘ 
	Constants
‘‘  )
.
‘‘) *
DefaultGuestId
‘‘* 8
,
‘‘8 9
username
’’ 
=
’’ 
randomUsername
’’ -
,
’’- .
nickname
÷÷ 
=
÷÷ 
randomUsername
÷÷ -
,
÷÷- .
description
◊◊ 
=
◊◊  !
ProfileGenerator
◊◊" 2
.
◊◊2 3(
RandomDescriptionGenerator
◊◊3 M
(
◊◊M N
)
◊◊N O
,
◊◊O P
	imagePath
ÿÿ 
=
ÿÿ 
ProfileGenerator
ÿÿ  0
.
ÿÿ0 1%
RandomChooserAvatarIcon
ÿÿ1 H
(
ÿÿH I
)
ÿÿI J
,
ÿÿJ K
createdDate
ŸŸ 
=
ŸŸ  !
DateTime
ŸŸ" *
.
ŸŸ* +
Now
ŸŸ+ .
,
ŸŸ. /
}
⁄⁄ 
;
⁄⁄ "
UserProfileSingleton
€€ $
.
€€$ %
Instance
€€% -
.
€€- .
CreateInstance
€€. <
(
€€< =
profileGuest
€€= I
)
€€I J
;
€€J K&
userSessionManagerClient
‹‹ (
.
‹‹( )
ConnectToGame
‹‹) 6
(
‹‹6 7
guestSession
‹‹7 C
)
‹‹C D
;
‹‹D E
creationResult
›› 
=
››  
	Constants
››! *
.
››* +
SuccesOperation
››+ :
;
››: ;
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ '
EndpointNotFoundException
ﬂﬂ ,
endPointException
ﬂﬂ- >
)
ﬂﬂ> ?
{
‡‡ 
logger
·· 
.
·· 
LogFatal
·· 
(
··  
endPointException
··  1
)
··1 2
;
··2 3
DialogManager
‚‚ 
.
‚‚ #
ShowErrorMessageAlert
‚‚ 3
(
‚‚3 4

Properties
‚‚4 >
.
‚‚> ?
	Resources
‚‚? H
.
‚‚H I%
dialogEndPointException
‚‚I `
)
‚‚` a
;
‚‚a b
}
„„ 
catch
‰‰ 
(
‰‰ 
TimeoutException
‰‰ #
timeOutException
‰‰$ 4
)
‰‰4 5
{
ÂÂ 
logger
ÊÊ 
.
ÊÊ 
LogWarn
ÊÊ 
(
ÊÊ 
timeOutException
ÊÊ /
)
ÊÊ/ 0
;
ÊÊ0 1
DialogManager
ÁÁ 
.
ÁÁ #
ShowErrorMessageAlert
ÁÁ 3
(
ÁÁ3 4

Properties
ÁÁ4 >
.
ÁÁ> ?
	Resources
ÁÁ? H
.
ÁÁH I$
dialogTimeOutException
ÁÁI _
)
ÁÁ_ `
;
ÁÁ` a
}
ËË 
catch
ÈÈ 
(
ÈÈ $
CommunicationException
ÈÈ )$
communicationException
ÈÈ* @
)
ÈÈ@ A
{
ÍÍ 
logger
ÎÎ 
.
ÎÎ 
LogFatal
ÎÎ 
(
ÎÎ  $
communicationException
ÎÎ  6
)
ÎÎ6 7
;
ÎÎ7 8
DialogManager
ÏÏ 
.
ÏÏ #
ShowErrorMessageAlert
ÏÏ 3
(
ÏÏ3 4

Properties
ÏÏ4 >
.
ÏÏ> ?
	Resources
ÏÏ? H
.
ÏÏH I)
dialogComunicationException
ÏÏI d
)
ÏÏd e
;
ÏÏe f
}
ÌÌ 
return
ÓÓ 
creationResult
ÓÓ !
;
ÓÓ! "
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ 
BtnGuest_Click
ÒÒ #
(
ÒÒ# $
object
ÒÒ$ *
sender
ÒÒ+ 1
,
ÒÒ1 2
RoutedEventArgs
ÒÒ3 B
e
ÒÒC D
)
ÒÒD E
{
ÚÚ 	
int
ÛÛ 
creationResult
ÛÛ 
=
ÛÛ  "
GenerateGuestProfile
ÛÛ! 5
(
ÛÛ5 6
)
ÛÛ6 7
;
ÛÛ7 8
if
ÙÙ 
(
ÙÙ 
creationResult
ÙÙ 
!=
ÙÙ  
	Constants
ÙÙ! *
.
ÙÙ* +
ErrorOperation
ÙÙ+ 9
)
ÙÙ9 :
{
ıı 
GameCodeView
ˆˆ 
gameCodeView
ˆˆ )
=
ˆˆ* +
new
ˆˆ, /
GameCodeView
ˆˆ0 <
(
ˆˆ< =
)
ˆˆ= >
;
ˆˆ> ?
this
˜˜ 
.
˜˜ 
NavigationService
˜˜ &
.
˜˜& '
Navigate
˜˜' /
(
˜˜/ 0
gameCodeView
˜˜0 <
)
˜˜< =
;
˜˜= >
}
¯¯ 
}
˘˘ 	
private
˚˚ 
void
˚˚ 
BtnRegister_Click
˚˚ &
(
˚˚& '
object
˚˚' -
sender
˚˚. 4
,
˚˚4 5
RoutedEventArgs
˚˚6 E
e
˚˚F G
)
˚˚G H
{
¸¸ 	
RegisterView
˝˝ 
registerView
˝˝ %
=
˝˝& '
new
˝˝( +
RegisterView
˝˝, 8
(
˝˝8 9
)
˝˝9 :
;
˝˝: ;
this
˛˛ 
.
˛˛ 
NavigationService
˛˛ "
.
˛˛" #
Navigate
˛˛# +
(
˛˛+ ,
registerView
˛˛, 8
)
˛˛8 9
;
˛˛9 :
}
ˇˇ 	
private
ÅÅ 
void
ÅÅ &
BtnRecoverPassword_Click
ÅÅ -
(
ÅÅ- .
object
ÅÅ. 4
sender
ÅÅ5 ;
,
ÅÅ; <"
MouseButtonEventArgs
ÅÅ= Q
e
ÅÅR S
)
ÅÅS T
{
ÇÇ 	$
VerifyEmailAndUsername
ÉÉ "$
verifyEmailAndUsername
ÉÉ# 9
=
ÉÉ: ;
new
ÉÉ< ?$
VerifyEmailAndUsername
ÉÉ@ V
(
ÉÉV W
)
ÉÉW X
;
ÉÉX Y
this
ÑÑ 
.
ÑÑ 
NavigationService
ÑÑ "
.
ÑÑ" #
Navigate
ÑÑ# +
(
ÑÑ+ ,$
verifyEmailAndUsername
ÑÑ, B
)
ÑÑB C
;
ÑÑC D
}
ÖÖ 	
private
áá 
void
áá -
BtnPasswordVisibility_MouseDown
áá 4
(
áá4 5
object
áá5 ;
sender
áá< B
,
ááB C"
MouseButtonEventArgs
ááD X
e
ááY Z
)
ááZ [
{
àà 	&
TogglePasswordVisibility
ââ $
(
ââ$ %
true
ââ% )
)
ââ) *
;
ââ* +
ChangePetImage
ää 
(
ää 
$str
ää G
)
ääG H
;
ääH I
}
ãã 	
private
çç 
void
çç +
BtnPasswordVisibility_MouseUp
çç 2
(
çç2 3
object
çç3 9
sender
çç: @
,
çç@ A"
MouseButtonEventArgs
ççB V
e
ççW X
)
ççX Y
{
éé 	&
TogglePasswordVisibility
èè $
(
èè$ %
false
èè% *
)
èè* +
;
èè+ ,+
UpdatePetImageBasedOnPassword
êê )
(
êê) *
)
êê* +
;
êê+ ,
}
ëë 	
private
ìì 
void
ìì )
PwbPassword_PasswordChanged
ìì 0
(
ìì0 1
object
ìì1 7
sender
ìì8 >
,
ìì> ?
RoutedEventArgs
ìì@ O
e
ììP Q
)
ììQ R
{
îî 	+
UpdatePetImageBasedOnPassword
ïï )
(
ïï) *
)
ïï* +
;
ïï+ ,*
UpdatePasswordVisibilityIcon
ññ (
(
ññ( )
)
ññ) *
;
ññ* +
}
óó 	
private
ôô 
void
ôô &
TogglePasswordVisibility
ôô -
(
ôô- .
bool
ôô. 2
	isVisible
ôô3 <
)
ôô< =
{
öö 	
if
õõ 
(
õõ 
	isVisible
õõ 
)
õõ 
{
úú 
brd_Password
ùù 
.
ùù 

Visibility
ùù '
=
ùù( )

Visibility
ùù* 4
.
ùù4 5
	Collapsed
ùù5 >
;
ùù> ?!
brd_PasswordDisplay
ûû #
.
ûû# $

Visibility
ûû$ .
=
ûû/ 0

Visibility
ûû1 ;
.
ûû; <
Visible
ûû< C
;
ûûC D"
txtb_PasswordDisplay
üü $
.
üü$ %
Text
üü% )
=
üü* +
pwb_Password
üü, 8
.
üü8 9
Password
üü9 A
;
üüA B
}
†† 
else
°° 
{
¢¢ 
brd_Password
££ 
.
££ 

Visibility
££ '
=
££( )

Visibility
££* 4
.
££4 5
Visible
££5 <
;
££< =!
brd_PasswordDisplay
§§ #
.
§§# $

Visibility
§§$ .
=
§§/ 0

Visibility
§§1 ;
.
§§; <
	Collapsed
§§< E
;
§§E F
pwb_Password
•• 
.
•• 
Password
•• %
=
••& '"
txtb_PasswordDisplay
••( <
.
••< =
Text
••= A
;
••A B
}
¶¶ 
}
ßß 	
private
©© 
void
©© *
UpdatePasswordVisibilityIcon
©© 1
(
©©1 2
)
©©2 3
{
™™ 	&
tgbtn_PasswordVisibility
´´ $
.
´´$ %

Visibility
´´% /
=
´´0 1
pwb_Password
´´2 >
.
´´> ?
Password
´´? G
.
´´G H
Length
´´H N
>
´´O P
$num
´´Q R
?
¨¨ 

Visibility
¨¨ 
.
¨¨ 
Visible
¨¨ $
:
≠≠ 

Visibility
≠≠ 
.
≠≠ 
	Collapsed
≠≠ &
;
≠≠& '
}
ÆÆ 	
private
∞∞ 
void
∞∞ +
UpdatePetImageBasedOnPassword
∞∞ 2
(
∞∞2 3
)
∞∞3 4
{
±± 	
ChangePetImage
≤≤ 
(
≤≤ 
pwb_Password
≤≤ '
.
≤≤' (
Password
≤≤( 0
.
≤≤0 1
Length
≤≤1 7
>
≤≤8 9
$num
≤≤: ;
?
≥≥ 
$str
≥≥ ;
:
¥¥ 
$str
¥¥ .
)
¥¥. /
;
¥¥/ 0
}
µµ 	
private
∑∑ 
void
∑∑ 
ChangePetImage
∑∑ #
(
∑∑# $
string
∑∑$ *
	imagePath
∑∑+ 4
)
∑∑4 5
{
∏∏ 	
img_Pet
ππ 
.
ππ 
Source
ππ 
=
ππ 
new
ππ  
BitmapImage
ππ! ,
(
ππ, -
new
ππ- 0
Uri
ππ1 4
(
ππ4 5
	imagePath
ππ5 >
,
ππ> ?
UriKind
ππ@ G
.
ππG H
Relative
ππH P
)
ππP Q
)
ππQ R
;
ππR S
}
∫∫ 	
private
ºº 
void
ºº !
DisplayMainMenuView
ºº (
(
ºº( )
)
ºº) *
{
ΩΩ 	
MainMenu
ææ 

mainWindow
ææ 
=
ææ  !
new
ææ" %
MainMenu
ææ& .
(
ææ. /
)
ææ/ 0
;
ææ0 1
this
øø 
.
øø 
NavigationService
øø "
.
øø" #
Navigate
øø# +
(
øø+ ,

mainWindow
øø, 6
)
øø6 7
;
øø7 8
}
¿¿ 	
}
¡¡ 
}¬¬ á˝
wC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\MainMenu.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
MainMenu !
:" #
Page$ (
{ 
private 
MediaPlayer 
_mediaPlayer (
;( )
private 
VideoDrawing 
_videoDrawing *
;* +
private 
DrawingBrush 
_drawingBrush *
;* +
public 
MainMenu 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
Loaded 
+= 
MainMenu_Loaded %
;% &
Unloaded 
+= 
MainMenu_Unloaded )
;) *
if!! 
(!! 
App!! 
.!! 
IsMusicPlaying!! "
)!!" #
App"" 
."" 
	PlayMusic"" 
("" 
$str"" 2
)""2 3
;""3 4"
UpdateButtonVisibility$$ "
($$" #
)$$# $
;$$$ %
SetLanguageButtons%% 
(%% 
)%%  
;%%  !
btn_EditCredentials'' 
.''  

Visibility''  *
=''+ ,

Visibility''- 7
.''7 8
	Collapsed''8 A
;''A B
btn_EditProfile(( 
.(( 

Visibility(( &
=((' (

Visibility(() 3
.((3 4
	Collapsed((4 =
;((= >
lbl_Username)) 
.)) 
Content))  
=))! " 
UserProfileSingleton))# 7
.))7 8
username))8 @
;))@ A
img_ProfilePic** 
.** 
Source** !
=**" #
new**$ '
BitmapImage**( 3
(**3 4
new**4 7
Uri**8 ;
(**; < 
UserProfileSingleton**< P
.**P Q

imageRoute**Q [
,**[ \
UriKind**] d
.**d e
Relative**e m
)**m n
)**n o
;**o p
}++ 	
private-- 
void-- 
MainMenu_Loaded-- $
(--$ %
object--% +
sender--, 2
,--2 3
RoutedEventArgs--4 C
e--D E
)--E F
{.. 	
_mediaPlayer// 
=// 
new// 
MediaPlayer// *
(//* +
)//+ ,
;//, -
var00 
resourceUri00 
=00 
new00 !
Uri00" %
(00% &

Properties00& 0
.000 1
	Resources001 :
.00: ;
Uri00; >
)00> ?
;00? @
_mediaPlayer11 
.11 
Open11 
(11 
resourceUri11 )
)11) *
;11* +
_mediaPlayer33 
.33 

MediaEnded33 #
+=33$ &#
MediaElement_MediaEnded33' >
;33> ?
_videoDrawing44 
=44 
new44 
VideoDrawing44  ,
{55 
Rect66 
=66 
new66 
Rect66 
(66  
$num66  !
,66! "
$num66# $
,66$ %
videoCanvas66& 1
.661 2
Width662 7
,667 8
videoCanvas669 D
.66D E
Height66E K
)66K L
,66L M
Player77 
=77 
_mediaPlayer77 %
}88 
;88 
_drawingBrush:: 
=:: 
new:: 
DrawingBrush::  ,
(::, -
_videoDrawing::- :
)::: ;
;::; <
videoCanvas;; 
.;; 

Background;; "
=;;# $
_drawingBrush;;% 2
;;;2 3
_mediaPlayer== 
.== 
Play== 
(== 
)== 
;==  
}>> 	
private@@ 
void@@ 
MainMenu_Unloaded@@ &
(@@& '
object@@' -
sender@@. 4
,@@4 5
RoutedEventArgs@@6 E
e@@F G
)@@G H
{AA 	
ifBB 
(BB 
_mediaPlayerBB 
!=BB 
nullBB  $
)BB$ %
{CC 
_mediaPlayerDD 
.DD 

MediaEndedDD '
+=DD( *#
MediaElement_MediaEndedDD+ B
;DDB C
_mediaPlayerEE 
.EE 
StopEE !
(EE! "
)EE" #
;EE# $
_mediaPlayerFF 
.FF 
CloseFF "
(FF" #
)FF# $
;FF$ %
_mediaPlayerGG 
=GG 
nullGG #
;GG# $
}HH 
}II 	
privateKK 
voidKK #
MediaElement_MediaEndedKK ,
(KK, -
objectKK- 3
senderKK4 :
,KK: ;
	EventArgsKK< E
eKKF G
)KKG H
{LL 	
ifMM 
(MM 
_mediaPlayerMM 
!=MM 
nullMM  $
)MM$ %
{NN 
_mediaPlayerOO 
.OO 
PositionOO %
=OO& '
TimeSpanOO( 0
.OO0 1
ZeroOO1 5
;OO5 6
_mediaPlayerPP 
.PP 
PlayPP !
(PP! "
)PP" #
;PP# $
}QQ 
}RR 	
privateTT 
voidTT 
Image_MouseDownTT $
(TT$ %
objectTT% +
senderTT, 2
,TT2 3 
MouseButtonEventArgsTT4 H
eTTI J
)TTJ K
{UU 	
boolVV 
resultConfirmationVV #
=VV$ %
DialogManagerVV& 3
.VV3 4(
ShowConfirmationMessageAlertVV4 P
(VVP Q

PropertiesVVQ [
.VV[ \
	ResourcesVV\ e
.VVe f
dialogExitMainMenuVVf x
)VVx y
;VVy z
LoggerManagerWW 
loggerWW  
=WW! "
newWW# &
LoggerManagerWW' 4
(WW4 5
thisWW5 9
.WW9 :
GetTypeWW: A
(WWA B
)WWB C
)WWC D
;WWD E
ifXX 
(XX 
resultConfirmationXX "
)XX" #
{YY 
tryZZ 
{[[ 
	HiveProxy\\ 
.\\ $
UserSessionManagerClient\\ 6$
userSessionManagerClient\\7 O
=\\P Q
new\\R U
	HiveProxy\\V _
.\\_ `$
UserSessionManagerClient\\` x
(\\x y
)\\y z
;\\z {
UserSession]] 
userSession]]  +
=]], -
new]]. 1
UserSession]]2 =
(]]= >
)]]> ?
{^^ 
username__  
=__! " 
UserProfileSingleton__# 7
.__7 8
username__8 @
,__@ A
	idAccount`` !
=``" # 
UserProfileSingleton``$ 8
.``8 9
	idAccount``9 B
}aa 
;aa 
intbb 
disconnectionResultbb +
=bb, -$
userSessionManagerClientbb. F
.bbF G

DisconnectbbG Q
(bbQ R
userSessionbbR ]
,bb] ^
falsebb_ d
)bbd e
;bbe f
ifcc 
(cc 
disconnectionResultcc *
==cc+ -
	Constantscc. 7
.cc7 8
SuccesOperationcc8 G
)ccG H
{dd  
UserProfileSingletonee ,
.ee, -
Instanceee- 5
.ee5 6
ResetSingletonee6 D
(eeD E
)eeE F
;eeF G
	LoginViewff !
loginff" '
=ff( )
newff* -
	LoginViewff. 7
(ff7 8
)ff8 9
;ff9 :
thisgg 
.gg 
NavigationServicegg .
.gg. /
Navigategg/ 7
(gg7 8
logingg8 =
)gg= >
;gg> ?
}hh 
elseii 
ifii 
(ii 
disconnectionResultii /
==ii0 2
	Constantsii3 <
.ii< =
NoDataMatchesii= J
)iiJ K
{jj 
DialogManagerkk %
.kk% &#
ShowWarningMessageAlertkk& =
(kk= >

Propertieskk> H
.kkH I
	ResourceskkI R
.kkR S(
dialogCouldntFindUserSessionkkS o
)kko p
;kkp q
}ll 
elsemm 
{nn 
DialogManageroo %
.oo% &!
ShowErrorMessageAlertoo& ;
(oo; <

Propertiesoo< F
.ooF G
	ResourcesooG P
.ooP Q&
dialogErrorInDisconnectionooQ k
)ook l
;ool m
}pp 
}qq 
catchrr 
(rr %
EndpointNotFoundExceptionrr 0
endPointExceptionrr1 B
)rrB C
{ss 
loggertt 
.tt 
LogFataltt #
(tt# $
endPointExceptiontt$ 5
)tt5 6
;tt6 7
DialogManageruu !
.uu! "!
ShowErrorMessageAlertuu" 7
(uu7 8

Propertiesuu8 B
.uuB C
	ResourcesuuC L
.uuL M#
dialogEndPointExceptionuuM d
)uud e
;uue f
}vv 
catchww 
(ww 
TimeoutExceptionww '
timeOutExceptionww( 8
)ww8 9
{xx 
loggeryy 
.yy 
LogWarnyy "
(yy" #
timeOutExceptionyy# 3
)yy3 4
;yy4 5
DialogManagerzz !
.zz! "!
ShowErrorMessageAlertzz" 7
(zz7 8

Propertieszz8 B
.zzB C
	ResourceszzC L
.zzL M"
dialogTimeOutExceptionzzM c
)zzc d
;zzd e
}{{ 
catch|| 
(|| "
CommunicationException|| -"
communicationException||. D
)||D E
{}} 
logger~~ 
.~~ 
LogFatal~~ #
(~~# $"
communicationException~~$ :
)~~: ;
;~~; <
DialogManager !
.! "!
ShowErrorMessageAlert" 7
(7 8

Properties8 B
.B C
	ResourcesC L
.L M'
dialogComunicationExceptionM h
)h i
;i j
}
ÄÄ 
}
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 
BtnPlay_Click
ÑÑ "
(
ÑÑ" #
object
ÑÑ# )
sender
ÑÑ* 0
,
ÑÑ0 1
RoutedEventArgs
ÑÑ2 A
e
ÑÑB C
)
ÑÑC D
{
ÖÖ 	
btn_JoinMatch
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ $
=
ÜÜ% &

Visibility
ÜÜ' 1
.
ÜÜ1 2
Visible
ÜÜ2 9
;
ÜÜ9 :
btn_CreateMatch
áá 
.
áá 

Visibility
áá &
=
áá' (

Visibility
áá) 3
.
áá3 4
Visible
áá4 ;
;
áá; <
img_CreateMatch
àà 
.
àà 

Visibility
àà &
=
àà' (

Visibility
àà) 3
.
àà3 4
Visible
àà4 ;
;
àà; <
img_JoinMatch
ââ 
.
ââ 

Visibility
ââ $
=
ââ% &

Visibility
ââ' 1
.
ââ1 2
Visible
ââ2 9
;
ââ9 :!
btn_EditCredentials
ää 
.
ää  

Visibility
ää  *
=
ää+ ,

Visibility
ää- 7
.
ää7 8
	Collapsed
ää8 A
;
ääA B
btn_EditProfile
ãã 
.
ãã 

Visibility
ãã &
=
ãã' (

Visibility
ãã) 3
.
ãã3 4
	Collapsed
ãã4 =
;
ãã= >
grd_Configuration
åå 
.
åå 

Visibility
åå (
=
åå) *

Visibility
åå+ 5
.
åå5 6
	Collapsed
åå6 ?
;
åå? @
}
çç 	
private
èè 
void
èè  
BtnMyAccount_Click
èè '
(
èè' (
object
èè( .
sender
èè/ 5
,
èè5 6
RoutedEventArgs
èè7 F
e
èèG H
)
èèH I
{
êê 	!
btn_EditCredentials
ëë 
.
ëë  

Visibility
ëë  *
=
ëë+ ,

Visibility
ëë- 7
.
ëë7 8
Visible
ëë8 ?
;
ëë? @
btn_EditProfile
íí 
.
íí 

Visibility
íí &
=
íí' (

Visibility
íí) 3
.
íí3 4
Visible
íí4 ;
;
íí; <
btn_JoinMatch
ìì 
.
ìì 

Visibility
ìì $
=
ìì% &

Visibility
ìì' 1
.
ìì1 2
	Collapsed
ìì2 ;
;
ìì; <
btn_CreateMatch
îî 
.
îî 

Visibility
îî &
=
îî' (

Visibility
îî) 3
.
îî3 4
	Collapsed
îî4 =
;
îî= >
img_CreateMatch
ïï 
.
ïï 

Visibility
ïï &
=
ïï' (

Visibility
ïï) 3
.
ïï3 4
	Collapsed
ïï4 =
;
ïï= >
img_JoinMatch
ññ 
.
ññ 

Visibility
ññ $
=
ññ% &

Visibility
ññ' 1
.
ññ1 2
	Collapsed
ññ2 ;
;
ññ; <
grd_Configuration
óó 
.
óó 

Visibility
óó (
=
óó) *

Visibility
óó+ 5
.
óó5 6
	Collapsed
óó6 ?
;
óó? @
}
òò 	
private
öö 
void
öö !
ActivateMusic_Click
öö (
(
öö( )
object
öö) /
sender
öö0 6
,
öö6 7
RoutedEventArgs
öö8 G
e
ööH I
)
ööI J
{
õõ 	
if
úú 
(
úú 
!
úú 
App
úú 
.
úú 
IsMusicPlaying
úú #
)
úú# $
{
ùù 
App
ûû 
.
ûû 
ToggleMusic
ûû 
(
ûû  
)
ûû  !
;
ûû! "$
UpdateButtonVisibility
üü &
(
üü& '
)
üü' (
;
üü( )
}
†† 
}
¢¢ 	
private
§§ 
void
§§ #
DeactivateMusic_Click
§§ *
(
§§* +
object
§§+ 1
sender
§§2 8
,
§§8 9
RoutedEventArgs
§§: I
e
§§J K
)
§§K L
{
•• 	
if
¶¶ 
(
¶¶ 
App
¶¶ 
.
¶¶ 
IsMusicPlaying
¶¶ "
)
¶¶" #
{
ßß 
App
®® 
.
®® 
ToggleMusic
®® 
(
®®  
)
®®  !
;
®®! "$
UpdateButtonVisibility
©© &
(
©©& '
)
©©' (
;
©©( )
}
™™ 
}
´´ 	
private
≠≠ 
void
≠≠ $
UpdateButtonVisibility
≠≠ +
(
≠≠+ ,
)
≠≠, -
{
ÆÆ 	
if
ØØ 
(
ØØ 
App
ØØ 
.
ØØ 
IsMusicPlaying
ØØ "
)
ØØ" #
{
∞∞ 
img_SoundOn
±± 
.
±± 

Visibility
±± &
=
±±' (

Visibility
±±) 3
.
±±3 4
	Collapsed
±±4 =
;
±±= >
img_SoundOf
≤≤ 
.
≤≤ 

Visibility
≤≤ &
=
≤≤' (

Visibility
≤≤) 3
.
≤≤3 4
Visible
≤≤4 ;
;
≤≤; <
}
≥≥ 
else
¥¥ 
{
µµ 
img_SoundOn
∂∂ 
.
∂∂ 

Visibility
∂∂ &
=
∂∂' (

Visibility
∂∂) 3
.
∂∂3 4
Visible
∂∂4 ;
;
∂∂; <
img_SoundOf
∑∑ 
.
∑∑ 

Visibility
∑∑ &
=
∑∑' (

Visibility
∑∑) 3
.
∑∑3 4
	Collapsed
∑∑4 =
;
∑∑= >
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 
BtnFriends_Click
ªª %
(
ªª% &
object
ªª& ,
sender
ªª- 3
,
ªª3 4
RoutedEventArgs
ªª5 D
e
ªªE F
)
ªªF G
{
ºº 	
FriendsListView
ΩΩ 
friendsListView
ΩΩ +
=
ΩΩ, -
new
ΩΩ. 1
FriendsListView
ΩΩ2 A
(
ΩΩA B
)
ΩΩB C
;
ΩΩC D
this
ææ 
.
ææ 
NavigationService
ææ "
.
ææ" #
Navigate
ææ# +
(
ææ+ ,
friendsListView
ææ, ;
)
ææ; <
;
ææ< =
}
øø 	
private
¡¡ 
void
¡¡ &
BtnEditCredentials_Click
¡¡ -
(
¡¡- .
object
¡¡. 4
sender
¡¡5 ;
,
¡¡; <
RoutedEventArgs
¡¡= L
e
¡¡M N
)
¡¡N O
{
¬¬ 	
LoggerManager
√√ 
logger
√√  
=
√√! "
new
√√# &
LoggerManager
√√' 4
(
√√4 5
this
√√5 9
.
√√9 :
GetType
√√: A
(
√√A B
)
√√B C
)
√√C D
;
√√D E
	HiveProxy
ƒƒ 
.
ƒƒ ,
EmailVerificationManagerClient
ƒƒ 4&
emailVerificationManager
ƒƒ5 M
=
ƒƒN O
new
ƒƒP S
	HiveProxy
ƒƒT ]
.
ƒƒ] ^,
EmailVerificationManagerClient
ƒƒ^ |
(
ƒƒ| }
)
ƒƒ} ~
;
ƒƒ~ 
try
∆∆ 
{
«« 
int
»» 
resultEmailSend
»» #
=
»»$ %&
emailVerificationManager
»»& >
.
»»> ?#
SendVerificationEmail
»»? T
(
»»T U"
UserProfileSingleton
»»U i
.
»»i j
email
»»j o
)
»»o p
;
»»p q
if
…… 
(
…… 
resultEmailSend
…… #
==
……$ &
	Constants
……' 0
.
……0 1
SuccesOperation
……1 @
)
……@ A
{
   
DialogManager
ÀÀ !
.
ÀÀ! "%
ShowSuccessMessageAlert
ÀÀ" 9
(
ÀÀ9 :

Properties
ÀÀ: D
.
ÀÀD E
	Resources
ÀÀE N
.
ÀÀN O,
dialogEmailVerificationMessage
ÀÀO m
)
ÀÀm n
;
ÀÀn o!
EditCredentialsView
ÃÃ '!
editCredentialsView
ÃÃ( ;
=
ÃÃ< =
new
ÃÃ> A!
EditCredentialsView
ÃÃB U
(
ÃÃU V
)
ÃÃV W
;
ÃÃW X
this
ÕÕ 
.
ÕÕ 
NavigationService
ÕÕ *
.
ÕÕ* +
Navigate
ÕÕ+ 3
(
ÕÕ3 4!
editCredentialsView
ÕÕ4 G
)
ÕÕG H
;
ÕÕH I
}
ŒŒ 
else
œœ 
{
–– 
DialogManager
—— !
.
——! "#
ShowErrorMessageAlert
——" 7
(
——7 8

Properties
——8 B
.
——B C
	Resources
——C L
.
——L M$
dialogCouldntSendEmail
——M c
)
——c d
;
——d e
}
““ 
}
”” 
catch
‘‘ 
(
‘‘ '
EndpointNotFoundException
‘‘ ,
endPointException
‘‘- >
)
‘‘> ?
{
’’ 
logger
÷÷ 
.
÷÷ 
LogFatal
÷÷ 
(
÷÷  
endPointException
÷÷  1
)
÷÷1 2
;
÷÷2 3
DialogManager
◊◊ 
.
◊◊ #
ShowErrorMessageAlert
◊◊ 3
(
◊◊3 4

Properties
◊◊4 >
.
◊◊> ?
	Resources
◊◊? H
.
◊◊H I%
dialogEndPointException
◊◊I `
)
◊◊` a
;
◊◊a b
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ 
TimeoutException
ŸŸ #
timeOutException
ŸŸ$ 4
)
ŸŸ4 5
{
⁄⁄ 
logger
€€ 
.
€€ 
LogWarn
€€ 
(
€€ 
timeOutException
€€ /
)
€€/ 0
;
€€0 1
DialogManager
‹‹ 
.
‹‹ #
ShowErrorMessageAlert
‹‹ 3
(
‹‹3 4

Properties
‹‹4 >
.
‹‹> ?
	Resources
‹‹? H
.
‹‹H I$
dialogTimeOutException
‹‹I _
)
‹‹_ `
;
‹‹` a
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ $
CommunicationException
ﬁﬁ )$
communicationException
ﬁﬁ* @
)
ﬁﬁ@ A
{
ﬂﬂ 
logger
‡‡ 
.
‡‡ 
LogFatal
‡‡ 
(
‡‡  $
communicationException
‡‡  6
)
‡‡6 7
;
‡‡7 8
DialogManager
·· 
.
·· #
ShowErrorMessageAlert
·· 3
(
··3 4

Properties
··4 >
.
··> ?
	Resources
··? H
.
··H I)
dialogComunicationException
··I d
)
··d e
;
··e f
}
‚‚ 
}
„„ 	
private
ÂÂ 
void
ÂÂ 
CreateMatchLobby
ÂÂ %
(
ÂÂ% &
)
ÂÂ& '
{
ÊÊ 	
	HiveProxy
ÁÁ 
.
ÁÁ '
MatchCreatorManagerClient
ÁÁ /
matchCreator
ÁÁ0 <
=
ÁÁ= >
new
ÁÁ? B
	HiveProxy
ÁÁC L
.
ÁÁL M'
MatchCreatorManagerClient
ÁÁM f
(
ÁÁf g
)
ÁÁg h
;
ÁÁh i
LoggerManager
ËË 
logger
ËË  
=
ËË! "
new
ËË# &
LoggerManager
ËË' 4
(
ËË4 5
this
ËË5 9
.
ËË9 :
GetType
ËË: A
(
ËËA B
)
ËËB C
)
ËËC D
;
ËËD E
try
ÈÈ 
{
ÍÍ 
string
ÎÎ 
code
ÎÎ 
=
ÎÎ 
matchCreator
ÎÎ *
.
ÎÎ* +
GenerateLobbyCode
ÎÎ+ <
(
ÎÎ< ="
UserProfileSingleton
ÎÎ= Q
.
ÎÎQ R
email
ÎÎR W
)
ÎÎW X
;
ÎÎX Y
MatchCreator
ÏÏ 
matchCreatorUser
ÏÏ -
=
ÏÏ. /
new
ÏÏ0 3
MatchCreator
ÏÏ4 @
(
ÏÏ@ A
)
ÏÏA B
{
ÌÌ 
	codeMatch
ÓÓ 
=
ÓÓ 
code
ÓÓ  $
,
ÓÓ$ %
idCreatorAccount
ÔÔ $
=
ÔÔ% &"
UserProfileSingleton
ÔÔ' ;
.
ÔÔ; <
	idAccount
ÔÔ< E
,
ÔÔE F
	dateMatch
 
=
 
DateTime
  (
.
( )
Now
) ,
,
, -

stateMatch
ÒÒ 
=
ÒÒ  
$str
ÒÒ! (
}
ÚÚ 
;
ÚÚ 
int
ÛÛ 
resultInsertion
ÛÛ #
=
ÛÛ$ %
matchCreator
ÛÛ& 2
.
ÛÛ2 3
CreateMatch
ÛÛ3 >
(
ÛÛ> ?
matchCreatorUser
ÛÛ? O
)
ÛÛO P
;
ÛÛP Q
if
ÙÙ 
(
ÙÙ 
resultInsertion
ÙÙ #
==
ÙÙ$ &
	Constants
ÙÙ' 0
.
ÙÙ0 1
SuccesOperation
ÙÙ1 @
)
ÙÙ@ A
{
ıı 
MatchSingleton
ˆˆ "
.
ˆˆ" #
Instance
ˆˆ# +
.
ˆˆ+ ,
CreateInstance
ˆˆ, :
(
ˆˆ: ;
code
ˆˆ; ?
)
ˆˆ? @
;
ˆˆ@ A
	LobbyView
˜˜ 
	lobbyView
˜˜ '
=
˜˜( )
new
˜˜* -
	LobbyView
˜˜. 7
(
˜˜7 8
)
˜˜8 9
;
˜˜9 :
this
¯¯ 
.
¯¯ 
NavigationService
¯¯ *
.
¯¯* +
Navigate
¯¯+ 3
(
¯¯3 4
	lobbyView
¯¯4 =
)
¯¯= >
;
¯¯> ?
}
˘˘ 
else
˙˙ 
if
˙˙ 
(
˙˙ 
resultInsertion
˙˙ (
==
˙˙) +
	Constants
˙˙, 5
.
˙˙5 6
ErrorOperation
˙˙6 D
)
˙˙D E
{
˚˚ 
DialogManager
¸¸ !
.
¸¸! "#
ShowErrorMessageAlert
¸¸" 7
(
¸¸7 8

Properties
¸¸8 B
.
¸¸B C
	Resources
¸¸C L
.
¸¸L M!
dialogDataBaseError
¸¸M `
)
¸¸` a
;
¸¸a b
}
˝˝ 
}
˛˛ 
catch
ˇˇ 
(
ˇˇ '
EndpointNotFoundException
ˇˇ ,
endPointException
ˇˇ- >
)
ˇˇ> ?
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogFatal
ÅÅ 
(
ÅÅ  
endPointException
ÅÅ  1
)
ÅÅ1 2
;
ÅÅ2 3
DialogManager
ÇÇ 
.
ÇÇ #
ShowErrorMessageAlert
ÇÇ 3
(
ÇÇ3 4

Properties
ÇÇ4 >
.
ÇÇ> ?
	Resources
ÇÇ? H
.
ÇÇH I%
dialogEndPointException
ÇÇI `
)
ÇÇ` a
;
ÇÇa b
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
TimeoutException
ÑÑ #
timeOutException
ÑÑ$ 4
)
ÑÑ4 5
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogWarn
ÜÜ 
(
ÜÜ 
timeOutException
ÜÜ /
)
ÜÜ/ 0
;
ÜÜ0 1
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I$
dialogTimeOutException
ááI _
)
áá_ `
;
áá` a
}
àà 
catch
ââ 
(
ââ $
CommunicationException
ââ )$
communicationException
ââ* @
)
ââ@ A
{
ää 
logger
ãã 
.
ãã 
LogFatal
ãã 
(
ãã  $
communicationException
ãã  6
)
ãã6 7
;
ãã7 8
DialogManager
åå 
.
åå #
ShowErrorMessageAlert
åå 3
(
åå3 4

Properties
åå4 >
.
åå> ?
	Resources
åå? H
.
ååH I)
dialogComunicationException
ååI d
)
ååd e
;
ååe f
}
çç 
}
éé 	
private
êê 
void
êê "
BtnEditProfile_Click
êê )
(
êê) *
object
êê* 0
sender
êê1 7
,
êê7 8
RoutedEventArgs
êê9 H
e
êêI J
)
êêJ K
{
ëë 	
EditProfileView
íí 
editProfileView
íí +
=
íí, -
new
íí. 1
EditProfileView
íí2 A
(
ííA B
)
ííB C
;
ííC D
this
ìì 
.
ìì 
NavigationService
ìì "
.
ìì" #
Navigate
ìì# +
(
ìì+ ,
editProfileView
ìì, ;
)
ìì; <
;
ìì< =
}
îî 	
private
ññ 
void
ññ 
BtnSettings_Click
ññ &
(
ññ& '
object
ññ' -
sender
ññ. 4
,
ññ4 5
RoutedEventArgs
ññ6 E
e
ññF G
)
ññG H
{
óó 	
grd_Configuration
òò 
.
òò 

Visibility
òò (
=
òò) *

Visibility
òò+ 5
.
òò5 6
Visible
òò6 =
;
òò= >
btn_JoinMatch
ôô 
.
ôô 

Visibility
ôô $
=
ôô% &

Visibility
ôô' 1
.
ôô1 2
	Collapsed
ôô2 ;
;
ôô; <
btn_CreateMatch
öö 
.
öö 

Visibility
öö &
=
öö' (

Visibility
öö) 3
.
öö3 4
	Collapsed
öö4 =
;
öö= >
img_CreateMatch
õõ 
.
õõ 

Visibility
õõ &
=
õõ' (

Visibility
õõ) 3
.
õõ3 4
	Collapsed
õõ4 =
;
õõ= >
img_JoinMatch
úú 
.
úú 

Visibility
úú $
=
úú% &

Visibility
úú' 1
.
úú1 2
	Collapsed
úú2 ;
;
úú; <!
btn_EditCredentials
ùù 
.
ùù  

Visibility
ùù  *
=
ùù+ ,

Visibility
ùù- 7
.
ùù7 8
	Collapsed
ùù8 A
;
ùùA B
btn_EditProfile
ûû 
.
ûû 

Visibility
ûû &
=
ûû' (

Visibility
ûû) 3
.
ûû3 4
	Collapsed
ûû4 =
;
ûû= >
}
üü 	
private
°° 
void
°° "
BtnCreateMatch_Click
°° )
(
°°) *
object
°°* 0
sender
°°1 7
,
°°7 8
RoutedEventArgs
°°9 H
e
°°I J
)
°°J K
{
¢¢ 	
if
££ 
(
££ 
DialogManager
££ 
.
££ *
ShowConfirmationMessageAlert
££ :
(
££: ;

Properties
££; E
.
££E F
	Resources
££F O
.
££O P-
dialogConfirmationMatchCreation
££P o
)
££o p
)
££p q
{
§§ 
CreateMatchLobby
••  
(
••  !
)
••! "
;
••" #
}
¶¶ 
}
ßß 	
private
©© 
void
©©  
BtnJoinMatch_Click
©© '
(
©©' (
object
©©( .
sender
©©/ 5
,
©©5 6
RoutedEventArgs
©©7 F
e
©©G H
)
©©H I
{
™™ 	
GameCodeView
´´ 
gameCodeView
´´ %
=
´´& '
new
´´( +
GameCodeView
´´, 8
(
´´8 9
)
´´9 :
;
´´: ;
this
¨¨ 
.
¨¨ 
NavigationService
¨¨ "
.
¨¨" #
Navigate
¨¨# +
(
¨¨+ ,
gameCodeView
¨¨, 8
)
¨¨8 9
;
¨¨9 :
}
≠≠ 	
private
ØØ 
void
ØØ !
BtnStatistics_Click
ØØ (
(
ØØ( )
object
ØØ) /
sender
ØØ0 6
,
ØØ6 7
RoutedEventArgs
ØØ8 G
e
ØØH I
)
ØØI J
{
∞∞ 	
StatisticsView
±± 
statisticsView
±± )
=
±±* +
new
±±, /
StatisticsView
±±0 >
(
±±> ?
)
±±? @
;
±±@ A
this
≤≤ 
.
≤≤ 
NavigationService
≤≤ "
.
≤≤" #
Navigate
≤≤# +
(
≤≤+ ,
statisticsView
≤≤, :
)
≤≤: ;
;
≤≤; <
}
≥≥ 	
private
∂∂ 
void
∂∂  
SetLanguageButtons
∂∂ '
(
∂∂' (
)
∂∂( )
{
∑∑ 	
string
ππ 
currentLanguage
ππ "
=
ππ# $

Properties
ππ% /
.
ππ/ 0
Settings
ππ0 8
.
ππ8 9
Default
ππ9 @
.
ππ@ A
Language
ππA I
;
ππI J
if
ªª 
(
ªª 
currentLanguage
ªª 
==
ªª  "
$str
ªª# *
)
ªª* +
{
ºº 

img_Mexico
ΩΩ 
.
ΩΩ 
	IsEnabled
ΩΩ $
=
ΩΩ% &
false
ΩΩ' ,
;
ΩΩ, -

img_Mexico
ææ 
.
ææ 

Visibility
ææ %
=
ææ& '

Visibility
ææ( 2
.
ææ2 3
	Collapsed
ææ3 <
;
ææ< =
img_EU
øø 
.
øø 
	IsEnabled
øø  
=
øø! "
true
øø# '
;
øø' (
}
¿¿ 
else
¡¡ 
{
¬¬ 

img_Mexico
√√ 
.
√√ 
	IsEnabled
√√ $
=
√√% &
true
√√' +
;
√√+ ,
img_EU
ƒƒ 
.
ƒƒ 
	IsEnabled
ƒƒ  
=
ƒƒ! "
false
ƒƒ# (
;
ƒƒ( )
img_EU
≈≈ 
.
≈≈ 

Visibility
≈≈ !
=
≈≈" #

Visibility
≈≈$ .
.
≈≈. /
	Collapsed
≈≈/ 8
;
≈≈8 9
}
∆∆ 
}
«« 	
private
…… 
void
…… "
ChangeLanguage_Click
…… )
(
……) *
object
……* 0
sender
……1 7
,
……7 8
RoutedEventArgs
……9 H
e
……I J
)
……J K
{
   	
if
ÀÀ 
(
ÀÀ 
sender
ÀÀ 
is
ÀÀ 
Image
ÀÀ 
image
ÀÀ  %
)
ÀÀ% &
{
ÃÃ 
string
ÕÕ 
newLanguage
ÕÕ "
=
ÕÕ# $
image
ÕÕ% *
.
ÕÕ* +
Name
ÕÕ+ /
==
ÕÕ0 2
$str
ÕÕ3 ?
?
ÕÕ@ A
$str
ÕÕB I
:
ÕÕJ K
$str
ÕÕL S
;
ÕÕS T
MessageBoxResult
œœ  
result
œœ! '
=
œœ( )

MessageBox
œœ* 4
.
œœ4 5
Show
œœ5 9
(
œœ9 :

Properties
–– 
.
–– 
	Resources
–– '
.
––' ()
dialogMessageLanguagechange
––( C
,
––C D

Properties
—— 
.
—— 
	Resources
—— '
.
——' ( 
lbl_LanguageChange
——( :
,
——: ;
MessageBoxButton
““ $
.
““$ %
YesNo
““% *
,
““* +
MessageBoxImage
”” #
.
””# $
Question
””$ ,
)
‘‘ 
;
‘‘ 
if
÷÷ 
(
÷÷ 
result
÷÷ 
==
÷÷ 
MessageBoxResult
÷÷ .
.
÷÷. /
Yes
÷÷/ 2
)
÷÷2 3
{
◊◊ 
App
ÿÿ 
.
ÿÿ 
ChangeLanguage
ÿÿ &
(
ÿÿ& '
newLanguage
ÿÿ' 2
)
ÿÿ2 3
;
ÿÿ3 4
System
€€ 
.
€€ 
Diagnostics
€€ &
.
€€& '
Process
€€' .
.
€€. /
Start
€€/ 4
(
€€4 5
Application
€€5 @
.
€€@ A
ResourceAssembly
€€A Q
.
€€Q R
Location
€€R Z
)
€€Z [
;
€€[ \
Application
‹‹ 
.
‹‹  
Current
‹‹  '
.
‹‹' (
Shutdown
‹‹( 0
(
‹‹0 1
)
‹‹1 2
;
‹‹2 3
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 	
}
‚‚ 
}„„ Ãﬂ
|C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\GameBoardView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public   

partial   
class   
GameBoardView   &
:  ' (
Page  ) -
,  - . 
IGameManagerCallback  / C
{!! 
private## 
GameManagerClient## !
_gameManagerClient##" 4
;##4 5
private$$ 
	GamePiece$$ 
_selectedPiece$$ (
;$$( )
private%% 
Polygon%% 
_lastPlacedCell%% '
;%%' (
private&& 

Dictionary&& 
<&& 
Point&&  
,&&  !
Polygon&&" )
>&&) *
_cellDictionary&&+ :
=&&; <
new&&= @

Dictionary&&A K
<&&K L
Point&&L Q
,&&Q R
Polygon&&S Z
>&&Z [
(&&[ \
)&&\ ]
;&&] ^
private'' 

Dictionary'' 
<'' 
Point''  
,''  !
Logic''" '
.''' (
	GamePiece''( 1
>''1 2
_board''3 9
='': ;
new''< ?

Dictionary''@ J
<''J K
Point''K P
,''P Q
Logic''R W
.''W X
	GamePiece''X a
>''a b
(''b c
)''c d
;''d e
private(( 
List(( 
<(( 
UserSession((  
>((  !
_usersInGame((" .
;((. /
private)) 
TimersTimer)) 
_turnTimeoutTimer)) -
;))- .
private** 
bool**  
_hasOtherPlayerMoved** )
=*** +
false**, 1
;**1 2
private++ 
bool++ 
_isOtherPlayerTurn++ '
=++( )
false++* /
;++/ 0
private,, 
int,, 
_numberOfPlayer,, #
=,,$ %
$num,,& '
;,,' (
private-- 
int-- 
_numberOfTurn-- !
=--" #
$num--$ %
;--% &
private.. 
string.. 
_winnerName.. "
=..# $
$str..% '
;..' (
private// 
string// 
_usernamePlayer1// '
=//( )
$str//* ,
;//, -
private00 
string00 
_usernamePlayer200 '
=00( )
$str00* ,
;00, -
private11 
bool11 
_isFirstPiecePlaced11 (
=11) *
false11+ 0
;110 1
private22 
bool22 
_isBeetleMoved22 #
=22$ %
false22& +
;22+ ,
private33 
bool33 
_isQueenInGame33 #
=33$ %
false33& +
;33+ ,
private44 
bool44 
_IsMatchFinished44 %
=44& '
false44( -
;44- .
private55 
static55 
readonly55 
List55  $
<55$ %
(55% &
double55& ,
dirUp55- 2
,552 3
double554 :
dirDown55; B
)55B C
>55C D
_hexPairDirecctions55E X
=55Y Z
new55[ ^
List55_ c
<55c d
(55d e
double55e k
,55k l
double55m s
)55s t
>55t u
{55v w
(55x y
$num55y z
,55z {
-55| }
$num55} ~
)55~ 
,	55 Ä
(
55Å Ç
$num
55Ç É
,
55É Ñ
-
55Ö Ü
$num
55Ü á
)
55á à
,
55à â
(
55ä ã
$num
55ã å
,
55å ç
$num
55é è
)
55è ê
,
55ê ë
(
55í ì
$num
55ì î
,
55î ï
$num
55ñ ó
)
55ó ò
,
55ò ô
(
55ö õ
-
55õ ú
$num
55ú ù
,
55ù û
$num
55ü †
)
55† °
,
55° ¢
(
55£ §
-
55§ •
$num
55• ¶
,
55¶ ß
-
55® ©
$num
55© ™
)
55™ ´
}
55¨ ≠
;
55≠ Æ
private66 
static66 
readonly66 
List66  $
<66$ %
(66% &
double66& ,
dirUp66- 2
,662 3
double664 :
dirDown66; B
)66B C
>66C D
_hexOddDirecctions66E W
=66X Y
new66Z ]
List66^ b
<66b c
(66c d
double66d j
,66j k
double66l r
)66r s
>66s t
{66u v
(66w x
$num66x y
,66y z
-66{ |
$num66| }
)66} ~
,66~ 
(
66Ä Å
$num
66Å Ç
,
66Ç É
$num
66Ñ Ö
)
66Ö Ü
,
66Ü á
(
66à â
$num
66â ä
,
66ä ã
$num
66å ç
)
66ç é
,
66é è
(
66ê ë
$num
66ë í
,
66í ì
$num
66î ï
)
66ï ñ
,
66ñ ó
(
66ò ô
-
66ô ö
$num
66ö õ
,
66õ ú
$num
66ù û
)
66û ü
,
66ü †
(
66° ¢
-
66¢ £
$num
66£ §
,
66§ •
$num
66¶ ß
)
66ß ®
}
66© ™
;
66™ ´
private77 
const77 
string77 

_Player1Id77 '
=77( )
$str77* 3
;773 4
private88 
const88 
string88 

_Player2Id88 '
=88( )
$str88* 3
;883 4
private99 
const99 
string99 
_QueenPieceName99 ,
=99- .
$str99/ 6
;996 7
public:: 
const:: 
string:: 
BeetlePieceName:: +
=::, -
$str::. 6
;::6 7
private;; 
static;; 
readonly;; 

Dictionary;;  *
<;;* +
(;;+ ,
int;;, /
,;;/ 0
string;;1 7
);;7 8
,;;8 9
Image;;: ?
>;;? @&
_piecesCapturedByTheBeetle;;A [
=;;\ ]
new;;^ a

Dictionary;;b l
<;;l m
(;;m n
int;;n q
,;;q r
string;;s y
);;y z
,;;z {
Image	;;| Å
>
;;Å Ç
(
;;Ç É
)
;;É Ñ
;
;;Ñ Ö
private<< 
List<< 
<<< 
	GamePiece<< 
><< 
_player1Pieces<<  .
=<</ 0
new<<1 4
List<<5 9
<<<9 :
	GamePiece<<: C
><<C D
{== 
new>> 
	GamePiece>> 
(>> 
new>> !
Queen>>" '
(>>' (
)>>( )
,>>) *
$str>>+ Q
,>>Q R
new>>S V
Point>>W \
(>>\ ]
->>] ^
$num>>^ _
,>>_ `
->>a b
$num>>b c
)>>c d
,>>d e

_Player1Id>>e o
,>>o p
$num>>p q
)>>q r
,>>r s
new?? 
	GamePiece?? 
(?? 
new?? !
Spider??" (
(??( )
)??) *
,??* +
$str??, S
,??S T
new??U X
Point??Y ^
(??^ _
-??_ `
$num??` a
,??a b
-??c d
$num??d e
)??e f
,??f g

_Player1Id??g q
,??q r
$num??r s
)??s t
,??t u
new@@ 
	GamePiece@@ 
(@@ 
new@@ !
Spider@@" (
(@@( )
)@@) *
,@@* +
$str@@, S
,@@S T
new@@U X
Point@@Y ^
(@@^ _
-@@_ `
$num@@` a
,@@a b
-@@c d
$num@@d e
)@@e f
,@@f g

_Player1Id@@g q
,@@q r
$num@@r s
)@@s t
,@@t u
newAA 
	GamePieceAA 
(AA 
newAA !
BeetleAA" (
(AA) *
)AA* +
,AA+ ,
$strAA- T
,AAT U
newAAV Y
PointAAZ _
(AA_ `
-AA` a
$numAAa b
,AAb c
-AAd e
$numAAe f
)AAf g
,AAg h

_Player1IdAAh r
,AAr s
$numAAs t
)AAt u
,AAu v
newBB 
	GamePieceBB 
(BB 
newBB !
BeetleBB" (
(BB) *
)BB* +
,BB+ ,
$strBB- T
,BBT U
newBBV Y
PointBBZ _
(BB_ `
-BB` a
$numBBa b
,BBb c
-BBd e
$numBBe f
)BBf g
,BBg h

_Player1IdBBh r
,BBr s
$numBBs t
)BBt u
,BBu v
newCC 
	GamePieceCC 
(CC 
newCC !
AntCC" %
(CC' (
)CC( )
,CC) *
$strCC+ O
,CCO P
newCCQ T
PointCCU Z
(CCZ [
-CC[ \
$numCC\ ]
,CC] ^
-CC_ `
$numCC` a
)CCa b
,CCb c

_Player1IdCCd n
,CCn o
$numCCo p
)CCp q
,CCq r
newDD 
	GamePieceDD 
(DD 
newDD !
AntDD" %
(DD' (
)DD( )
,DD) *
$strDD+ O
,DDO P
newDDQ T
PointDDU Z
(DDZ [
-DD[ \
$numDD\ ]
,DD] ^
-DD_ `
$numDD` a
)DDa b
,DDb c

_Player1IdDDd n
,DDn o
$numDDo p
)DDp q
,DDq r
newEE 
	GamePieceEE 
(EE 
newEE !
AntEE" %
(EE' (
)EE( )
,EE) *
$strEE+ O
,EEO P
newEEQ T
PointEEU Z
(EEZ [
-EE[ \
$numEE\ ]
,EE] ^
-EE_ `
$numEE` a
)EEa b
,EEb c

_Player1IdEEd n
,EEn o
$numEEo p
)EEp q
,EEq r
newFF 
	GamePieceFF 
(FF 
newFF !
GrasshopperFF" -
(FF/ 0
)FF0 1
,FF1 2
$strFF3 _
,FF_ `
newFFa d
PointFFe j
(FFj k
-FFk l
$numFFl m
,FFm n
-FFo p
$numFFp q
)FFq r
,FFr s

_Player1IdFFs }
,FF} ~
$numFF~ 
)	FF Ä
,
FFÄ Å
newGG 
	GamePieceGG 
(GG 
newGG !
GrasshopperGG" -
(GG/ 0
)GG0 1
,GG1 2
$strGG3 _
,GG_ `
newGGa d
PointGGe j
(GGj k
-GGk l
$numGGl m
,GGm n
-GGo p
$numGGp q
)GGq r
,GGr s

_Player1IdGGs }
,GG} ~
$num	GG~ Ä
)
GGÄ Å
,
GGÅ Ç
newHH 
	GamePieceHH 
(HH 
newHH !
GrasshopperHH" -
(HH/ 0
)HH0 1
,HH1 2
$strHH3 _
,HH_ `
newHHa d
PointHHe j
(HHj k
-HHk l
$numHHl m
,HHm n
-HHo p
$numHHp q
)HHq r
,HHr s

_Player1IdHHs }
,HH} ~
$num	HH~ Ä
)
HHÄ Å
}II 
;II 
privateJJ 
ListJJ 
<JJ 
	GamePieceJJ 
>JJ 
_player2PiecesJJ  .
=JJ/ 0
newJJ1 4
ListJJ5 9
<JJ9 :
	GamePieceJJ: C
>JJC D
{KK 
newLL 
	GamePieceLL 
(LL 
newLL !
QueenLL" '
(LL' (
)LL( )
,LL) *
$strLL+ Q
,LLQ R
newLLS V
PointLLW \
(LL\ ]
-LL] ^
$numLL^ _
,LL_ `
-LLa b
$numLLb c
)LLc d
,LLd e

_Player2IdLLe o
,LLo p
$numLLp q
)LLq r
,LLr s
newMM 
	GamePieceMM 
(MM 
newMM !
SpiderMM" (
(MM( )
)MM) *
,MM* +
$strMM, S
,MMS T
newMMU X
PointMMY ^
(MM^ _
-MM_ `
$numMM` a
,MMa b
-MMc d
$numMMd e
)MMe f
,MMf g

_Player2IdMMg q
,MMq r
$numMMr s
)MMs t
,MMt u
newNN 
	GamePieceNN 
(NN 
newNN !
SpiderNN" (
(NN( )
)NN) *
,NN* +
$strNN, S
,NNS T
newNNU X
PointNNY ^
(NN^ _
-NN_ `
$numNN` a
,NNa b
-NNc d
$numNNd e
)NNe f
,NNf g

_Player2IdNNg q
,NNq r
$numNNr s
)NNs t
,NNt u
newOO 
	GamePieceOO 
(OO 
newOO !
BeetleOO" (
(OO( )
)OO) *
,OO* +
$strOO, S
,OOS T
newOOU X
PointOOY ^
(OO^ _
-OO_ `
$numOO` a
,OOa b
-OOc d
$numOOd e
)OOe f
,OOf g

_Player2IdOOg q
,OOq r
$numOOr s
)OOs t
,OOt u
newPP 
	GamePiecePP 
(PP 
newPP !
BeetlePP" (
(PP( )
)PP) *
,PP* +
$strPP, S
,PPS T
newPPU X
PointPPY ^
(PP^ _
-PP_ `
$numPP` a
,PPa b
-PPc d
$numPPd e
)PPe f
,PPf g

_Player2IdPPg q
,PPq r
$numPPr s
)PPs t
,PPt u
newQQ 
	GamePieceQQ 
(QQ 
newQQ !
AntQQ" %
(QQ% &
)QQ& '
,QQ' (
$strQQ) M
,QQM N
newQQO R
PointQQS X
(QQX Y
-QQY Z
$numQQZ [
,QQ[ \
-QQ] ^
$numQQ^ _
)QQ_ `
,QQ` a

_Player2IdQQb l
,QQl m
$numQQm n
)QQn o
,QQo p
newRR 
	GamePieceRR 
(RR 
newRR !
AntRR" %
(RR% &
)RR& '
,RR' (
$strRR) M
,RRM N
newRRO R
PointRRS X
(RRX Y
-RRY Z
$numRRZ [
,RR[ \
-RR] ^
$numRR^ _
)RR_ `
,RR` a

_Player2IdRRb l
,RRl m
$numRRm n
)RRn o
,RRo p
newSS 
	GamePieceSS 
(SS 
newSS !
AntSS" %
(SS% &
)SS& '
,SS' (
$strSS) M
,SSM N
newSSO R
PointSSS X
(SSX Y
-SSY Z
$numSSZ [
,SS[ \
-SS] ^
$numSS^ _
)SS_ `
,SS` a

_Player2IdSSb l
,SSl m
$numSSm n
)SSn o
,SSo p
newTT 
	GamePieceTT 
(TT 
newTT !
GrasshopperTT" -
(TT. /
)TT/ 0
,TT0 1
$strTT2 ^
,TT^ _
newTT` c
PointTTd i
(TTi j
-TTj k
$numTTk l
,TTl m
-TTn o
$numTTo p
)TTp q
,TTq r

_Player2IdTTs }
,TT} ~
$numTT~ 
)	TT Ä
,
TTÄ Å
newUU 
	GamePieceUU 
(UU 
newUU !
GrasshopperUU" -
(UU. /
)UU/ 0
,UU0 1
$strUU2 ^
,UU^ _
newUU` c
PointUUd i
(UUi j
-UUj k
$numUUk l
,UUl m
-UUn o
$numUUo p
)UUp q
,UUq r

_Player2IdUUr |
,UU| }
$numUU} 
)	UU Ä
,
UUÄ Å
newVV 
	GamePieceVV 
(VV 
newVV !
GrasshopperVV" -
(VV. /
)VV/ 0
,VV0 1
$strVV2 ^
,VV^ _
newVV` c
PointVVd i
(VVi j
-VVj k
$numVVk l
,VVl m
-VVn o
$numVVo p
)VVp q
,VVq r

_Player2IdVVs }
,VV} ~
$num	VV~ Ä
)
VVÄ Å
}WW 
;WW 
publicYY 
GameBoardViewYY 
(YY 
)YY 
{ZZ 	
_gameManagerClient[[ 
=[[  
new[[! $
GameManagerClient[[% 6
([[6 7
new[[7 :
InstanceContext[[; J
([[J K
this[[K O
)[[O P
)[[P Q
;[[Q R
InitializeComponent\\ 
(\\  
)\\  !
;\\! "
if]] 
(]] 
App]] 
.]] 
IsMusicPlaying]] "
)]]" #
{^^ 
App__ 
.__ 
	PlayMusic__ 
(__ 
$str__ .
)__. /
;__/ 0
}`` 
InitializeBoardaa 
(aa 
)aa 
;aa 
ConnectToGameBoardbb 
(bb 
)bb  
;bb  !
	Constantscc 
.cc 
	IsInMatchcc 
=cc  !
truecc" &
;cc& '
_numberOfTurndd 
=dd 
$numdd 
;dd 
}ee 	
privategg 
voidgg 
ConnectToGameBoardgg '
(gg' (
)gg( )
{hh 	
LoggerManagerii 
loggerii  
=ii! "
newii# &
LoggerManagerii' 4
(ii4 5
thisii5 9
.ii9 :
GetTypeii: A
(iiA B
)iiB C
)iiC D
;iiD E
tryjj 
{kk 
UserSessionll 
userSessionll '
=ll( )
newll* -
UserSessionll. 9
(ll9 :
)ll: ;
{mm 
usernamenn 
=nn  
UserProfileSingletonnn 3
.nn3 4
usernamenn4 <
,nn< =
	idAccountoo 
=oo  
UserProfileSingletonoo  4
.oo4 5
	idAccountoo5 >
,oo> ?
	codeMatchpp 
=pp 
MatchSingletonpp  .
.pp. /
	codeMatchpp/ 8
}qq 
;qq 
_gameManagerClientrr "
.rr" #
ConnectToGameBoardrr# 5
(rr5 6
userSessionrr6 A
,rrA B
userSessionrrC N
.rrN O
	codeMatchrrO X
)rrX Y
;rrY Z
}ss 
catchtt 
(tt %
EndpointNotFoundExceptiontt ,
endPointExceptiontt- >
)tt> ?
{uu 
loggervv 
.vv 
LogFatalvv 
(vv  
endPointExceptionvv  1
)vv1 2
;vv2 3
DialogManagerww 
.ww !
ShowErrorMessageAlertww 3
(ww3 4

Propertiesww4 >
.ww> ?
	Resourcesww? H
.wwH I#
dialogEndPointExceptionwwI `
)ww` a
;wwa b
}xx 
catchyy 
(yy 
TimeoutExceptionyy #
timeOutExceptionyy$ 4
)yy4 5
{zz 
logger{{ 
.{{ 
LogWarn{{ 
({{ 
timeOutException{{ /
){{/ 0
;{{0 1
DialogManager|| 
.|| !
ShowErrorMessageAlert|| 3
(||3 4

Properties||4 >
.||> ?
	Resources||? H
.||H I"
dialogTimeOutException||I _
)||_ `
;||` a
}}} 
catch~~ 
(~~ "
CommunicationException~~ )"
communicationException~~* @
)~~@ A
{ 
logger
ÄÄ 
.
ÄÄ 
LogFatal
ÄÄ 
(
ÄÄ  $
communicationException
ÄÄ  6
)
ÄÄ6 7
;
ÄÄ7 8
DialogManager
ÅÅ 
.
ÅÅ #
ShowErrorMessageAlert
ÅÅ 3
(
ÅÅ3 4

Properties
ÅÅ4 >
.
ÅÅ> ?
	Resources
ÅÅ? H
.
ÅÅH I)
dialogComunicationException
ÅÅI d
)
ÅÅd e
;
ÅÅe f
}
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ 
LoadPlayerPieces
ÖÖ %
(
ÖÖ% &

StackPanel
ÖÖ& 0
playerPiecesPanel
ÖÖ1 B
,
ÖÖB C
List
ÖÖD H
<
ÖÖH I
	GamePiece
ÖÖI R
>
ÖÖR S
pieces
ÖÖT Z
,
ÖÖZ [
string
ÖÖ\ b
username
ÖÖc k
)
ÖÖk l
{
ÜÜ 	
for
áá 
(
áá 
int
áá 
indexPieces
áá  
=
áá! "
$num
áá# $
;
áá$ %
indexPieces
áá& 1
<
áá2 3
pieces
áá4 :
.
áá: ;
Count
áá; @
;
áá@ A
indexPieces
ááB M
++
ááM O
)
ááO P
{
àà 
pieces
ââ 
[
ââ 
indexPieces
ââ "
]
ââ" #
.
ââ# $

PlayerName
ââ$ .
=
ââ/ 0
username
ââ1 9
;
ââ9 :
pieces
ää 
[
ää 
indexPieces
ää "
]
ää" #
.
ää# $
Piece
ää$ )
.
ää) *

PlayerName
ää* 4
=
ää5 6
username
ää7 ?
;
ää? @
}
ãã 
playerPiecesPanel
åå 
.
åå 
Children
åå &
.
åå& '
Clear
åå' ,
(
åå, -
)
åå- .
;
åå. /
for
çç 
(
çç 
int
çç 
i
çç 
=
çç 
$num
çç 
;
çç 
i
çç 
<
çç 
pieces
çç  &
.
çç& '
Count
çç' ,
;
çç, -
i
çç. /
++
çç/ 1
)
çç1 2
{
éé 
var
èè 
piece
èè 
=
èè 
pieces
èè "
[
èè" #
i
èè# $
]
èè$ %
;
èè% &
piece
êê 
.
êê 

PlayerName
êê  
=
êê! "
username
êê# +
;
êê+ ,
piece
ëë 
.
ëë 
Piece
ëë 
.
ëë 

PlayerName
ëë &
=
ëë' (
username
ëë) 1
;
ëë1 2
var
íí 
image
íí 
=
íí 
new
íí 
Image
íí  %
{
ìì 
Source
îî 
=
îî 
new
îî  
BitmapImage
îî! ,
(
îî, -
new
îî- 0
Uri
îî1 4
(
îî4 5
piece
îî5 :
.
îî: ;
	ImagePath
îî; D
,
îîD E
UriKind
îîF M
.
îîM N
Relative
îîN V
)
îîV W
)
îîW X
,
îîX Y
Width
ïï 
=
ïï 
$num
ïï 
,
ïï 
Height
ññ 
=
ññ 
$num
ññ 
,
ññ  
Margin
óó 
=
óó 
new
óó  
	Thickness
óó! *
(
óó* +
$num
óó+ ,
,
óó, -
$num
óó. /
*
óó0 1
$num
óó2 4
,
óó4 5
$num
óó6 7
,
óó7 8
$num
óó9 :
)
óó: ;
,
óó; <
Tag
òò 
=
òò 
piece
òò 
,
òò  
DataContext
ôô 
=
ôô  !
piece
ôô" '
}
öö 
;
öö 
playerPiecesPanel
õõ !
.
õõ! "
Children
õõ" *
.
õõ* +
Add
õõ+ .
(
õõ. /
image
õõ/ 4
)
õõ4 5
;
õõ5 6
image
úú 
.
úú 
	MouseDown
úú 
+=
úú  "
Piece_MouseDown
úú# 2
;
úú2 3
}
ùù 
}
ûû 	
private
†† 
void
†† 
InitializeBoard
†† $
(
††$ %
)
††% &
{
°° 	
int
¢¢ 
rows
¢¢ 
=
¢¢ 
$num
¢¢ 
;
¢¢ 
int
££ 
columns
££ 
=
££ 
$num
££ 
;
££ 
double
§§ 
hexagonSize
§§ 
=
§§  
$num
§§! #
;
§§# $
double
•• 
xOffset
•• 
=
•• 
hexagonSize
•• (
*
••) *
Math
••+ /
.
••/ 0
Sqrt
••0 4
(
••4 5
$num
••5 6
)
••6 7
;
••7 8
double
¶¶ 
yOffset
¶¶ 
=
¶¶ 
hexagonSize
¶¶ (
*
¶¶) *
$num
¶¶+ .
;
¶¶. /!
canva_GameBoardGrid
ßß 
.
ßß  
Children
ßß  (
.
ßß( )
Clear
ßß) .
(
ßß. /
)
ßß/ 0
;
ßß0 1
_cellDictionary
®® 
.
®® 
Clear
®® !
(
®®! "
)
®®" #
;
®®# $
for
©© 
(
©© 
int
©© 
row
©© 
=
©© 
$num
©© 
;
©© 
row
©© !
<
©©" #
rows
©©$ (
;
©©( )
row
©©* -
++
©©- /
)
©©/ 0
{
™™ 
for
´´ 
(
´´ 
int
´´ 
col
´´ 
=
´´ 
$num
´´  
;
´´  !
col
´´" %
<
´´& '
columns
´´( /
;
´´/ 0
col
´´1 4
++
´´4 6
)
´´6 7
{
¨¨ 
var
≠≠ 
hexagon
≠≠ 
=
≠≠  !
new
≠≠" %
Polygon
≠≠& -
{
ÆÆ 
Points
ØØ 
=
ØØ  !
CreateHexagonPoints
ØØ! 4
(
ØØ4 5
hexagonSize
ØØ5 @
)
ØØ@ A
,
ØØA B
Tag
∞∞ 
=
∞∞ 
new
∞∞ !
Point
∞∞" '
(
∞∞' (
row
∞∞( +
,
∞∞+ ,
col
∞∞- 0
)
∞∞0 1
,
∞∞1 2
}
±± 
;
±± 
hexagon
≤≤ 
.
≤≤ 
	IsEnabled
≤≤ %
=
≤≤& '
false
≤≤( -
;
≤≤- .
double
≥≥ 
x
≥≥ 
=
≥≥ 
col
≥≥ "
*
≥≥# $
xOffset
≥≥% ,
;
≥≥, -
double
¥¥ 
y
¥¥ 
=
¥¥ 
row
¥¥ "
*
¥¥# $
yOffset
¥¥% ,
;
¥¥, -
if
µµ 
(
µµ 
row
µµ 
%
µµ 
$num
µµ 
==
µµ  "
$num
µµ# $
)
µµ$ %
x
µµ& '
+=
µµ( *
xOffset
µµ+ 2
/
µµ3 4
$num
µµ5 6
;
µµ6 7
Canvas
∂∂ 
.
∂∂ 
SetLeft
∂∂ "
(
∂∂" #
hexagon
∂∂# *
,
∂∂* +
x
∂∂, -
)
∂∂- .
;
∂∂. /
Canvas
∑∑ 
.
∑∑ 
SetTop
∑∑ !
(
∑∑! "
hexagon
∑∑" )
,
∑∑) *
y
∑∑+ ,
)
∑∑, -
;
∑∑- .!
canva_GameBoardGrid
∏∏ '
.
∏∏' (
Children
∏∏( 0
.
∏∏0 1
Add
∏∏1 4
(
∏∏4 5
hexagon
∏∏5 <
)
∏∏< =
;
∏∏= >
_cellDictionary
ππ #
[
ππ# $
new
ππ$ '
Point
ππ( -
(
ππ- .
row
ππ. 1
,
ππ1 2
col
ππ3 6
)
ππ6 7
]
ππ7 8
=
ππ9 :
hexagon
ππ; B
;
ππB C
}
∫∫ 
}
ªª 
}
ºº 	
private
ææ 
void
ææ 
Cell_MouseDown
ææ #
(
ææ# $
object
ææ$ *
sender
ææ+ 1
,
ææ1 2"
MouseButtonEventArgs
ææ3 G
e
ææH I
)
ææI J
{
øø 	
if
¿¿ 
(
¿¿ 
_selectedPiece
¿¿ 
!=
¿¿ !
null
¿¿" &
&&
¿¿' )
sender
¿¿* 0
is
¿¿1 3
Polygon
¿¿4 ;
cell
¿¿< @
&&
¿¿A C
cell
¿¿D H
!=
¿¿I K
null
¿¿L P
)
¿¿P Q
{
¡¡ 
PlacePieceOnCell
¬¬  
(
¬¬  !
cell
¬¬! %
)
¬¬% &
;
¬¬& '
}
√√ 
e
ƒƒ 
.
ƒƒ 
Handled
ƒƒ 
=
ƒƒ 
true
ƒƒ 
;
ƒƒ 
}
≈≈ 	
private
«« 
void
«« %
PieceSelected_MouseDown
«« ,
(
««, -
object
««- 3
sender
««4 :
,
««: ;"
MouseButtonEventArgs
««< P
e
««Q R
)
««R S
{
»» 	
if
…… 
(
…… 
sender
…… 
is
…… 
Image
…… 

imagePiece
……  *
)
……* +
{
   
	GamePiece
ÀÀ 
piece
ÀÀ 
=
ÀÀ  !
(
ÀÀ" #
	GamePiece
ÀÀ# ,
)
ÀÀ, -

imagePiece
ÀÀ- 7
.
ÀÀ7 8
Tag
ÀÀ8 ;
;
ÀÀ; <
if
ÃÃ 
(
ÃÃ 
_isBeetleMoved
ÃÃ "
)
ÃÃ" #
{
ÕÕ 
List
ŒŒ 
<
ŒŒ 
Point
ŒŒ 
>
ŒŒ 
adjacentPoints
ŒŒ  .
=
ŒŒ/ 0"
ObtainAdjacentPoints
ŒŒ1 E
(
ŒŒE F
piece
ŒŒF K
.
ŒŒK L
Position
ŒŒL T
)
ŒŒT U
;
ŒŒU V
if
œœ 
(
œœ 
adjacentPoints
œœ &
.
œœ& '
Contains
œœ' /
(
œœ/ 0
_selectedPiece
œœ0 >
.
œœ> ?
Position
œœ? G
)
œœG H
)
œœH I
{
–– #
PieceSelectedByBeetle
—— -
(
——- .

imagePiece
——. 8
,
——8 9
_selectedPiece
——: H
)
——H I
;
——I J
}
““ 
}
”” 
else
‘‘ 
{
’’ 
if
÷÷ 
(
÷÷ (
ValidateQueenPieceIsInGame
÷÷ 2
(
÷÷2 3
)
÷÷3 4
)
÷÷4 5
{
◊◊ "
PieceOnBoardSelected
ÿÿ ,
(
ÿÿ, -
piece
ÿÿ- 2
)
ÿÿ2 3
;
ÿÿ3 4
}
ŸŸ 
else
⁄⁄ 
{
€€ 
ShowInfoMessage
‹‹ '
(
‹‹' (

Properties
‹‹( 2
.
‹‹2 3
	Resources
‹‹3 <
.
‹‹< =!
dialogFourFirstTurn
‹‹= P
)
‹‹P Q
;
‹‹Q R
}
›› 
}
ﬁﬁ 
}
ﬂﬂ 
e
‡‡ 
.
‡‡ 
Handled
‡‡ 
=
‡‡ 
true
‡‡ 
;
‡‡ 
}
·· 	
private
„„ 
void
„„ 
Piece_MouseDown
„„ $
(
„„$ %
object
„„% +
sender
„„, 2
,
„„2 3"
MouseButtonEventArgs
„„4 H
e
„„I J
)
„„J K
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
sender
ÂÂ 
is
ÂÂ 
Image
ÂÂ 

pieceImage
ÂÂ  *
&&
ÂÂ+ -

pieceImage
ÂÂ. 8
.
ÂÂ8 9
DataContext
ÂÂ9 D
is
ÂÂE G
	GamePiece
ÂÂH Q
piece
ÂÂR W
&&
ÂÂX Z
piece
ÂÂ[ `
.
ÂÂ` a

PlayerName
ÂÂa k
==
ÂÂl n#
UserProfileSingletonÂÂo É
.ÂÂÉ Ñ
usernameÂÂÑ å
)ÂÂå ç
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
_numberOfTurn
ÁÁ !
==
ÁÁ" $
$num
ÁÁ% &
&&
ÁÁ' )
!
ÁÁ* +(
ValidateQueenPieceIsInGame
ÁÁ+ E
(
ÁÁE F
)
ÁÁF G
&&
ÁÁH J
piece
ÁÁK P
.
ÁÁP Q
Piece
ÁÁQ V
.
ÁÁV W
Name
ÁÁW [
!=
ÁÁ\ ^
_QueenPieceName
ÁÁ_ n
&&
ÁÁo q
!
ÁÁr s
_isQueenInGameÁÁs Å
)ÁÁÅ Ç
{
ËË "
HandleQueenNotInPlay
ÈÈ (
(
ÈÈ( )
)
ÈÈ) *
;
ÈÈ* +
}
ÍÍ 
else
ÎÎ 
{
ÏÏ "
HandlePieceSelection
ÌÌ (
(
ÌÌ( )
piece
ÌÌ) .
)
ÌÌ. /
;
ÌÌ/ 0
}
ÓÓ 
}
ÔÔ 
e
 
.
 
Handled
 
=
 
true
 
;
 
}
ÒÒ 	
private
ÛÛ 
void
ÛÛ "
HandleQueenNotInPlay
ÛÛ )
(
ÛÛ) *
)
ÛÛ* +
{
ÙÙ 	
ShowInfoMessage
ıı 
(
ıı 

Properties
ıı &
.
ıı& '
	Resources
ıı' 0
.
ıı0 1$
dialogQueenIsNotInPlay
ıı1 G
)
ııG H
;
ııH I-
HighlightAvailableStartingCells
ˆˆ +
(
ˆˆ+ ,
)
ˆˆ, -
;
ˆˆ- .
}
˜˜ 	
private
˘˘ 
void
˘˘ "
HandlePieceSelection
˘˘ )
(
˘˘) *
	GamePiece
˘˘* 3
piece
˘˘4 9
)
˘˘9 :
{
˙˙ 	
_selectedPiece
˚˚ 
=
˚˚ 
piece
˚˚ "
;
˚˚" #
if
¸¸ 
(
¸¸ 
!
¸¸ !
_isFirstPiecePlaced
¸¸ $
)
¸¸$ %
{
˝˝ '
HandleFirstPiecePlacement
˛˛ )
(
˛˛) *
)
˛˛* +
;
˛˛+ ,
}
ˇˇ 
else
ÄÄ 
{
ÅÅ ,
HandleSubsequentPiecePlacement
ÇÇ .
(
ÇÇ. /
piece
ÇÇ/ 4
)
ÇÇ4 5
;
ÇÇ5 6
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ '
HandleFirstPiecePlacement
ÜÜ .
(
ÜÜ. /
)
ÜÜ/ 0
{
áá 	
Point
àà 
centerPosition
àà  
=
àà! "
new
àà# &
Point
àà' ,
(
àà, -
$num
àà- .
,
àà. /
$num
àà0 1
)
àà1 2
;
àà2 3
if
ââ 
(
ââ 
_cellDictionary
ââ 
.
ââ  
TryGetValue
ââ  +
(
ââ+ ,
centerPosition
ââ, :
,
ââ: ;
out
ââ< ?
Polygon
ââ@ G

centerCell
ââH R
)
ââR S
&&
ââT V
!
ââW X
_board
ââX ^
.
ââ^ _
ContainsKey
ââ_ j
(
ââj k
centerPosition
ââk y
)
âây z
)
ââz {
{
ää 2
$HighlightStartingFirstTurnStaterCell
ãã 4
(
ãã4 5
centerPosition
ãã5 C
)
ããC D
;
ããD E
PlacePieceOnCell
åå  
(
åå  !
_lastPlacedCell
åå! 0
)
åå0 1
;
åå1 2
}
çç 
else
éé 
{
èè 2
$HigligthStartingFirstTurnOponentCell
êê 4
(
êê4 5
)
êê5 6
;
êê6 7
}
ëë 
}
íí 	
private
îî 
void
îî ,
HandleSubsequentPiecePlacement
îî 3
(
îî3 4
	GamePiece
îî4 =
piece
îî> C
)
îîC D
{
ïï 	
Point
ññ 

staterMove
ññ 
=
ññ 
new
ññ "
Point
ññ# (
(
ññ( )
-
ññ) *
$num
ññ* +
,
ññ+ ,
-
ññ- .
$num
ññ. /
)
ññ/ 0
;
ññ0 1
if
óó 
(
óó 
piece
óó 
.
óó 
Position
óó 
==
óó !

staterMove
óó" ,
)
óó, -
{
òò -
HighlightAvailableStartingCells
ôô /
(
ôô/ 0
)
ôô0 1
;
ôô1 2
}
öö 
}
õõ 	
private
ùù 
bool
ùù (
ValidateQueenPieceIsInGame
ùù /
(
ùù/ 0
)
ùù0 1
{
ûû 	
var
üü 
piecesCaptured
üü 
=
üü  (
_piecesCapturedByTheBeetle
üü! ;
.
üü; <
Select
üü< B
(
üüB C
entry
üüC H
=>
üüI K
entry
üüL Q
.
üüQ R
Value
üüR W
.
üüW X
Tag
üüX [
as
üü\ ^
	GamePiece
üü_ h
)
üüh i
.
üüi j
ToList
üüj p
(
üüp q
)
üüq r
;
üür s
bool
†† 
queenOnBoard
†† 
=
†† 
_board
††  &
.
††& '
Values
††' -
.
††- .
Any
††. 1
(
††1 2
piece
††2 7
=>
††8 :
piece
°° 
!=
°° 
null
°° 
&&
°°  
piece
¢¢ 
.
¢¢ 
Piece
¢¢ 
.
¢¢ 
Name
¢¢  
.
¢¢  !
Equals
¢¢! '
(
¢¢' (
_QueenPieceName
¢¢( 7
)
¢¢7 8
&&
¢¢9 ;
piece
££ 
.
££ 
Piece
££ 
.
££ 

PlayerName
££ &
==
££' )"
UserProfileSingleton
££* >
.
££> ?
username
££? G
)
§§ 
;
§§ 
bool
•• 
queenCaptured
•• 
=
••  
piecesCaptured
••! /
.
••/ 0
Exists
••0 6
(
••6 7
pieceCaptured
••7 D
=>
••E G
pieceCaptured
¶¶ 
!=
¶¶  
null
¶¶! %
&&
¶¶& (
pieceCaptured
ßß 
.
ßß 

PlayerName
ßß (
==
ßß) +"
UserProfileSingleton
ßß, @
.
ßß@ A
username
ßßA I
&&
ßßJ L
pieceCaptured
®® 
.
®® 
Piece
®® #
.
®®# $
Name
®®$ (
==
®®) +
_QueenPieceName
®®, ;
)
©© 
;
©© 
_isQueenInGame
™™ 
=
™™ 
queenOnBoard
™™ )
||
™™* ,
queenCaptured
™™- :
;
™™: ;
return
´´ 
_isQueenInGame
´´ !
;
´´! "
}
¨¨ 	
private
ÆÆ 
void
ÆÆ "
PieceOnBoardSelected
ÆÆ )
(
ÆÆ) *
	GamePiece
ÆÆ* 3
piece
ÆÆ4 9
)
ÆÆ9 :
{
ØØ 	
string
∞∞ 
typeOfPiece
∞∞ 
=
∞∞  
piece
∞∞! &
.
∞∞& '
Piece
∞∞' ,
.
∞∞, -
Name
∞∞- 1
;
∞∞1 2
if
±± 
(
±± 1
#ValidateThatPieceCannotBreakTheHive
±± 3
(
±±3 4
piece
±±4 9
.
±±9 :
Position
±±: B
)
±±B C
)
±±C D
{
≤≤ 
switch
≥≥ 
(
≥≥ 
typeOfPiece
≥≥ #
)
≥≥# $
{
¥¥ 
case
µµ 
_QueenPieceName
µµ (
:
µµ( )
	MoveQueen
∂∂ !
(
∂∂! "
piece
∂∂" '
)
∂∂' (
;
∂∂( )
break
∑∑ 
;
∑∑ 
case
∏∏ 
$str
∏∏ !
:
∏∏! "

MoveSpider
ππ "
(
ππ" #
piece
ππ# (
)
ππ( )
;
ππ) *
break
∫∫ 
;
∫∫ 
case
ªª 
$str
ªª 
:
ªª 
MoveAnt
ºº 
(
ºº  
piece
ºº  %
)
ºº% &
;
ºº& '
break
ΩΩ 
;
ΩΩ 
case
ææ 
$str
ææ &
:
ææ& '
MoveGrasshopper
øø '
(
øø' (
piece
øø( -
)
øø- .
;
øø. /
break
¿¿ 
;
¿¿ 
case
¡¡ 
BeetlePieceName
¡¡ (
:
¡¡( )

MoveBeetle
¬¬ "
(
¬¬" #
piece
¬¬# (
)
¬¬( )
;
¬¬) *
break
√√ 
;
√√ 
default
ƒƒ 
:
ƒƒ 
DialogManager
≈≈ %
.
≈≈% &#
ShowErrorMessageAlert
≈≈& ;
(
≈≈; <

Properties
≈≈< F
.
≈≈F G
	Resources
≈≈G P
.
≈≈P Q*
dialogCouldntObtainPieceName
≈≈Q m
)
≈≈m n
;
≈≈n o
break
∆∆ 
;
∆∆ 
}
«« 
}
»» 
else
…… 
{
   
ShowInfoMessage
ÀÀ 
(
ÀÀ  

Properties
ÀÀ  *
.
ÀÀ* +
	Resources
ÀÀ+ 4
.
ÀÀ4 5"
dialogBrokeHiveAlert
ÀÀ5 I
)
ÀÀI J
;
ÀÀJ K
}
ÃÃ 
}
ŒŒ 	
public
–– 
void
–– 
ShowInfoMessage
–– #
(
––# $
string
––$ *
message
––+ 2
)
––2 3
{
—— 	"
txtBlock_InfoMessage
““  
.
““  !
Text
““! %
=
““& '
message
““( /
;
““/ 0"
txtBlock_InfoMessage
””  
.
””  !

Visibility
””! +
=
””, -

Visibility
””. 8
.
””8 9
Visible
””9 @
;
””@ A

Storyboard
‘‘ 
infoAnimation
‘‘ $
=
‘‘% &
(
‘‘' (

Storyboard
‘‘( 2
)
‘‘2 3
FindResource
‘‘3 ?
(
‘‘? @
$str
‘‘@ ]
)
‘‘] ^
;
‘‘^ _
infoAnimation
’’ 
.
’’ 
	Completed
’’ #
+=
’’$ &
(
’’' (
s
’’( )
,
’’) *
e
’’+ ,
)
’’, -
=>
’’. 0
{
÷÷ "
txtBlock_InfoMessage
◊◊ $
.
◊◊$ %

Visibility
◊◊% /
=
◊◊0 1

Visibility
◊◊2 <
.
◊◊< =
	Collapsed
◊◊= F
;
◊◊F G
}
ÿÿ 
;
ÿÿ 
infoAnimation
ŸŸ 
.
ŸŸ 
Begin
ŸŸ 
(
ŸŸ  
)
ŸŸ  !
;
ŸŸ! "
}
⁄⁄ 	
private
‹‹ 
void
‹‹ 
	MoveQueen
‹‹ 
(
‹‹ 
	GamePiece
‹‹ (
piece
‹‹) .
)
‹‹. /
{
›› 	
ResetHighlights
ﬁﬁ 
(
ﬁﬁ 
)
ﬁﬁ 
;
ﬁﬁ 
_selectedPiece
ﬂﬂ 
=
ﬂﬂ 
piece
ﬂﬂ "
;
ﬂﬂ" #
var
‡‡ 
checkedPositions
‡‡  
=
‡‡! "
new
‡‡# &
HashSet
‡‡' .
<
‡‡. /
Point
‡‡/ 4
>
‡‡4 5
(
‡‡5 6
)
‡‡6 7
;
‡‡7 8
Point
·· 
queenPosition
·· 
=
··  !
piece
··" '
.
··' (
Position
··( 0
;
··0 1
var
‚‚ 

queenPiece
‚‚ 
=
‚‚ 
_board
‚‚ #
[
‚‚# $
queenPosition
‚‚$ 1
]
‚‚1 2
;
‚‚2 3
_board
„„ 
.
„„ 
Remove
„„ 
(
„„ 
queenPosition
„„ '
)
„„' (
;
„„( )
var
‰‰ 
adjacentPoints
‰‰ 
=
‰‰  "
ObtainAdjacentPoints
‰‰! 5
(
‰‰5 6
piece
‰‰6 ;
.
‰‰; <
Position
‰‰< D
)
‰‰D E
;
‰‰E F
foreach
ÂÂ 
(
ÂÂ 
var
ÂÂ 
offset
ÂÂ 
in
ÂÂ  "
adjacentPoints
ÂÂ# 1
)
ÂÂ1 2
{
ÊÊ 
if
ÁÁ 
(
ÁÁ 
!
ÁÁ 
_board
ÁÁ 
.
ÁÁ 
ContainsKey
ÁÁ '
(
ÁÁ' (
offset
ÁÁ( .
)
ÁÁ. /
&&
ÁÁ0 2
_cellDictionary
ËË #
.
ËË# $
TryGetValue
ËË$ /
(
ËË/ 0
offset
ËË0 6
,
ËË6 7
out
ËË8 ;
Polygon
ËË< C
cell
ËËD H
)
ËËH I
&&
ËËJ L
!
ÈÈ 
checkedPositions
ÈÈ %
.
ÈÈ% &
Contains
ÈÈ& .
(
ÈÈ. /
offset
ÈÈ/ 5
)
ÈÈ5 6
&&
ÈÈ7 9
IsConnectedToHive
ÍÍ %
(
ÍÍ% &
offset
ÍÍ& ,
)
ÍÍ, -
&&
ÍÍ. 0
IsNotSurrounded
ÎÎ #
(
ÎÎ# $
offset
ÎÎ$ *
)
ÎÎ* +
)
ÎÎ+ ,
{
ÏÏ 
cell
ÌÌ 
.
ÌÌ 
Fill
ÌÌ 
=
ÌÌ 
Brushes
ÌÌ  '
.
ÌÌ' (
Green
ÌÌ( -
;
ÌÌ- .
cell
ÓÓ 
.
ÓÓ 
	IsEnabled
ÓÓ "
=
ÓÓ# $
true
ÓÓ% )
;
ÓÓ) *
cell
ÔÔ 
.
ÔÔ 
	MouseDown
ÔÔ "
+=
ÔÔ# %.
 PlacePieceThatIsInGame_MouseDown
ÔÔ& F
;
ÔÔF G
checkedPositions
 $
.
$ %
Add
% (
(
( )
offset
) /
)
/ 0
;
0 1
}
ÒÒ 
}
ÚÚ 
_board
ÛÛ 
.
ÛÛ 
Add
ÛÛ 
(
ÛÛ 
queenPosition
ÛÛ $
,
ÛÛ$ %

queenPiece
ÛÛ& 0
)
ÛÛ0 1
;
ÛÛ1 2
}
ÙÙ 	
private
ˆˆ 
void
ˆˆ 

MoveSpider
ˆˆ 
(
ˆˆ  
	GamePiece
ˆˆ  )
piece
ˆˆ* /
)
ˆˆ/ 0
{
˜˜ 	
ResetHighlights
¯¯ 
(
¯¯ 
)
¯¯ 
;
¯¯ 
_selectedPiece
˘˘ 
=
˘˘ 
piece
˘˘ "
;
˘˘" #
_board
˙˙ 
.
˙˙ 
Remove
˙˙ 
(
˙˙ 
piece
˙˙ 
.
˙˙  
Position
˙˙  (
)
˙˙( )
;
˙˙) *
List
˚˚ 
<
˚˚ 
Point
˚˚ 
>
˚˚ 
adjacentToCurrent
˚˚ )
=
˚˚* +"
ObtainAdjacentPoints
˚˚, @
(
˚˚@ A
piece
˚˚A F
.
˚˚F G
Position
˚˚G O
)
˚˚O P
;
˚˚P Q
List
¸¸ 
<
¸¸ 
Point
¸¸ 
>
¸¸ 
posibleMoves
¸¸ $
=
¸¸% &
ObtainSpiderMoves
¸¸' 8
(
¸¸8 9
piece
¸¸9 >
.
¸¸> ?
Position
¸¸? G
)
¸¸G H
.
˝˝ 
Where
˝˝ 
(
˝˝ 
pos
˝˝ 
=>
˝˝ 
!
˝˝ 
adjacentToCurrent
˝˝ 0
.
˝˝0 1
Contains
˝˝1 9
(
˝˝9 :
pos
˝˝: =
)
˝˝= >
)
˝˝> ?
.
˛˛ 
ToList
˛˛ 
(
˛˛ 
)
˛˛ 
;
˛˛ 
foreach
ˇˇ 
(
ˇˇ 
var
ˇˇ 
posiblePosition
ˇˇ (
in
ˇˇ) +
posibleMoves
ˇˇ, 8
)
ˇˇ8 9
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
_cellDictionary
ÅÅ #
.
ÅÅ# $
TryGetValue
ÅÅ$ /
(
ÅÅ/ 0
posiblePosition
ÅÅ0 ?
,
ÅÅ? @
out
ÅÅA D
Polygon
ÅÅE L
cell
ÅÅM Q
)
ÅÅQ R
)
ÅÅR S
{
ÇÇ 
cell
ÉÉ 
.
ÉÉ 
Fill
ÉÉ 
=
ÉÉ 
Brushes
ÉÉ  '
.
ÉÉ' (
Green
ÉÉ( -
;
ÉÉ- .
cell
ÑÑ 
.
ÑÑ 
	IsEnabled
ÑÑ "
=
ÑÑ# $
true
ÑÑ% )
;
ÑÑ) *
cell
ÖÖ 
.
ÖÖ 
	MouseDown
ÖÖ "
+=
ÖÖ# %.
 PlacePieceThatIsInGame_MouseDown
ÖÖ& F
;
ÖÖF G
}
ÜÜ 
}
áá 
_board
àà 
.
àà 
Add
àà 
(
àà 
piece
àà 
.
àà 
Position
àà %
,
àà% &
piece
àà' ,
)
àà, -
;
àà- .
}
ââ 	
private
ãã 
void
ãã 

MoveBeetle
ãã 
(
ãã  
	GamePiece
ãã  )
piece
ãã* /
)
ãã/ 0
{
åå 	
ResetHighlights
çç 
(
çç 
)
çç 
;
çç 
_selectedPiece
éé 
=
éé 
piece
éé "
;
éé" #
_board
èè 
.
èè 
Remove
èè 
(
èè 
piece
èè 
.
èè  
Position
èè  (
)
èè( )
;
èè) *
bool
êê 
isOnAnotherPiece
êê !
=
êê" #(
_piecesCapturedByTheBeetle
êê$ >
.
êê> ?
Any
êê? B
(
êêB C
	gamePiece
êêC L
=>
êêM O
	gamePiece
êêP Y
.
êêY Z
Key
êêZ ]
==
êê^ `
(
êêa b
piece
êêb g
.
êêg h
PieceNumber
êêh s
,
êês t
piece
êêu z
.
êêz {

PlayerNameêê{ Ö
)êêÖ Ü
)êêÜ á
;êêá à
List
ëë 
<
ëë 
Point
ëë 
>
ëë 
possibleMoves
ëë %
=
ëë& '
ObtainBeetleMoves
ëë( 9
(
ëë9 :
piece
ëë: ?
.
ëë? @
Position
ëë@ H
,
ëëH I
isOnAnotherPiece
ëëJ Z
)
ëëZ [
;
ëë[ \
foreach
íí 
(
íí 
var
íí 
possiblePosition
íí )
in
íí* ,
possibleMoves
íí- :
)
íí: ;
{
ìì 
if
îî 
(
îî 
_cellDictionary
îî #
.
îî# $
TryGetValue
îî$ /
(
îî/ 0
possiblePosition
îî0 @
,
îî@ A
out
îîB E
Polygon
îîF M
cell
îîN R
)
îîR S
&&
îîT V
!
îîW X
_board
îîX ^
.
îî^ _
ContainsKey
îî_ j
(
îîj k
possiblePosition
îîk {
)
îî{ |
)
îî| }
{
ïï 
cell
ññ 
.
ññ 
Fill
ññ 
=
ññ 
Brushes
ññ  '
.
ññ' (
Green
ññ( -
;
ññ- .
cell
óó 
.
óó 
	IsEnabled
óó "
=
óó# $
true
óó% )
;
óó) *
cell
òò 
.
òò 
	MouseDown
òò "
+=
òò# %.
 PlacePieceThatIsInGame_MouseDown
òò& F
;
òòF G
}
ôô 
else
öö 
if
öö 
(
öö 
_board
öö 
.
öö  
ContainsKey
öö  +
(
öö+ ,
possiblePosition
öö, <
)
öö< =
)
öö= >
{
õõ 
List
úú 
<
úú 
Image
úú 
>
úú 
imagesOnBoard
úú  -
=
úú. /!
canva_GameBoardGrid
úú0 C
.
úúC D
Children
úúD L
.
úúL M
OfType
úúM S
<
úúS T
Image
úúT Y
>
úúY Z
(
úúZ [
)
úú[ \
.
úú\ ]
ToList
úú] c
(
úúc d
)
úúd e
;
úúe f
foreach
ùù 
(
ùù 
Image
ùù "
imageOnBoard
ùù# /
in
ùù0 2
imagesOnBoard
ùù3 @
)
ùù@ A
{
ûû 
	GamePiece
üü !
	gamePiece
üü" +
=
üü, -
(
üü. /
	GamePiece
üü/ 8
)
üü8 9
imageOnBoard
üü9 E
.
üüE F
Tag
üüF I
;
üüI J
if
†† 
(
†† 
	gamePiece
†† %
.
††% &
Position
††& .
==
††/ 1
possiblePosition
††2 B
&&
††C E
	gamePiece
††F O
.
††O P

PlayerName
††P Z
!=
††[ ]"
UserProfileSingleton
††^ r
.
††r s
username
††s {
)
††{ |
{
°° 
cell
¢¢  
.
¢¢  !
Fill
¢¢! %
=
¢¢& '
Brushes
¢¢( /
.
¢¢/ 0
Green
¢¢0 5
;
¢¢5 6
imageOnBoard
££ (
.
££( )
	IsEnabled
££) 2
=
££3 4
true
££5 9
;
££9 :
imageOnBoard
§§ (
.
§§( )
	MouseDown
§§) 2
+=
§§3 5%
PieceSelected_MouseDown
§§6 M
;
§§M N
}
•• 
else
¶¶ 
if
¶¶ 
(
¶¶  !
	gamePiece
¶¶! *
.
¶¶* +
Position
¶¶+ 3
==
¶¶4 6
possiblePosition
¶¶7 G
&&
¶¶H J
	gamePiece
¶¶K T
.
¶¶T U

PlayerName
¶¶U _
==
¶¶` b"
UserProfileSingleton
¶¶c w
.
¶¶w x
username¶¶x Ä
)¶¶Ä Å
{
ßß 
cell
®®  
.
®®  !
Fill
®®! %
=
®®& '
Brushes
®®( /
.
®®/ 0
Green
®®0 5
;
®®5 6
}
©© 
}
™™ 
_isBeetleMoved
´´ "
=
´´# $
true
´´% )
;
´´) *
}
¨¨ 
}
≠≠ 
_board
ÆÆ 
.
ÆÆ 
Add
ÆÆ 
(
ÆÆ 
piece
ÆÆ 
.
ÆÆ 
Position
ÆÆ %
,
ÆÆ% &
piece
ÆÆ' ,
)
ÆÆ, -
;
ÆÆ- .
}
ØØ 	
private
±± 
void
±± 
MoveAnt
±± 
(
±± 
	GamePiece
±± &
piece
±±' ,
)
±±, -
{
≤≤ 	
ResetHighlights
≥≥ 
(
≥≥ 
)
≥≥ 
;
≥≥ 
_selectedPiece
¥¥ 
=
¥¥ 
piece
¥¥ "
;
¥¥" #
_board
µµ 
.
µµ 
Remove
µµ 
(
µµ 
piece
µµ 
.
µµ  
Position
µµ  (
)
µµ( )
;
µµ) *
List
∂∂ 
<
∂∂ 
Point
∂∂ 
>
∂∂ 
possibleMoves
∂∂ %
=
∂∂& '
ObtainAntMoves
∂∂( 6
(
∂∂6 7
piece
∂∂7 <
.
∂∂< =
Position
∂∂= E
)
∂∂E F
;
∂∂F G
foreach
∑∑ 
(
∑∑ 
var
∑∑ 
possiblePosition
∑∑ )
in
∑∑* ,
possibleMoves
∑∑- :
)
∑∑: ;
{
∏∏ 
if
ππ 
(
ππ 
_cellDictionary
ππ #
.
ππ# $
TryGetValue
ππ$ /
(
ππ/ 0
possiblePosition
ππ0 @
,
ππ@ A
out
ππB E
Polygon
ππF M
cell
ππN R
)
ππR S
)
ππS T
{
∫∫ 
cell
ªª 
.
ªª 
Fill
ªª 
=
ªª 
Brushes
ªª  '
.
ªª' (
Green
ªª( -
;
ªª- .
cell
ºº 
.
ºº 
	IsEnabled
ºº "
=
ºº# $
true
ºº% )
;
ºº) *
cell
ΩΩ 
.
ΩΩ 
	MouseDown
ΩΩ "
+=
ΩΩ# %.
 PlacePieceThatIsInGame_MouseDown
ΩΩ& F
;
ΩΩF G
}
ææ 
}
øø 
_board
¿¿ 
.
¿¿ 
Add
¿¿ 
(
¿¿ 
piece
¿¿ 
.
¿¿ 
Position
¿¿ %
,
¿¿% &
piece
¿¿' ,
)
¿¿, -
;
¿¿- .
}
¡¡ 	
private
√√ 
void
√√ 
MoveGrasshopper
√√ $
(
√√$ %
	GamePiece
√√% .
piece
√√/ 4
)
√√4 5
{
ƒƒ 	
ResetHighlights
≈≈ 
(
≈≈ 
)
≈≈ 
;
≈≈ 
_selectedPiece
∆∆ 
=
∆∆ 
piece
∆∆ "
;
∆∆" #
_board
«« 
.
«« 
Remove
«« 
(
«« 
piece
«« 
.
««  
Position
««  (
)
««( )
;
««) *
List
»» 
<
»» 
Point
»» 
>
»» 
possibleMoves
»» %
=
»»& '$
ObtainGrassHopperMoves
»»( >
(
»»> ?
piece
»»? D
.
»»D E
Position
»»E M
)
»»M N
;
»»N O
foreach
…… 
(
…… 
var
…… 
possiblePosition
…… )
in
……* ,
possibleMoves
……- :
)
……: ;
{
   
if
ÀÀ 
(
ÀÀ 
_cellDictionary
ÀÀ #
.
ÀÀ# $
TryGetValue
ÀÀ$ /
(
ÀÀ/ 0
possiblePosition
ÀÀ0 @
,
ÀÀ@ A
out
ÀÀB E
Polygon
ÀÀF M
cell
ÀÀN R
)
ÀÀR S
)
ÀÀS T
{
ÃÃ 
cell
ÕÕ 
.
ÕÕ 
Fill
ÕÕ 
=
ÕÕ 
Brushes
ÕÕ  '
.
ÕÕ' (
Green
ÕÕ( -
;
ÕÕ- .
cell
ŒŒ 
.
ŒŒ 
	IsEnabled
ŒŒ "
=
ŒŒ# $
true
ŒŒ% )
;
ŒŒ) *
cell
œœ 
.
œœ 
	MouseDown
œœ "
+=
œœ# %.
 PlacePieceThatIsInGame_MouseDown
œœ& F
;
œœF G
}
–– 
}
—— 
_board
““ 
.
““ 
Add
““ 
(
““ 
piece
““ 
.
““ 
Position
““ %
,
““% &
piece
““' ,
)
““, -
;
““- .
}
”” 	
private
’’ 
List
’’ 
<
’’ 
Point
’’ 
>
’’ 
ObtainSpiderMoves
’’ -
(
’’- .
Point
’’. 3
start
’’4 9
)
’’9 :
{
÷÷ 	
var
◊◊ 

validMoves
◊◊ 
=
◊◊ 
new
◊◊  
List
◊◊! %
<
◊◊% &
Point
◊◊& +
>
◊◊+ ,
(
◊◊, -
)
◊◊- .
;
◊◊. /
var
ÿÿ 
visitedPoints
ÿÿ 
=
ÿÿ 
new
ÿÿ  #
HashSet
ÿÿ$ +
<
ÿÿ+ ,
Point
ÿÿ, 1
>
ÿÿ1 2
{
ÿÿ3 4
start
ÿÿ5 :
}
ÿÿ; <
;
ÿÿ< =
var
ŸŸ 
queue
ŸŸ 
=
ŸŸ 
InitializeQueue
ŸŸ '
(
ŸŸ' (
start
ŸŸ( -
)
ŸŸ- .
;
ŸŸ. /
while
⁄⁄ 
(
⁄⁄ 
queue
⁄⁄ 
.
⁄⁄ 
Count
⁄⁄ 
>
⁄⁄  
$num
⁄⁄! "
)
⁄⁄" #
{
€€ 
var
‹‹ 
(
‹‹ 
currentPosition
‹‹ $
,
‹‹$ %
previousPosition
‹‹& 6
,
‹‹6 7
currentSteps
‹‹8 D
)
‹‹D E
=
‹‹F G
queue
‹‹H M
.
‹‹M N
Dequeue
‹‹N U
(
‹‹U V
)
‹‹V W
;
‹‹W X
if
ﬁﬁ 
(
ﬁﬁ 
currentSteps
ﬁﬁ  
<
ﬁﬁ! "
$num
ﬁﬁ# $
)
ﬁﬁ$ %
{
ﬂﬂ #
EnqueueAdjacentPoints
‡‡ )
(
‡‡) *
queue
‡‡* /
,
‡‡/ 0
visitedPoints
‡‡1 >
,
‡‡> ?
currentPosition
‡‡@ O
,
‡‡O P
currentSteps
‡‡Q ]
)
‡‡] ^
;
‡‡^ _
}
·· 
else
‚‚ 
if
‚‚ 
(
‚‚ 
currentSteps
‚‚ %
==
‚‚& (
$num
‚‚) *
&&
‚‚+ -
IsConnectedToHive
‚‚. ?
(
‚‚? @
currentPosition
‚‚@ O
)
‚‚O P
)
‚‚P Q
{
„„ 

validMoves
‰‰ 
.
‰‰ 
Add
‰‰ "
(
‰‰" #
currentPosition
‰‰# 2
)
‰‰2 3
;
‰‰3 4
}
ÂÂ 
}
ÊÊ 
return
ÁÁ 

validMoves
ÁÁ 
;
ÁÁ 
}
ËË 	
private
ÍÍ 
Queue
ÍÍ 
<
ÍÍ 
(
ÍÍ 
Point
ÍÍ 
position
ÍÍ %
,
ÍÍ% &
Point
ÍÍ' ,
previousPosition
ÍÍ- =
,
ÍÍ= >
int
ÍÍ? B
steps
ÍÍC H
)
ÍÍH I
>
ÍÍI J
InitializeQueue
ÍÍK Z
(
ÍÍZ [
Point
ÍÍ[ `
start
ÍÍa f
)
ÍÍf g
{
ÎÎ 	
var
ÏÏ 
queue
ÏÏ 
=
ÏÏ 
new
ÏÏ 
Queue
ÏÏ !
<
ÏÏ! "
(
ÏÏ" #
Point
ÏÏ# (
position
ÏÏ) 1
,
ÏÏ1 2
Point
ÏÏ3 8
previousPosition
ÏÏ9 I
,
ÏÏI J
int
ÏÏK N
steps
ÏÏO T
)
ÏÏT U
>
ÏÏU V
(
ÏÏV W
)
ÏÏW X
;
ÏÏX Y
queue
ÌÌ 
.
ÌÌ 
Enqueue
ÌÌ 
(
ÌÌ 
(
ÌÌ 
start
ÌÌ  
,
ÌÌ  !
start
ÌÌ" '
,
ÌÌ' (
$num
ÌÌ) *
)
ÌÌ* +
)
ÌÌ+ ,
;
ÌÌ, -
return
ÓÓ 
queue
ÓÓ 
;
ÓÓ 
}
ÔÔ 	
private
ÒÒ 
void
ÒÒ #
EnqueueAdjacentPoints
ÒÒ *
(
ÒÒ* +
Queue
ÚÚ 
<
ÚÚ 
(
ÚÚ 
Point
ÚÚ 
position
ÚÚ %
,
ÚÚ% &
Point
ÚÚ' ,
previousPosition
ÚÚ- =
,
ÚÚ= >
int
ÚÚ? B
steps
ÚÚC H
)
ÚÚH I
>
ÚÚI J
queue
ÚÚK P
,
ÚÚP Q
HashSet
ÛÛ 
<
ÛÛ 
Point
ÛÛ 
>
ÛÛ 
visitedPoints
ÛÛ ,
,
ÛÛ, -
Point
ÙÙ 
currentPosition
ÙÙ %
,
ÙÙ% &
int
ıı 
currentSteps
ıı  
)
ıı  !
{
ˆˆ 	
var
˜˜ 
adjacentPoints
˜˜ "
=
˜˜# $"
ObtainAdjacentPoints
˜˜% 9
(
˜˜9 :
currentPosition
˜˜: I
)
˜˜I J
;
˜˜J K
foreach
¯¯ 
(
¯¯ 
var
¯¯ 
adjacent
¯¯ %
in
¯¯& (
adjacentPoints
¯¯) 7
.
¯¯7 8
Where
¯¯8 =
(
¯¯= >
adj
¯¯> A
=>
¯¯B D
IsValidMove
¯¯E P
(
¯¯P Q
adj
¯¯Q T
,
¯¯T U
visitedPoints
¯¯V c
,
¯¯c d
currentPosition
¯¯e t
)
¯¯t u
)
¯¯u v
)
¯¯v w
{
˘˘ 
visitedPoints
˙˙ !
.
˙˙! "
Add
˙˙" %
(
˙˙% &
adjacent
˙˙& .
)
˙˙. /
;
˙˙/ 0
queue
˚˚ 
.
˚˚ 
Enqueue
˚˚ !
(
˚˚! "
(
˚˚" #
adjacent
˚˚# +
,
˚˚+ ,
currentPosition
˚˚- <
,
˚˚< =
currentSteps
˚˚> J
+
˚˚K L
$num
˚˚M N
)
˚˚N O
)
˚˚O P
;
˚˚P Q
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
bool
ˇˇ 
IsValidMove
ˇˇ  
(
ˇˇ  !
Point
ˇˇ! &
adjacent
ˇˇ' /
,
ˇˇ/ 0
HashSet
ˇˇ1 8
<
ˇˇ8 9
Point
ˇˇ9 >
>
ˇˇ> ?
visitedPoints
ˇˇ@ M
,
ˇˇM N
Point
ˇˇO T
currentPosition
ˇˇU d
)
ˇˇd e
{
ÄÄ 	
return
ÅÅ 
!
ÅÅ 
visitedPoints
ÅÅ !
.
ÅÅ! "
Contains
ÅÅ" *
(
ÅÅ* +
adjacent
ÅÅ+ 3
)
ÅÅ3 4
&&
ÅÅ5 7
!
ÇÇ 
_board
ÇÇ 
.
ÇÇ 
ContainsKey
ÇÇ &
(
ÇÇ& '
adjacent
ÇÇ' /
)
ÇÇ/ 0
&&
ÇÇ1 3$
IsContinouslyConnected
ÉÉ )
(
ÉÉ) *
adjacent
ÉÉ* 2
,
ÉÉ2 3
currentPosition
ÉÉ4 C
,
ÉÉC D
currentPosition
ÉÉE T
)
ÉÉT U
;
ÉÉU V
}
ÑÑ 	
private
ÜÜ 
List
ÜÜ 
<
ÜÜ 
Point
ÜÜ 
>
ÜÜ 
ObtainBeetleMoves
ÜÜ -
(
ÜÜ- .
Point
ÜÜ. 3
piecePosition
ÜÜ4 A
,
ÜÜA B
bool
ÜÜC G
isOnAnotherPiece
ÜÜH X
)
ÜÜX Y
{
áá 	
List
àà 
<
àà 
Point
àà 
>
àà 
adjacentMoves
àà %
=
àà& '"
ObtainAdjacentPoints
àà( <
(
àà< =
piecePosition
àà= J
)
ààJ K
;
ààK L
List
ââ 
<
ââ 
Point
ââ 
>
ââ 
possibleMoves
ââ %
=
ââ& '
new
ââ( +
List
ââ, 0
<
ââ0 1
Point
ââ1 6
>
ââ6 7
(
ââ7 8
)
ââ8 9
;
ââ9 :
if
ää 
(
ää 
isOnAnotherPiece
ää  
)
ää  !
{
ãã 
_board
åå 
.
åå 
Add
åå 
(
åå 
_selectedPiece
åå )
.
åå) *
Position
åå* 2
,
åå2 3
_selectedPiece
åå4 B
)
ååB C
;
ååC D
possibleMoves
çç 
.
çç 
AddRange
çç &
(
çç& '
adjacentMoves
çç' 4
.
çç4 5
Where
çç5 :
(
çç: ;
adj
çç; >
=>
çç? A
IsConnectedToHive
ççB S
(
ççS T
adj
ççT W
)
ççW X
)
ççX Y
)
ççY Z
;
ççZ [
_board
éé 
.
éé 
Remove
éé 
(
éé 
_selectedPiece
éé ,
.
éé, -
Position
éé- 5
)
éé5 6
;
éé6 7
}
èè 
else
êê 
{
ëë 
possibleMoves
íí 
.
íí 
AddRange
íí &
(
íí& '
adjacentMoves
íí' 4
.
íí4 5
Where
íí5 :
(
íí: ;
adj
íí; >
=>
íí? A%
IsConnectedToHiveBeetle
ííB Y
(
ííY Z
adj
ííZ ]
)
íí] ^
)
íí^ _
)
íí_ `
;
íí` a
}
ìì 
return
îî 
possibleMoves
îî  
;
îî  !
}
ïï 	
private
óó 
List
óó 
<
óó 
Point
óó 
>
óó 
ObtainAntMoves
óó *
(
óó* +
Point
óó+ 0

piecePoint
óó1 ;
)
óó; <
{
òò 	
List
ôô 
<
ôô 
Point
ôô 
>
ôô 
possibleMoves
ôô %
=
ôô& '
new
ôô( +
List
ôô, 0
<
ôô0 1
Point
ôô1 6
>
ôô6 7
(
ôô7 8
)
ôô8 9
;
ôô9 :
HashSet
öö 
<
öö 
Point
öö 
>
öö 
visitedPoint
öö '
=
öö( )
new
öö* -
HashSet
öö. 5
<
öö5 6
Point
öö6 ;
>
öö; <
(
öö< =
)
öö= >
;
öö> ?
Queue
õõ 
<
õõ 
Point
õõ 
>
õõ 
queue
õõ 
=
õõ  
new
õõ! $
Queue
õõ% *
<
õõ* +
Point
õõ+ 0
>
õõ0 1
(
õõ1 2
)
õõ2 3
;
õõ3 4
queue
úú 
.
úú 
Enqueue
úú 
(
úú 

piecePoint
úú $
)
úú$ %
;
úú% &
visitedPoint
ùù 
.
ùù 
Add
ùù 
(
ùù 

piecePoint
ùù '
)
ùù' (
;
ùù( )
while
ûû 
(
ûû 
queue
ûû 
.
ûû 
Count
ûû 
>
ûû  
$num
ûû! "
)
ûû" #
{
üü 
var
†† 
currentPosition
†† #
=
††$ %
queue
††& +
.
††+ ,
Dequeue
††, 3
(
††3 4
)
††4 5
;
††5 6
var
°° 
adjacentPoints
°° "
=
°°# $"
ObtainAdjacentPoints
°°% 9
(
°°9 :
currentPosition
°°: I
)
°°I J
;
°°J K
foreach
¢¢ 
(
¢¢ 
var
¢¢ 
adjacent
¢¢ %
in
¢¢& (
adjacentPoints
¢¢) 7
)
¢¢7 8
{
££ 
if
§§ 
(
§§ 
!
§§ 
visitedPoint
§§ %
.
§§% &
Contains
§§& .
(
§§. /
adjacent
§§/ 7
)
§§7 8
&&
§§9 ;
!
•• 
_board
•• 
.
••  
ContainsKey
••  +
(
••+ ,
adjacent
••, 4
)
••4 5
&&
••6 8
IsConnectedToHive
¶¶ )
(
¶¶) *
adjacent
¶¶* 2
)
¶¶2 3
&&
¶¶4 6
IsNotSurrounded
ßß '
(
ßß' (
adjacent
ßß( 0
)
ßß0 1
)
ßß1 2
{
®® 
possibleMoves
©© %
.
©©% &
Add
©©& )
(
©©) *
adjacent
©©* 2
)
©©2 3
;
©©3 4
visitedPoint
™™ $
.
™™$ %
Add
™™% (
(
™™( )
adjacent
™™) 1
)
™™1 2
;
™™2 3
queue
´´ 
.
´´ 
Enqueue
´´ %
(
´´% &
adjacent
´´& .
)
´´. /
;
´´/ 0
}
¨¨ 
}
≠≠ 
}
ÆÆ 
return
ØØ 
possibleMoves
ØØ  
;
ØØ  !
}
∞∞ 	
private
≤≤ 
List
≤≤ 
<
≤≤ 
Point
≤≤ 
>
≤≤ $
ObtainGrassHopperMoves
≤≤ 2
(
≤≤2 3
Point
≤≤3 8
start
≤≤9 >
)
≤≤> ?
{
≥≥ 	
List
¥¥ 
<
¥¥ 
Point
¥¥ 
>
¥¥ 

validMoves
¥¥ "
=
¥¥# $
new
¥¥% (
List
¥¥) -
<
¥¥- .
Point
¥¥. 3
>
¥¥3 4
(
¥¥4 5
)
¥¥5 6
;
¥¥6 7
var
µµ 

directions
µµ 
=
µµ "
ObtainAdjacentPoints
µµ 1
(
µµ1 2
start
µµ2 7
)
µµ7 8
;
µµ8 9
foreach
∂∂ 
(
∂∂ 
var
∂∂ 
	direction
∂∂ "
in
∂∂# %

directions
∂∂& 0
.
∂∂0 1
Where
∂∂1 6
(
∂∂6 7
	direction
∂∂7 @
=>
∂∂A C
_board
∂∂D J
.
∂∂J K
ContainsKey
∂∂K V
(
∂∂V W
	direction
∂∂W `
)
∂∂` a
)
∂∂a b
)
∂∂b c
{
∑∑ 
Point
∏∏ 
currentPosition
∏∏ %
=
∏∏& '!
MoveInSameDirection
∏∏( ;
(
∏∏; <
	direction
∏∏< E
,
∏∏E F
start
∏∏G L
)
∏∏L M
;
∏∏M N
Point
ππ 
nextPosition
ππ "
=
ππ# $!
MoveInSameDirection
ππ% 8
(
ππ8 9
currentPosition
ππ9 H
,
ππH I
	direction
ππJ S
)
ππS T
;
ππT U
bool
∫∫ 
notFoundPiece
∫∫ "
=
∫∫# $
false
∫∫% *
;
∫∫* +
while
ªª 
(
ªª 
!
ªª 
notFoundPiece
ªª %
)
ªª% &
{
ºº 
if
ΩΩ 
(
ΩΩ 
_board
ΩΩ 
.
ΩΩ 
ContainsKey
ΩΩ *
(
ΩΩ* +
currentPosition
ΩΩ+ :
)
ΩΩ: ;
)
ΩΩ; <
{
ææ 
Point
øø %
currentPositionAuxiliar
øø 5
=
øø6 7
nextPosition
øø8 D
;
øøD E
nextPosition
¿¿ $
=
¿¿% &!
MoveInSameDirection
¿¿' :
(
¿¿: ;
currentPosition
¿¿; J
,
¿¿J K
nextPosition
¿¿L X
)
¿¿X Y
;
¿¿Y Z
currentPosition
¡¡ '
=
¡¡( )%
currentPositionAuxiliar
¡¡* A
;
¡¡A B
}
¬¬ 
else
√√ 
if
√√ 
(
√√ 
!
√√ 
_board
√√ $
.
√√$ %
ContainsKey
√√% 0
(
√√0 1
currentPosition
√√1 @
)
√√@ A
&&
√√B D
IsConnectedToHive
√√E V
(
√√V W
currentPosition
√√W f
)
√√f g
)
√√g h
{
ƒƒ 

validMoves
≈≈ "
.
≈≈" #
Add
≈≈# &
(
≈≈& '
currentPosition
≈≈' 6
)
≈≈6 7
;
≈≈7 8
notFoundPiece
∆∆ %
=
∆∆& '
true
∆∆( ,
;
∆∆, -
}
«« 
}
»» 
}
…… 
return
ÀÀ 

validMoves
ÀÀ 
;
ÀÀ 
}
ÃÃ 	
private
ŒŒ 
Point
ŒŒ !
MoveInSameDirection
ŒŒ )
(
ŒŒ) *
Point
ŒŒ* /
current
ŒŒ0 7
,
ŒŒ7 8
Point
ŒŒ9 >
start
ŒŒ? D
)
ŒŒD E
{
œœ 	
Point
–– 
pointToMove
–– 
=
–– 
new
––  #
Point
––$ )
(
––) *
$num
––* +
,
––+ ,
$num
––- .
)
––. /
;
––/ 0
double
—— 
dq
—— 
=
—— 
current
—— 
.
——  
X
——  !
-
——" #
start
——$ )
.
——) *
X
——* +
;
——+ ,
double
““ 
dr
““ 
=
““ 
current
““ 
.
““  
Y
““  !
-
““" #
start
““$ )
.
““) *
Y
““* +
;
““+ ,
double
”” 
epsilon
”” 
=
”” 
$num
”” #
;
””# $
if
‘‘ 
(
‘‘ 
Math
‘‘ 
.
‘‘ 
Abs
‘‘ 
(
‘‘ 
start
‘‘ 
.
‘‘ 
X
‘‘  
%
‘‘! "
$num
‘‘# $
-
‘‘% &
$num
‘‘' (
)
‘‘( )
<
‘‘* +
epsilon
‘‘, 3
)
‘‘3 4
{
’’ 
int
÷÷ 
index
÷÷ 
=
÷÷ !
_hexPairDirecctions
÷÷ /
.
÷÷/ 0
	FindIndex
÷÷0 9
(
÷÷9 :
dir
÷÷: =
=>
÷÷> @
dir
÷÷A D
.
÷÷D E
dirUp
÷÷E J
==
÷÷K M
dq
÷÷N P
&&
÷÷Q S
dir
÷÷T W
.
÷÷W X
dirDown
÷÷X _
==
÷÷` b
dr
÷÷c e
)
÷÷e f
;
÷÷f g
if
◊◊ 
(
◊◊ 
index
◊◊ 
!=
◊◊ 
-
◊◊ 
$num
◊◊ 
)
◊◊  
{
ÿÿ 
(
ŸŸ 
double
ŸŸ 
dirU
ŸŸ  
,
ŸŸ  !
double
ŸŸ" (
dirD
ŸŸ) -
)
ŸŸ- .
=
ŸŸ/ 0 
_hexOddDirecctions
ŸŸ1 C
[
ŸŸC D
index
ŸŸD I
]
ŸŸI J
;
ŸŸJ K
pointToMove
⁄⁄ 
=
⁄⁄  !
new
⁄⁄" %
Point
⁄⁄& +
(
⁄⁄+ ,
current
⁄⁄, 3
.
⁄⁄3 4
X
⁄⁄4 5
+
⁄⁄6 7
dirU
⁄⁄8 <
,
⁄⁄< =
current
⁄⁄> E
.
⁄⁄E F
Y
⁄⁄F G
+
⁄⁄H I
dirD
⁄⁄J N
)
⁄⁄N O
;
⁄⁄O P
}
€€ 
}
‹‹ 
else
›› 
{
ﬁﬁ 
int
ﬂﬂ 
index
ﬂﬂ 
=
ﬂﬂ  
_hexOddDirecctions
ﬂﬂ .
.
ﬂﬂ. /
	FindIndex
ﬂﬂ/ 8
(
ﬂﬂ8 9
dir
ﬂﬂ9 <
=>
ﬂﬂ= ?
dir
ﬂﬂ@ C
.
ﬂﬂC D
dirUp
ﬂﬂD I
==
ﬂﬂJ L
dq
ﬂﬂM O
&&
ﬂﬂP R
dir
ﬂﬂS V
.
ﬂﬂV W
dirDown
ﬂﬂW ^
==
ﬂﬂ_ a
dr
ﬂﬂb d
)
ﬂﬂd e
;
ﬂﬂe f
if
‡‡ 
(
‡‡ 
index
‡‡ 
!=
‡‡ 
-
‡‡ 
$num
‡‡ 
)
‡‡  
{
·· 
(
‚‚ 
double
‚‚ 
dirU
‚‚  
,
‚‚  !
double
‚‚" (
dirD
‚‚) -
)
‚‚- .
=
‚‚/ 0!
_hexPairDirecctions
‚‚1 D
[
‚‚D E
index
‚‚E J
]
‚‚J K
;
‚‚K L
pointToMove
„„ 
=
„„  !
new
„„" %
Point
„„& +
(
„„+ ,
current
„„, 3
.
„„3 4
X
„„4 5
+
„„6 7
dirU
„„8 <
,
„„< =
current
„„> E
.
„„E F
Y
„„F G
+
„„H I
dirD
„„J N
)
„„N O
;
„„O P
}
‰‰ 
}
ÂÂ 
return
ÊÊ 
pointToMove
ÊÊ 
;
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
string
ÈÈ '
GetIfItsFinalMatchResults
ÈÈ 0
(
ÈÈ0 1
)
ÈÈ1 2
{
ÍÍ 	
string
ÎÎ 
winnerResult
ÎÎ 
=
ÎÎ  !
$str
ÎÎ" *
;
ÎÎ* +
	GamePiece
ÏÏ 
queenPlayerOne
ÏÏ $
=
ÏÏ% &"
ObtainQueenOfPlayers
ÏÏ' ;
(
ÏÏ; <
_usernamePlayer1
ÏÏ< L
)
ÏÏL M
;
ÏÏM N
	GamePiece
ÌÌ 
queenPlayerTwo
ÌÌ $
=
ÌÌ% &"
ObtainQueenOfPlayers
ÌÌ' ;
(
ÌÌ; <
_usernamePlayer2
ÌÌ< L
)
ÌÌL M
;
ÌÌM N
if
ÓÓ 
(
ÓÓ 
queenPlayerOne
ÓÓ 
==
ÓÓ !
null
ÓÓ" &
)
ÓÓ& '
{
ÔÔ 
queenPlayerOne
 
=
  3
%ObtainQueenOfPlayersCapturedByABeetle
! F
(
F G
_usernamePlayer1
G W
)
W X
;
X Y
}
ÒÒ 
if
ÚÚ 
(
ÚÚ 
queenPlayerTwo
ÚÚ 
==
ÚÚ !
null
ÚÚ" &
)
ÚÚ& '
{
ÛÛ 
queenPlayerTwo
ÙÙ 
=
ÙÙ  3
%ObtainQueenOfPlayersCapturedByABeetle
ÙÙ! F
(
ÙÙF G
_usernamePlayer2
ÙÙG W
)
ÙÙW X
;
ÙÙX Y
}
ıı 
if
ˆˆ 
(
ˆˆ 
queenPlayerOne
ˆˆ 
!=
ˆˆ !
null
ˆˆ" &
&&
ˆˆ' )
queenPlayerTwo
ˆˆ* 8
!=
ˆˆ9 ;
null
ˆˆ< @
)
ˆˆ@ A
{
˜˜ 
if
¯¯ 
(
¯¯ 
IsSourrounded
¯¯ !
(
¯¯! "
queenPlayerOne
¯¯" 0
.
¯¯0 1
Position
¯¯1 9
)
¯¯9 :
&&
¯¯; =
IsSourrounded
¯¯> K
(
¯¯K L
queenPlayerTwo
¯¯L Z
.
¯¯Z [
Position
¯¯[ c
)
¯¯c d
)
¯¯d e
{
˘˘ 
winnerResult
˙˙  
=
˙˙! "
$str
˙˙# )
;
˙˙) *
}
˚˚ 
else
¸¸ 
if
¸¸ 
(
¸¸ 
IsSourrounded
¸¸ &
(
¸¸& '
queenPlayerOne
¸¸' 5
.
¸¸5 6
Position
¸¸6 >
)
¸¸> ?
)
¸¸? @
{
˝˝ 
winnerResult
˛˛  
=
˛˛! "
_usernamePlayer2
˛˛# 3
;
˛˛3 4
}
ˇˇ 
else
ÄÄ 
if
ÄÄ 
(
ÄÄ 
IsSourrounded
ÄÄ &
(
ÄÄ& '
queenPlayerTwo
ÄÄ' 5
.
ÄÄ5 6
Position
ÄÄ6 >
)
ÄÄ> ?
)
ÄÄ? @
{
ÅÅ 
winnerResult
ÇÇ  
=
ÇÇ! "
_usernamePlayer1
ÇÇ# 3
;
ÇÇ3 4
}
ÉÉ 
}
ÑÑ 
return
ÖÖ 
winnerResult
ÖÖ 
;
ÖÖ  
}
ÜÜ 	
private
àà 
bool
àà 
IsSourrounded
àà "
(
àà" #
Point
àà# (
positionPiece
àà) 6
)
àà6 7
{
ââ 	
List
ää 
<
ää 
Point
ää 
>
ää 
adjacentPoints
ää &
=
ää' ("
ObtainAdjacentPoints
ää) =
(
ää= >
positionPiece
ää> K
)
ääK L
;
ääL M
int
ãã +
numberOfColliderPointsExisted
ãã -
=
ãã. /
adjacentPoints
ãã0 >
.
ãã> ?
Count
ãã? D
(
ããD E
point
ããE J
=>
ããK M
_board
ããN T
.
ããT U
ContainsKey
ããU `
(
ãã` a
point
ããa f
)
ããf g
)
ããg h
;
ããh i
return
åå +
numberOfColliderPointsExisted
åå 0
==
åå1 3
$num
åå4 5
;
åå5 6
}
çç 	
private
èè 
	GamePiece
èè "
ObtainQueenOfPlayers
èè .
(
èè. /
string
èè/ 5
usernameOfPlayer
èè6 F
)
èèF G
{
êê 	
return
ëë 
_board
ëë 
.
ëë 
Values
ëë  
.
ëë  !
FirstOrDefault
ëë! /
(
ëë/ 0
piece
ëë0 5
=>
ëë6 8
piece
ëë9 >
.
ëë> ?

PlayerName
ëë? I
==
ëëJ L
usernameOfPlayer
ëëM ]
&&
ëë^ `
piece
ëëa f
.
ëëf g
PieceNumber
ëëg r
==
ëës u
$num
ëëv w
)
ëëw x
;
ëëx y
}
íí 	
private
îî 
	GamePiece
îî 3
%ObtainQueenOfPlayersCapturedByABeetle
îî ?
(
îî? @
string
îî@ F
usernameOfPlayer
îîG W
)
îîW X
{
ïï 	
return
ññ (
_piecesCapturedByTheBeetle
ññ -
.
ññ- .
Values
ññ. 4
.
ññ4 5
Select
ññ5 ;
(
ññ; <
image
ññ< A
=>
ññB D
image
ññE J
.
ññJ K
Tag
ññK N
as
ññO Q
	GamePiece
ññR [
)
ññ[ \
.
ññ\ ]
FirstOrDefault
ññ] k
(
ññk l
	gamePiece
ññl u
=>
ññv x
	gamePieceññy Ç
!=ññÉ Ö
nullññÜ ä
&&ññã ç
	gamePieceññé ó
.ññó ò
PieceNumberññò £
==ññ§ ¶
$numññß ®
&&ññ© ´
	gamePieceññ¨ µ
.ññµ ∂

PlayerNameññ∂ ¿
==ññ¡ √ 
usernameOfPlayerññƒ ‘
)ññ‘ ’
;ññ’ ÷
}
óó 	
private
ôô 
void
ôô .
 PlacePieceThatIsInGame_MouseDown
ôô 5
(
ôô5 6
object
ôô6 <
sender
ôô= C
,
ôôC D"
MouseButtonEventArgs
ôôE Y
e
ôôZ [
)
ôô[ \
{
öö 	
if
õõ 
(
õõ 
_selectedPiece
õõ 
!=
õõ !
null
õõ" &
&&
õõ' )
sender
õõ* 0
is
õõ1 3
Polygon
õõ4 ;
cell
õõ< @
&&
õõA C
cell
õõD H
!=
õõI K
null
õõL P
)
õõP Q
{
úú 
Point
ùù 
oldPosition
ùù !
=
ùù" #
_selectedPiece
ùù$ 2
.
ùù2 3
Position
ùù3 ;
;
ùù; <
Image
ûû 
imageOfPiece
ûû "
=
ûû# $!
ObtainImageCreation
ûû% 8
(
ûû8 9
cell
ûû9 =
,
ûû= >
_selectedPiece
ûû? M
)
ûûM N
;
ûûN O
_selectedPiece
üü 
.
üü 
Position
üü '
=
üü( )
(
üü* +
Point
üü+ 0
)
üü0 1
cell
üü1 5
.
üü5 6
Tag
üü6 9
;
üü9 :
_selectedPiece
†† 
.
†† 
Piece
†† $
.
††$ %
Position
††% -
=
††. /
oldPosition
††0 ;
;
††; <
if
°° 
(
°° (
_piecesCapturedByTheBeetle
°° .
.
°°. /
ContainsKey
°°/ :
(
°°: ;
(
°°; <
_selectedPiece
°°< J
.
°°J K
PieceNumber
°°K V
,
°°V W
_selectedPiece
°°X f
.
°°f g

PlayerName
°°g q
)
°°q r
)
°°r s
)
°°s t
{
¢¢ 
Image
££ '
pieceContainedByTheBeetle
££ 3
=
££4 5(
_piecesCapturedByTheBeetle
££6 P
[
££P Q
(
££Q R
_selectedPiece
££R `
.
££` a
PieceNumber
££a l
,
££l m
_selectedPiece
££n |
.
££| }

PlayerName££} á
)££á à
]££à â
;££â ä-
UpdateOldAndNewPlaceInGameBoard
§§ 3
(
§§3 4
imageOfPiece
§§4 @
,
§§@ A
oldPosition
§§B M
)
§§M N
;
§§N O>
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
•• D
(
••D E'
pieceContainedByTheBeetle
••E ^
,
••^ _
_selectedPiece
••` n
)
••n o
;
••o p
}
¶¶ 
else
ßß 
{
®® -
UpdateOldAndNewPlaceInGameBoard
©© 3
(
©©3 4
imageOfPiece
©©4 @
,
©©@ A
oldPosition
©©B M
)
©©M N
;
©©N O
}
™™ /
!EliminateDuplicatedImagesIfExists
´´ 1
(
´´1 2
oldPosition
´´2 =
)
´´= >
;
´´> ?'
SendPiecePositionToServer
¨¨ )
(
¨¨) *
_selectedPiece
¨¨* 8
)
¨¨8 9
;
¨¨9 :
_winnerName
≠≠ 
=
≠≠ '
GetIfItsFinalMatchResults
≠≠ 7
(
≠≠7 8
)
≠≠8 9
;
≠≠9 :
if
ÆÆ 
(
ÆÆ 
_winnerName
ÆÆ 
!=
ÆÆ  "
$str
ÆÆ# +
)
ÆÆ+ ,
{
ØØ +
SendFinishOfMatchNotification
∞∞ 1
(
∞∞1 2
_winnerName
∞∞2 =
)
∞∞= >
;
∞∞> ?
}
±± 
_lastPlacedCell
≤≤ 
=
≤≤  !
cell
≤≤" &
;
≤≤& '
_selectedPiece
≥≥ 
=
≥≥  
null
≥≥! %
;
≥≥% &
ResetHighlights
¥¥ 
(
¥¥  
)
¥¥  !
;
¥¥! "
}
µµ 
_isBeetleMoved
∂∂ 
=
∂∂ 
false
∂∂ "
;
∂∂" #
e
∑∑ 
.
∑∑ 
Handled
∑∑ 
=
∑∑ 
true
∑∑ 
;
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ +
SendFinishOfMatchNotification
∫∫ 2
(
∫∫2 3
string
∫∫3 9
result
∫∫: @
)
∫∫@ A
{
ªª 	
LoggerManager
ºº 
logger
ºº  
=
ºº! "
new
ºº# &
LoggerManager
ºº' 4
(
ºº4 5
this
ºº5 9
.
ºº9 :
GetType
ºº: A
(
ººA B
)
ººB C
)
ººC D
;
ººD E
try
ΩΩ 
{
ææ  
_gameManagerClient
øø "
.
øø" #
FinishOfTheMatch
øø# 3
(
øø3 4
MatchSingleton
øø4 B
.
øøB C
	codeMatch
øøC L
,
øøL M
result
øøN T
)
øøT U
;
øøU V
}
¿¿ 
catch
¡¡ 
(
¡¡ '
EndpointNotFoundException
¡¡ ,
endPointException
¡¡- >
)
¡¡> ?
{
¬¬ 
logger
√√ 
.
√√ 
LogFatal
√√ 
(
√√  
endPointException
√√  1
)
√√1 2
;
√√2 3
DialogManager
ƒƒ 
.
ƒƒ #
ShowErrorMessageAlert
ƒƒ 3
(
ƒƒ3 4

Properties
ƒƒ4 >
.
ƒƒ> ?
	Resources
ƒƒ? H
.
ƒƒH I%
dialogEndPointException
ƒƒI `
)
ƒƒ` a
;
ƒƒa b
}
≈≈ 
catch
∆∆ 
(
∆∆ 
TimeoutException
∆∆ #
timeOutException
∆∆$ 4
)
∆∆4 5
{
«« 
logger
»» 
.
»» 
LogWarn
»» 
(
»» 
timeOutException
»» /
)
»»/ 0
;
»»0 1
DialogManager
…… 
.
…… #
ShowErrorMessageAlert
…… 3
(
……3 4

Properties
……4 >
.
……> ?
	Resources
……? H
.
……H I$
dialogTimeOutException
……I _
)
……_ `
;
……` a
}
   
catch
ÀÀ 
(
ÀÀ $
CommunicationException
ÀÀ )$
communicationException
ÀÀ* @
)
ÀÀ@ A
{
ÃÃ 
logger
ÕÕ 
.
ÕÕ 
LogFatal
ÕÕ 
(
ÕÕ  $
communicationException
ÕÕ  6
)
ÕÕ6 7
;
ÕÕ7 8
DialogManager
ŒŒ 
.
ŒŒ #
ShowErrorMessageAlert
ŒŒ 3
(
ŒŒ3 4

Properties
ŒŒ4 >
.
ŒŒ> ?
	Resources
ŒŒ? H
.
ŒŒH I)
dialogComunicationException
ŒŒI d
)
ŒŒd e
;
ŒŒe f
}
œœ 
}
–– 	
private
““ 
void
““ /
!EliminateDuplicatedImagesIfExists
““ 6
(
““6 7
Point
““7 <
oldPosition
““= H
)
““H I
{
”” 	
if
‘‘ 
(
‘‘ 
!
‘‘ 
_board
‘‘ 
.
‘‘ 
ContainsKey
‘‘ #
(
‘‘# $
oldPosition
‘‘$ /
)
‘‘/ 0
)
‘‘0 1
{
’’ 
var
÷÷ 
imagesToRemove
÷÷ "
=
÷÷# $!
canva_GameBoardGrid
÷÷% 8
.
÷÷8 9
Children
÷÷9 A
.
◊◊ 
OfType
◊◊ 
<
◊◊ 
Image
◊◊ !
>
◊◊! "
(
◊◊" #
)
◊◊# $
.
ÿÿ 
Where
ÿÿ 
(
ÿÿ 
image
ÿÿ  
=>
ÿÿ! #
image
ŸŸ 
.
ŸŸ 
Tag
ŸŸ !
is
ŸŸ" $
	GamePiece
ŸŸ% .
piece
ŸŸ/ 4
&&
ŸŸ5 7
piece
ŸŸ8 =
.
ŸŸ= >
Position
ŸŸ> F
==
ŸŸG I
oldPosition
ŸŸJ U
)
ŸŸU V
.
⁄⁄ 
ToList
⁄⁄ 
(
⁄⁄ 
)
⁄⁄ 
;
⁄⁄ 
for
€€ 
(
€€ 
int
€€ 
indexOfImage
€€ %
=
€€& '
$num
€€( )
;
€€) *
indexOfImage
€€+ 7
<
€€8 9
imagesToRemove
€€: H
.
€€H I
Count
€€I N
;
€€N O
indexOfImage
€€P \
++
€€\ ^
)
€€^ _
{
‹‹ 
Image
›› 
imageToQuit
›› %
=
››& '
imagesToRemove
››( 6
[
››6 7
indexOfImage
››7 C
]
››C D
;
››D E
List
ﬁﬁ 
<
ﬁﬁ 
	UIElement
ﬁﬁ "
>
ﬁﬁ" #
childrenGrids
ﬁﬁ$ 1
=
ﬁﬁ2 3!
canva_GameBoardGrid
ﬁﬁ4 G
.
ﬁﬁG H
Children
ﬁﬁH P
.
ﬁﬁP Q
OfType
ﬁﬁQ W
<
ﬁﬁW X
	UIElement
ﬁﬁX a
>
ﬁﬁa b
(
ﬁﬁb c
)
ﬁﬁc d
.
ﬁﬁd e
ToList
ﬁﬁe k
(
ﬁﬁk l
)
ﬁﬁl m
;
ﬁﬁm n
int
ﬂﬂ 
indexToRemove
ﬂﬂ %
=
ﬂﬂ& '
childrenGrids
ﬂﬂ( 5
.
ﬂﬂ5 6
IndexOf
ﬂﬂ6 =
(
ﬂﬂ= >
imageToQuit
ﬂﬂ> I
)
ﬂﬂI J
;
ﬂﬂJ K
if
‡‡ 
(
‡‡ 
indexToRemove
‡‡ %
!=
‡‡& (
-
‡‡) *
$num
‡‡* +
)
‡‡+ ,
{
·· !
canva_GameBoardGrid
‚‚ +
.
‚‚+ ,
Children
‚‚, 4
.
‚‚4 5
RemoveAt
‚‚5 =
(
‚‚= >
indexToRemove
‚‚> K
)
‚‚K L
;
‚‚L M
}
„„ 
}
‰‰ 
}
ÂÂ 
}
ÊÊ 	
private
ËË 
Image
ËË !
ObtainImageCreation
ËË )
(
ËË) *
Polygon
ËË* 1
cell
ËË2 6
,
ËË6 7
	GamePiece
ËË8 A
piece
ËËB G
)
ËËG H
{
ÈÈ 	
Image
ÍÍ 

pieceImage
ÍÍ 
=
ÍÍ 
new
ÍÍ "
Image
ÍÍ# (
{
ÎÎ 
Source
ÏÏ 
=
ÏÏ 
new
ÏÏ 
BitmapImage
ÏÏ (
(
ÏÏ( )
new
ÏÏ) ,
Uri
ÏÏ- 0
(
ÏÏ0 1
piece
ÏÏ1 6
.
ÏÏ6 7
	ImagePath
ÏÏ7 @
,
ÏÏ@ A
UriKind
ÏÏB I
.
ÏÏI J
Relative
ÏÏJ R
)
ÏÏR S
)
ÏÏS T
,
ÏÏT U
Width
ÌÌ 
=
ÌÌ 
$num
ÌÌ 
,
ÌÌ 
Height
ÓÓ 
=
ÓÓ 
$num
ÓÓ 
,
ÓÓ 
Tag
ÔÔ 
=
ÔÔ 
piece
ÔÔ 
,
ÔÔ 
}
 
;
 
double
ÒÒ 
hexX
ÒÒ 
=
ÒÒ 
Canvas
ÒÒ  
.
ÒÒ  !
GetLeft
ÒÒ! (
(
ÒÒ( )
cell
ÒÒ) -
)
ÒÒ- .
;
ÒÒ. /
double
ÚÚ 
hexY
ÚÚ 
=
ÚÚ 
Canvas
ÚÚ  
.
ÚÚ  !
GetTop
ÚÚ! '
(
ÚÚ' (
cell
ÚÚ( ,
)
ÚÚ, -
;
ÚÚ- .
double
ÛÛ 
pieceX
ÛÛ 
=
ÛÛ 
hexX
ÛÛ  
+
ÛÛ! "
(
ÛÛ# $
cell
ÛÛ$ (
.
ÛÛ( )
ActualWidth
ÛÛ) 4
-
ÛÛ5 6

pieceImage
ÛÛ7 A
.
ÛÛA B
Width
ÛÛB G
)
ÛÛG H
/
ÛÛI J
$num
ÛÛK L
;
ÛÛL M
double
ÙÙ 
pieceY
ÙÙ 
=
ÙÙ 
hexY
ÙÙ  
+
ÙÙ! "
(
ÙÙ# $
cell
ÙÙ$ (
.
ÙÙ( )
ActualHeight
ÙÙ) 5
-
ÙÙ6 7

pieceImage
ÙÙ8 B
.
ÙÙB C
Height
ÙÙC I
)
ÙÙI J
/
ÙÙK L
$num
ÙÙM N
;
ÙÙN O
Canvas
ıı 
.
ıı 
SetLeft
ıı 
(
ıı 

pieceImage
ıı %
,
ıı% &
pieceX
ıı' -
)
ıı- .
;
ıı. /
Canvas
ˆˆ 
.
ˆˆ 
SetTop
ˆˆ 
(
ˆˆ 

pieceImage
ˆˆ $
,
ˆˆ$ %
pieceY
ˆˆ& ,
)
ˆˆ, -
;
ˆˆ- .
return
˜˜ 

pieceImage
˜˜ 
;
˜˜ 
}
¯¯ 	
private
˙˙ 
void
˙˙ >
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
˙˙ E
(
˙˙E F
Image
˙˙F K&
pieceCapturedByTheBeetle
˙˙L d
,
˙˙d e
	GamePiece
˙˙f o
beetlePiece
˙˙p {
)
˙˙{ |
{
˚˚ 	
	GamePiece
¸¸ 
pieceToReturn
¸¸ #
=
¸¸$ %&
pieceCapturedByTheBeetle
¸¸& >
.
¸¸> ?
Tag
¸¸? B
as
¸¸C E
	GamePiece
¸¸F O
;
¸¸O P
if
˝˝ 
(
˝˝ !
canva_GameBoardGrid
˝˝ #
.
˝˝# $
Children
˝˝$ ,
.
˝˝, -
Contains
˝˝- 5
(
˝˝5 6&
pieceCapturedByTheBeetle
˝˝6 N
)
˝˝N O
)
˝˝O P
{
˛˛ 
List
ˇˇ 
<
ˇˇ 
	UIElement
ˇˇ 
>
ˇˇ 
childrenGrids
ˇˇ  -
=
ˇˇ. /!
canva_GameBoardGrid
ˇˇ0 C
.
ˇˇC D
Children
ˇˇD L
.
ˇˇL M
OfType
ˇˇM S
<
ˇˇS T
	UIElement
ˇˇT ]
>
ˇˇ] ^
(
ˇˇ^ _
)
ˇˇ_ `
.
ˇˇ` a
ToList
ˇˇa g
(
ˇˇg h
)
ˇˇh i
;
ˇˇi j
int
ÄÄ 
indexToRemove
ÄÄ !
=
ÄÄ" #
childrenGrids
ÄÄ$ 1
.
ÄÄ1 2
IndexOf
ÄÄ2 9
(
ÄÄ9 :&
pieceCapturedByTheBeetle
ÄÄ: R
)
ÄÄR S
;
ÄÄS T!
canva_GameBoardGrid
ÅÅ #
.
ÅÅ# $
Children
ÅÅ$ ,
.
ÅÅ, -
RemoveAt
ÅÅ- 5
(
ÅÅ5 6
indexToRemove
ÅÅ6 C
)
ÅÅC D
;
ÅÅD E
}
ÇÇ !
canva_GameBoardGrid
ÉÉ 
.
ÉÉ  
Children
ÉÉ  (
.
ÉÉ( )
Add
ÉÉ) ,
(
ÉÉ, -&
pieceCapturedByTheBeetle
ÉÉ- E
)
ÉÉE F
;
ÉÉF G(
_piecesCapturedByTheBeetle
ÑÑ &
.
ÑÑ& '
Remove
ÑÑ' -
(
ÑÑ- .
(
ÑÑ. /
beetlePiece
ÑÑ/ :
.
ÑÑ: ;
PieceNumber
ÑÑ; F
,
ÑÑF G
beetlePiece
ÑÑH S
.
ÑÑS T

PlayerName
ÑÑT ^
)
ÑÑ^ _
)
ÑÑ_ `
;
ÑÑ` a
if
ÖÖ 
(
ÖÖ 
_board
ÖÖ 
.
ÖÖ 
ContainsKey
ÖÖ "
(
ÖÖ" #
pieceToReturn
ÖÖ# 0
.
ÖÖ0 1
Position
ÖÖ1 9
)
ÖÖ9 :
)
ÖÖ: ;
{
ÜÜ 
_board
áá 
.
áá 
Remove
áá 
(
áá 
pieceToReturn
áá +
.
áá+ ,
Position
áá, 4
)
áá4 5
;
áá5 6
}
àà 
_board
ââ 
.
ââ 
Add
ââ 
(
ââ 
pieceToReturn
ââ $
.
ââ$ %
Position
ââ% -
,
ââ- .
pieceToReturn
ââ/ <
)
ââ< =
;
ââ= >
}
ää 	
private
åå 
void
åå #
PieceSelectedByBeetle
åå *
(
åå* +
Image
åå+ 0

imagePiece
åå1 ;
,
åå; <
	GamePiece
åå= F
beetlePiece
ååG R
)
ååR S
{
çç 	
	GamePiece
éé 
pieceToKeepSafe
éé %
=
éé& '

imagePiece
éé( 2
.
éé2 3
Tag
éé3 6
as
éé7 9
	GamePiece
éé: C
;
ééC D
List
èè 
<
èè 
Image
èè 
>
èè 
imagesOfPieces
èè &
=
èè' (!
canva_GameBoardGrid
èè) <
.
èè< =
Children
èè= E
.
èèE F
OfType
èèF L
<
èèL M
Image
èèM R
>
èèR S
(
èèS T
)
èèT U
.
èèU V
ToList
èèV \
(
èè\ ]
)
èè] ^
;
èè^ _
Image
êê  
imageWhereBeetleIs
êê $
=
êê% &
new
êê' *
Image
êê+ 0
(
êê0 1
)
êê1 2
;
êê2 3
foreach
ëë 
(
ëë 
var
ëë 
imageOnBeetle
ëë &
in
ëë' )
imagesOfPieces
ëë* 8
)
ëë8 9
{
íí 
	GamePiece
ìì 
piece
ìì 
=
ìì  !
imageOnBeetle
ìì" /
.
ìì/ 0
Tag
ìì0 3
as
ìì4 6
	GamePiece
ìì7 @
;
ìì@ A
if
îî 
(
îî 
piece
îî 
.
îî 
PieceNumber
îî %
==
îî& (
beetlePiece
îî) 4
.
îî4 5
PieceNumber
îî5 @
&&
îîA C
piece
îîD I
.
îîI J

PlayerName
îîJ T
==
îîU W
beetlePiece
îîX c
.
îîc d

PlayerName
îîd n
)
îîn o
{
ïï  
imageWhereBeetleIs
ññ &
=
ññ' (
imageOnBeetle
ññ) 6
;
ññ6 7
break
óó 
;
óó 
}
òò 
}
ôô 
if
öö 
(
öö (
_piecesCapturedByTheBeetle
öö *
.
öö* +
ContainsKey
öö+ 6
(
öö6 7
(
öö7 8
beetlePiece
öö8 C
.
ööC D
PieceNumber
ööD O
,
ööO P
beetlePiece
ööQ \
.
öö\ ]

PlayerName
öö] g
)
öög h
)
ööh i
)
ööi j
{
õõ 5
'RestoreOriginalPieceCapturedByTheBeetle
úú 7
(
úú7 8 
imageWhereBeetleIs
úú8 J
,
úúJ K
beetlePiece
úúL W
)
úúW X
;
úúX Y
}
ùù 
else
ûû 
{
üü '
PieceToReplaceByTheBeetle
†† )
(
††) *
beetlePiece
††* 5
,
††5 6
pieceToKeepSafe
††7 F
,
††F G 
imageWhereBeetleIs
††H Z
)
††Z [
;
††[ \
}
°° (
_piecesCapturedByTheBeetle
¢¢ &
.
¢¢& '
Add
¢¢' *
(
¢¢* +
(
¢¢+ ,
beetlePiece
¢¢, 7
.
¢¢7 8
PieceNumber
¢¢8 C
,
¢¢C D
beetlePiece
¢¢E P
.
¢¢P Q

PlayerName
¢¢Q [
)
¢¢[ \
,
¢¢\ ]

imagePiece
¢¢^ h
)
¢¢h i
;
¢¢i j
Point
££ 
oldPosition
££ 
=
££ 
beetlePiece
££  +
.
££+ ,
Position
££, 4
;
££4 5
Polygon
§§ 
cell
§§ 
=
§§ 
_cellDictionary
§§ *
[
§§* +
pieceToKeepSafe
§§+ :
.
§§: ;
Position
§§; C
]
§§C D
;
§§D E
beetlePiece
•• 
.
•• 
Position
••  
=
••! "
pieceToKeepSafe
••# 2
.
••2 3
Position
••3 ;
;
••; <
beetlePiece
¶¶ 
.
¶¶ 
Piece
¶¶ 
.
¶¶ 
Position
¶¶ &
=
¶¶' (
oldPosition
¶¶) 4
;
¶¶4 5)
UpdateGameboardGridByBeetle
ßß '
(
ßß' (
cell
ßß( ,
,
ßß, -
beetlePiece
ßß. 9
)
ßß9 :
;
ßß: ;
_isBeetleMoved
®® 
=
®® 
false
®® "
;
®®" #
}
©© 	
private
´´ 
void
´´ '
PieceToReplaceByTheBeetle
´´ .
(
´´. /
	GamePiece
´´/ 8
beetlePiece
´´9 D
,
´´D E
	GamePiece
´´F O
pieceToKeepSafe
´´P _
,
´´_ `
Image
´´a f 
imageWhereBeetleIs
´´g y
)
´´y z
{
¨¨ 	
List
≠≠ 
<
≠≠ 
	UIElement
≠≠ 
>
≠≠ 
childrenGrids
≠≠ )
=
≠≠* +!
canva_GameBoardGrid
≠≠, ?
.
≠≠? @
Children
≠≠@ H
.
≠≠H I
OfType
≠≠I O
<
≠≠O P
	UIElement
≠≠P Y
>
≠≠Y Z
(
≠≠Z [
)
≠≠[ \
.
≠≠\ ]
ToList
≠≠] c
(
≠≠c d
)
≠≠d e
;
≠≠e f
int
ÆÆ 
indexToRemove
ÆÆ 
=
ÆÆ 
childrenGrids
ÆÆ  -
.
ÆÆ- .
IndexOf
ÆÆ. 5
(
ÆÆ5 6 
imageWhereBeetleIs
ÆÆ6 H
)
ÆÆH I
;
ÆÆI J
if
ØØ 
(
ØØ 
indexToRemove
ØØ 
!=
ØØ  
-
ØØ! "
$num
ØØ" #
)
ØØ# $
{
∞∞ !
canva_GameBoardGrid
±± #
.
±±# $
Children
±±$ ,
.
±±, -
RemoveAt
±±- 5
(
±±5 6
indexToRemove
±±6 C
)
±±C D
;
±±D E
}
≤≤ 
_board
≥≥ 
.
≥≥ 
Remove
≥≥ 
(
≥≥ 
pieceToKeepSafe
≥≥ )
.
≥≥) *
Position
≥≥* 2
)
≥≥2 3
;
≥≥3 4
if
¥¥ 
(
¥¥ 
_board
¥¥ 
.
¥¥ 
ContainsKey
¥¥ "
(
¥¥" #
beetlePiece
¥¥# .
.
¥¥. /
Position
¥¥/ 7
)
¥¥7 8
&&
¥¥9 ;
_board
¥¥< B
[
¥¥B C
beetlePiece
¥¥C N
.
¥¥N O
Position
¥¥O W
]
¥¥W X
==
¥¥Y [
beetlePiece
¥¥\ g
)
¥¥g h
{
µµ 
_board
∂∂ 
.
∂∂ 
Remove
∂∂ 
(
∂∂ 
beetlePiece
∂∂ )
.
∂∂) *
Position
∂∂* 2
)
∂∂2 3
;
∂∂3 4
}
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ 5
'RestoreOriginalPieceCapturedByTheBeetle
∫∫ <
(
∫∫< =
Image
∫∫= B 
imageWhereBeetleIs
∫∫C U
,
∫∫U V
	GamePiece
∫∫W `
beetlePiece
∫∫a l
)
∫∫l m
{
ªª 	
Image
ºº  
originalPieceImage
ºº $
=
ºº% &(
_piecesCapturedByTheBeetle
ºº' A
[
ººA B
(
ººB C
beetlePiece
ººC N
.
ººN O
PieceNumber
ººO Z
,
ººZ [
beetlePiece
ºº\ g
.
ººg h

PlayerName
ººh r
)
ººr s
]
ººs t
;
ººt u
	GamePiece
ΩΩ 
originalPiece
ΩΩ #
=
ΩΩ$ % 
originalPieceImage
ΩΩ& 8
.
ΩΩ8 9
Tag
ΩΩ9 <
as
ΩΩ= ?
	GamePiece
ΩΩ@ I
;
ΩΩI J
_board
ææ 
.
ææ 
Remove
ææ 
(
ææ 
originalPiece
ææ '
.
ææ' (
Position
ææ( 0
)
ææ0 1
;
ææ1 2
_board
øø 
.
øø 
Add
øø 
(
øø 
originalPiece
øø $
.
øø$ %
Position
øø% -
,
øø- .
originalPiece
øø/ <
)
øø< =
;
øø= >
if
¿¿ 
(
¿¿ !
canva_GameBoardGrid
¿¿ #
.
¿¿# $
Children
¿¿$ ,
.
¿¿, -
Contains
¿¿- 5
(
¿¿5 6 
imageWhereBeetleIs
¿¿6 H
)
¿¿H I
)
¿¿I J
{
¡¡ 
List
¬¬ 
<
¬¬ 
	UIElement
¬¬ 
>
¬¬ 
childrenGrid
¬¬  ,
=
¬¬- .!
canva_GameBoardGrid
¬¬/ B
.
¬¬B C
Children
¬¬C K
.
¬¬K L
OfType
¬¬L R
<
¬¬R S
	UIElement
¬¬S \
>
¬¬\ ]
(
¬¬] ^
)
¬¬^ _
.
¬¬_ `
ToList
¬¬` f
(
¬¬f g
)
¬¬g h
;
¬¬h i
int
√√ !
indexToRemoveBeetle
√√ '
=
√√( )
childrenGrid
√√* 6
.
√√6 7
IndexOf
√√7 >
(
√√> ? 
imageWhereBeetleIs
√√? Q
)
√√Q R
;
√√R S!
canva_GameBoardGrid
ƒƒ #
.
ƒƒ# $
Children
ƒƒ$ ,
.
ƒƒ, -
RemoveAt
ƒƒ- 5
(
ƒƒ5 6!
indexToRemoveBeetle
ƒƒ6 I
)
ƒƒI J
;
ƒƒJ K
}
≈≈ 
if
∆∆ 
(
∆∆ !
canva_GameBoardGrid
∆∆ #
.
∆∆# $
Children
∆∆$ ,
.
∆∆, -
Contains
∆∆- 5
(
∆∆5 6 
originalPieceImage
∆∆6 H
)
∆∆H I
)
∆∆I J
{
«« 
List
»» 
<
»» 
	UIElement
»» 
>
»» "
childrenGridNewPiece
»»  4
=
»»5 6!
canva_GameBoardGrid
»»7 J
.
»»J K
Children
»»K S
.
»»S T
OfType
»»T Z
<
»»Z [
	UIElement
»»[ d
>
»»d e
(
»»e f
)
»»f g
.
»»g h
ToList
»»h n
(
»»n o
)
»»o p
;
»»p q
int
…… #
indexToRemoveNewPiece
…… )
=
……* +"
childrenGridNewPiece
……, @
.
……@ A
IndexOf
……A H
(
……H I 
originalPieceImage
……I [
)
……[ \
;
……\ ]!
canva_GameBoardGrid
   #
.
  # $
Children
  $ ,
.
  , -
RemoveAt
  - 5
(
  5 6#
indexToRemoveNewPiece
  6 K
)
  K L
;
  L M
}
ÀÀ !
canva_GameBoardGrid
ÃÃ 
.
ÃÃ  
Children
ÃÃ  (
.
ÃÃ( )
Add
ÃÃ) ,
(
ÃÃ, - 
originalPieceImage
ÃÃ- ?
)
ÃÃ? @
;
ÃÃ@ A(
_piecesCapturedByTheBeetle
ÕÕ &
.
ÕÕ& '
Remove
ÕÕ' -
(
ÕÕ- .
(
ÕÕ. /
beetlePiece
ÕÕ/ :
.
ÕÕ: ;
PieceNumber
ÕÕ; F
,
ÕÕF G
beetlePiece
ÕÕH S
.
ÕÕS T

PlayerName
ÕÕT ^
)
ÕÕ^ _
)
ÕÕ_ `
;
ÕÕ` a
}
ŒŒ 	
private
–– 
void
–– )
UpdateGameboardGridByBeetle
–– 0
(
––0 1
Polygon
––1 8
cell
––9 =
,
––= >
	GamePiece
––? H
piece
––I N
)
––N O
{
—— 	
Image
““ 

pieceImage
““ 
=
““ !
ObtainImageCreation
““ 2
(
““2 3
cell
““3 7
,
““7 8
piece
““9 >
)
““> ?
;
““? @!
canva_GameBoardGrid
”” 
.
””  
Children
””  (
.
””( )
Add
””) ,
(
””, -

pieceImage
””- 7
)
””7 8
;
””8 9
_board
‘‘ 
[
‘‘ 
piece
‘‘ 
.
‘‘ 
Position
‘‘ !
]
‘‘! "
=
‘‘# $
piece
‘‘% *
;
‘‘* +'
SendPiecePositionToServer
’’ %
(
’’% &
piece
’’& +
)
’’+ ,
;
’’, -
_lastPlacedCell
÷÷ 
=
÷÷ 
cell
÷÷ "
;
÷÷" #
_selectedPiece
◊◊ 
=
◊◊ 
null
◊◊ !
;
◊◊! "
ResetHighlights
ÿÿ 
(
ÿÿ 
)
ÿÿ 
;
ÿÿ 
}
ŸŸ 	
private
€€ 
void
€€ -
UpdateOldAndNewPlaceInGameBoard
€€ 4
(
€€4 5
Image
€€5 :

pieceImage
€€; E
,
€€E F
Point
€€G L
oldPosition
€€M X
)
€€X Y
{
‹‹ 	
if
›› 
(
›› 
_board
›› 
.
›› 
ContainsKey
›› "
(
››" #
oldPosition
››# .
)
››. /
)
››/ 0
{
ﬁﬁ 
_board
ﬂﬂ 
.
ﬂﬂ 
Remove
ﬂﬂ 
(
ﬂﬂ 
oldPosition
ﬂﬂ )
)
ﬂﬂ) *
;
ﬂﬂ* +
}
‡‡ 
var
·· #
imagesOnGameBoardGrid
·· %
=
··& '!
canva_GameBoardGrid
··( ;
.
··; <
Children
··< D
.
··D E
OfType
··E K
<
··K L
Image
··L Q
>
··Q R
(
··R S
)
··S T
.
··T U
ToList
··U [
(
··[ \
)
··\ ]
;
··] ^
	GamePiece
‚‚ 
pieceToMove
‚‚ !
=
‚‚" #

pieceImage
‚‚$ .
.
‚‚. /
Tag
‚‚/ 2
as
‚‚3 5
	GamePiece
‚‚6 ?
;
‚‚? @
Image
„„ 
imageToRemove
„„ 
=
„„  !
new
„„" %
Image
„„& +
(
„„+ ,
)
„„, -
;
„„- .
foreach
‰‰ 
(
‰‰ 
var
‰‰ 
imageOnGrid
‰‰ $
in
‰‰% '#
imagesOnGameBoardGrid
‰‰( =
)
‰‰= >
{
ÂÂ 
	GamePiece
ÊÊ 
piece
ÊÊ 
=
ÊÊ  !
imageOnGrid
ÊÊ" -
.
ÊÊ- .
Tag
ÊÊ. 1
as
ÊÊ2 4
	GamePiece
ÊÊ5 >
;
ÊÊ> ?
if
ÁÁ 
(
ÁÁ 
piece
ÁÁ 
.
ÁÁ 
Piece
ÁÁ 
.
ÁÁ  
Position
ÁÁ  (
==
ÁÁ) +
oldPosition
ÁÁ, 7
&&
ÁÁ8 :
piece
ÁÁ; @
.
ÁÁ@ A
PieceNumber
ÁÁA L
==
ÁÁM O
pieceToMove
ÁÁP [
.
ÁÁ[ \
PieceNumber
ÁÁ\ g
&&
ÁÁh j
piece
ÁÁk p
.
ÁÁp q

PlayerName
ÁÁq {
==
ÁÁ| ~
pieceToMoveÁÁ ä
.ÁÁä ã

PlayerNameÁÁã ï
)ÁÁï ñ
{
ËË 
imageToRemove
ÈÈ !
=
ÈÈ" #
imageOnGrid
ÈÈ$ /
;
ÈÈ/ 0
break
ÍÍ 
;
ÍÍ 
}
ÎÎ 
}
ÏÏ 
List
ÌÌ 
<
ÌÌ 
	UIElement
ÌÌ 
>
ÌÌ 
childrenGrids
ÌÌ )
=
ÌÌ* +!
canva_GameBoardGrid
ÌÌ, ?
.
ÌÌ? @
Children
ÌÌ@ H
.
ÌÌH I
OfType
ÌÌI O
<
ÌÌO P
	UIElement
ÌÌP Y
>
ÌÌY Z
(
ÌÌZ [
)
ÌÌ[ \
.
ÌÌ\ ]
ToList
ÌÌ] c
(
ÌÌc d
)
ÌÌd e
;
ÌÌe f
int
ÓÓ 
indexToRemove
ÓÓ 
=
ÓÓ 
childrenGrids
ÓÓ  -
.
ÓÓ- .
IndexOf
ÓÓ. 5
(
ÓÓ5 6
imageToRemove
ÓÓ6 C
)
ÓÓC D
;
ÓÓD E
if
ÔÔ 
(
ÔÔ 
indexToRemove
ÔÔ 
!=
ÔÔ 
-
ÔÔ  !
$num
ÔÔ! "
)
ÔÔ" #
{
ÔÔ$ %!
canva_GameBoardGrid
 #
.
# $
Children
$ ,
.
, -
RemoveAt
- 5
(
5 6
indexToRemove
6 C
)
C D
;
D E
}
ÒÒ !
canva_GameBoardGrid
ÚÚ 
.
ÚÚ  
Children
ÚÚ  (
.
ÚÚ( )
Add
ÚÚ) ,
(
ÚÚ, -

pieceImage
ÚÚ- 7
)
ÚÚ7 8
;
ÚÚ8 9
	GamePiece
ÛÛ 

pieceToAdd
ÛÛ  
=
ÛÛ! "

pieceImage
ÛÛ# -
.
ÛÛ- .
Tag
ÛÛ. 1
as
ÛÛ2 4
	GamePiece
ÛÛ5 >
;
ÛÛ> ?
_board
ÙÙ 
[
ÙÙ 

pieceToAdd
ÙÙ 
.
ÙÙ 
Position
ÙÙ &
]
ÙÙ& '
=
ÙÙ( )

pieceToAdd
ÙÙ* 4
;
ÙÙ4 5
}
ıı 	
private
˜˜ 
bool
˜˜ 1
#ValidateThatPieceCannotBreakTheHive
˜˜ 8
(
˜˜8 9
Point
˜˜9 >
positionPiece
˜˜? L
)
˜˜L M
{
¯¯ 	
bool
˘˘ 
validationResult
˘˘ !
=
˘˘" #
false
˘˘$ )
;
˘˘) *
	GamePiece
˙˙ '
verifyIfPieceIsNotABeetle
˙˙ /
=
˙˙0 1
_board
˙˙2 8
[
˙˙8 9
positionPiece
˙˙9 F
]
˙˙F G
;
˙˙G H
if
˚˚ 
(
˚˚ (
_piecesCapturedByTheBeetle
˚˚ *
.
˚˚* +
ContainsKey
˚˚+ 6
(
˚˚6 7
(
˚˚7 8'
verifyIfPieceIsNotABeetle
˚˚8 Q
.
˚˚Q R
PieceNumber
˚˚R ]
,
˚˚] ^'
verifyIfPieceIsNotABeetle
˚˚_ x
.
˚˚x y

PlayerName˚˚y É
)˚˚É Ñ
)˚˚Ñ Ö
)˚˚Ö Ü
{
¸¸ 
validationResult
˝˝  
=
˝˝! "
true
˝˝# '
;
˝˝' (
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
if
ÅÅ 
(
ÅÅ 
positionPiece
ÅÅ !
!=
ÅÅ" $
new
ÅÅ% (
Point
ÅÅ) .
(
ÅÅ. /
-
ÅÅ/ 0
$num
ÅÅ0 1
,
ÅÅ1 2
-
ÅÅ3 4
$num
ÅÅ4 5
)
ÅÅ5 6
)
ÅÅ6 7
{
ÇÇ 
var
ÉÉ 
piece
ÉÉ 
=
ÉÉ 
_board
ÉÉ  &
[
ÉÉ& '
positionPiece
ÉÉ' 4
]
ÉÉ4 5
;
ÉÉ5 6
_board
ÑÑ 
.
ÑÑ 
Remove
ÑÑ !
(
ÑÑ! "
positionPiece
ÑÑ" /
)
ÑÑ/ 0
;
ÑÑ0 1
Point
ÖÖ 
start
ÖÖ 
=
ÖÖ  !
_board
ÖÖ" (
.
ÖÖ( )
Keys
ÖÖ) -
.
ÖÖ- .
FirstOrDefault
ÖÖ. <
(
ÖÖ< =
)
ÖÖ= >
;
ÖÖ> ?
HashSet
ÜÜ 
<
ÜÜ 
Point
ÜÜ !
>
ÜÜ! "
visited
ÜÜ# *
=
ÜÜ+ ,
new
ÜÜ- 0
HashSet
ÜÜ1 8
<
ÜÜ8 9
Point
ÜÜ9 >
>
ÜÜ> ?
(
ÜÜ? @
)
ÜÜ@ A
;
ÜÜA B"
CheckConnectedPieces
áá (
(
áá( )
start
áá) .
,
áá. /
visited
áá0 7
)
áá7 8
;
áá8 9
if
àà 
(
àà 
visited
àà 
.
àà  
Count
àà  %
==
àà& (
_board
àà) /
.
àà/ 0
Count
àà0 5
)
àà5 6
{
ââ 
validationResult
ää (
=
ää) *
true
ää+ /
;
ää/ 0
}
ãã 
else
åå 
{
çç 
validationResult
éé (
=
éé) *
false
éé+ 0
;
éé0 1
}
èè 
_board
êê 
.
êê 
Add
êê 
(
êê 
positionPiece
êê ,
,
êê, -
piece
êê. 3
)
êê3 4
;
êê4 5
}
ëë 
}
íí 
return
ìì 
validationResult
ìì #
;
ìì# $
}
îî 	
private
ññ 
void
ññ "
CheckConnectedPieces
ññ )
(
ññ) *
Point
ññ* /
start
ññ0 5
,
ññ5 6
HashSet
ññ7 >
<
ññ> ?
Point
ññ? D
>
ññD E
visited
ññF M
)
ññM N
{
óó 	
Stack
òò 
<
òò 
Point
òò 
>
òò 
stack
òò 
=
òò  
new
òò! $
Stack
òò% *
<
òò* +
Point
òò+ 0
>
òò0 1
(
òò1 2
)
òò2 3
;
òò3 4
stack
ôô 
.
ôô 
Push
ôô 
(
ôô 
start
ôô 
)
ôô 
;
ôô 
while
öö 
(
öö 
stack
öö 
.
öö 
Count
öö 
>
öö  
$num
öö! "
)
öö" #
{
õõ 
Point
úú 
currentPoint
úú "
=
úú# $
stack
úú% *
.
úú* +
Pop
úú+ .
(
úú. /
)
úú/ 0
;
úú0 1
if
ùù 
(
ùù 
!
ùù 
visited
ùù 
.
ùù 
Contains
ùù %
(
ùù% &
currentPoint
ùù& 2
)
ùù2 3
)
ùù3 4
{
ûû 
visited
üü 
.
üü 
Add
üü 
(
üü  
currentPoint
üü  ,
)
üü, -
;
üü- .
List
†† 
<
†† 
Point
†† 
>
†† 
adjacentPoints
††  .
=
††/ 0"
ObtainAdjacentPoints
††1 E
(
††E F
currentPoint
††F R
)
††R S
;
††S T
foreach
°° 
(
°° 
var
°°  
adjacentCollider
°°! 1
in
°°2 4
adjacentPoints
°°5 C
)
°°C D
{
¢¢ 
if
££ 
(
££ 
!
££ 
visited
££ $
.
££$ %
Contains
££% -
(
££- .
adjacentCollider
££. >
)
££> ?
&&
££@ B
_board
££C I
.
££I J
ContainsKey
££J U
(
££U V
adjacentCollider
££V f
)
££f g
)
££g h
{
§§ 
stack
•• !
.
••! "
Push
••" &
(
••& '
adjacentCollider
••' 7
)
••7 8
;
••8 9
}
¶¶ 
}
ßß 
}
®® 
}
©© 
}
™™ 	
private
¨¨ 
void
¨¨ 2
$HighlightStartingFirstTurnStaterCell
¨¨ 9
(
¨¨9 :
Point
¨¨: ?
position
¨¨@ H
)
¨¨H I
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
_cellDictionary
ÆÆ 
.
ÆÆ  
TryGetValue
ÆÆ  +
(
ÆÆ+ ,
position
ÆÆ, 4
,
ÆÆ4 5
out
ÆÆ6 9
Polygon
ÆÆ: A
cell
ÆÆB F
)
ÆÆF G
)
ÆÆG H
{
ØØ 
cell
∞∞ 
.
∞∞ 
Fill
∞∞ 
=
∞∞ 
Brushes
∞∞ #
.
∞∞# $
Yellow
∞∞$ *
;
∞∞* +
_lastPlacedCell
±± 
=
±±  !
cell
±±" &
;
±±& '
cell
≤≤ 
.
≤≤ 
	MouseDown
≤≤ 
+=
≤≤ !
Cell_MouseDown
≤≤" 0
;
≤≤0 1
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 2
$HigligthStartingFirstTurnOponentCell
∂∂ 9
(
∂∂9 :
)
∂∂: ;
{
∑∑ 	
ResetHighlights
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏ 
var
ππ 
checkedPositions
ππ  
=
ππ! "
new
ππ# &
HashSet
ππ' .
<
ππ. /
Point
ππ/ 4
>
ππ4 5
(
ππ5 6
)
ππ6 7
;
ππ7 8
foreach
∫∫ 
(
∫∫ 
var
∫∫ 
piecePosition
∫∫ &
in
∫∫' )
_board
∫∫* 0
.
∫∫0 1
Keys
∫∫1 5
)
∫∫5 6
{
ªª 
if
ºº 
(
ºº 
_board
ºº 
.
ºº 
TryGetValue
ºº &
(
ºº& '
piecePosition
ºº' 4
,
ºº4 5
out
ºº6 9
var
ºº: =!
currentStarterPiece
ºº> Q
)
ººQ R
&&
ººS U!
currentStarterPiece
ººV i
!=
ººj l
null
ººm q
)
ººq r
{
ΩΩ #
HighlightValidOffsets
ææ )
(
ææ) *
piecePosition
ææ* 7
,
ææ7 8
checkedPositions
ææ9 I
)
ææI J
;
ææJ K
}
øø 
}
¿¿ 
}
¡¡ 	
private
√√ 
void
√√ #
HighlightValidOffsets
√√ *
(
√√* +
Point
√√+ 0
piecePosition
√√1 >
,
√√> ?
HashSet
√√@ G
<
√√G H
Point
√√H M
>
√√M N
checkedPositions
√√O _
)
√√_ `
{
ƒƒ 	
foreach
≈≈ 
(
≈≈ 
var
≈≈ 
offset
≈≈ 
in
≈≈  ""
ObtainAdjacentPoints
≈≈# 7
(
≈≈7 8
piecePosition
≈≈8 E
)
≈≈E F
)
≈≈F G
{
∆∆ 
if
«« 
(
«« 
!
«« 
_board
«« 
.
«« 
ContainsKey
«« '
(
««' (
offset
««( .
)
««. /
&&
««0 2
_cellDictionary
»» #
.
»»# $
TryGetValue
»»$ /
(
»»/ 0
offset
»»0 6
,
»»6 7
out
»»8 ;
var
»»< ?
cell
»»@ D
)
»»D E
&&
»»F H
!
…… 
checkedPositions
…… %
.
……% &
Contains
……& .
(
……. /
offset
……/ 5
)
……5 6
&&
……7 9+
ObtaintAdjacentColliderPoints
   1
(
  1 2
offset
  2 8
,
  8 9
piecePosition
  : G
)
  G H
.
  H I
Exists
  I O
(
  O P
adj
  P S
=>
  T V
_board
  W ]
.
  ] ^
ContainsKey
  ^ i
(
  i j
adj
  j m
)
  m n
)
  n o
)
  o p
{
ÀÀ 
cell
ÃÃ 
.
ÃÃ 
Fill
ÃÃ 
=
ÃÃ 
Brushes
ÃÃ  '
.
ÃÃ' (

LightGreen
ÃÃ( 2
;
ÃÃ2 3
cell
ÕÕ 
.
ÕÕ 
	IsEnabled
ÕÕ "
=
ÕÕ# $
true
ÕÕ% )
;
ÕÕ) *
cell
ŒŒ 
.
ŒŒ 
	MouseDown
ŒŒ "
+=
ŒŒ# %
Cell_MouseDown
ŒŒ& 4
;
ŒŒ4 5
checkedPositions
œœ $
.
œœ$ %
Add
œœ% (
(
œœ( )
offset
œœ) /
)
œœ/ 0
;
œœ0 1
}
–– 
}
—— 
}
““ 	
private
‘‘ 
void
‘‘ -
HighlightAvailableStartingCells
‘‘ 4
(
‘‘4 5
)
‘‘5 6
{
’’ 	
ResetHighlights
÷÷ 
(
÷÷ 
)
÷÷ 
;
÷÷ 
var
◊◊ 
checkedPositions
◊◊  
=
◊◊! "
new
◊◊# &
HashSet
◊◊' .
<
◊◊. /
Point
◊◊/ 4
>
◊◊4 5
(
◊◊5 6
)
◊◊6 7
;
◊◊7 8
if
ÿÿ 
(
ÿÿ 
_numberOfTurn
ÿÿ 
==
ÿÿ  
$num
ÿÿ! "
&&
ÿÿ# %
!
ÿÿ& '(
ValidateQueenPieceIsInGame
ÿÿ' A
(
ÿÿA B
)
ÿÿB C
)
ÿÿC D
{
ŸŸ 
_selectedPiece
⁄⁄ 
=
⁄⁄  
_numberOfPlayer
⁄⁄! 0
==
⁄⁄1 3
$num
⁄⁄4 5
?
⁄⁄6 7
_player1Pieces
⁄⁄8 F
[
⁄⁄F G
$num
⁄⁄G H
]
⁄⁄H I
:
⁄⁄J K
_player2Pieces
⁄⁄L Z
[
⁄⁄Z [
$num
⁄⁄[ \
]
⁄⁄\ ]
;
⁄⁄] ^
}
€€ 
foreach
‹‹ 
(
‹‹ 
var
‹‹ 
piecePosition
‹‹ &
in
‹‹' )
_board
‹‹* 0
.
‹‹0 1
Keys
‹‹1 5
)
‹‹5 6
{
›› 
if
ﬁﬁ 
(
ﬁﬁ 
_board
ﬁﬁ 
[
ﬁﬁ 
piecePosition
ﬁﬁ (
]
ﬁﬁ( )
.
ﬁﬁ) *

PlayerName
ﬁﬁ* 4
==
ﬁﬁ5 7"
UserProfileSingleton
ﬁﬁ8 L
.
ﬁﬁL M
username
ﬁﬁM U
)
ﬁﬁU V
{
ﬂﬂ )
HighlightValidCellsForPiece
‡‡ /
(
‡‡/ 0
piecePosition
‡‡0 =
,
‡‡= >
checkedPositions
‡‡? O
)
‡‡O P
;
‡‡P Q
}
·· 
}
‚‚ 
}
„„ 	
private
ÂÂ 
void
ÂÂ )
HighlightValidCellsForPiece
ÂÂ 0
(
ÂÂ0 1
Point
ÂÂ1 6
piecePosition
ÂÂ7 D
,
ÂÂD E
HashSet
ÂÂF M
<
ÂÂM N
Point
ÂÂN S
>
ÂÂS T
checkedPositions
ÂÂU e
)
ÂÂe f
{
ÊÊ 	
foreach
ÁÁ 
(
ÁÁ 
var
ÁÁ 
offset
ÁÁ 
in
ÁÁ  ""
ObtainAdjacentPoints
ÁÁ# 7
(
ÁÁ7 8
piecePosition
ÁÁ8 E
)
ÁÁE F
)
ÁÁF G
{
ËË 
if
ÈÈ 
(
ÈÈ 
IsValidCell
ÈÈ 
(
ÈÈ  
offset
ÈÈ  &
,
ÈÈ& '
checkedPositions
ÈÈ( 8
,
ÈÈ8 9
out
ÈÈ: =
var
ÈÈ> A
cell
ÈÈB F
)
ÈÈF G
)
ÈÈG H
{
ÍÍ 
bool
ÎÎ !
isConnectedToColony
ÎÎ ,
=
ÎÎ- .!
IsConnectedToColony
ÎÎ/ B
(
ÎÎB C
offset
ÎÎC I
)
ÎÎI J
;
ÎÎJ K
bool
ÏÏ 
isNearEnemy
ÏÏ $
=
ÏÏ% &
IsNearEnemy
ÏÏ' 2
(
ÏÏ2 3
offset
ÏÏ3 9
)
ÏÏ9 :
;
ÏÏ: ;
if
ÌÌ 
(
ÌÌ !
isConnectedToColony
ÌÌ +
&&
ÌÌ, .
!
ÌÌ/ 0
isNearEnemy
ÌÌ0 ;
)
ÌÌ; <
{
ÓÓ 
cell
ÔÔ 
.
ÔÔ 
Fill
ÔÔ !
=
ÔÔ" #
Brushes
ÔÔ$ +
.
ÔÔ+ ,

LightGreen
ÔÔ, 6
;
ÔÔ6 7
cell
 
.
 
	IsEnabled
 &
=
' (
true
) -
;
- .
cell
ÒÒ 
.
ÒÒ 
	MouseDown
ÒÒ &
+=
ÒÒ' )
Cell_MouseDown
ÒÒ* 8
;
ÒÒ8 9
checkedPositions
ÚÚ (
.
ÚÚ( )
Add
ÚÚ) ,
(
ÚÚ, -
offset
ÚÚ- 3
)
ÚÚ3 4
;
ÚÚ4 5
}
ÛÛ 
}
ÙÙ 
}
ıı 
}
ˆˆ 	
private
¯¯ 
bool
¯¯ 
IsValidCell
¯¯  
(
¯¯  !
Point
¯¯! &
offset
¯¯' -
,
¯¯- .
HashSet
¯¯/ 6
<
¯¯6 7
Point
¯¯7 <
>
¯¯< =
checkedPositions
¯¯> N
,
¯¯N O
out
¯¯P S
Polygon
¯¯T [
cell
¯¯\ `
)
¯¯` a
{
˘˘ 	
cell
˙˙ 
=
˙˙ 
null
˙˙ 
;
˙˙ 
return
˚˚ 
!
˚˚ 
_board
˚˚ 
.
˚˚ 
ContainsKey
˚˚ &
(
˚˚& '
offset
˚˚' -
)
˚˚- .
&&
˚˚/ 1
_cellDictionary
¸¸ "
.
¸¸" #
TryGetValue
¸¸# .
(
¸¸. /
offset
¸¸/ 5
,
¸¸5 6
out
¸¸7 :
cell
¸¸; ?
)
¸¸? @
&&
¸¸A C
!
˝˝ 
checkedPositions
˝˝ $
.
˝˝$ %
Contains
˝˝% -
(
˝˝- .
offset
˝˝. 4
)
˝˝4 5
;
˝˝5 6
}
˛˛ 	
private
ÄÄ 
bool
ÄÄ !
IsConnectedToColony
ÄÄ (
(
ÄÄ( )
Point
ÄÄ) .
offset
ÄÄ/ 5
)
ÄÄ5 6
{
ÅÅ 	
return
ÇÇ "
ObtainAdjacentPoints
ÇÇ '
(
ÇÇ' (
offset
ÇÇ( .
)
ÇÇ. /
.
ÇÇ/ 0
Exists
ÇÇ0 6
(
ÇÇ6 7
adj
ÇÇ7 :
=>
ÇÇ; =
_board
ÇÇ> D
.
ÇÇD E
ContainsKey
ÇÇE P
(
ÇÇP Q
adj
ÇÇQ T
)
ÇÇT U
&&
ÇÇV X
_board
ÇÇY _
[
ÇÇ_ `
adj
ÇÇ` c
]
ÇÇc d
.
ÇÇd e

PlayerName
ÇÇe o
==
ÇÇp r#
UserProfileSingletonÇÇs á
.ÇÇá à
usernameÇÇà ê
)ÇÇê ë
;ÇÇë í
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ 
IsNearEnemy
ÖÖ  
(
ÖÖ  !
Point
ÖÖ! &
offset
ÖÖ' -
)
ÖÖ- .
{
ÜÜ 	
return
áá "
ObtainAdjacentPoints
áá '
(
áá' (
offset
áá( .
)
áá. /
.
áá/ 0
Exists
áá0 6
(
áá6 7
adj
áá7 :
=>
áá; =
_board
áá> D
.
ááD E
ContainsKey
ááE P
(
ááP Q
adj
ááQ T
)
ááT U
&&
ááV X
_board
ááY _
[
áá_ `
adj
áá` c
]
áác d
.
áád e

PlayerName
ááe o
!=
ááp r#
UserProfileSingletonáás á
.ááá à
usernameááà ê
)ááê ë
;ááë í
}
àà 	
private
ää 
bool
ää %
IsConnectedToHiveBeetle
ää ,
(
ää, -
Point
ää- 2
position
ää3 ;
)
ää; <
{
ãã 	
var
åå 
adjacentPoints
åå 
=
åå  "
ObtainAdjacentPoints
åå! 5
(
åå5 6
position
åå6 >
)
åå> ?
;
åå? @
return
çç 
adjacentPoints
çç !
.
çç! "
Exists
çç" (
(
çç( )
adj
çç) ,
=>
çç- /
_board
çç0 6
.
çç6 7
ContainsKey
çç7 B
(
ççB C
adj
ççC F
)
ççF G
)
ççG H
;
ççH I
}
éé 	
private
êê 
bool
êê $
IsContinouslyConnected
êê +
(
êê+ ,
Point
êê, 1
adjacent
êê2 :
,
êê: ;
Point
êê< A
previousPosition
êêB R
,
êêR S
Point
êêT Y
currentPosition
êêZ i
)
êêi j
{
ëë 	
var
íí 
adjacentPoints
íí 
=
íí  "
ObtainAdjacentPoints
íí! 5
(
íí5 6
adjacent
íí6 >
)
íí> ?
;
íí? @
return
ìì 
adjacentPoints
ìì !
.
ìì! "
Exists
ìì" (
(
ìì( )
adj
ìì) ,
=>
ìì- /
_board
ìì0 6
.
ìì6 7
ContainsKey
ìì7 B
(
ììB C
adj
ììC F
)
ììF G
&&
ììH J"
ObtainAdjacentPoints
îî0 D
(
îîD E
adj
îîE H
)
îîH I
.
îîI J
Contains
îîJ R
(
îîR S
currentPosition
îîS b
)
îîb c
&&
îîd f"
ObtainAdjacentPoints
ïï0 D
(
ïïD E
adj
ïïE H
)
ïïH I
.
ïïI J
Contains
ïïJ R
(
ïïR S
previousPosition
ïïS c
)
ïïc d
)
ïïd e
;
ïïe f
}
ññ 	
private
òò 
bool
òò 
IsNotSurrounded
òò $
(
òò$ %
Point
òò% *
position
òò+ 3
)
òò3 4
{
ôô 	
var
öö 
adjacentPoints
öö 
=
öö  "
ObtainAdjacentPoints
öö! 5
(
öö5 6
position
öö6 >
)
öö> ?
;
öö? @
int
õõ 
occupiedSides
õõ 
=
õõ 
adjacentPoints
õõ  .
.
õõ. /
Count
õõ/ 4
(
õõ4 5
adj
õõ5 8
=>
õõ9 ;
_board
õõ< B
.
õõB C
ContainsKey
õõC N
(
õõN O
adj
õõO R
)
õõR S
)
õõS T
;
õõT U
return
úú 
occupiedSides
úú  
!=
úú! #
$num
úú$ %
;
úú% &
}
ùù 	
private
üü 
bool
üü 
IsConnectedToHive
üü &
(
üü& '
Point
üü' ,
position
üü- 5
)
üü5 6
{
†† 	
var
°° 
adjacentPoints
°° 
=
°°  "
ObtainAdjacentPoints
°°! 5
(
°°5 6
position
°°6 >
)
°°> ?
;
°°? @
bool
¢¢ !
isConnectedToColony
¢¢ $
=
¢¢% &
adjacentPoints
¢¢' 5
.
¢¢5 6
Exists
¢¢6 <
(
¢¢< =
adj
¢¢= @
=>
¢¢A C
_board
¢¢D J
.
¢¢J K
ContainsKey
¢¢K V
(
¢¢V W
adj
¢¢W Z
)
¢¢Z [
)
¢¢[ \
;
¢¢\ ]
return
££ !
isConnectedToColony
££ &
;
££& '
}
§§ 	
private
¶¶ 
List
¶¶ 
<
¶¶ 
Point
¶¶ 
>
¶¶ "
ObtainAdjacentPoints
¶¶ 0
(
¶¶0 1
Point
¶¶1 6
piecePosition
¶¶7 D
)
¶¶D E
{
ßß 	
List
®® 
<
®® 
Point
®® 
>
®® 
adjacentPoints
®® &
=
®®' (
new
®®) ,
List
®®- 1
<
®®1 2
Point
®®2 7
>
®®7 8
(
®®8 9
)
®®9 :
;
®®: ;
double
©© 
epsilon
©© 
=
©© 
$num
©© #
;
©©# $
if
™™ 
(
™™ 
Math
™™ 
.
™™ 
Abs
™™ 
(
™™ 
piecePosition
™™ &
.
™™& '
X
™™' (
%
™™) *
$num
™™+ ,
-
™™- .
$num
™™/ 0
)
™™0 1
<
™™2 3
epsilon
™™4 ;
)
™™; <
{
´´ 
adjacentPoints
¨¨ 
.
¨¨ 
Add
¨¨ "
(
¨¨" #
new
¨¨# &
Point
¨¨' ,
(
¨¨, -
piecePosition
¨¨- :
.
¨¨: ;
X
¨¨; <
-
¨¨= >
$num
¨¨? @
,
¨¨@ A
piecePosition
¨¨B O
.
¨¨O P
Y
¨¨P Q
-
¨¨R S
$num
¨¨T U
)
¨¨U V
)
¨¨V W
;
¨¨W X
adjacentPoints
≠≠ 
.
≠≠ 
Add
≠≠ "
(
≠≠" #
new
≠≠# &
Point
≠≠' ,
(
≠≠, -
piecePosition
≠≠- :
.
≠≠: ;
X
≠≠; <
,
≠≠< =
piecePosition
≠≠> K
.
≠≠K L
Y
≠≠L M
-
≠≠N O
$num
≠≠P Q
)
≠≠Q R
)
≠≠R S
;
≠≠S T
adjacentPoints
ÆÆ 
.
ÆÆ 
Add
ÆÆ "
(
ÆÆ" #
new
ÆÆ# &
Point
ÆÆ' ,
(
ÆÆ, -
piecePosition
ÆÆ- :
.
ÆÆ: ;
X
ÆÆ; <
+
ÆÆ= >
$num
ÆÆ? @
,
ÆÆ@ A
piecePosition
ÆÆB O
.
ÆÆO P
Y
ÆÆP Q
-
ÆÆR S
$num
ÆÆT U
)
ÆÆU V
)
ÆÆV W
;
ÆÆW X
adjacentPoints
ØØ 
.
ØØ 
Add
ØØ "
(
ØØ" #
new
ØØ# &
Point
ØØ' ,
(
ØØ, -
piecePosition
ØØ- :
.
ØØ: ;
X
ØØ; <
+
ØØ= >
$num
ØØ? @
,
ØØ@ A
piecePosition
ØØB O
.
ØØO P
Y
ØØP Q
)
ØØQ R
)
ØØR S
;
ØØS T
adjacentPoints
∞∞ 
.
∞∞ 
Add
∞∞ "
(
∞∞" #
new
∞∞# &
Point
∞∞' ,
(
∞∞, -
piecePosition
∞∞- :
.
∞∞: ;
X
∞∞; <
,
∞∞< =
piecePosition
∞∞> K
.
∞∞K L
Y
∞∞L M
+
∞∞N O
$num
∞∞P Q
)
∞∞Q R
)
∞∞R S
;
∞∞S T
adjacentPoints
±± 
.
±± 
Add
±± "
(
±±" #
new
±±# &
Point
±±' ,
(
±±, -
piecePosition
±±- :
.
±±: ;
X
±±; <
-
±±= >
$num
±±? @
,
±±@ A
piecePosition
±±B O
.
±±O P
Y
±±P Q
)
±±Q R
)
±±R S
;
±±S T
}
≤≤ 
else
≥≥ 
{
¥¥ 
adjacentPoints
µµ 
.
µµ 
Add
µµ "
(
µµ" #
new
µµ# &
Point
µµ' ,
(
µµ, -
piecePosition
µµ- :
.
µµ: ;
X
µµ; <
-
µµ= >
$num
µµ? @
,
µµ@ A
piecePosition
µµB O
.
µµO P
Y
µµP Q
)
µµQ R
)
µµR S
;
µµS T
adjacentPoints
∂∂ 
.
∂∂ 
Add
∂∂ "
(
∂∂" #
new
∂∂# &
Point
∂∂' ,
(
∂∂, -
piecePosition
∂∂- :
.
∂∂: ;
X
∂∂; <
,
∂∂< =
piecePosition
∂∂> K
.
∂∂K L
Y
∂∂L M
-
∂∂N O
$num
∂∂P Q
)
∂∂Q R
)
∂∂R S
;
∂∂S T
adjacentPoints
∑∑ 
.
∑∑ 
Add
∑∑ "
(
∑∑" #
new
∑∑# &
Point
∑∑' ,
(
∑∑, -
piecePosition
∑∑- :
.
∑∑: ;
X
∑∑; <
+
∑∑= >
$num
∑∑? @
,
∑∑@ A
piecePosition
∑∑B O
.
∑∑O P
Y
∑∑P Q
)
∑∑Q R
)
∑∑R S
;
∑∑S T
adjacentPoints
∏∏ 
.
∏∏ 
Add
∏∏ "
(
∏∏" #
new
∏∏# &
Point
∏∏' ,
(
∏∏, -
piecePosition
∏∏- :
.
∏∏: ;
X
∏∏; <
+
∏∏= >
$num
∏∏? @
,
∏∏@ A
piecePosition
∏∏B O
.
∏∏O P
Y
∏∏P Q
+
∏∏R S
$num
∏∏T U
)
∏∏U V
)
∏∏V W
;
∏∏W X
adjacentPoints
ππ 
.
ππ 
Add
ππ "
(
ππ" #
new
ππ# &
Point
ππ' ,
(
ππ, -
piecePosition
ππ- :
.
ππ: ;
X
ππ; <
,
ππ< =
piecePosition
ππ> K
.
ππK L
Y
ππL M
+
ππN O
$num
ππP Q
)
ππQ R
)
ππR S
;
ππS T
adjacentPoints
∫∫ 
.
∫∫ 
Add
∫∫ "
(
∫∫" #
new
∫∫# &
Point
∫∫' ,
(
∫∫, -
piecePosition
∫∫- :
.
∫∫: ;
X
∫∫; <
-
∫∫= >
$num
∫∫? @
,
∫∫@ A
piecePosition
∫∫B O
.
∫∫O P
Y
∫∫P Q
+
∫∫R S
$num
∫∫T U
)
∫∫U V
)
∫∫V W
;
∫∫W X
}
ªª 
return
ºº 
adjacentPoints
ºº !
;
ºº! "
}
ΩΩ 	
private
øø 
List
øø 
<
øø 
Point
øø 
>
øø +
ObtaintAdjacentColliderPoints
øø 9
(
øø9 :
Point
øø: ?
offset
øø@ F
,
øøF G
Point
øøH M
piecePosition
øøN [
)
øø[ \
{
¿¿ 	
List
¡¡ 
<
¡¡ 
Point
¡¡ 
>
¡¡ 
adjacentPoints
¡¡ &
=
¡¡' (
new
¡¡) ,
List
¡¡- 1
<
¡¡1 2
Point
¡¡2 7
>
¡¡7 8
(
¡¡8 9
)
¡¡9 :
;
¡¡: ;
double
¬¬ 
epsilon
¬¬ 
=
¬¬ 
$num
¬¬ #
;
¬¬# $
if
√√ 
(
√√ 
Math
√√ 
.
√√ 
Abs
√√ 
(
√√ 
piecePosition
√√ &
.
√√& '
X
√√' (
%
√√) *
$num
√√+ ,
-
√√- .
$num
√√/ 0
)
√√0 1
<
√√2 3
epsilon
√√4 ;
)
√√; <
{
ƒƒ 
adjacentPoints
≈≈ 
.
≈≈ 
Add
≈≈ "
(
≈≈" #
new
≈≈# &
Point
≈≈' ,
(
≈≈, -
offset
≈≈- 3
.
≈≈3 4
X
≈≈4 5
+
≈≈6 7
$num
≈≈8 9
,
≈≈9 :
offset
≈≈; A
.
≈≈A B
Y
≈≈B C
+
≈≈D E
$num
≈≈F G
)
≈≈G H
)
≈≈H I
;
≈≈I J
adjacentPoints
∆∆ 
.
∆∆ 
Add
∆∆ "
(
∆∆" #
new
∆∆# &
Point
∆∆' ,
(
∆∆, -
offset
∆∆- 3
.
∆∆3 4
X
∆∆4 5
,
∆∆5 6
offset
∆∆7 =
.
∆∆= >
Y
∆∆> ?
+
∆∆@ A
$num
∆∆B C
)
∆∆C D
)
∆∆D E
;
∆∆E F
adjacentPoints
«« 
.
«« 
Add
«« "
(
««" #
new
««# &
Point
««' ,
(
««, -
offset
««- 3
.
««3 4
X
««4 5
-
««6 7
$num
««8 9
,
««9 :
offset
««; A
.
««A B
Y
««B C
+
««D E
$num
««F G
)
««G H
)
««H I
;
««I J
adjacentPoints
»» 
.
»» 
Add
»» "
(
»»" #
new
»»# &
Point
»»' ,
(
»», -
offset
»»- 3
.
»»3 4
X
»»4 5
-
»»6 7
$num
»»8 9
,
»»9 :
offset
»»; A
.
»»A B
Y
»»B C
)
»»C D
)
»»D E
;
»»E F
adjacentPoints
…… 
.
…… 
Add
…… "
(
……" #
new
……# &
Point
……' ,
(
……, -
offset
……- 3
.
……3 4
X
……4 5
,
……5 6
offset
……7 =
.
……= >
Y
……> ?
-
……@ A
$num
……B C
)
……C D
)
……D E
;
……E F
adjacentPoints
   
.
   
Add
   "
(
  " #
new
  # &
Point
  ' ,
(
  , -
offset
  - 3
.
  3 4
X
  4 5
+
  6 7
$num
  8 9
,
  9 :
offset
  ; A
.
  A B
Y
  B C
)
  C D
)
  D E
;
  E F
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
adjacentPoints
ŒŒ 
.
ŒŒ 
Add
ŒŒ "
(
ŒŒ" #
new
ŒŒ# &
Point
ŒŒ' ,
(
ŒŒ, -
offset
ŒŒ- 3
.
ŒŒ3 4
X
ŒŒ4 5
+
ŒŒ6 7
$num
ŒŒ8 9
,
ŒŒ9 :
offset
ŒŒ; A
.
ŒŒA B
Y
ŒŒB C
)
ŒŒC D
)
ŒŒD E
;
ŒŒE F
adjacentPoints
œœ 
.
œœ 
Add
œœ "
(
œœ" #
new
œœ# &
Point
œœ' ,
(
œœ, -
offset
œœ- 3
.
œœ3 4
X
œœ4 5
,
œœ5 6
offset
œœ7 =
.
œœ= >
Y
œœ> ?
+
œœ@ A
$num
œœB C
)
œœC D
)
œœD E
;
œœE F
adjacentPoints
–– 
.
–– 
Add
–– "
(
––" #
new
––# &
Point
––' ,
(
––, -
offset
––- 3
.
––3 4
X
––4 5
-
––6 7
$num
––8 9
,
––9 :
offset
––; A
.
––A B
Y
––B C
)
––C D
)
––D E
;
––E F
adjacentPoints
—— 
.
—— 
Add
—— "
(
——" #
new
——# &
Point
——' ,
(
——, -
offset
——- 3
.
——3 4
X
——4 5
-
——6 7
$num
——8 9
,
——9 :
offset
——; A
.
——A B
Y
——B C
-
——D E
$num
——F G
)
——G H
)
——H I
;
——I J
adjacentPoints
““ 
.
““ 
Add
““ "
(
““" #
new
““# &
Point
““' ,
(
““, -
offset
““- 3
.
““3 4
X
““4 5
,
““5 6
offset
““7 =
.
““= >
Y
““> ?
-
““@ A
$num
““B C
)
““C D
)
““D E
;
““E F
adjacentPoints
”” 
.
”” 
Add
”” "
(
””" #
new
””# &
Point
””' ,
(
””, -
offset
””- 3
.
””3 4
X
””4 5
+
””6 7
$num
””8 9
,
””9 :
offset
””; A
.
””A B
Y
””B C
-
””D E
$num
””F G
)
””G H
)
””H I
;
””I J
}
‘‘ 
return
’’ 
adjacentPoints
’’ !
;
’’! "
}
÷÷ 	
private
ÿÿ 
PointCollection
ÿÿ !
CreateHexagonPoints
ÿÿ  3
(
ÿÿ3 4
double
ÿÿ4 :
size
ÿÿ; ?
)
ÿÿ? @
{
ŸŸ 	
var
⁄⁄ 
points
⁄⁄ 
=
⁄⁄ 
new
⁄⁄ 
PointCollection
⁄⁄ ,
(
⁄⁄, -
)
⁄⁄- .
;
⁄⁄. /
for
€€ 
(
€€ 
int
€€ 
i
€€ 
=
€€ 
$num
€€ 
;
€€ 
i
€€ 
<
€€ 
$num
€€  !
;
€€! "
i
€€# $
++
€€$ &
)
€€& '
{
‹‹ 
double
›› 
angle
›› 
=
›› 
(
››  
i
››  !
*
››" #
$num
››$ &
+
››' (
$num
››) +
)
››+ ,
*
››- .
Math
››/ 3
.
››3 4
PI
››4 6
/
››7 8
$num
››9 <
;
››< =
points
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ 
(
ﬁﬁ 
new
ﬁﬁ 
Point
ﬁﬁ $
(
ﬁﬁ$ %
size
ﬁﬁ% )
*
ﬁﬁ* +
Math
ﬁﬁ, 0
.
ﬁﬁ0 1
Cos
ﬁﬁ1 4
(
ﬁﬁ4 5
angle
ﬁﬁ5 :
)
ﬁﬁ: ;
,
ﬁﬁ; <
size
ﬁﬁ= A
*
ﬁﬁB C
Math
ﬁﬁD H
.
ﬁﬁH I
Sin
ﬁﬁI L
(
ﬁﬁL M
angle
ﬁﬁM R
)
ﬁﬁR S
)
ﬁﬁS T
)
ﬁﬁT U
;
ﬁﬁU V
}
ﬂﬂ 
return
‡‡ 
points
‡‡ 
;
‡‡ 
}
·· 	
private
„„ 
void
„„ 
PlacePieceOnCell
„„ %
(
„„% &
Polygon
„„& -
cell
„„. 2
)
„„2 3
{
‰‰ 	
if
ÂÂ 
(
ÂÂ 
cell
ÂÂ 
!=
ÂÂ 
null
ÂÂ 
)
ÂÂ 
{
ÊÊ 
foreach
ÁÁ 
(
ÁÁ 
var
ÁÁ 
polygon
ÁÁ $
in
ÁÁ% '!
canva_GameBoardGrid
ÁÁ( ;
.
ÁÁ; <
Children
ÁÁ< D
.
ÁÁD E
OfType
ÁÁE K
<
ÁÁK L
Polygon
ÁÁL S
>
ÁÁS T
(
ÁÁT U
)
ÁÁU V
)
ÁÁV W
{
ËË 
polygon
ÈÈ 
.
ÈÈ 
	IsEnabled
ÈÈ %
=
ÈÈ& '
false
ÈÈ( -
;
ÈÈ- .
}
ÍÍ 
_selectedPiece
ÎÎ 
.
ÎÎ 
Position
ÎÎ '
=
ÎÎ( )
(
ÎÎ* +
Point
ÎÎ+ 0
)
ÎÎ0 1
cell
ÎÎ1 5
.
ÎÎ5 6
Tag
ÎÎ6 9
;
ÎÎ9 :
Image
ÏÏ 

pieceImage
ÏÏ  
=
ÏÏ! "!
ObtainImageCreation
ÏÏ# 6
(
ÏÏ6 7
cell
ÏÏ7 ;
,
ÏÏ; <
_selectedPiece
ÏÏ= K
)
ÏÏK L
;
ÏÏL M!
canva_GameBoardGrid
ÌÌ #
.
ÌÌ# $
Children
ÌÌ$ ,
.
ÌÌ, -
Add
ÌÌ- 0
(
ÌÌ0 1

pieceImage
ÌÌ1 ;
)
ÌÌ; <
;
ÌÌ< =
_board
ÓÓ 
[
ÓÓ 
_selectedPiece
ÓÓ %
.
ÓÓ% &
Position
ÓÓ& .
]
ÓÓ. /
=
ÓÓ0 1
_selectedPiece
ÓÓ2 @
;
ÓÓ@ A#
RemovePieceFromPlayer
ÔÔ %
(
ÔÔ% &
_selectedPiece
ÔÔ& 4
)
ÔÔ4 5
;
ÔÔ5 6'
SendPiecePositionToServer
 )
(
) *
_selectedPiece
* 8
)
8 9
;
9 :
_lastPlacedCell
ÒÒ 
=
ÒÒ  !
cell
ÒÒ" &
;
ÒÒ& '!
_isFirstPiecePlaced
ÚÚ #
=
ÚÚ$ %
true
ÚÚ& *
;
ÚÚ* +
_selectedPiece
ÛÛ 
=
ÛÛ  
null
ÛÛ! %
;
ÛÛ% &
ResetHighlights
ÙÙ 
(
ÙÙ  
)
ÙÙ  !
;
ÙÙ! "
}
ıı 
}
ˆˆ 	
private
¯¯ 
void
¯¯ +
UnlockPlacesWhereThereIsPiece
¯¯ 2
(
¯¯2 3
)
¯¯3 4
{
˘˘ 	
foreach
˙˙ 
(
˙˙ 
var
˙˙ 
pieceInBoard
˙˙ %
in
˙˙& (
_board
˙˙) /
)
˙˙/ 0
{
˚˚ 
Point
¸¸ 
placeToUnlock
¸¸ #
=
¸¸$ %
pieceInBoard
¸¸& 2
.
¸¸2 3
Key
¸¸3 6
;
¸¸6 7
if
˝˝ 
(
˝˝ 
_cellDictionary
˝˝ #
.
˝˝# $
ContainsKey
˝˝$ /
(
˝˝/ 0
placeToUnlock
˝˝0 =
)
˝˝= >
&&
˝˝? A
pieceInBoard
˝˝B N
.
˝˝N O
Value
˝˝O T
.
˝˝T U

PlayerName
˝˝U _
==
˝˝` b"
UserProfileSingleton
˝˝c w
.
˝˝w x
username˝˝x Ä
)˝˝Ä Å
{
˛˛ 
_cellDictionary
ˇˇ #
[
ˇˇ# $
placeToUnlock
ˇˇ$ 1
]
ˇˇ1 2
.
ˇˇ2 3
	IsEnabled
ˇˇ3 <
=
ˇˇ= >
true
ˇˇ? C
;
ˇˇC D
}
Ä	Ä	 
}
Å	Å	 
List
Ç	Ç	 
<
Ç	Ç	 
Image
Ç	Ç	 
>
Ç	Ç	 
imagesOnBoard
Ç	Ç	 %
=
Ç	Ç	& '!
canva_GameBoardGrid
Ç	Ç	( ;
.
Ç	Ç	; <
Children
Ç	Ç	< D
.
Ç	Ç	D E
OfType
Ç	Ç	E K
<
Ç	Ç	K L
Image
Ç	Ç	L Q
>
Ç	Ç	Q R
(
Ç	Ç	R S
)
Ç	Ç	S T
.
Ç	Ç	T U
ToList
Ç	Ç	U [
(
Ç	Ç	[ \
)
Ç	Ç	\ ]
;
Ç	Ç	] ^
foreach
É	É	 
(
É	É	 
Image
É	É	 
imageOnBoard
É	É	 &
in
É	É	' )
imagesOnBoard
É	É	* 7
)
É	É	7 8
{
Ñ	Ñ	 
	GamePiece
Ö	Ö	 
piece
Ö	Ö	 
=
Ö	Ö	  !
(
Ö	Ö	" #
	GamePiece
Ö	Ö	# ,
)
Ö	Ö	, -
imageOnBoard
Ö	Ö	- 9
.
Ö	Ö	9 :
Tag
Ö	Ö	: =
;
Ö	Ö	= >
if
Ü	Ü	 
(
Ü	Ü	 
piece
Ü	Ü	 
.
Ü	Ü	 

PlayerName
Ü	Ü	 $
==
Ü	Ü	% '"
UserProfileSingleton
Ü	Ü	( <
.
Ü	Ü	< =
username
Ü	Ü	= E
)
Ü	Ü	E F
{
á	á	 
imageOnBoard
à	à	  
.
à	à	  !
	IsEnabled
à	à	! *
=
à	à	+ ,
true
à	à	- 1
;
à	à	1 2
}
â	â	 
}
ä	ä	 
}
ã	ã	 	
private
ç	ç	 
void
ç	ç	 '
SendPiecePositionToServer
ç	ç	 .
(
ç	ç	. /
Logic
ç	ç	/ 4
.
ç	ç	4 5
	GamePiece
ç	ç	5 >
	gamePiece
ç	ç	? H
)
ç	ç	H I
{
é	é	 	
LoggerManager
è	è	 
logger
è	è	  
=
è	è	! "
new
è	è	# &
LoggerManager
è	è	' 4
(
è	è	4 5
this
è	è	5 9
.
è	è	9 :
GetType
è	è	: A
(
è	è	A B
)
è	è	B C
)
è	è	C D
;
è	è	D E
try
ê	ê	 
{
ë	ë	 
	HiveProxy
í	í	 
.
í	í	 
Piece
í	í	 

pieceMoved
í	í	  *
=
í	í	+ ,
new
í	í	- 0
	HiveProxy
í	í	1 :
.
í	í	: ;
Piece
í	í	; @
(
í	í	@ A
)
í	í	A B
{
ì	ì	 
name
î	î	 
=
î	î	 
	gamePiece
î	î	 $
.
î	î	$ %
Piece
î	î	% *
.
î	î	* +
Name
î	î	+ /
,
î	î	/ 0

playerName
ï	ï	 
=
ï	ï	  
	gamePiece
ï	ï	! *
.
ï	ï	* +
Piece
ï	ï	+ 0
.
ï	ï	0 1

PlayerName
ï	ï	1 ;
,
ï	ï	; <
position
ñ	ñ	 
=
ñ	ñ	 
	gamePiece
ñ	ñ	 (
.
ñ	ñ	( )
Piece
ñ	ñ	) .
.
ñ	ñ	. /
Position
ñ	ñ	/ 7
}
ó	ó	 
;
ó	ó	 
	HiveProxy
ò	ò	 
.
ò	ò	 
GamePice
ò	ò	 "
gamePieceMoved
ò	ò	# 1
=
ò	ò	2 3
new
ò	ò	4 7
	HiveProxy
ò	ò	8 A
.
ò	ò	A B
GamePice
ò	ò	B J
(
ò	ò	J K
)
ò	ò	K L
{
ô	ô	 

playerName
ö	ö	 
=
ö	ö	  
	gamePiece
ö	ö	! *
.
ö	ö	* +

PlayerName
ö	ö	+ 5
,
ö	ö	5 6
piece
õ	õ	 
=
õ	õ	 

pieceMoved
õ	õ	 &
,
õ	õ	& '
	imagePath
ú	ú	 
=
ú	ú	 
	gamePiece
ú	ú	  )
.
ú	ú	) *
	ImagePath
ú	ú	* 3
,
ú	ú	3 4
position
ù	ù	 
=
ù	ù	 
	gamePiece
ù	ù	 (
.
ù	ù	( )
Position
ù	ù	) 1
,
ù	ù	1 2
numberOfPiece
û	û	 !
=
û	û	" #
	gamePiece
û	û	$ -
.
û	û	- .
PieceNumber
û	û	. 9
,
û	û	9 :
}
ü	ü	 
;
ü	ü	 
UserSession
†	†	 
userSession
†	†	 '
=
†	†	( )
new
†	†	* -
UserSession
†	†	. 9
(
†	†	9 :
)
†	†	: ;
{
°	°	 
	idAccount
¢	¢	 
=
¢	¢	 "
UserProfileSingleton
¢	¢	  4
.
¢	¢	4 5
	idAccount
¢	¢	5 >
,
¢	¢	> ?
username
£	£	 
=
£	£	 "
UserProfileSingleton
£	£	 3
.
£	£	3 4
username
£	£	4 <
,
£	£	< =
	codeMatch
§	§	 
=
§	§	 
MatchSingleton
§	§	  .
.
§	§	. /
	codeMatch
§	§	/ 8
}
•	•	 
;
•	•	  
_gameManagerClient
¶	¶	 "
.
¶	¶	" #
	MovePiece
¶	¶	# ,
(
¶	¶	, -
gamePieceMoved
¶	¶	- ;
,
¶	¶	; <
userSession
¶	¶	= H
,
¶	¶	H I
userSession
¶	¶	J U
.
¶	¶	U V
	codeMatch
¶	¶	V _
)
¶	¶	_ `
;
¶	¶	` a 
_gameManagerClient
ß	ß	 "
.
ß	ß	" #
SetTurns
ß	ß	# +
(
ß	ß	+ ,
userSession
ß	ß	, 7
,
ß	ß	7 8
userSession
ß	ß	9 D
.
ß	ß	D E
	codeMatch
ß	ß	E N
)
ß	ß	N O
;
ß	ß	O P
}
®	®	 
catch
©	©	 
(
©	©	 '
EndpointNotFoundException
©	©	 ,
endPointException
©	©	- >
)
©	©	> ?
{
™	™	 
logger
´	´	 
.
´	´	 
LogFatal
´	´	 
(
´	´	  
endPointException
´	´	  1
)
´	´	1 2
;
´	´	2 3
DialogManager
¨	¨	 
.
¨	¨	 #
ShowErrorMessageAlert
¨	¨	 3
(
¨	¨	3 4

Properties
¨	¨	4 >
.
¨	¨	> ?
	Resources
¨	¨	? H
.
¨	¨	H I%
dialogEndPointException
¨	¨	I `
)
¨	¨	` a
;
¨	¨	a b
ReturnToLoginView
≠	≠	 !
(
≠	≠	! "
)
≠	≠	" #
;
≠	≠	# $
}
Æ	Æ	 
catch
Ø	Ø	 
(
Ø	Ø	 
TimeoutException
Ø	Ø	 #
timeOutException
Ø	Ø	$ 4
)
Ø	Ø	4 5
{
∞	∞	 
logger
±	±	 
.
±	±	 
LogWarn
±	±	 
(
±	±	 
timeOutException
±	±	 /
)
±	±	/ 0
;
±	±	0 1
DialogManager
≤	≤	 
.
≤	≤	 #
ShowErrorMessageAlert
≤	≤	 3
(
≤	≤	3 4

Properties
≤	≤	4 >
.
≤	≤	> ?
	Resources
≤	≤	? H
.
≤	≤	H I$
dialogTimeOutException
≤	≤	I _
)
≤	≤	_ `
;
≤	≤	` a
ReturnToLoginView
≥	≥	 !
(
≥	≥	! "
)
≥	≥	" #
;
≥	≥	# $
}
¥	¥	 
catch
µ	µ	 
(
µ	µ	 $
CommunicationException
µ	µ	 )$
communicationException
µ	µ	* @
)
µ	µ	@ A
{
∂	∂	 
logger
∑	∑	 
.
∑	∑	 
LogFatal
∑	∑	 
(
∑	∑	  $
communicationException
∑	∑	  6
)
∑	∑	6 7
;
∑	∑	7 8
DialogManager
∏	∏	 
.
∏	∏	 #
ShowErrorMessageAlert
∏	∏	 3
(
∏	∏	3 4

Properties
∏	∏	4 >
.
∏	∏	> ?
	Resources
∏	∏	? H
.
∏	∏	H I)
dialogComunicationException
∏	∏	I d
)
∏	∏	d e
;
∏	∏	e f
ReturnToLoginView
π	π	 !
(
π	π	! "
)
π	π	" #
;
π	π	# $
}
∫	∫	 
}
ª	ª	 	
private
Ω	Ω	 
void
Ω	Ω	 #
RemovePieceFromPlayer
Ω	Ω	 *
(
Ω	Ω	* +
	GamePiece
Ω	Ω	+ 4
piece
Ω	Ω	5 :
)
Ω	Ω	: ;
{
æ	æ	 	
if
ø	ø	 
(
ø	ø	 
_player1Pieces
ø	ø	 
.
ø	ø	 
Contains
ø	ø	 '
(
ø	ø	' (
piece
ø	ø	( -
)
ø	ø	- .
)
ø	ø	. /
{
¿	¿	 
foreach
¡	¡	 
(
¡	¡	 
var
¡	¡	 
child
¡	¡	 "
in
¡	¡	# %!
stckp_Player1Pieces
¡	¡	& 9
.
¡	¡	9 :
Children
¡	¡	: B
.
¡	¡	B C
OfType
¡	¡	C I
<
¡	¡	I J
Image
¡	¡	J O
>
¡	¡	O P
(
¡	¡	P Q
)
¡	¡	Q R
)
¡	¡	R S
{
¬	¬	 
if
√	√	 
(
√	√	 
child
√	√	 
.
√	√	 
Tag
√	√	 !
==
√	√	" $
piece
√	√	% *
)
√	√	* +
{
ƒ	ƒ	 !
stckp_Player1Pieces
≈	≈	 +
.
≈	≈	+ ,
Children
≈	≈	, 4
.
≈	≈	4 5
Remove
≈	≈	5 ;
(
≈	≈	; <
child
≈	≈	< A
)
≈	≈	A B
;
≈	≈	B C
break
∆	∆	 
;
∆	∆	 
}
«	«	 
}
»	»	 
}
…	…	 
else
 	 	 
if
 	 	 
(
 	 	 
_player2Pieces
 	 	 #
.
 	 	# $
Contains
 	 	$ ,
(
 	 	, -
piece
 	 	- 2
)
 	 	2 3
)
 	 	3 4
{
À	À	 
foreach
Ã	Ã	 
(
Ã	Ã	 
var
Ã	Ã	 
child
Ã	Ã	 "
in
Ã	Ã	# %!
stckp_Player2Pieces
Ã	Ã	& 9
.
Ã	Ã	9 :
Children
Ã	Ã	: B
.
Ã	Ã	B C
OfType
Ã	Ã	C I
<
Ã	Ã	I J
Image
Ã	Ã	J O
>
Ã	Ã	O P
(
Ã	Ã	P Q
)
Ã	Ã	Q R
)
Ã	Ã	R S
{
Õ	Õ	 
if
Œ	Œ	 
(
Œ	Œ	 
child
Œ	Œ	 
.
Œ	Œ	 
Tag
Œ	Œ	 !
==
Œ	Œ	" $
piece
Œ	Œ	% *
)
Œ	Œ	* +
{
œ	œ	 !
stckp_Player2Pieces
–	–	 +
.
–	–	+ ,
Children
–	–	, 4
.
–	–	4 5
Remove
–	–	5 ;
(
–	–	; <
child
–	–	< A
)
–	–	A B
;
–	–	B C
break
—	—	 
;
—	—	 
}
“	“	 
}
”	”	 
}
‘	‘	 
}
’	’	 	
private
◊	◊	 
void
◊	◊	 
ResetHighlights
◊	◊	 $
(
◊	◊	$ %
)
◊	◊	% &
{
ÿ	ÿ	 	
_isBeetleMoved
Ÿ	Ÿ	 
=
Ÿ	Ÿ	 
false
Ÿ	Ÿ	 "
;
Ÿ	Ÿ	" #
foreach
⁄	⁄	 
(
⁄	⁄	 
	UIElement
⁄	⁄	 
element
⁄	⁄	 &
in
⁄	⁄	' )!
canva_GameBoardGrid
⁄	⁄	* =
.
⁄	⁄	= >
Children
⁄	⁄	> F
)
⁄	⁄	F G
{
€	€	 
if
‹	‹	 
(
‹	‹	 
element
‹	‹	 
is
‹	‹	 
Polygon
‹	‹	 &
cell
‹	‹	' +
)
‹	‹	+ ,
{
›	›	 
cell
ﬁ	ﬁ	 
.
ﬁ	ﬁ	 
Fill
ﬁ	ﬁ	 
=
ﬁ	ﬁ	 
Brushes
ﬁ	ﬁ	  '
.
ﬁ	ﬁ	' (
Transparent
ﬁ	ﬁ	( 3
;
ﬁ	ﬁ	3 4
cell
ﬂ	ﬂ	 
.
ﬂ	ﬂ	 
	MouseDown
ﬂ	ﬂ	 "
-=
ﬂ	ﬂ	# %
Cell_MouseDown
ﬂ	ﬂ	& 4
;
ﬂ	ﬂ	4 5
cell
‡	‡	 
.
‡	‡	 
	MouseDown
‡	‡	 "
-=
‡	‡	# %.
 PlacePieceThatIsInGame_MouseDown
‡	‡	& F
;
‡	‡	F G
}
·	·	 
}
‚	‚	 
foreach
„	„	 
(
„	„	 
var
„	„	 
cell
„	„	 
in
„	„	  
_cellDictionary
„	„	! 0
)
„	„	0 1
{
‰	‰	 
cell
Â	Â	 
.
Â	Â	 
Value
Â	Â	 
.
Â	Â	 
	IsEnabled
Â	Â	 $
=
Â	Â	% &
false
Â	Â	' ,
;
Â	Â	, -
}
Ê	Ê	 
foreach
Á	Á	 
(
Á	Á	 
	UIElement
Á	Á	 
element
Á	Á	 &
in
Á	Á	' )!
canva_GameBoardGrid
Á	Á	* =
.
Á	Á	= >
Children
Á	Á	> F
)
Á	Á	F G
{
Ë	Ë	 
if
È	È	 
(
È	È	 
element
È	È	 
is
È	È	 
Image
È	È	 $
image
È	È	% *
&&
È	È	+ -
image
È	È	. 3
.
È	È	3 4
Tag
È	È	4 7
is
È	È	8 :
Logic
È	È	; @
.
È	È	@ A
	GamePiece
È	È	A J
	gamePiece
È	È	K T
&&
È	È	U W
	gamePiece
È	È	X a
.
È	È	a b

PlayerName
È	È	b l
!=
È	È	m o#
UserProfileSingletonÈ	È	p Ñ
.È	È	Ñ Ö
usernameÈ	È	Ö ç
)È	È	ç é
{
Í	Í	 
image
Î	Î	 
.
Î	Î	 
	IsEnabled
Î	Î	 #
=
Î	Î	$ %
false
Î	Î	& +
;
Î	Î	+ ,
image
Ï	Ï	 
.
Ï	Ï	 
	MouseDown
Ï	Ï	 #
-=
Ï	Ï	$ &%
PieceSelected_MouseDown
Ï	Ï	' >
;
Ï	Ï	> ?
}
Ì	Ì	 
}
Ó	Ó	 
}
Ô	Ô	 	
private
Ò	Ò	 
void
Ò	Ò	 
Image_MouseDown
Ò	Ò	 $
(
Ò	Ò	$ %
object
Ò	Ò	% +
sender
Ò	Ò	, 2
,
Ò	Ò	2 3"
MouseButtonEventArgs
Ò	Ò	4 H
e
Ò	Ò	I J
)
Ò	Ò	J K
{
Ú	Ú	 	
if
Û	Û	 
(
Û	Û	 
!
Û	Û	 
_IsMatchFinished
Û	Û	 !
)
Û	Û	! "
{
Ù	Ù	 
if
ı	ı	 
(
ı	ı	 
DialogManager
ı	ı	 !
.
ı	ı	! "*
ShowConfirmationMessageAlert
ı	ı	" >
(
ı	ı	> ?

Properties
ı	ı	? I
.
ı	ı	I J
	Resources
ı	ı	J S
.
ı	ı	S T1
#dialogManagerConfirmationLeaveMatch
ı	ı	T w
)
ı	ı	w x
)
ı	ı	x y
{
ˆ	ˆ	 
if
˜	˜	 
(
˜	˜	 "
UserProfileSingleton
˜	˜	 ,
.
˜	˜	, -
	idAccount
˜	˜	- 6
==
˜	˜	7 9
	Constants
˜	˜	: C
.
˜	˜	C D
DefaultGuestId
˜	˜	D R
)
˜	˜	R S
{
¯	¯	 #
DisconnectGuestPlayer
˘	˘	 -
(
˘	˘	- .
)
˘	˘	. /
;
˘	˘	/ 0
}
˙	˙	 
else
˚	˚	 
{
¸	¸	 $
DisconnectNormalPlayer
˝	˝	 .
(
˝	˝	. /
)
˝	˝	/ 0
;
˝	˝	0 1
}
˛	˛	 
}
ˇ	ˇ	 
}
Ä
Ä
 
else
Å
Å
 
{
Ç
Ç
 
	Constants
É
É
 
.
É
É
 
	IsInMatch
É
É
 #
=
É
É
$ %
false
É
É
& +
;
É
É
+ , 
LeaveFinishedMatch
Ñ
Ñ
 "
(
Ñ
Ñ
" #
)
Ñ
Ñ
# $
;
Ñ
Ñ
$ %
}
Ö
Ö
 
}
á
á
 	
private
â
â
 
void
â
â
  
LeaveFinishedMatch
â
â
 '
(
â
â
' (
)
â
â
( )
{
ä
ä
 	
if
ã
ã
 
(
ã
ã
 "
UserProfileSingleton
ã
ã
 $
.
ã
ã
$ %
	idAccount
ã
ã
% .
!=
ã
ã
/ 1
	Constants
ã
ã
2 ;
.
ã
ã
; <
DefaultGuestId
ã
ã
< J
)
ã
ã
J K
{
å
å
 
LeavePlayer
ç
ç
 
(
ç
ç
 
)
ç
ç
 
;
ç
ç
 
}
é
é
 
else
è
è
 
{
ê
ê
 
LeaveGuestPlayer
ë
ë
  
(
ë
ë
  !
)
ë
ë
! "
;
ë
ë
" #
}
í
í
 
}
ì
ì
 	
private
ï
ï
 
void
ï
ï
 
LeavePlayer
ï
ï
  
(
ï
ï
  !
)
ï
ï
! "
{
ñ
ñ
 	
LoggerManager
ó
ó
 
logger
ó
ó
  
=
ó
ó
! "
new
ó
ó
# &
LoggerManager
ó
ó
' 4
(
ó
ó
4 5
this
ó
ó
5 9
.
ó
ó
9 :
GetType
ó
ó
: A
(
ó
ó
A B
)
ó
ó
B C
)
ó
ó
C D
;
ó
ó
D E
try
ò
ò
 
{
ô
ô
 
UserSession
ö
ö
 
session
ö
ö
 #
=
ö
ö
$ %
new
ö
ö
& )
UserSession
ö
ö
* 5
(
ö
ö
5 6
)
ö
ö
6 7
{
õ
õ
 
	idAccount
ú
ú
 
=
ú
ú
 "
UserProfileSingleton
ú
ú
  4
.
ú
ú
4 5
	idAccount
ú
ú
5 >
,
ú
ú
> ?
username
ù
ù
 
=
ù
ù
 "
UserProfileSingleton
ù
ù
 3
.
ù
ù
3 4
username
ù
ù
4 <
,
ù
ù
< =
	codeMatch
û
û
 
=
û
û
 
MatchSingleton
û
û
  .
.
û
û
. /
	codeMatch
û
û
/ 8
,
û
û
8 9
}
ü
ü
 
;
ü
ü
  
_gameManagerClient
†
†
 "
.
†
†
" # 
LeaveMatchFinished
†
†
# 5
(
†
†
5 6
session
†
†
6 =
.
†
†
= >
	codeMatch
†
†
> G
,
†
†
G H
session
†
†
I P
)
†
†
P Q
;
†
†
Q R
GoToMainView
°
°
 
(
°
°
 
)
°
°
 
;
°
°
 
}
¢
¢
 
catch
£
£
 
(
£
£
 '
EndpointNotFoundException
£
£
 ,
endPointException
£
£
- >
)
£
£
> ?
{
§
§
 
logger
•
•
 
.
•
•
 
LogFatal
•
•
 
(
•
•
  
endPointException
•
•
  1
)
•
•
1 2
;
•
•
2 3
DialogManager
¶
¶
 
.
¶
¶
 #
ShowErrorMessageAlert
¶
¶
 3
(
¶
¶
3 4

Properties
¶
¶
4 >
.
¶
¶
> ?
	Resources
¶
¶
? H
.
¶
¶
H I%
dialogEndPointException
¶
¶
I `
)
¶
¶
` a
;
¶
¶
a b
ReturnToLoginView
ß
ß
 !
(
ß
ß
! "
)
ß
ß
" #
;
ß
ß
# $
}
®
®
 
catch
©
©
 
(
©
©
 
TimeoutException
©
©
 #
timeOutException
©
©
$ 4
)
©
©
4 5
{
™
™
 
logger
´
´
 
.
´
´
 
LogWarn
´
´
 
(
´
´
 
timeOutException
´
´
 /
)
´
´
/ 0
;
´
´
0 1
DialogManager
¨
¨
 
.
¨
¨
 #
ShowErrorMessageAlert
¨
¨
 3
(
¨
¨
3 4

Properties
¨
¨
4 >
.
¨
¨
> ?
	Resources
¨
¨
? H
.
¨
¨
H I$
dialogTimeOutException
¨
¨
I _
)
¨
¨
_ `
;
¨
¨
` a
}
≠
≠
 
catch
Æ
Æ
 
(
Æ
Æ
 $
CommunicationException
Æ
Æ
 )$
communicationException
Æ
Æ
* @
)
Æ
Æ
@ A
{
Ø
Ø
 
logger
∞
∞
 
.
∞
∞
 
LogFatal
∞
∞
 
(
∞
∞
  $
communicationException
∞
∞
  6
)
∞
∞
6 7
;
∞
∞
7 8
DialogManager
±
±
 
.
±
±
 #
ShowErrorMessageAlert
±
±
 3
(
±
±
3 4

Properties
±
±
4 >
.
±
±
> ?
	Resources
±
±
? H
.
±
±
H I)
dialogComunicationException
±
±
I d
)
±
±
d e
;
±
±
e f
ReturnToLoginView
≤
≤
 !
(
≤
≤
! "
)
≤
≤
" #
;
≤
≤
# $
}
≥
≥
 
}
¥
¥
 	
private
∂
∂
 
void
∂
∂
 
LeaveGuestPlayer
∂
∂
 %
(
∂
∂
% &
)
∂
∂
& '
{
∑
∑
 	
LoggerManager
∏
∏
 
logger
∏
∏
  
=
∏
∏
! "
new
∏
∏
# &
LoggerManager
∏
∏
' 4
(
∏
∏
4 5
this
∏
∏
5 9
.
∏
∏
9 :
GetType
∏
∏
: A
(
∏
∏
A B
)
∏
∏
B C
)
∏
∏
C D
;
∏
∏
D E
try
π
π
 
{
∫
∫
 
	HiveProxy
ª
ª
 
.
ª
ª
 &
UserSessionManagerClient
ª
ª
 2&
userSessionManagerClient
ª
ª
3 K
=
ª
ª
L M
new
ª
ª
N Q&
UserSessionManagerClient
ª
ª
R j
(
ª
ª
j k
)
ª
ª
k l
;
ª
ª
l m
UserSession
º
º
 
session
º
º
 #
=
º
º
$ %
new
º
º
& )
UserSession
º
º
* 5
(
º
º
5 6
)
º
º
6 7
{
Ω
Ω
 
	idAccount
æ
æ
 
=
æ
æ
 "
UserProfileSingleton
æ
æ
  4
.
æ
æ
4 5
	idAccount
æ
æ
5 >
,
æ
æ
> ?
username
ø
ø
 
=
ø
ø
 "
UserProfileSingleton
ø
ø
 3
.
ø
ø
3 4
username
ø
ø
4 <
,
ø
ø
< =
	codeMatch
¿
¿
 
=
¿
¿
 
MatchSingleton
¿
¿
  .
.
¿
¿
. /
	codeMatch
¿
¿
/ 8
,
¿
¿
8 9
}
¡
¡
 
;
¡
¡
  
_gameManagerClient
¬
¬
 "
.
¬
¬
" # 
LeaveMatchFinished
¬
¬
# 5
(
¬
¬
5 6
session
¬
¬
6 =
.
¬
¬
= >
	codeMatch
¬
¬
> G
,
¬
¬
G H
session
¬
¬
I P
)
¬
¬
P Q
;
¬
¬
Q R&
userSessionManagerClient
√
√
 (
.
√
√
( )

Disconnect
√
√
) 3
(
√
√
3 4
session
√
√
4 ;
,
√
√
; <
false
√
√
= B
)
√
√
B C
;
√
√
C D
ReturnToLoginView
ƒ
ƒ
 !
(
ƒ
ƒ
! "
)
ƒ
ƒ
" #
;
ƒ
ƒ
# $
}
≈
≈
 
catch
∆
∆
 
(
∆
∆
 '
EndpointNotFoundException
∆
∆
 ,
endPointException
∆
∆
- >
)
∆
∆
> ?
{
«
«
 
logger
»
»
 
.
»
»
 
LogFatal
»
»
 
(
»
»
  
endPointException
»
»
  1
)
»
»
1 2
;
»
»
2 3
DialogManager
…
…
 
.
…
…
 #
ShowErrorMessageAlert
…
…
 3
(
…
…
3 4

Properties
…
…
4 >
.
…
…
> ?
	Resources
…
…
? H
.
…
…
H I%
dialogEndPointException
…
…
I `
)
…
…
` a
;
…
…
a b
ReturnToLoginView
 
 
 !
(
 
 
! "
)
 
 
" #
;
 
 
# $
}
À
À
 
catch
Ã
Ã
 
(
Ã
Ã
 
TimeoutException
Ã
Ã
 #
timeOutException
Ã
Ã
$ 4
)
Ã
Ã
4 5
{
Õ
Õ
 
logger
Œ
Œ
 
.
Œ
Œ
 
LogWarn
Œ
Œ
 
(
Œ
Œ
 
timeOutException
Œ
Œ
 /
)
Œ
Œ
/ 0
;
Œ
Œ
0 1
DialogManager
œ
œ
 
.
œ
œ
 #
ShowErrorMessageAlert
œ
œ
 3
(
œ
œ
3 4

Properties
œ
œ
4 >
.
œ
œ
> ?
	Resources
œ
œ
? H
.
œ
œ
H I$
dialogTimeOutException
œ
œ
I _
)
œ
œ
_ `
;
œ
œ
` a
}
–
–
 
catch
—
—
 
(
—
—
 $
CommunicationException
—
—
 )$
communicationException
—
—
* @
)
—
—
@ A
{
“
“
 
logger
”
”
 
.
”
”
 
LogFatal
”
”
 
(
”
”
  $
communicationException
”
”
  6
)
”
”
6 7
;
”
”
7 8
DialogManager
‘
‘
 
.
‘
‘
 #
ShowErrorMessageAlert
‘
‘
 3
(
‘
‘
3 4

Properties
‘
‘
4 >
.
‘
‘
> ?
	Resources
‘
‘
? H
.
‘
‘
H I)
dialogComunicationException
‘
‘
I d
)
‘
‘
d e
;
‘
‘
e f
ReturnToLoginView
’
’
 !
(
’
’
! "
)
’
’
" #
;
’
’
# $
}
÷
÷
 
}
◊
◊
 	
private
Ÿ
Ÿ
 
void
Ÿ
Ÿ
 #
DisconnectGuestPlayer
Ÿ
Ÿ
 *
(
Ÿ
Ÿ
* +
)
Ÿ
Ÿ
+ ,
{
⁄
⁄
 	
LoggerManager
€
€
 
logger
€
€
  
=
€
€
! "
new
€
€
# &
LoggerManager
€
€
' 4
(
€
€
4 5
this
€
€
5 9
.
€
€
9 :
GetType
€
€
: A
(
€
€
A B
)
€
€
B C
)
€
€
C D
;
€
€
D E
try
‹
‹
 
{
›
›
 
	HiveProxy
ﬁ
ﬁ
 
.
ﬁ
ﬁ
 &
UserSessionManagerClient
ﬁ
ﬁ
 2&
userSessionManagerClient
ﬁ
ﬁ
3 K
=
ﬁ
ﬁ
L M
new
ﬁ
ﬁ
N Q&
UserSessionManagerClient
ﬁ
ﬁ
R j
(
ﬁ
ﬁ
j k
)
ﬁ
ﬁ
k l
;
ﬁ
ﬁ
l m
UserSession
ﬂ
ﬂ
 
session
ﬂ
ﬂ
 #
=
ﬂ
ﬂ
$ %
new
ﬂ
ﬂ
& )
UserSession
ﬂ
ﬂ
* 5
(
ﬂ
ﬂ
5 6
)
ﬂ
ﬂ
6 7
{
‡
‡
 
	idAccount
·
·
 
=
·
·
 "
UserProfileSingleton
·
·
  4
.
·
·
4 5
	idAccount
·
·
5 >
,
·
·
> ?
username
‚
‚
 
=
‚
‚
 "
UserProfileSingleton
‚
‚
 3
.
‚
‚
3 4
username
‚
‚
4 <
,
‚
‚
< =
	codeMatch
„
„
 
=
„
„
 
MatchSingleton
„
„
  .
.
„
„
. /
	codeMatch
„
„
/ 8
,
„
„
8 9
}
‰
‰
 
;
‰
‰
  
_gameManagerClient
Â
Â
 "
.
Â
Â
" #
LeaveTheGame
Â
Â
# /
(
Â
Â
/ 0
session
Â
Â
0 7
,
Â
Â
7 8
session
Â
Â
9 @
.
Â
Â
@ A
	codeMatch
Â
Â
A J
)
Â
Â
J K
;
Â
Â
K L&
userSessionManagerClient
Ê
Ê
 (
.
Ê
Ê
( )

Disconnect
Ê
Ê
) 3
(
Ê
Ê
3 4
session
Ê
Ê
4 ;
,
Ê
Ê
; <
false
Ê
Ê
= B
)
Ê
Ê
B C
;
Ê
Ê
C D
ReturnToLoginView
Á
Á
 !
(
Á
Á
! "
)
Á
Á
" #
;
Á
Á
# $
}
Ë
Ë
 
catch
È
È
 
(
È
È
 '
EndpointNotFoundException
È
È
 ,
endPointException
È
È
- >
)
È
È
> ?
{
Í
Í
 
logger
Î
Î
 
.
Î
Î
 
LogFatal
Î
Î
 
(
Î
Î
  
endPointException
Î
Î
  1
)
Î
Î
1 2
;
Î
Î
2 3
DialogManager
Ï
Ï
 
.
Ï
Ï
 #
ShowErrorMessageAlert
Ï
Ï
 3
(
Ï
Ï
3 4

Properties
Ï
Ï
4 >
.
Ï
Ï
> ?
	Resources
Ï
Ï
? H
.
Ï
Ï
H I%
dialogEndPointException
Ï
Ï
I `
)
Ï
Ï
` a
;
Ï
Ï
a b
ReturnToLoginView
Ì
Ì
 !
(
Ì
Ì
! "
)
Ì
Ì
" #
;
Ì
Ì
# $
}
Ó
Ó
 
catch
Ô
Ô
 
(
Ô
Ô
 
TimeoutException
Ô
Ô
 #
timeOutException
Ô
Ô
$ 4
)
Ô
Ô
4 5
{


 
logger
Ò
Ò
 
.
Ò
Ò
 
LogWarn
Ò
Ò
 
(
Ò
Ò
 
timeOutException
Ò
Ò
 /
)
Ò
Ò
/ 0
;
Ò
Ò
0 1
DialogManager
Ú
Ú
 
.
Ú
Ú
 #
ShowErrorMessageAlert
Ú
Ú
 3
(
Ú
Ú
3 4

Properties
Ú
Ú
4 >
.
Ú
Ú
> ?
	Resources
Ú
Ú
? H
.
Ú
Ú
H I$
dialogTimeOutException
Ú
Ú
I _
)
Ú
Ú
_ `
;
Ú
Ú
` a
}
Û
Û
 
catch
Ù
Ù
 
(
Ù
Ù
 $
CommunicationException
Ù
Ù
 )$
communicationException
Ù
Ù
* @
)
Ù
Ù
@ A
{
ı
ı
 
logger
ˆ
ˆ
 
.
ˆ
ˆ
 
LogFatal
ˆ
ˆ
 
(
ˆ
ˆ
  $
communicationException
ˆ
ˆ
  6
)
ˆ
ˆ
6 7
;
ˆ
ˆ
7 8
DialogManager
˜
˜
 
.
˜
˜
 #
ShowErrorMessageAlert
˜
˜
 3
(
˜
˜
3 4

Properties
˜
˜
4 >
.
˜
˜
> ?
	Resources
˜
˜
? H
.
˜
˜
H I)
dialogComunicationException
˜
˜
I d
)
˜
˜
d e
;
˜
˜
e f
ReturnToLoginView
¯
¯
 !
(
¯
¯
! "
)
¯
¯
" #
;
¯
¯
# $
}
˘
˘
 
}
˙
˙
 	
private
¸
¸
 
void
¸
¸
 $
DisconnectNormalPlayer
¸
¸
 +
(
¸
¸
+ ,
)
¸
¸
, -
{
˝
˝
 	
LoggerManager
˛
˛
 
logger
˛
˛
  
=
˛
˛
! "
new
˛
˛
# &
LoggerManager
˛
˛
' 4
(
˛
˛
4 5
this
˛
˛
5 9
.
˛
˛
9 :
GetType
˛
˛
: A
(
˛
˛
A B
)
˛
˛
B C
)
˛
˛
C D
;
˛
˛
D E
try
ˇ
ˇ
 
{
ÄÄ 
	HiveProxy
ÅÅ 
.
ÅÅ 
UserManagerClient
ÅÅ +
userManagerClient
ÅÅ, =
=
ÅÅ> ?
new
ÅÅ@ C
UserManagerClient
ÅÅD U
(
ÅÅU V
)
ÅÅV W
;
ÅÅW X
	HiveProxy
ÇÇ 
.
ÇÇ &
LeaderBoardManagerClient
ÇÇ 2&
leaderBoardManagerClient
ÇÇ3 K
=
ÇÇL M
new
ÇÇN Q&
LeaderBoardManagerClient
ÇÇR j
(
ÇÇj k
)
ÇÇk l
;
ÇÇl m
int
ÉÉ  
resultModification
ÉÉ &
=
ÉÉ' (
userManagerClient
ÉÉ) :
.
ÉÉ: ;'
UpdateMinusUserReputation
ÉÉ; T
(
ÉÉT U"
UserProfileSingleton
ÉÉU i
.
ÉÉi j
username
ÉÉj r
,
ÉÉr s
$num
ÉÉt w
)
ÉÉw x
;
ÉÉx y
if
ÑÑ 
(
ÑÑ  
resultModification
ÑÑ &
==
ÑÑ' )
	Constants
ÑÑ* 3
.
ÑÑ3 4
SuccesOperation
ÑÑ4 C
)
ÑÑC D
{
ÖÖ &
leaderBoardManagerClient
ÜÜ ,
.
ÜÜ, -2
$UpdateLoserResultToPlayerLeaderBoard
ÜÜ- Q
(
ÜÜQ R"
UserProfileSingleton
ÜÜR f
.
ÜÜf g
	idAccount
ÜÜg p
)
ÜÜp q
;
ÜÜq r
UserSession
áá 
session
áá  '
=
áá( )
new
áá* -
UserSession
áá. 9
(
áá9 :
)
áá: ;
{
àà 
	idAccount
ââ !
=
ââ" #"
UserProfileSingleton
ââ$ 8
.
ââ8 9
	idAccount
ââ9 B
,
ââB C
username
ää  
=
ää! ""
UserProfileSingleton
ää# 7
.
ää7 8
username
ää8 @
,
ää@ A
	codeMatch
ãã !
=
ãã" #
MatchSingleton
ãã$ 2
.
ãã2 3
	codeMatch
ãã3 <
,
ãã< =
}
åå 
;
åå  
_gameManagerClient
çç &
.
çç& '
LeaveTheGame
çç' 3
(
çç3 4
session
çç4 ;
,
çç; <
session
çç= D
.
ççD E
	codeMatch
ççE N
)
ççN O
;
ççO P
GoToMainView
éé  
(
éé  !
)
éé! "
;
éé" #
}
èè 
else
êê 
if
êê 
(
êê  
resultModification
êê +
==
êê, .
	Constants
êê/ 8
.
êê8 9
ErrorOperation
êê9 G
)
êêG H
{
ëë 
DialogManager
íí !
.
íí! "#
ShowErrorMessageAlert
íí" 7
(
íí7 8

Properties
íí8 B
.
ííB C
	Resources
ííC L
.
ííL M!
dialogDataBaseError
ííM `
)
íí` a
;
íía b
}
ìì 
}
îî 
catch
ïï 
(
ïï '
EndpointNotFoundException
ïï ,
endPointException
ïï- >
)
ïï> ?
{
ññ 
logger
óó 
.
óó 
LogFatal
óó 
(
óó  
endPointException
óó  1
)
óó1 2
;
óó2 3
DialogManager
òò 
.
òò #
ShowErrorMessageAlert
òò 3
(
òò3 4

Properties
òò4 >
.
òò> ?
	Resources
òò? H
.
òòH I%
dialogEndPointException
òòI `
)
òò` a
;
òòa b
ReturnToLoginView
ôô !
(
ôô! "
)
ôô" #
;
ôô# $
}
öö 
catch
õõ 
(
õõ 
TimeoutException
õõ #
timeOutException
õõ$ 4
)
õõ4 5
{
úú 
logger
ùù 
.
ùù 
LogWarn
ùù 
(
ùù 
timeOutException
ùù /
)
ùù/ 0
;
ùù0 1
DialogManager
ûû 
.
ûû #
ShowErrorMessageAlert
ûû 3
(
ûû3 4

Properties
ûû4 >
.
ûû> ?
	Resources
ûû? H
.
ûûH I$
dialogTimeOutException
ûûI _
)
ûû_ `
;
ûû` a
}
üü 
catch
†† 
(
†† $
CommunicationException
†† )$
communicationException
††* @
)
††@ A
{
°° 
logger
¢¢ 
.
¢¢ 
LogFatal
¢¢ 
(
¢¢  $
communicationException
¢¢  6
)
¢¢6 7
;
¢¢7 8
DialogManager
££ 
.
££ #
ShowErrorMessageAlert
££ 3
(
££3 4

Properties
££4 >
.
££> ?
	Resources
££? H
.
££H I)
dialogComunicationException
££I d
)
££d e
;
££e f
ReturnToLoginView
§§ !
(
§§! "
)
§§" #
;
§§# $
}
•• 
}
¶¶ 	
private
ßß 
void
ßß 
GoToMainView
ßß !
(
ßß! "
)
ßß" #
{
®® 	
MatchSingleton
©© 
.
©© 
Instance
©© #
.
©©# $
ResetSingleton
©©$ 2
(
©©2 3
)
©©3 4
;
©©4 5
MainMenu
™™ 
mainMenu
™™ 
=
™™ 
new
™™  #
MainMenu
™™$ ,
(
™™, -
)
™™- .
;
™™. /
this
´´ 
.
´´ 
NavigationService
´´ "
.
´´" #
Navigate
´´# +
(
´´+ ,
mainMenu
´´, 4
)
´´4 5
;
´´5 6
}
¨¨ 	
public
ÆÆ 
void
ÆÆ #
ChargePlayerGameBoard
ÆÆ )
(
ÆÆ) *

PlayerSide
ÆÆ* 4
side
ÆÆ5 9
)
ÆÆ9 :
{
ØØ 	
if
∞∞ 
(
∞∞ 
side
∞∞ 
.
∞∞ 
	playerOne
∞∞ 
)
∞∞ 
{
±± 
	DockPanel
≤≤ 
.
≤≤ 
SetDock
≤≤ !
(
≤≤! "
stckp_Player1
≤≤" /
,
≤≤/ 0
Dock
≤≤0 4
.
≤≤4 5
Bottom
≤≤5 ;
)
≤≤; <
;
≤≤< =
	DockPanel
≥≥ 
.
≥≥ 
SetDock
≥≥ !
(
≥≥! "
stckp_Player2
≥≥" /
,
≥≥/ 0
Dock
≥≥1 5
.
≥≥5 6
Top
≥≥6 9
)
≥≥9 :
;
≥≥: ;
img_ProfilePic1
¥¥ 
.
¥¥  
Source
¥¥  &
=
¥¥' (
new
¥¥) ,
BitmapImage
¥¥- 8
(
¥¥8 9
new
¥¥9 <
Uri
¥¥= @
(
¥¥@ A"
UserProfileSingleton
¥¥A U
.
¥¥U V

imageRoute
¥¥V `
,
¥¥` a
UriKind
¥¥b i
.
¥¥i j
Relative
¥¥j r
)
¥¥r s
)
¥¥s t
;
¥¥t u"
txtBlock_PlayerName1
µµ $
.
µµ$ %
Text
µµ% )
=
µµ* +"
UserProfileSingleton
µµ, @
.
µµ@ A
username
µµA I
;
µµI J
stckp_Player2
∂∂ 
.
∂∂ 
	IsEnabled
∂∂ '
=
∂∂( )
false
∂∂* /
;
∂∂/ 0
_numberOfPlayer
∑∑ 
=
∑∑  !
$num
∑∑" #
;
∑∑# $
}
∏∏ 
else
ππ 
if
ππ 
(
ππ 
side
ππ 
.
ππ 
	playerTwo
ππ #
)
ππ# $
{
∫∫ 
	DockPanel
ªª 
.
ªª 
SetDock
ªª !
(
ªª! "
stckp_Player2
ªª" /
,
ªª/ 0
Dock
ªª0 4
.
ªª4 5
Bottom
ªª5 ;
)
ªª; <
;
ªª< =
	DockPanel
ºº 
.
ºº 
SetDock
ºº !
(
ºº! "
stckp_Player1
ºº" /
,
ºº/ 0
Dock
ºº0 4
.
ºº4 5
Top
ºº5 8
)
ºº8 9
;
ºº9 :
stckp_Player1
ΩΩ 
.
ΩΩ 
	IsEnabled
ΩΩ '
=
ΩΩ( )
false
ΩΩ* /
;
ΩΩ/ 0
img_ProfilePic2
ææ 
.
ææ  
Source
ææ  &
=
ææ' (
new
ææ) ,
BitmapImage
ææ- 8
(
ææ8 9
new
ææ9 <
Uri
ææ= @
(
ææ@ A"
UserProfileSingleton
ææA U
.
ææU V

imageRoute
ææV `
,
ææ` a
UriKind
ææb i
.
ææi j
Relative
ææj r
)
æær s
)
ææs t
;
ææt u"
txtBlock_PlayerName2
øø $
.
øø$ %
Text
øø% )
=
øø* +"
UserProfileSingleton
øø, @
.
øø@ A
username
øøA I
;
øøI J
_numberOfPlayer
¿¿ 
=
¿¿  !
$num
¿¿" #
;
¿¿# $
}
¡¡ 
	DockPanel
¬¬ 
	dockPanel
¬¬ 
=
¬¬  !
(
¬¬" #
	DockPanel
¬¬# ,
)
¬¬, -
this
¬¬- 1
.
¬¬1 2
Content
¬¬2 9
;
¬¬9 :
	dockPanel
√√ 
.
√√ 
UpdateLayout
√√ "
(
√√" #
)
√√# $
;
√√$ %
}
ƒƒ 	
public
«« 
void
«« 
ReceivePieceMoved
«« %
(
««% &
	HiveProxy
««& /
.
««/ 0
GamePice
««0 8
piece
««9 >
)
««> ?
{
»» 	"
_hasOtherPlayerMoved
……  
=
……! "
true
……# '
;
……' ("
StopTurnTimeoutTimer
    
(
    !
)
  ! "
;
  " #
if
ÀÀ 
(
ÀÀ 
piece
ÀÀ 
!=
ÀÀ 
null
ÀÀ 
)
ÀÀ 
{
ÃÃ 
Logic
ÕÕ 
.
ÕÕ 
Piece
ÕÕ 
pieceReceived
ÕÕ )
=
ÕÕ* +%
CreateConcretePieceType
ÕÕ, C
(
ÕÕC D
piece
ÕÕD I
)
ÕÕI J
;
ÕÕJ K
Logic
ŒŒ 
.
ŒŒ 
	GamePiece
ŒŒ 
gamePieceReceived
ŒŒ  1
=
ŒŒ2 3
new
ŒŒ4 7
Logic
ŒŒ8 =
.
ŒŒ= >
	GamePiece
ŒŒ> G
(
ŒŒG H
)
ŒŒH I
{
œœ 
Piece
–– 
=
–– 
pieceReceived
–– )
,
––) *

PlayerName
—— 
=
——  
piece
——! &
.
——& '

playerName
——' 1
,
——1 2
Position
““ 
=
““ 
piece
““ $
.
““$ %
position
““% -
,
““- .
	ImagePath
”” 
=
”” 
piece
””  %
.
””% &
	imagePath
””& /
,
””/ 0
PieceNumber
‘‘ 
=
‘‘  !
piece
‘‘" '
.
‘‘' (
numberOfPiece
‘‘( 5
,
‘‘5 6
}
’’ 
;
’’ 
gamePieceReceived
÷÷ !
.
÷÷! "
Piece
÷÷" '
.
÷÷' (
Position
÷÷( 0
=
÷÷1 2
piece
÷÷3 8
.
÷÷8 9
piece
÷÷9 >
.
÷÷> ?
position
÷÷? G
;
÷÷G H
	GamePiece
◊◊ 

pieceToAdd
◊◊ $
=
◊◊% &
gamePieceReceived
◊◊' 8
;
◊◊8 9
Point
ÿÿ 
pointOfPieceToAdd
ÿÿ '
=
ÿÿ( )
gamePieceReceived
ÿÿ* ;
.
ÿÿ; <
Position
ÿÿ< D
;
ÿÿD E
Point
ŸŸ $
previousPositionPlaced
ŸŸ ,
=
ŸŸ- .
gamePieceReceived
ŸŸ/ @
.
ŸŸ@ A
Piece
ŸŸA F
.
ŸŸF G
Position
ŸŸG O
;
ŸŸO P4
&RemovePieceReceiveFromPlayerStackPanel
⁄⁄ 6
(
⁄⁄6 7
gamePieceReceived
⁄⁄7 H
)
⁄⁄H I
;
⁄⁄I J

pieceToAdd
€€ 
.
€€ 
Position
€€ #
=
€€$ %
pointOfPieceToAdd
€€& 7
;
€€7 8

pieceToAdd
‹‹ 
.
‹‹ 
Piece
‹‹  
.
‹‹  !
Position
‹‹! )
=
‹‹* +$
previousPositionPlaced
‹‹, B
;
‹‹B C(
UpdatePiecePositionOnBoard
›› *
(
››* +

pieceToAdd
››+ 5
)
››5 6
;
››6 7
}
ﬁﬁ 
}
ﬂﬂ 	
private
·· 
static
·· 
Logic
·· 
.
·· 
Piece
·· "%
CreateConcretePieceType
··# :
(
··: ;
	HiveProxy
··; D
.
··D E
GamePice
··E M
piece
··N S
)
··S T
{
‚‚ 	
Logic
„„ 
.
„„ 
Piece
„„ 
pieceObtained
„„ %
=
„„& '
null
„„( ,
;
„„, -
string
‰‰ 
typeOfPiece
‰‰ 
=
‰‰  
piece
‰‰! &
.
‰‰& '
piece
‰‰' ,
.
‰‰, -
name
‰‰- 1
;
‰‰1 2
switch
ÂÂ 
(
ÂÂ 
typeOfPiece
ÂÂ 
)
ÂÂ  
{
ÊÊ 
case
ÁÁ 
_QueenPieceName
ÁÁ $
:
ÁÁ$ %
pieceObtained
ËË !
=
ËË" #
new
ËË$ '
Queen
ËË( -
(
ËË- .
)
ËË. /
;
ËË/ 0
break
ÈÈ 
;
ÈÈ 
case
ÍÍ 
$str
ÍÍ 
:
ÍÍ 
pieceObtained
ÎÎ !
=
ÎÎ" #
new
ÎÎ$ '
Spider
ÎÎ( .
(
ÎÎ. /
)
ÎÎ/ 0
;
ÎÎ0 1
break
ÏÏ 
;
ÏÏ 
case
ÌÌ 
BeetlePieceName
ÌÌ $
:
ÌÌ$ %
pieceObtained
ÓÓ !
=
ÓÓ" #
new
ÓÓ$ '
Beetle
ÓÓ( .
(
ÓÓ. /
)
ÓÓ/ 0
;
ÓÓ0 1
break
ÔÔ 
;
ÔÔ 
case
 
$str
 
:
 
pieceObtained
ÒÒ !
=
ÒÒ" #
new
ÒÒ$ '
Ant
ÒÒ( +
(
ÒÒ+ ,
)
ÒÒ, -
;
ÒÒ- .
break
ÚÚ 
;
ÚÚ 
case
ÛÛ 
$str
ÛÛ "
:
ÛÛ" #
pieceObtained
ÙÙ !
=
ÙÙ" #
new
ÙÙ$ '
Grasshopper
ÙÙ( 3
(
ÙÙ3 4
)
ÙÙ4 5
;
ÙÙ5 6
break
ıı 
;
ıı 
}
ˆˆ 
pieceObtained
˜˜ 
.
˜˜ 

PlayerName
˜˜ $
=
˜˜% &
piece
˜˜' ,
.
˜˜, -

playerName
˜˜- 7
;
˜˜7 8
return
¯¯ 
pieceObtained
¯¯  
;
¯¯  !
}
˘˘ 	
private
˚˚ 
void
˚˚ 4
&RemovePieceReceiveFromPlayerStackPanel
˚˚ ;
(
˚˚; <
	GamePiece
˚˚< E
piece
˚˚F K
)
˚˚K L
{
¸¸ 	
	GamePiece
˝˝ 
pieceAuxiliar
˝˝ #
=
˝˝$ %
piece
˝˝& +
;
˝˝+ ,
pieceAuxiliar
˛˛ 
.
˛˛ 
Position
˛˛ "
=
˛˛# $
new
˛˛% (
Point
˛˛) .
(
˛˛. /
-
˛˛/ 0
$num
˛˛0 1
,
˛˛1 2
-
˛˛3 4
$num
˛˛4 5
)
˛˛5 6
;
˛˛6 7
if
ˇˇ 
(
ˇˇ 
_player1Pieces
ˇˇ 
.
ˇˇ 
Contains
ˇˇ '
(
ˇˇ' (
pieceAuxiliar
ˇˇ( 5
)
ˇˇ5 6
)
ˇˇ6 7
{
ÄÄ 
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
child
ÅÅ "
in
ÅÅ# %!
stckp_Player1Pieces
ÅÅ& 9
.
ÅÅ9 :
Children
ÅÅ: B
.
ÅÅB C
OfType
ÅÅC I
<
ÅÅI J
Image
ÅÅJ O
>
ÅÅO P
(
ÅÅP Q
)
ÅÅQ R
)
ÅÅR S
{
ÇÇ 
if
ÉÉ 
(
ÉÉ 
child
ÉÉ 
.
ÉÉ 
Tag
ÉÉ !
is
ÉÉ" $
	GamePiece
ÉÉ% .
tagPiece
ÉÉ/ 7
&&
ÉÉ8 :
tagPiece
ÉÉ; C
.
ÉÉC D
PieceNumber
ÉÉD O
==
ÉÉP R
pieceAuxiliar
ÉÉS `
.
ÉÉ` a
PieceNumber
ÉÉa l
&&
ÉÉm o
tagPiece
ÉÉp x
.
ÉÉx y

PlayerNameÉÉy É
==ÉÉÑ Ü
pieceÉÉá å
.ÉÉå ç

PlayerNameÉÉç ó
)ÉÉó ò
{
ÑÑ !
stckp_Player1Pieces
ÖÖ +
.
ÖÖ+ ,
Children
ÖÖ, 4
.
ÖÖ4 5
Remove
ÖÖ5 ;
(
ÖÖ; <
child
ÖÖ< A
)
ÖÖA B
;
ÖÖB C
break
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 
}
ââ 
else
ää 
if
ää 
(
ää 
_player2Pieces
ää #
.
ää# $
Contains
ää$ ,
(
ää, -
pieceAuxiliar
ää- :
)
ää: ;
)
ää; <
{
ãã 
foreach
åå 
(
åå 
var
åå 
child
åå "
in
åå# %!
stckp_Player2Pieces
åå& 9
.
åå9 :
Children
åå: B
.
ååB C
OfType
ååC I
<
ååI J
Image
ååJ O
>
ååO P
(
ååP Q
)
ååQ R
)
ååR S
{
çç 
if
éé 
(
éé 
child
éé 
.
éé 
Tag
éé !
is
éé" $
	GamePiece
éé% .
tagPiece
éé/ 7
&&
éé8 :
tagPiece
éé; C
.
ééC D
PieceNumber
ééD O
==
ééP R
pieceAuxiliar
ééS `
.
éé` a
PieceNumber
ééa l
&&
éém o
tagPiece
éép x
.
ééx y

PlayerNameééy É
==ééÑ Ü
pieceééá å
.ééå ç

PlayerNameééç ó
)ééó ò
{
èè !
stckp_Player2Pieces
êê +
.
êê+ ,
Children
êê, 4
.
êê4 5
Remove
êê5 ;
(
êê; <
child
êê< A
)
êêA B
;
êêB C
break
ëë 
;
ëë 
}
íí 
}
ìì 
}
îî 
}
ïï 	
private
óó 
void
óó *
UpdateBeetleOnAPieceReceived
óó 1
(
óó1 2
	GamePiece
óó2 ;
piece
óó< A
,
óóA B
Image
óóC H 
imageOfPieceToSafe
óóI [
)
óó[ \
{
òò 	
	GamePiece
ôô 
pieceToKeepSafe
ôô %
=
ôô& ' 
imageOfPieceToSafe
ôô( :
.
ôô: ;
Tag
ôô; >
as
ôô? A
	GamePiece
ôôB K
;
ôôK L
List
öö 
<
öö 
Image
öö 
>
öö 
imagesOfPieces
öö &
=
öö' (!
canva_GameBoardGrid
öö) <
.
öö< =
Children
öö= E
.
ööE F
OfType
ööF L
<
ööL M
Image
ööM R
>
ööR S
(
ööS T
)
ööT U
.
ööU V
ToList
ööV \
(
öö\ ]
)
öö] ^
;
öö^ _
Image
õõ  
imageWhereBeetleIs
õõ $
=
õõ% &
new
õõ' *
Image
õõ+ 0
(
õõ0 1
)
õõ1 2
;
õõ2 3
foreach
úú 
(
úú 
var
úú 
imageOnBeetle
úú &
in
úú' )
imagesOfPieces
úú* 8
)
úú8 9
{
ùù 
	GamePiece
ûû 
beetlePiece
ûû %
=
ûû& '
imageOnBeetle
ûû( 5
.
ûû5 6
Tag
ûû6 9
as
ûû: <
	GamePiece
ûû= F
;
ûûF G
if
üü 
(
üü 
beetlePiece
üü 
.
üü  
PieceNumber
üü  +
==
üü, .
piece
üü/ 4
.
üü4 5
PieceNumber
üü5 @
&&
üüA C
beetlePiece
üüD O
.
üüO P

PlayerName
üüP Z
==
üü[ ]
piece
üü^ c
.
üüc d

PlayerName
üüd n
)
üün o
{
††  
imageWhereBeetleIs
°° &
=
°°' (
imageOnBeetle
°°) 6
;
°°6 7
break
¢¢ 
;
¢¢ 
}
££ 
}
§§ 
if
•• 
(
•• (
_piecesCapturedByTheBeetle
•• *
.
••* +
ContainsKey
••+ 6
(
••6 7
(
••7 8
piece
••8 =
.
••= >
PieceNumber
••> I
,
••I J
piece
••K P
.
••P Q

PlayerName
••Q [
)
••[ \
)
••\ ]
)
••] ^
{
¶¶ =
/RestoreOriginalPieceCapturedByTheBeetleReceived
ßß ?
(
ßß? @ 
imageWhereBeetleIs
ßß@ R
,
ßßR S
piece
ßßT Y
)
ßßY Z
;
ßßZ [
}
®® 
else
©© 
{
™™ /
!PieceToReplaceByTheBeetleReceived
´´ 1
(
´´1 2
piece
´´2 7
,
´´7 8
pieceToKeepSafe
´´9 H
,
´´H I 
imageWhereBeetleIs
´´J \
)
´´\ ]
;
´´] ^
}
¨¨ (
RemoveExistingPieceInBoard
≠≠ &
(
≠≠& '
piece
≠≠' ,
)
≠≠, -
;
≠≠- .(
_piecesCapturedByTheBeetle
ÆÆ &
.
ÆÆ& '
Add
ÆÆ' *
(
ÆÆ* +
(
ÆÆ+ ,
piece
ÆÆ, 1
.
ÆÆ1 2
PieceNumber
ÆÆ2 =
,
ÆÆ= >
piece
ÆÆ? D
.
ÆÆD E

PlayerName
ÆÆE O
)
ÆÆO P
,
ÆÆP Q 
imageOfPieceToSafe
ÆÆR d
)
ÆÆd e
;
ÆÆe f
Polygon
ØØ 
cellOfPieceToSafe
ØØ %
=
ØØ& '
_cellDictionary
ØØ( 7
[
ØØ7 8
pieceToKeepSafe
ØØ8 G
.
ØØG H
Position
ØØH P
]
ØØP Q
;
ØØQ R8
*UpdateGameboardOfBeetlePieceReceivedToGrid
∞∞ 6
(
∞∞6 7
cellOfPieceToSafe
∞∞7 H
,
∞∞H I
piece
∞∞J O
)
∞∞O P
;
∞∞P Q
}
±± 	
private
≥≥ 
void
≥≥ =
/RestoreOriginalPieceCapturedByTheBeetleReceived
≥≥ D
(
≥≥D E
Image
≥≥E J 
imageWhereBeetleIs
≥≥K ]
,
≥≥] ^
	GamePiece
≥≥_ h
beetlePiece
≥≥i t
)
≥≥t u
{
¥¥ 	
Image
µµ  
originalPieceImage
µµ $
=
µµ% &(
_piecesCapturedByTheBeetle
µµ' A
[
µµA B
(
µµB C
beetlePiece
µµC N
.
µµN O
PieceNumber
µµO Z
,
µµZ [
beetlePiece
µµ\ g
.
µµg h

PlayerName
µµh r
)
µµr s
]
µµs t
;
µµt u
	GamePiece
∂∂ 
originalPiece
∂∂ #
=
∂∂$ % 
originalPieceImage
∂∂& 8
.
∂∂8 9
Tag
∂∂9 <
as
∂∂= ?
	GamePiece
∂∂@ I
;
∂∂I J
_board
∑∑ 
.
∑∑ 
Remove
∑∑ 
(
∑∑ 
originalPiece
∑∑ '
.
∑∑' (
Position
∑∑( 0
)
∑∑0 1
;
∑∑1 2
_board
∏∏ 
.
∏∏ 
Add
∏∏ 
(
∏∏ 
originalPiece
∏∏ $
.
∏∏$ %
Position
∏∏% -
,
∏∏- .
originalPiece
∏∏/ <
)
∏∏< =
;
∏∏= >
if
ππ 
(
ππ !
canva_GameBoardGrid
ππ #
.
ππ# $
Children
ππ$ ,
.
ππ, -
Contains
ππ- 5
(
ππ5 6 
imageWhereBeetleIs
ππ6 H
)
ππH I
)
ππI J
{
∫∫ 
List
ªª 
<
ªª 
	UIElement
ªª 
>
ªª 
childrenGrid
ªª  ,
=
ªª- .!
canva_GameBoardGrid
ªª/ B
.
ªªB C
Children
ªªC K
.
ªªK L
OfType
ªªL R
<
ªªR S
	UIElement
ªªS \
>
ªª\ ]
(
ªª] ^
)
ªª^ _
.
ªª_ `
ToList
ªª` f
(
ªªf g
)
ªªg h
;
ªªh i
int
ºº !
indexToRemoveBeetle
ºº '
=
ºº( )
childrenGrid
ºº* 6
.
ºº6 7
IndexOf
ºº7 >
(
ºº> ? 
imageWhereBeetleIs
ºº? Q
)
ººQ R
;
ººR S!
canva_GameBoardGrid
ΩΩ #
.
ΩΩ# $
Children
ΩΩ$ ,
.
ΩΩ, -
RemoveAt
ΩΩ- 5
(
ΩΩ5 6!
indexToRemoveBeetle
ΩΩ6 I
)
ΩΩI J
;
ΩΩJ K
}
ææ 
if
øø 
(
øø !
canva_GameBoardGrid
øø #
.
øø# $
Children
øø$ ,
.
øø, -
Contains
øø- 5
(
øø5 6 
originalPieceImage
øø6 H
)
øøH I
)
øøI J
{
¿¿ 
List
¡¡ 
<
¡¡ 
	UIElement
¡¡ 
>
¡¡ "
childrenGridNewPiece
¡¡  4
=
¡¡5 6!
canva_GameBoardGrid
¡¡7 J
.
¡¡J K
Children
¡¡K S
.
¡¡S T
OfType
¡¡T Z
<
¡¡Z [
	UIElement
¡¡[ d
>
¡¡d e
(
¡¡e f
)
¡¡f g
.
¡¡g h
ToList
¡¡h n
(
¡¡n o
)
¡¡o p
;
¡¡p q
int
¬¬ #
indexToRemoveNewPiece
¬¬ )
=
¬¬* +"
childrenGridNewPiece
¬¬, @
.
¬¬@ A
IndexOf
¬¬A H
(
¬¬H I 
originalPieceImage
¬¬I [
)
¬¬[ \
;
¬¬\ ]!
canva_GameBoardGrid
√√ #
.
√√# $
Children
√√$ ,
.
√√, -
RemoveAt
√√- 5
(
√√5 6#
indexToRemoveNewPiece
√√6 K
)
√√K L
;
√√L M
}
ƒƒ !
canva_GameBoardGrid
≈≈ 
.
≈≈  
Children
≈≈  (
.
≈≈( )
Add
≈≈) ,
(
≈≈, - 
originalPieceImage
≈≈- ?
)
≈≈? @
;
≈≈@ A(
_piecesCapturedByTheBeetle
∆∆ &
.
∆∆& '
Remove
∆∆' -
(
∆∆- .
(
∆∆. /
beetlePiece
∆∆/ :
.
∆∆: ;
PieceNumber
∆∆; F
,
∆∆F G
beetlePiece
∆∆H S
.
∆∆S T

PlayerName
∆∆T ^
)
∆∆^ _
)
∆∆_ `
;
∆∆` a
}
«« 	
private
…… 
void
…… /
!PieceToReplaceByTheBeetleReceived
…… 6
(
……6 7
	GamePiece
……7 @
beetlePiece
……A L
,
……L M
	GamePiece
……N W
pieceToKeepSafe
……X g
,
……g h
Image
……i n!
imageWhereBeetleIs……o Å
)……Å Ç
{
   	#
RemoveImageFromCanvas
ÀÀ !
(
ÀÀ! " 
imageWhereBeetleIs
ÀÀ" 4
)
ÀÀ4 5
;
ÀÀ5 6+
RemoveImageForPieceToKeepSafe
ÃÃ )
(
ÃÃ) *
pieceToKeepSafe
ÃÃ* 9
)
ÃÃ9 :
;
ÃÃ: ;
UpdateBoard
ÕÕ 
(
ÕÕ 
beetlePiece
ÕÕ #
,
ÕÕ# $
pieceToKeepSafe
ÕÕ% 4
)
ÕÕ4 5
;
ÕÕ5 6
}
ŒŒ 	
private
–– 
void
–– #
RemoveImageFromCanvas
–– *
(
––* +
Image
––+ 0
imageToRemove
––1 >
)
––> ?
{
—— 	
var
““ 
childrenGrids
““ 
=
““ !
canva_GameBoardGrid
““  3
.
““3 4
Children
““4 <
.
““< =
OfType
““= C
<
““C D
	UIElement
““D M
>
““M N
(
““N O
)
““O P
.
““P Q
ToList
““Q W
(
““W X
)
““X Y
;
““Y Z
int
”” 
indexToRemove
”” 
=
”” 
childrenGrids
””  -
.
””- .
IndexOf
””. 5
(
””5 6
imageToRemove
””6 C
)
””C D
;
””D E
if
‘‘ 
(
‘‘ 
indexToRemove
‘‘ 
!=
‘‘  
-
‘‘! "
$num
‘‘" #
)
‘‘# $
{
’’ !
canva_GameBoardGrid
÷÷ #
.
÷÷# $
Children
÷÷$ ,
.
÷÷, -
RemoveAt
÷÷- 5
(
÷÷5 6
indexToRemove
÷÷6 C
)
÷÷C D
;
÷÷D E
}
◊◊ 
}
ÿÿ 	
private
⁄⁄ 
void
⁄⁄ +
RemoveImageForPieceToKeepSafe
⁄⁄ 2
(
⁄⁄2 3
	GamePiece
⁄⁄3 <
pieceToKeepSafe
⁄⁄= L
)
⁄⁄L M
{
€€ 	
foreach
‹‹ 
(
‹‹ 
	UIElement
‹‹ 
child
‹‹ $
in
‹‹% '!
canva_GameBoardGrid
‹‹( ;
.
‹‹; <
Children
‹‹< D
)
‹‹D E
{
›› 
if
ﬁﬁ 
(
ﬁﬁ 
child
ﬁﬁ 
is
ﬁﬁ 
Image
ﬁﬁ "
image
ﬁﬁ# (
&&
ﬁﬁ) +
image
ﬁﬁ, 1
.
ﬁﬁ1 2
Tag
ﬁﬁ2 5
is
ﬁﬁ6 8
	GamePiece
ﬁﬁ9 B
piece
ﬁﬁC H
&&
ﬁﬁI K
IsMatchingPiece
ﬁﬁL [
(
ﬁﬁ[ \
piece
ﬁﬁ\ a
,
ﬁﬁa b
pieceToKeepSafe
ﬁﬁc r
)
ﬁﬁr s
)
ﬁﬁs t
{
ﬂﬂ !
canva_GameBoardGrid
‡‡ '
.
‡‡' (
Children
‡‡( 0
.
‡‡0 1
Remove
‡‡1 7
(
‡‡7 8
image
‡‡8 =
)
‡‡= >
;
‡‡> ?
break
·· 
;
·· 
}
‚‚ 
}
„„ 
}
‰‰ 	
private
ÊÊ 
static
ÊÊ 
bool
ÊÊ 
IsMatchingPiece
ÊÊ +
(
ÊÊ+ ,
	GamePiece
ÊÊ, 5
piece
ÊÊ6 ;
,
ÊÊ; <
	GamePiece
ÊÊ= F
pieceToKeepSafe
ÊÊG V
)
ÊÊV W
{
ÁÁ 	
return
ËË 
piece
ËË 
.
ËË 
PieceNumber
ËË $
==
ËË% '
pieceToKeepSafe
ËË( 7
.
ËË7 8
PieceNumber
ËË8 C
&&
ËËD F
piece
ÈÈ 
.
ÈÈ 

PlayerName
ÈÈ #
==
ÈÈ$ &
pieceToKeepSafe
ÈÈ' 6
.
ÈÈ6 7

PlayerName
ÈÈ7 A
&&
ÈÈB D
pieceToKeepSafe
ÍÍ "
.
ÍÍ" #
Position
ÍÍ# +
==
ÍÍ, .
piece
ÍÍ/ 4
.
ÍÍ4 5
Position
ÍÍ5 =
;
ÍÍ= >
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ 
UpdateBoard
ÌÌ  
(
ÌÌ  !
	GamePiece
ÌÌ! *
beetlePiece
ÌÌ+ 6
,
ÌÌ6 7
	GamePiece
ÌÌ8 A
pieceToKeepSafe
ÌÌB Q
)
ÌÌQ R
{
ÓÓ 	
_board
ÔÔ 
.
ÔÔ 
Remove
ÔÔ 
(
ÔÔ 
pieceToKeepSafe
ÔÔ )
.
ÔÔ) *
Position
ÔÔ* 2
)
ÔÔ2 3
;
ÔÔ3 4
if
 
(
 
_board
 
.
 
ContainsKey
 "
(
" #
beetlePiece
# .
.
. /
Position
/ 7
)
7 8
&&
9 ;
_board
< B
[
B C
beetlePiece
C N
.
N O
Position
O W
]
W X
==
Y [
beetlePiece
\ g
)
g h
{
ÒÒ 
_board
ÚÚ 
.
ÚÚ 
Remove
ÚÚ 
(
ÚÚ 
beetlePiece
ÚÚ )
.
ÚÚ) *
Position
ÚÚ* 2
)
ÚÚ2 3
;
ÚÚ3 4
}
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
void
ˆˆ (
RemoveExistingPieceInBoard
ˆˆ /
(
ˆˆ/ 0
	GamePiece
ˆˆ0 9
piece
ˆˆ: ?
)
ˆˆ? @
{
˜˜ 	
if
¯¯ 
(
¯¯ 
_board
¯¯ 
.
¯¯ 
ContainsKey
¯¯ "
(
¯¯" #
piece
¯¯# (
.
¯¯( )
Piece
¯¯) .
.
¯¯. /
Position
¯¯/ 7
)
¯¯7 8
&&
¯¯9 ;
_board
¯¯< B
[
¯¯B C
piece
¯¯C H
.
¯¯H I
Piece
¯¯I N
.
¯¯N O
Position
¯¯O W
]
¯¯W X
.
¯¯X Y
PieceNumber
¯¯Y d
==
¯¯e g
piece
¯¯h m
.
¯¯m n
PieceNumber
¯¯n y
&&
¯¯z |
_board¯¯} É
[¯¯É Ñ
piece¯¯Ñ â
.¯¯â ä
Piece¯¯ä è
.¯¯è ê
Position¯¯ê ò
]¯¯ò ô
.¯¯ô ö

PlayerName¯¯ö §
==¯¯• ß
piece¯¯® ≠
.¯¯≠ Æ

PlayerName¯¯Æ ∏
)¯¯∏ π
{
˘˘ 
_board
˙˙ 
.
˙˙ 
Remove
˙˙ 
(
˙˙ 
piece
˙˙ #
.
˙˙# $
Piece
˙˙$ )
.
˙˙) *
Position
˙˙* 2
)
˙˙2 3
;
˙˙3 4
}
˚˚ 
}
¸¸ 	
private
˛˛ 
void
˛˛ 8
*UpdateGameboardOfBeetlePieceReceivedToGrid
˛˛ ?
(
˛˛? @
Polygon
˛˛@ G
cell
˛˛H L
,
˛˛L M
	GamePiece
˛˛N W
piece
˛˛X ]
)
˛˛] ^
{
ˇˇ 	
Image
ÄÄ 

pieceImage
ÄÄ 
=
ÄÄ !
ObtainImageCreation
ÄÄ 2
(
ÄÄ2 3
cell
ÄÄ3 7
,
ÄÄ7 8
piece
ÄÄ9 >
)
ÄÄ> ?
;
ÄÄ? @!
canva_GameBoardGrid
ÅÅ 
.
ÅÅ  
Children
ÅÅ  (
.
ÅÅ( )
Add
ÅÅ) ,
(
ÅÅ, -

pieceImage
ÅÅ- 7
)
ÅÅ7 8
;
ÅÅ8 9
_board
ÇÇ 
[
ÇÇ 
piece
ÇÇ 
.
ÇÇ 
Position
ÇÇ !
]
ÇÇ! "
=
ÇÇ# $
piece
ÇÇ% *
;
ÇÇ* +
_lastPlacedCell
ÉÉ 
=
ÉÉ 
cell
ÉÉ "
;
ÉÉ" #
}
ÑÑ 	
private
ÜÜ 
Image
ÜÜ &
ObtainImageOfPieceToSafe
ÜÜ .
(
ÜÜ. /
	GamePiece
ÜÜ/ 8
piece
ÜÜ9 >
)
ÜÜ> ?
{
áá 	
Image
àà  
imageOfPieceToSafe
àà $
=
àà% &
new
àà' *
Image
àà+ 0
(
àà0 1
)
àà1 2
;
àà2 3
var
ââ 
listOfImages
ââ 
=
ââ !
canva_GameBoardGrid
ââ 2
.
ââ2 3
Children
ââ3 ;
.
ââ; <
OfType
ââ< B
<
ââB C
Image
ââC H
>
ââH I
(
ââI J
)
ââJ K
.
ââK L
ToList
ââL R
(
ââR S
)
ââS T
;
ââT U
foreach
ää 
(
ää 
var
ää 
imageOnGrid
ää #
in
ää$ &
listOfImages
ää' 3
)
ää3 4
{
ãã 
if
åå 
(
åå 
imageOnGrid
åå 
.
åå 
Tag
åå "
is
åå# %
	GamePiece
åå& /
	gamePiece
åå0 9
&&
åå: <
	gamePiece
åå= F
.
ååF G
Position
ååG O
==
ååP R
piece
ååS X
.
ååX Y
Position
ååY a
)
ååa b
{
çç  
imageOfPieceToSafe
éé &
=
éé' (
imageOnGrid
éé) 4
;
éé4 5
}
èè 
}
êê 
return
ëë  
imageOfPieceToSafe
ëë %
;
ëë% &
}
íí 	
private
îî 
void
îî 5
'UpdateOldAndNewPlaceInGameBoardReceived
îî <
(
îî< =
Image
îî= B

pieceImage
îîC M
,
îîM N
Point
îîO T
oldPosition
îîU `
)
îî` a
{
ïï 	
if
ññ 
(
ññ 
_board
ññ 
.
ññ 
ContainsKey
ññ "
(
ññ" #
oldPosition
ññ# .
)
ññ. /
)
ññ/ 0
{
óó 
_board
òò 
.
òò 
Remove
òò 
(
òò 
oldPosition
òò )
)
òò) *
;
òò* +
}
ôô 
var
öö #
imagesOnGameBoardGrid
öö %
=
öö& '!
canva_GameBoardGrid
öö( ;
.
öö; <
Children
öö< D
.
ööD E
OfType
ööE K
<
ööK L
Image
ööL Q
>
ööQ R
(
ööR S
)
ööS T
.
ööT U
ToList
ööU [
(
öö[ \
)
öö\ ]
;
öö] ^
	GamePiece
õõ 
pieceToMove
õõ !
=
õõ" #

pieceImage
õõ$ .
.
õõ. /
Tag
õõ/ 2
as
õõ3 5
	GamePiece
õõ6 ?
;
õõ? @
Image
úú 
imageToRemove
úú 
=
úú  !
new
úú" %
Image
úú& +
(
úú+ ,
)
úú, -
;
úú- .
foreach
ùù 
(
ùù 
var
ùù 
imageOnGrid
ùù $
in
ùù% '#
imagesOnGameBoardGrid
ùù( =
)
ùù= >
{
ûû 
	GamePiece
üü 
piece
üü 
=
üü  !
imageOnGrid
üü" -
.
üü- .
Tag
üü. 1
as
üü2 4
	GamePiece
üü5 >
;
üü> ?
if
†† 
(
†† 
piece
†† 
.
†† 
Piece
†† 
.
††  
Position
††  (
==
††) +
oldPosition
††, 7
&&
††8 :
piece
††; @
.
††@ A
PieceNumber
††A L
==
††M O
pieceToMove
††P [
.
††[ \
PieceNumber
††\ g
&&
††h j
piece
††k p
.
††p q

PlayerName
††q {
==
††| ~
pieceToMove†† ä
.††ä ã

PlayerName††ã ï
)††ï ñ
{
°° 
imageToRemove
¢¢ !
=
¢¢" #
imageOnGrid
¢¢$ /
;
¢¢/ 0
break
££ 
;
££ 
}
§§ 
}
•• 
List
¶¶ 
<
¶¶ 
	UIElement
¶¶ 
>
¶¶ 
childrenGrids
¶¶ )
=
¶¶* +!
canva_GameBoardGrid
¶¶, ?
.
¶¶? @
Children
¶¶@ H
.
¶¶H I
OfType
¶¶I O
<
¶¶O P
	UIElement
¶¶P Y
>
¶¶Y Z
(
¶¶Z [
)
¶¶[ \
.
¶¶\ ]
ToList
¶¶] c
(
¶¶c d
)
¶¶d e
;
¶¶e f
int
ßß 
indexToRemove
ßß 
=
ßß 
childrenGrids
ßß  -
.
ßß- .
IndexOf
ßß. 5
(
ßß5 6
imageToRemove
ßß6 C
)
ßßC D
;
ßßD E
if
®® 
(
®® 
indexToRemove
®® 
!=
®®  
-
®®! "
$num
®®" #
)
®®# $
{
©© !
canva_GameBoardGrid
™™ #
.
™™# $
Children
™™$ ,
.
™™, -
RemoveAt
™™- 5
(
™™5 6
indexToRemove
™™6 C
)
™™C D
;
™™D E
}
´´ !
canva_GameBoardGrid
¨¨ 
.
¨¨  
Children
¨¨  (
.
¨¨( )
Add
¨¨) ,
(
¨¨, -

pieceImage
¨¨- 7
)
¨¨7 8
;
¨¨8 9
	GamePiece
≠≠ 

pieceToAdd
≠≠  
=
≠≠! "

pieceImage
≠≠# -
.
≠≠- .
Tag
≠≠. 1
as
≠≠2 4
	GamePiece
≠≠5 >
;
≠≠> ?
_board
ÆÆ 
[
ÆÆ 

pieceToAdd
ÆÆ 
.
ÆÆ 
Position
ÆÆ &
]
ÆÆ& '
=
ÆÆ( )

pieceToAdd
ÆÆ* 4
;
ÆÆ4 5
}
ØØ 	
private
±± 
void
±± /
!VerifyIfBeetleIsOnAPieceToPlaceIt
±± 6
(
±±6 7
	GamePiece
±±7 @
piece
±±A F
)
±±F G
{
≤≤ 	
Point
≥≥ 
oldPosition
≥≥ 
=
≥≥ 
piece
≥≥  %
.
≥≥% &
Piece
≥≥& +
.
≥≥+ ,
Position
≥≥, 4
;
≥≥4 5
Polygon
¥¥ 
cell
¥¥ 
=
¥¥ 
_cellDictionary
¥¥ *
[
¥¥* +
piece
¥¥+ 0
.
¥¥0 1
Position
¥¥1 9
]
¥¥9 :
;
¥¥: ;
Image
µµ 
imageOfPiece
µµ 
=
µµ  !
ObtainImageCreation
µµ! 4
(
µµ4 5
cell
µµ5 9
,
µµ9 :
piece
µµ; @
)
µµ@ A
;
µµA B
if
∂∂ 
(
∂∂ (
_piecesCapturedByTheBeetle
∂∂ )
.
∂∂) *
ContainsKey
∂∂* 5
(
∂∂5 6
(
∂∂6 7
piece
∂∂7 <
.
∂∂< =
PieceNumber
∂∂= H
,
∂∂H I
piece
∂∂J O
.
∂∂O P

PlayerName
∂∂P Z
)
∂∂Z [
)
∂∂[ \
)
∂∂\ ]
{
∂∂] ^
Image
∑∑ '
pieceContainedByTheBeetle
∑∑ /
=
∑∑0 1(
_piecesCapturedByTheBeetle
∑∑2 L
[
∑∑L M
(
∑∑M N
piece
∑∑N S
.
∑∑S T
PieceNumber
∑∑T _
,
∑∑_ `
piece
∑∑` e
.
∑∑e f

PlayerName
∑∑f p
)
∑∑p q
]
∑∑q r
;
∑∑r s5
'UpdateOldAndNewPlaceInGameBoardReceived
∏∏ 7
(
∏∏7 8
imageOfPiece
∏∏8 D
,
∏∏D E
oldPosition
∏∏F Q
)
∏∏Q R
;
∏∏R S>
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
ππ @
(
ππ@ A'
pieceContainedByTheBeetle
ππA Z
,
ππZ [
piece
ππ\ a
)
ππa b
;
ππb c
}
∫∫ 
else
ªª 
{
ºº 5
'UpdateOldAndNewPlaceInGameBoardReceived
ΩΩ 7
(
ΩΩ7 8
imageOfPiece
ΩΩ8 D
,
ΩΩD E
oldPosition
ΩΩE P
)
ΩΩP Q
;
ΩΩQ R
}
ææ 
}
øø 	
private
¡¡ 
void
¡¡ (
UpdatePiecePositionOnBoard
¡¡ /
(
¡¡/ 0
	GamePiece
¡¡0 9
piece
¡¡: ?
)
¡¡? @
{
¬¬ 	
_cellDictionary
√√ 
.
√√ 
TryGetValue
√√ '
(
√√' (
piece
√√( -
.
√√- .
Position
√√. 6
,
√√6 7
out
√√8 ;
var
√√< ?
cell
√√@ D
)
√√D E
;
√√E F
if
ƒƒ 
(
ƒƒ 
piece
ƒƒ 
.
ƒƒ 
Piece
ƒƒ 
.
ƒƒ 
Name
ƒƒ  
==
ƒƒ! #
BeetlePieceName
ƒƒ$ 3
&&
ƒƒ4 6
_board
ƒƒ7 =
.
ƒƒ= >
ContainsKey
ƒƒ> I
(
ƒƒI J
piece
ƒƒJ O
.
ƒƒO P
Position
ƒƒP X
)
ƒƒX Y
)
ƒƒY Z
{
≈≈ 
Image
∆∆  
imageOfPieceToSafe
∆∆ (
=
∆∆) *&
ObtainImageOfPieceToSafe
∆∆+ C
(
∆∆C D
piece
∆∆D I
)
∆∆I J
;
∆∆J K*
UpdateBeetleOnAPieceReceived
«« ,
(
««, -
piece
««- 2
,
««2 3 
imageOfPieceToSafe
««4 F
)
««F G
;
««G H
}
»» 
else
…… 
if
…… 
(
…… 
piece
…… 
.
…… 
Piece
…… 
.
……  
Name
……  $
==
……% '
BeetlePieceName
……( 7
&&
……8 :(
_piecesCapturedByTheBeetle
……; U
.
……U V
ContainsKey
……V a
(
……a b
(
……b c
piece
……c h
.
……h i
PieceNumber
……i t
,
……t u
piece
……v {
.
……{ |

PlayerName……| Ü
)……Ü á
)……á à
)……à â
{
   /
!VerifyIfBeetleIsOnAPieceToPlaceIt
ÀÀ 1
(
ÀÀ1 2
piece
ÀÀ2 7
)
ÀÀ7 8
;
ÀÀ8 9
}
ÃÃ 
else
ÕÕ 
{
ŒŒ .
 PlacePieceReceivedOnCellToUpdate
œœ 0
(
œœ0 1
cell
œœ1 5
,
œœ5 6
piece
œœ7 <
)
œœ< =
;
œœ= >
}
–– 
}
—— 	
private
”” 
void
”” .
 PlacePieceReceivedOnCellToUpdate
”” 5
(
””5 6
Polygon
””6 =
cell
””> B
,
””B C
	GamePiece
””D M
piece
””N S
)
””S T
{
‘‘ 	
if
’’ 
(
’’ 
cell
’’ 
!=
’’ 
null
’’ 
&&
’’ 
piece
’’ $
!=
’’% '
null
’’( ,
)
’’, -
{
÷÷ 
Point
◊◊ 
oldPosition
◊◊ !
=
◊◊" #
piece
◊◊$ )
.
◊◊) *
Piece
◊◊* /
.
◊◊/ 0
Position
◊◊0 8
;
◊◊8 9
Image
ÿÿ 

pieceImage
ÿÿ  
=
ÿÿ! "!
ObtainImageCreation
ÿÿ# 6
(
ÿÿ6 7
cell
ÿÿ7 ;
,
ÿÿ; <
piece
ÿÿ< A
)
ÿÿA B
;
ÿÿB C
if
ŸŸ 
(
ŸŸ 
_board
ŸŸ 
.
ŸŸ 
ContainsKey
ŸŸ &
(
ŸŸ& '
piece
ŸŸ' ,
.
ŸŸ, -
Piece
ŸŸ- 2
.
ŸŸ2 3
Position
ŸŸ3 ;
)
ŸŸ; <
)
ŸŸ< =
{
⁄⁄ !
UpdateReceivedPiece
€€ '
(
€€' (

pieceImage
€€( 2
,
€€2 3
oldPosition
€€4 ?
)
€€? @
;
€€@ A
}
‹‹ 
else
›› 
{
ﬁﬁ !
canva_GameBoardGrid
ﬂﬂ '
.
ﬂﬂ' (
Children
ﬂﬂ( 0
.
ﬂﬂ0 1
Add
ﬂﬂ1 4
(
ﬂﬂ4 5

pieceImage
ﬂﬂ5 ?
)
ﬂﬂ? @
;
ﬂﬂ@ A
_board
‡‡ 
[
‡‡ 
piece
‡‡  
.
‡‡  !
Position
‡‡! )
]
‡‡) *
=
‡‡+ ,
piece
‡‡- 2
;
‡‡2 3
_lastPlacedCell
·· #
=
··$ %
cell
··& *
;
··* +
}
‚‚ 
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ !
UpdateReceivedPiece
ÊÊ (
(
ÊÊ( )
Image
ÊÊ) .

pieceImage
ÊÊ/ 9
,
ÊÊ9 :
Point
ÊÊ; @
oldPosition
ÊÊA L
)
ÊÊL M
{
ÁÁ 	
if
ËË 
(
ËË 
_board
ËË 
.
ËË 
ContainsKey
ËË "
(
ËË" #
oldPosition
ËË# .
)
ËË. /
)
ËË/ 0
{
ÈÈ 
_board
ÍÍ 
.
ÍÍ 
Remove
ÍÍ 
(
ÍÍ 
oldPosition
ÍÍ )
)
ÍÍ) *
;
ÍÍ* +
}
ÎÎ 
var
ÏÏ 
listOfElements
ÏÏ 
=
ÏÏ  !
canva_GameBoardGrid
ÏÏ! 4
.
ÏÏ4 5
Children
ÏÏ5 =
.
ÏÏ= >
OfType
ÏÏ> D
<
ÏÏD E
Image
ÏÏE J
>
ÏÏJ K
(
ÏÏK L
)
ÏÏL M
.
ÏÏM N
ToList
ÏÏN T
(
ÏÏT U
)
ÏÏU V
;
ÏÏV W
	GamePiece
ÌÌ 
piece
ÌÌ 
=
ÌÌ 

pieceImage
ÌÌ (
.
ÌÌ( )
Tag
ÌÌ) ,
as
ÌÌ- /
	GamePiece
ÌÌ0 9
;
ÌÌ9 :
Image
ÓÓ 
imageToQuite
ÓÓ 
=
ÓÓ  
new
ÓÓ! $
Image
ÓÓ% *
(
ÓÓ* +
)
ÓÓ+ ,
;
ÓÓ, -
foreach
ÔÔ 
(
ÔÔ 
var
ÔÔ 
element
ÔÔ  
in
ÔÔ! #
listOfElements
ÔÔ$ 2
)
ÔÔ2 3
{
 
	GamePiece
ÒÒ 
pieceToQuit
ÒÒ %
=
ÒÒ& '
(
ÒÒ( )
	GamePiece
ÒÒ) 2
)
ÒÒ2 3
element
ÒÒ3 :
.
ÒÒ: ;
Tag
ÒÒ; >
;
ÒÒ> ?
if
ÚÚ 
(
ÚÚ 
pieceToQuit
ÚÚ 
.
ÚÚ 
Position
ÚÚ '
==
ÚÚ( *
oldPosition
ÚÚ+ 6
&&
ÚÚ7 9
pieceToQuit
ÚÚ: E
.
ÚÚE F
PieceNumber
ÚÚF Q
==
ÚÚR T
piece
ÚÚU Z
.
ÚÚZ [
PieceNumber
ÚÚ[ f
&&
ÚÚg i
pieceToQuit
ÚÚj u
.
ÚÚu v

PlayerNameÚÚv Ä
==ÚÚÅ É
pieceÚÚÑ â
.ÚÚâ ä

PlayerNameÚÚä î
)ÚÚî ï
{
ÛÛ 
imageToQuite
ÙÙ  
=
ÙÙ! "
element
ÙÙ# *
;
ÙÙ* +
break
ıı 
;
ıı 
}
ˆˆ 
}
˜˜ 7
)EliminateDuplicatedImagesIfExistsReceived
¯¯ 5
(
¯¯5 6
oldPosition
¯¯6 A
)
¯¯A B
;
¯¯B C
List
˘˘ 
<
˘˘ 
	UIElement
˘˘ 
>
˘˘ 
childrenGrids
˘˘ )
=
˘˘* +!
canva_GameBoardGrid
˘˘, ?
.
˘˘? @
Children
˘˘@ H
.
˘˘H I
OfType
˘˘I O
<
˘˘O P
	UIElement
˘˘P Y
>
˘˘Y Z
(
˘˘Z [
)
˘˘[ \
.
˘˘\ ]
ToList
˘˘] c
(
˘˘c d
)
˘˘d e
;
˘˘e f
int
˙˙ 
indexToRemove
˙˙ 
=
˙˙ 
childrenGrids
˙˙  -
.
˙˙- .
IndexOf
˙˙. 5
(
˙˙5 6
imageToQuite
˙˙6 B
)
˙˙B C
;
˙˙C D
if
˚˚ 
(
˚˚ 
indexToRemove
˚˚ 
!=
˚˚ 
-
˚˚  !
$num
˚˚! "
)
˚˚" #
{
¸¸ !
canva_GameBoardGrid
˝˝ #
.
˝˝# $
Children
˝˝$ ,
.
˝˝, -
RemoveAt
˝˝- 5
(
˝˝5 6
indexToRemove
˝˝6 C
)
˝˝C D
;
˝˝D E
}
˛˛ !
canva_GameBoardGrid
ˇˇ 
.
ˇˇ  
Children
ˇˇ  (
.
ˇˇ( )
Add
ˇˇ) ,
(
ˇˇ, -

pieceImage
ˇˇ- 7
)
ˇˇ7 8
;
ˇˇ8 9
	GamePiece
ÄÄ 

pieceToAdd
ÄÄ  
=
ÄÄ! "

pieceImage
ÄÄ# -
.
ÄÄ- .
Tag
ÄÄ. 1
as
ÄÄ2 4
	GamePiece
ÄÄ5 >
;
ÄÄ> ?
_board
ÅÅ 
[
ÅÅ 

pieceToAdd
ÅÅ 
.
ÅÅ 
Position
ÅÅ &
]
ÅÅ& '
=
ÅÅ( )

pieceToAdd
ÅÅ* 4
;
ÅÅ4 5
}
ÇÇ 	
private
ÑÑ 
void
ÑÑ 7
)EliminateDuplicatedImagesIfExistsReceived
ÑÑ >
(
ÑÑ> ?
Point
ÑÑ? D
oldPosition
ÑÑE P
)
ÑÑP Q
{
ÖÖ 	
var
ÜÜ 
imagesToRemove
ÜÜ 
=
ÜÜ  !
canva_GameBoardGrid
ÜÜ! 4
.
ÜÜ4 5
Children
ÜÜ5 =
.
áá 
OfType
áá 
<
áá 
Image
áá 
>
áá 
(
áá 
)
áá  
.
àà 
Where
àà 
(
àà 
image
àà 
=>
àà 
image
ââ 
.
ââ 
Tag
ââ !
is
ââ" $
	GamePiece
ââ% .
piece
ââ/ 4
&&
ââ5 7
piece
ââ8 =
.
ââ= >
Position
ââ> F
==
ââG I
oldPosition
ââJ U
)
ââU V
.
ää 
ToList
ää 
(
ää 
)
ää 
;
ää 
for
ãã 
(
ãã 
int
ãã 
indexOfImage
ãã !
=
ãã" #
$num
ãã$ %
;
ãã% &
indexOfImage
ãã' 3
<
ãã4 5
imagesToRemove
ãã6 D
.
ããD E
Count
ããE J
;
ããJ K
indexOfImage
ããL X
++
ããX Z
)
ããZ [
{
åå 
Image
çç 
imageToQuit
çç !
=
çç" #
imagesToRemove
çç$ 2
[
çç2 3
indexOfImage
çç3 ?
]
çç? @
;
çç@ A
List
éé 
<
éé 
	UIElement
éé 
>
éé 
childrenGrids
éé  -
=
éé. /!
canva_GameBoardGrid
éé0 C
.
ééC D
Children
ééD L
.
ééL M
OfType
ééM S
<
ééS T
	UIElement
ééT ]
>
éé] ^
(
éé^ _
)
éé_ `
.
éé` a
ToList
ééa g
(
éég h
)
ééh i
;
ééi j
int
èè 
indexToRemove
èè !
=
èè" #
childrenGrids
èè$ 1
.
èè1 2
IndexOf
èè2 9
(
èè9 :
imageToQuit
èè: E
)
èèE F
;
èèF G
if
êê 
(
êê 
indexToRemove
êê !
!=
êê" $
-
êê% &
$num
êê& '
)
êê' (
{
ëë !
canva_GameBoardGrid
íí '
.
íí' (
Children
íí( 0
.
íí0 1
RemoveAt
íí1 9
(
íí9 :
indexToRemove
íí: G
)
ííG H
;
ííH I
}
ìì 
}
îî 
}
ïï 	
public
óó 
void
óó 
ReceiveTurns
óó  
(
óó  !
bool
óó! %
isTurn
óó& ,
)
óó, -
{
òò 	
if
ôô 
(
ôô 
isTurn
ôô 
)
ôô 
{
öö "
StopTurnTimeoutTimer
õõ $
(
õõ$ %
)
õõ% &
;
õõ& '!
txtBlock_PlayerName
úú #
.
úú# $
Text
úú$ (
=
úú) *"
UserProfileSingleton
úú+ ?
.
úú? @
username
úú@ H
;
úúH I 
_isOtherPlayerTurn
ùù "
=
ùù# $
false
ùù% *
;
ùù* +"
_hasOtherPlayerMoved
ûû $
=
ûû% &
false
ûû' ,
;
ûû, -
if
üü 
(
üü 
_numberOfPlayer
üü #
==
üü$ &
$num
üü' (
)
üü( )
{
†† 
stckp_Player1
°° !
.
°°! "
	IsEnabled
°°" +
=
°°, -
true
°°. 2
;
°°2 3!
EnablePiecesOnBoard
¢¢ '
(
¢¢' (
)
¢¢( )
;
¢¢) *+
UnlockPlacesWhereThereIsPiece
££ 1
(
££1 2
)
££2 3
;
££3 4
}
§§ 
else
•• 
{
¶¶ 
stckp_Player2
ßß !
.
ßß! "
	IsEnabled
ßß" +
=
ßß, -
true
ßß. 2
;
ßß2 3+
UnlockPlacesWhereThereIsPiece
®® 1
(
®®1 2
)
®®2 3
;
®®3 4!
EnablePiecesOnBoard
©© '
(
©©' (
)
©©( )
;
©©) *
}
™™ 
_numberOfTurn
´´ 
++
´´ 
;
´´  
}
¨¨ 
else
≠≠ 
{
ÆÆ #
StartTurnTimeoutTimer
ØØ %
(
ØØ% &
)
ØØ& '
;
ØØ' (
for
∞∞ 
(
∞∞ 
int
∞∞ 
indexUsersInMatch
∞∞ *
=
∞∞+ ,
$num
∞∞- .
;
∞∞. /
indexUsersInMatch
∞∞0 A
<
∞∞B C
_usersInGame
∞∞D P
.
∞∞P Q
Count
∞∞Q V
;
∞∞V W
indexUsersInMatch
∞∞X i
++
∞∞i k
)
∞∞k l
{
±± 
if
≤≤ 
(
≤≤ 
_usersInGame
≤≤ $
[
≤≤$ %
indexUsersInMatch
≤≤% 6
]
≤≤6 7
.
≤≤7 8
username
≤≤8 @
!=
≤≤A C"
UserProfileSingleton
≤≤D X
.
≤≤X Y
username
≤≤Y a
)
≤≤a b
{
≥≥ !
txtBlock_PlayerName
¥¥ +
.
¥¥+ ,
Text
¥¥, 0
=
¥¥1 2
_usersInGame
¥¥3 ?
[
¥¥? @
indexUsersInMatch
¥¥@ Q
]
¥¥Q R
.
¥¥R S
username
¥¥S [
;
¥¥[ \
}
µµ 
}
∂∂  
_isOtherPlayerTurn
∑∑ "
=
∑∑# $
true
∑∑% )
;
∑∑) *
if
∏∏ 
(
∏∏ 
_numberOfPlayer
∏∏ #
==
∏∏$ &
$num
∏∏' (
)
∏∏( )
{
ππ 
stckp_Player1
∫∫ !
.
∫∫! "
	IsEnabled
∫∫" +
=
∫∫, -
false
∫∫. 3
;
∫∫3 4!
EnablePiecesOnBoard
ªª '
(
ªª' (
)
ªª( )
;
ªª) *
}
ºº 
else
ΩΩ 
{
ææ 
stckp_Player2
øø !
.
øø! "
	IsEnabled
øø" +
=
øø, -
false
øø. 3
;
øø3 4!
EnablePiecesOnBoard
¿¿ '
(
¿¿' (
)
¿¿( )
;
¿¿) *
}
¡¡ "
DisablePiecesOnBoard
¬¬ $
(
¬¬$ %
)
¬¬% &
;
¬¬& '
}
√√ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ #
StartTurnTimeoutTimer
∆∆ *
(
∆∆* +
)
∆∆+ ,
{
«« 	
_turnTimeoutTimer
»» 
=
»» 
new
»»  #
TimersTimer
»»$ /
(
»»/ 0
$num
»»0 5
)
»»5 6
;
»»6 7
_turnTimeoutTimer
…… 
.
…… 
Elapsed
…… %
+=
……& (
OnTurnTimeout
……) 6
;
……6 7
_turnTimeoutTimer
   
.
   
	AutoReset
   '
=
  ( )
false
  * /
;
  / 0
_turnTimeoutTimer
ÀÀ 
.
ÀÀ 
Enabled
ÀÀ %
=
ÀÀ& '
true
ÀÀ( ,
;
ÀÀ, -
}
ÃÃ 	
private
ŒŒ 
void
ŒŒ "
StopTurnTimeoutTimer
ŒŒ )
(
ŒŒ) *
)
ŒŒ* +
{
œœ 	
if
–– 
(
–– 
_turnTimeoutTimer
–– !
!=
––" $
null
––% )
)
––) *
{
—— 
_turnTimeoutTimer
““ !
.
““! "
Stop
““" &
(
““& '
)
““' (
;
““( )
_turnTimeoutTimer
”” !
.
””! "
Dispose
””" )
(
””) *
)
””* +
;
””+ ,
_turnTimeoutTimer
‘‘ !
=
‘‘" #
null
‘‘$ (
;
‘‘( )
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ 
OnTurnTimeout
ÿÿ "
(
ÿÿ" #
object
ÿÿ# )
sender
ÿÿ* 0
,
ÿÿ0 1
ElapsedEventArgs
ÿÿ2 B
e
ÿÿC D
)
ÿÿD E
{
ŸŸ 	
LoggerManager
⁄⁄ 
logger
⁄⁄  
=
⁄⁄! "
new
⁄⁄# &
LoggerManager
⁄⁄' 4
(
⁄⁄4 5
this
⁄⁄5 9
.
⁄⁄9 :
GetType
⁄⁄: A
(
⁄⁄A B
)
⁄⁄B C
)
⁄⁄C D
;
⁄⁄D E
if
€€ 
(
€€  
_isOtherPlayerTurn
€€ "
)
€€" #
{
‹‹ 
try
›› 
{
ﬁﬁ 
bool
ﬂﬂ 
isConnected
ﬂﬂ $
=
ﬂﬂ% & 
_gameManagerClient
ﬂﬂ' 9
.
ﬂﬂ9 :
CheckConnection
ﬂﬂ: I
(
ﬂﬂI J
_usersInGame
ﬂﬂJ V
.
ﬂﬂV W
First
ﬂﬂW \
(
ﬂﬂ\ ]
u
ﬂﬂ] ^
=>
ﬂﬂ_ a
u
ﬂﬂb c
.
ﬂﬂc d
username
ﬂﬂd l
!=
ﬂﬂm o#
UserProfileSingletonﬂﬂp Ñ
.ﬂﬂÑ Ö
usernameﬂﬂÖ ç
)ﬂﬂç é
.ﬂﬂé è
usernameﬂﬂè ó
)ﬂﬂó ò
;ﬂﬂò ô
if
‡‡ 
(
‡‡ 
!
‡‡ 
isConnected
‡‡ $
)
‡‡$ %
{
·· !
NotifyDisconnection
‚‚ +
(
‚‚+ ,
)
‚‚, -
;
‚‚- .
}
„„ 
}
‰‰ 
catch
ÂÂ 
(
ÂÂ 
TimeoutException
ÂÂ '
timeOutException
ÂÂ( 8
)
ÂÂ8 9
{
ÊÊ 
logger
ÁÁ 
.
ÁÁ 
LogWarn
ÁÁ "
(
ÁÁ" #
timeOutException
ÁÁ# 3
)
ÁÁ3 4
;
ÁÁ4 5!
NotifyDisconnection
ËË '
(
ËË' (
)
ËË( )
;
ËË) *
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ !
NotifyDisconnection
ÌÌ (
(
ÌÌ( )
)
ÌÌ) *
{
ÓÓ 	

Dispatcher
ÔÔ 
.
ÔÔ 
Invoke
ÔÔ 
(
ÔÔ 
(
ÔÔ 
)
ÔÔ  
=>
ÔÔ! #
{
 
DialogManager
ÒÒ 
.
ÒÒ #
ShowErrorMessageAlert
ÒÒ 3
(
ÒÒ3 4

Properties
ÒÒ4 >
.
ÒÒ> ?
	Resources
ÒÒ? H
.
ÒÒH I#
dialogErrorConnection
ÒÒI ^
)
ÒÒ^ _
;
ÒÒ_ `
ReturnToLoginView
ÚÚ !
(
ÚÚ! "
)
ÚÚ" #
;
ÚÚ# $
}
ÛÛ 
)
ÛÛ 
;
ÛÛ 
}
ÙÙ 	
private
ˆˆ 
void
ˆˆ !
EnablePiecesOnBoard
ˆˆ (
(
ˆˆ( )
)
ˆˆ) *
{
˜˜ 	
foreach
¯¯ 
(
¯¯ 
	UIElement
¯¯ 
element
¯¯ &
in
¯¯' )!
canva_GameBoardGrid
¯¯* =
.
¯¯= >
Children
¯¯> F
)
¯¯F G
{
˘˘ 
if
˙˙ 
(
˙˙ 
element
˙˙ 
is
˙˙ 
Image
˙˙ $
image
˙˙% *
&&
˙˙+ -
image
˙˙. 3
.
˙˙3 4
Tag
˙˙4 7
is
˙˙8 :
Logic
˙˙; @
.
˙˙@ A
	GamePiece
˙˙A J
	gamePiece
˙˙K T
&&
˙˙U W
	gamePiece
˙˙X a
.
˙˙a b

PlayerName
˙˙b l
==
˙˙m o#
UserProfileSingleton˙˙p Ñ
.˙˙Ñ Ö
username˙˙Ö ç
)˙˙ç é
{
˚˚ 
image
¸¸ 
.
¸¸ 
	IsEnabled
¸¸ #
=
¸¸$ %
true
¸¸& *
;
¸¸* +
image
˝˝ 
.
˝˝ 
	MouseDown
˝˝ #
+=
˝˝$ &%
PieceSelected_MouseDown
˝˝' >
;
˝˝> ?
}
˛˛ 
}
ˇˇ 
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ "
DisablePiecesOnBoard
ÇÇ )
(
ÇÇ) *
)
ÇÇ* +
{
ÉÉ 	
foreach
ÑÑ 
(
ÑÑ 
	UIElement
ÑÑ 
element
ÑÑ &
in
ÑÑ' )!
canva_GameBoardGrid
ÑÑ* =
.
ÑÑ= >
Children
ÑÑ> F
)
ÑÑF G
{
ÖÖ 
if
ÜÜ 
(
ÜÜ 
element
ÜÜ 
is
ÜÜ 
Image
ÜÜ $
image
ÜÜ% *
&&
ÜÜ+ -
image
ÜÜ. 3
.
ÜÜ3 4
Tag
ÜÜ4 7
is
ÜÜ8 :
Logic
ÜÜ; @
.
ÜÜ@ A
	GamePiece
ÜÜA J
)
ÜÜJ K
{
áá 
image
àà 
.
àà 
	IsEnabled
àà #
=
àà$ %
false
àà& +
;
àà+ ,
image
ââ 
.
ââ 
	MouseDown
ââ #
-=
ââ$ &%
PieceSelected_MouseDown
ââ' >
;
ââ> ?
}
ää 
}
ãã 
}
åå 	
public
éé 
void
éé #
ReceivePlayersToMatch
éé )
(
éé) *
UserSession
éé* 5
[
éé5 6
]
éé6 7
userSession
éé8 C
)
ééC D
{
èè 	
_usersInGame
êê 
=
êê 
userSession
êê &
.
êê& '
ToList
êê' -
(
êê- .
)
êê. /
;
êê/ 0
for
ëë 
(
ëë 
int
ëë 
indexUsersInMatch
ëë %
=
ëë& '
$num
ëë( )
;
ëë) *
indexUsersInMatch
ëë* ;
<
ëë< =
_usersInGame
ëë> J
.
ëëJ K
Count
ëëK P
;
ëëP Q
indexUsersInMatch
ëëQ b
++
ëëb d
)
ëëd e
{
íí 
UserSession
ìì 
user
ìì  
=
ìì! "
_usersInGame
ìì# /
[
ìì/ 0
indexUsersInMatch
ìì0 A
]
ììA B
;
ììB C
Profile
îî 
profileUser
îî #
=
îî$ %
GetUserProfile
îî& 4
(
îî4 5
user
îî5 9
)
îî9 :
;
îî: ;!
UpdatePlayerDisplay
ïï #
(
ïï# $
user
ïï$ (
,
ïï( )
profileUser
ïï* 5
)
ïï5 6
;
ïï6 7
}
ññ 
}
óó 	
private
ôô 
static
ôô 
Profile
ôô 
GetUserProfile
ôô -
(
ôô- .
UserSession
ôô. 9
user
ôô: >
)
ôô> ?
{
öö 	
	HiveProxy
õõ 
.
õõ 
UserManagerClient
õõ '
userManagerClient
õõ( 9
=
õõ: ;
new
õõ< ?
	HiveProxy
õõ@ I
.
õõI J
UserManagerClient
õõJ [
(
õõ[ \
)
õõ\ ]
;
õõ] ^
Profile
úú 
profileUser
úú 
=
úú  !
userManagerClient
úú" 3
.
úú3 4&
GetUserProfileByUsername
úú4 L
(
úúL M
user
úúM Q
.
úúQ R
username
úúR Z
)
úúZ [
;
úú[ \
if
ùù 
(
ùù 
profileUser
ùù 
.
ùù 
idAccesAccount
ùù *
==
ùù+ -
	Constants
ùù. 7
.
ùù7 8
ErrorOperation
ùù8 F
||
ùùG I
user
ùùJ N
.
ùùN O
	idAccount
ùùO X
==
ùùY [
	Constants
ùù\ e
.
ùùe f
DefaultGuestId
ùùf t
)
ùùt u
{
ûû 
profileUser
üü 
.
üü 
	imagePath
üü %
=
üü& '
$str
üü( E
;
üüE F
}
†† 
return
°° 
profileUser
°° 
;
°° 
}
¢¢ 	
private
§§ 
void
§§ !
UpdatePlayerDisplay
§§ (
(
§§( )
UserSession
§§) 4
user
§§5 9
,
§§9 :
Profile
§§; B
profileUser
§§C N
)
§§N O
{
•• 	
_usernamePlayer1
¶¶ 
=
¶¶ 
_usersInGame
¶¶ +
[
¶¶+ ,
$num
¶¶, -
]
¶¶- .
.
¶¶. /
username
¶¶/ 7
;
¶¶7 8
if
ßß 
(
ßß $
IsPlayer1SlotAvailable
ßß &
(
ßß& '
user
ßß' +
)
ßß+ ,
)
ßß, -
{
®® "
txtBlock_PlayerName1
©© $
.
©©$ %
Text
©©% )
=
©©* +
user
©©, 0
.
©©0 1
username
©©1 9
;
©©9 :
img_ProfilePic1
™™ 
.
™™  
Source
™™  &
=
™™' (
new
™™) ,
BitmapImage
™™- 8
(
™™8 9
new
™™9 <
Uri
™™= @
(
™™@ A
profileUser
™™A L
.
™™L M
	imagePath
™™M V
,
™™V W
UriKind
™™X _
.
™™_ `
Relative
™™` h
)
™™h i
)
™™i j
;
™™j k
}
´´ 
if
¨¨ 
(
¨¨ 
_usersInGame
¨¨ 
.
¨¨ 
Count
¨¨ "
==
¨¨# %
$num
¨¨& '
)
¨¨' (
{
≠≠ 
_usernamePlayer2
ÆÆ  
=
ÆÆ! "
_usersInGame
ÆÆ# /
[
ÆÆ/ 0
$num
ÆÆ0 1
]
ÆÆ1 2
.
ÆÆ2 3
username
ÆÆ3 ;
;
ÆÆ; <
if
ØØ 
(
ØØ $
IsPlayer2SlotAvailable
ØØ *
(
ØØ* +
user
ØØ+ /
)
ØØ/ 0
)
ØØ0 1
{
∞∞ "
txtBlock_PlayerName2
±± (
.
±±( )
Text
±±) -
=
±±. /
user
±±0 4
.
±±4 5
username
±±5 =
;
±±= >
img_ProfilePic2
≤≤ #
.
≤≤# $
Source
≤≤$ *
=
≤≤+ ,
new
≤≤- 0
BitmapImage
≤≤1 <
(
≤≤< =
new
≤≤= @
Uri
≤≤A D
(
≤≤D E
profileUser
≤≤E P
.
≤≤P Q
	imagePath
≤≤Q Z
,
≤≤Z [
UriKind
≤≤\ c
.
≤≤c d
Relative
≤≤d l
)
≤≤l m
)
≤≤m n
;
≤≤n o
}
≥≥ 
}
¥¥ 
LoadPlayerPieces
µµ 
(
µµ !
stckp_Player1Pieces
µµ 0
,
µµ0 1
_player1Pieces
µµ2 @
,
µµ@ A
_usernamePlayer1
µµB R
)
µµR S
;
µµS T
LoadPlayerPieces
∂∂ 
(
∂∂ !
stckp_Player2Pieces
∂∂ 0
,
∂∂0 1
_player2Pieces
∂∂2 @
,
∂∂@ A
_usernamePlayer2
∂∂B R
)
∂∂R S
;
∂∂S T
}
∑∑ 	
private
ππ 
bool
ππ $
IsPlayer1SlotAvailable
ππ +
(
ππ+ ,
UserSession
ππ, 7
user
ππ8 <
)
ππ< =
{
∫∫ 	
return
ªª "
txtBlock_PlayerName1
ªª '
.
ªª' (
Text
ªª( ,
==
ªª- /

Properties
ªª0 :
.
ªª: ;
	Resources
ªª; D
.
ªªD E
txtbl_Player1
ªªE R
&&
ªªS U"
txtBlock_PlayerName2
ºº '
.
ºº' (
Text
ºº( ,
==
ºº- /"
UserProfileSingleton
ºº0 D
.
ººD E
username
ººE M
&&
ººN P
!
ΩΩ 
user
ΩΩ 
.
ΩΩ 
username
ΩΩ !
.
ΩΩ! "
Equals
ΩΩ" (
(
ΩΩ( )"
txtBlock_PlayerName2
ΩΩ) =
.
ΩΩ= >
Text
ΩΩ> B
)
ΩΩB C
;
ΩΩC D
}
ææ 	
private
¿¿ 
bool
¿¿ $
IsPlayer2SlotAvailable
¿¿ +
(
¿¿+ ,
UserSession
¿¿, 7
user
¿¿8 <
)
¿¿< =
{
¡¡ 	
return
¬¬ "
txtBlock_PlayerName2
¬¬ '
.
¬¬' (
Text
¬¬( ,
==
¬¬- /

Properties
¬¬0 :
.
¬¬: ;
	Resources
¬¬; D
.
¬¬D E
txtbl_Player2
¬¬E R
&&
¬¬S U"
txtBlock_PlayerName1
√√ '
.
√√' (
Text
√√( ,
==
√√- /"
UserProfileSingleton
√√0 D
.
√√D E
username
√√E M
&&
√√N P
!
ƒƒ 
user
ƒƒ 
.
ƒƒ 
username
ƒƒ !
.
ƒƒ! "
Equals
ƒƒ" (
(
ƒƒ( )"
txtBlock_PlayerName1
ƒƒ) =
.
ƒƒ= >
Text
ƒƒ> B
)
ƒƒB C
;
ƒƒC D
}
≈≈ 	
public
«« 
void
«« .
 ReceivePlayerHasLeftNotification
«« 4
(
««4 5
bool
««5 9!
doPlayerLeftTheGame
««: M
)
««M N
{
»» 	
if
…… 
(
…… !
doPlayerLeftTheGame
…… #
)
……# $
{
   
LoggerManager
ÀÀ 
logger
ÀÀ $
=
ÀÀ% &
new
ÀÀ' *
LoggerManager
ÀÀ+ 8
(
ÀÀ8 9
this
ÀÀ9 =
.
ÀÀ= >
GetType
ÀÀ> E
(
ÀÀE F
)
ÀÀF G
)
ÀÀG H
;
ÀÀH I
bool
ÃÃ 
exceptionOccurred
ÃÃ &
=
ÃÃ' (
false
ÃÃ) .
;
ÃÃ. /
DialogManager
ÕÕ 
.
ÕÕ %
ShowWarningMessageAlert
ÕÕ 5
(
ÕÕ5 6

Properties
ÕÕ6 @
.
ÕÕ@ A
	Resources
ÕÕA J
.
ÕÕJ K'
dialogUserHasLeftTheMatch
ÕÕK d
)
ÕÕd e
;
ÕÕe f
try
ŒŒ 
{
œœ 
UserSession
–– 
userSession
––  +
=
––, -
CreateUserSession
––. ?
(
––? @
)
––@ A
;
––A B
if
—— 
(
—— "
UserProfileSingleton
—— ,
.
——, -
	idAccount
——- 6
!=
——7 9
	Constants
——: C
.
——C D
DefaultGuestId
——D R
)
——R S
{
““ "
UpdateUserReputation
”” ,
(
””, -
userSession
””- 8
)
””8 9
;
””9 :
}
‘‘  
_gameManagerClient
’’ &
.
’’& '
LeaveTheGame
’’' 3
(
’’3 4
userSession
’’4 ?
,
’’? @
userSession
’’A L
.
’’L M
	codeMatch
’’M V
)
’’V W
;
’’W X
}
÷÷ 
catch
◊◊ 
(
◊◊ '
EndpointNotFoundException
◊◊ 0'
endpointNotFoundException
◊◊1 J
)
◊◊J K
{
ÿÿ 
HandleException
ŸŸ #
(
ŸŸ# $'
endpointNotFoundException
ŸŸ$ =
,
ŸŸ= >
logger
ŸŸ? E
)
ŸŸE F
;
ŸŸF G
exceptionOccurred
⁄⁄ %
=
⁄⁄& '
true
⁄⁄( ,
;
⁄⁄, -
}
€€ 
catch
‹‹ 
(
‹‹ 
TimeoutException
‹‹ &
timeoutException
‹‹' 7
)
‹‹7 8
{
›› 
HandleException
ﬁﬁ #
(
ﬁﬁ# $
timeoutException
ﬁﬁ$ 4
,
ﬁﬁ4 5
logger
ﬁﬁ6 <
)
ﬁﬁ< =
;
ﬁﬁ= >
exceptionOccurred
ﬂﬂ %
=
ﬂﬂ& '
true
ﬂﬂ( ,
;
ﬂﬂ, -
}
‡‡ 
catch
·· 
(
·· $
CommunicationException
·· ,$
communicationException
··- C
)
··C D
{
‚‚ 
HandleException
„„ #
(
„„# $$
communicationException
„„$ :
,
„„: ;
logger
„„< B
)
„„B C
;
„„C D
exceptionOccurred
‰‰ %
=
‰‰& '
true
‰‰( ,
;
‰‰, -
}
ÂÂ $
HandlePostLeaveActions
ÊÊ &
(
ÊÊ& '
exceptionOccurred
ÊÊ' 8
)
ÊÊ8 9
;
ÊÊ9 :
}
ÁÁ 
}
ËË 	
private
ÍÍ 
UserSession
ÍÍ 
CreateUserSession
ÍÍ -
(
ÍÍ- .
)
ÍÍ. /
{
ÎÎ 	
return
ÏÏ 
new
ÏÏ 
UserSession
ÏÏ "
{
ÌÌ 
username
ÓÓ 
=
ÓÓ "
UserProfileSingleton
ÓÓ /
.
ÓÓ/ 0
username
ÓÓ0 8
,
ÓÓ8 9
	idAccount
ÔÔ 
=
ÔÔ "
UserProfileSingleton
ÔÔ 0
.
ÔÔ0 1
	idAccount
ÔÔ1 :
,
ÔÔ: ;
	codeMatch
 
=
 
MatchSingleton
 *
.
* +
	codeMatch
+ 4
}
ÒÒ 
;
ÒÒ 
}
ÚÚ 	
private
ÙÙ 
static
ÙÙ 
void
ÙÙ "
UpdateUserReputation
ÙÙ 0
(
ÙÙ0 1
UserSession
ÙÙ1 <
userSession
ÙÙ= H
)
ÙÙH I
{
ıı 	
	HiveProxy
ˆˆ 
.
ˆˆ 
UserManagerClient
ˆˆ '
userManagerClient
ˆˆ( 9
=
ˆˆ: ;
new
ˆˆ< ?
UserManagerClient
ˆˆ@ Q
(
ˆˆQ R
)
ˆˆR S
;
ˆˆS T
userManagerClient
˜˜ 
.
˜˜ &
UpdatePlusUserReputation
˜˜ 6
(
˜˜6 7
userSession
˜˜7 B
.
˜˜B C
username
˜˜C K
,
˜˜K L
$num
˜˜M O
)
˜˜O P
;
˜˜P Q
}
¯¯ 	
private
˙˙ 
static
˙˙ 
void
˙˙ 
HandleException
˙˙ +
(
˙˙+ ,
	Exception
˙˙, 5
	exception
˙˙6 ?
,
˙˙? @
LoggerManager
˙˙A N
logger
˙˙O U
)
˙˙U V
{
˚˚ 	
if
¸¸ 
(
¸¸ 
	exception
¸¸ 
is
¸¸ '
EndpointNotFoundException
¸¸ 6
)
¸¸6 7
{
˝˝ 
logger
˛˛ 
.
˛˛ 
LogFatal
˛˛ 
(
˛˛  
	exception
˛˛  )
)
˛˛) *
;
˛˛* +
DialogManager
ˇˇ 
.
ˇˇ #
ShowErrorMessageAlert
ˇˇ 3
(
ˇˇ3 4

Properties
ˇˇ4 >
.
ˇˇ> ?
	Resources
ˇˇ? H
.
ˇˇH I%
dialogEndPointException
ˇˇI `
)
ˇˇ` a
;
ˇˇa b
}
ÄÄ 
else
ÅÅ 
if
ÅÅ 
(
ÅÅ 
	exception
ÅÅ 
is
ÅÅ !
TimeoutException
ÅÅ" 2
)
ÅÅ2 3
{
ÇÇ 
logger
ÉÉ 
.
ÉÉ 
LogWarn
ÉÉ 
(
ÉÉ 
	exception
ÉÉ (
)
ÉÉ( )
;
ÉÉ) *
DialogManager
ÑÑ 
.
ÑÑ #
ShowErrorMessageAlert
ÑÑ 3
(
ÑÑ3 4

Properties
ÑÑ4 >
.
ÑÑ> ?
	Resources
ÑÑ? H
.
ÑÑH I$
dialogTimeOutException
ÑÑI _
)
ÑÑ_ `
;
ÑÑ` a
}
ÖÖ 
else
ÜÜ 
if
ÜÜ 
(
ÜÜ 
	exception
ÜÜ 
is
ÜÜ !$
CommunicationException
ÜÜ" 8
)
ÜÜ8 9
{
áá 
logger
àà 
.
àà 
LogFatal
àà 
(
àà  
	exception
àà  )
)
àà) *
;
àà* +
DialogManager
ââ 
.
ââ #
ShowErrorMessageAlert
ââ 3
(
ââ3 4

Properties
ââ4 >
.
ââ> ?
	Resources
ââ? H
.
ââH I)
dialogComunicationException
ââI d
)
ââd e
;
ââe f
}
ää 
}
ãã 	
private
çç 
void
çç $
HandlePostLeaveActions
çç +
(
çç+ ,
bool
çç, 0
exceptionOccurred
çç1 B
)
ççB C
{
éé 	
if
èè 
(
èè 
exceptionOccurred
èè !
||
èè" $"
UserProfileSingleton
èè% 9
.
èè9 :
	idAccount
èè: C
==
èèD F
	Constants
èèG P
.
èèP Q
DefaultGuestId
èèQ _
)
èè_ `
{
êê 
ReturnToLoginView
ëë !
(
ëë! "
)
ëë" #
;
ëë# $
}
íí 
else
ìì 
{
îî 
GoToMainView
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 
}
óó 	
public
ôô 
void
ôô 
ReturnToLoginView
ôô %
(
ôô% &
)
ôô& '
{
öö 	
MatchSingleton
õõ 
.
õõ 
Instance
õõ #
.
õõ# $
ResetSingleton
õõ$ 2
(
õõ2 3
)
õõ3 4
;
õõ4 5"
UserProfileSingleton
úú  
.
úú  !
Instance
úú! )
.
úú) *
ResetSingleton
úú* 8
(
úú8 9
)
úú9 :
;
úú: ;
	LoginView
ùù 
	loginView
ùù 
=
ùù  !
new
ùù" %
	LoginView
ùù& /
(
ùù/ 0
)
ùù0 1
;
ùù1 2
this
ûû 
.
ûû 
NavigationService
ûû "
.
ûû" #
Navigate
ûû# +
(
ûû+ ,
	loginView
ûû, 5
)
ûû5 6
;
ûû6 7
}
üü 	
public
°° 
void
°° %
ReceiveFinalMatchResult
°° +
(
°°+ ,
string
°°, 2
winner
°°3 9
)
°°9 :
{
¢¢ 	)
LockGameBoardAndStackPanels
££ '
(
££' (
)
££( )
;
££) *
if
§§ 
(
§§ 
winner
§§ 
==
§§ 
$str
§§  
)
§§  !
{
••  
ShowVictoryMessage
¶¶ "
(
¶¶" #
$str
¶¶# )
)
¶¶) *
;
¶¶* +
_IsMatchFinished
ßß  
=
ßß! "
true
ßß# '
;
ßß' (
if
®® 
(
®® "
UserProfileSingleton
®® '
.
®®' (
	idAccount
®®( 1
!=
®®2 4
	Constants
®®5 >
.
®®> ?
DefaultGuestId
®®? M
)
®®M N
{
©© %
RegisterMatchDrawResult
™™ +
(
™™+ ,
)
™™, -
;
™™- .
}
´´ 
}
¨¨ 
else
≠≠ 
{
ÆÆ  
ShowVictoryMessage
ØØ "
(
ØØ" #
winner
ØØ# )
)
ØØ) *
;
ØØ* +
_IsMatchFinished
∞∞  
=
∞∞! "
true
∞∞# '
;
∞∞' (
if
±± 
(
±± "
UserProfileSingleton
±± (
.
±±( )
	idAccount
±±) 2
!=
±±3 5
	Constants
±±6 ?
.
±±? @
DefaultGuestId
±±@ N
)
±±N O
{
≤≤ !
RegisterMatchResult
≥≥ '
(
≥≥' (
winner
≥≥( .
)
≥≥. /
;
≥≥/ 0
}
¥¥ 
}
µµ 
	Constants
∂∂ 
.
∂∂ 
	IsInMatch
∂∂ 
=
∂∂  !
false
∂∂" '
;
∂∂' (
}
∑∑ 	
private
ππ 
void
ππ !
RegisterMatchResult
ππ (
(
ππ( )
string
ππ) /
winner
ππ0 6
)
ππ6 7
{
∫∫ 	
LoggerManager
ªª 
logger
ªª  
=
ªª! "
new
ªª# &
LoggerManager
ªª' 4
(
ªª4 5
this
ªª5 9
.
ªª9 :
GetType
ªª: A
(
ªªA B
)
ªªB C
)
ªªC D
;
ªªD E
try
ºº 
{
ΩΩ 
	HiveProxy
ææ 
.
ææ &
LeaderBoardManagerClient
ææ 2&
leaderBoardManagerClient
ææ3 K
=
ææL M
new
ææN Q
	HiveProxy
ææR [
.
ææ[ \&
LeaderBoardManagerClient
ææ\ t
(
ææt u
)
ææu v
;
ææv w
	HiveProxy
øø 
.
øø '
MatchCreatorManagerClient
øø 3'
matchCreatorManagerClient
øø4 M
=
øøN O
new
øøP S
	HiveProxy
øøT ]
.
øø] ^'
MatchCreatorManagerClient
øø^ w
(
øøw x
)
øøx y
;
øøy z
int
¿¿ 
updateResult
¿¿  
=
¿¿! "
$num
¿¿# $
;
¿¿$ %
if
¡¡ 
(
¡¡ 
winner
¡¡ 
==
¡¡ "
UserProfileSingleton
¡¡ 2
.
¡¡2 3
username
¡¡3 ;
)
¡¡; <
{
¬¬ 
updateResult
√√  
=
√√! "&
leaderBoardManagerClient
√√# ;
.
√√; <3
%UpdateWinnerResultToPlayerLeaderBoard
√√< a
(
√√a b"
UserProfileSingleton
√√b v
.
√√v w
	idAccount√√w Ä
)√√Ä Å
;√√Å Ç
}
ƒƒ 
else
≈≈ 
{
∆∆ 
updateResult
««  
=
««! "&
leaderBoardManagerClient
««# ;
.
««; <2
$UpdateLoserResultToPlayerLeaderBoard
««< `
(
««` a"
UserProfileSingleton
««a u
.
««u v
	idAccount
««v 
)«« Ä
;««Ä Å
}
»» 
if
…… 
(
…… 
updateResult
……  
==
……! #
$num
……$ %
)
……% &
{
   
MatchCreator
ÀÀ  
matchCreation
ÀÀ! .
=
ÀÀ/ 0
new
ÀÀ1 4
MatchCreator
ÀÀ5 A
(
ÀÀA B
)
ÀÀB C
{
ÃÃ 
idCreatorAccount
ÕÕ (
=
ÕÕ) *"
UserProfileSingleton
ÕÕ+ ?
.
ÕÕ? @
	idAccount
ÕÕ@ I
,
ÕÕI J
	codeMatch
ŒŒ !
=
ŒŒ" #
MatchSingleton
ŒŒ$ 2
.
ŒŒ2 3
	codeMatch
ŒŒ3 <
,
ŒŒ< =

stateMatch
œœ "
=
œœ# $
$str
œœ% /
}
–– 
;
–– '
matchCreatorManagerClient
—— -
.
——- .
UpdateMatchState
——. >
(
——> ?
matchCreation
——? L
)
——L M
;
——M N
}
““ 
else
”” 
{
‘‘ 
DialogManager
’’ !
.
’’! "#
ShowErrorMessageAlert
’’" 7
(
’’7 8

Properties
’’8 B
.
’’B C
	Resources
’’C L
.
’’L M(
dialogCouldntSaveMatchInfo
’’M g
)
’’g h
;
’’h i
}
÷÷ 
}
◊◊ 
catch
ÿÿ 
(
ÿÿ '
EndpointNotFoundException
ÿÿ ,
endPointException
ÿÿ- >
)
ÿÿ> ?
{
ŸŸ 
logger
⁄⁄ 
.
⁄⁄ 
LogFatal
⁄⁄ 
(
⁄⁄  
endPointException
⁄⁄  1
)
⁄⁄1 2
;
⁄⁄2 3
DialogManager
€€ 
.
€€ #
ShowErrorMessageAlert
€€ 3
(
€€3 4

Properties
€€4 >
.
€€> ?
	Resources
€€? H
.
€€H I%
dialogEndPointException
€€I `
)
€€` a
;
€€a b
ReturnToLoginView
‹‹ !
(
‹‹! "
)
‹‹" #
;
‹‹# $
}
›› 
catch
ﬁﬁ 
(
ﬁﬁ 
TimeoutException
ﬁﬁ #
timeOutException
ﬁﬁ$ 4
)
ﬁﬁ4 5
{
ﬂﬂ 
logger
‡‡ 
.
‡‡ 
LogWarn
‡‡ 
(
‡‡ 
timeOutException
‡‡ /
)
‡‡/ 0
;
‡‡0 1
DialogManager
·· 
.
·· #
ShowErrorMessageAlert
·· 3
(
··3 4

Properties
··4 >
.
··> ?
	Resources
··? H
.
··H I$
dialogTimeOutException
··I _
)
··_ `
;
··` a
}
‚‚ 
catch
„„ 
(
„„ $
CommunicationException
„„ )$
communicationException
„„* @
)
„„@ A
{
‰‰ 
logger
ÂÂ 
.
ÂÂ 
LogFatal
ÂÂ 
(
ÂÂ  $
communicationException
ÂÂ  6
)
ÂÂ6 7
;
ÂÂ7 8
DialogManager
ÊÊ 
.
ÊÊ #
ShowErrorMessageAlert
ÊÊ 3
(
ÊÊ3 4

Properties
ÊÊ4 >
.
ÊÊ> ?
	Resources
ÊÊ? H
.
ÊÊH I)
dialogComunicationException
ÊÊI d
)
ÊÊd e
;
ÊÊe f
ReturnToLoginView
ÁÁ !
(
ÁÁ! "
)
ÁÁ" #
;
ÁÁ# $
}
ËË 
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ %
RegisterMatchDrawResult
ÎÎ ,
(
ÎÎ, -
)
ÎÎ- .
{
ÏÏ 	
LoggerManager
ÌÌ 
logger
ÌÌ  
=
ÌÌ! "
new
ÌÌ# &
LoggerManager
ÌÌ' 4
(
ÌÌ4 5
this
ÌÌ5 9
.
ÌÌ9 :
GetType
ÌÌ: A
(
ÌÌA B
)
ÌÌB C
)
ÌÌC D
;
ÌÌD E
try
ÓÓ 
{
ÔÔ 
	HiveProxy
 
.
 &
LeaderBoardManagerClient
 2&
leaderBoardManagerClient
3 K
=
L M
new
N Q
	HiveProxy
R [
.
[ \&
LeaderBoardManagerClient
\ t
(
t u
)
u v
;
v w
	HiveProxy
ÒÒ 
.
ÒÒ '
MatchCreatorManagerClient
ÒÒ 3'
matchCreatorManagerClient
ÒÒ4 M
=
ÒÒN O
new
ÒÒP S
	HiveProxy
ÒÒT ]
.
ÒÒ] ^'
MatchCreatorManagerClient
ÒÒ^ w
(
ÒÒw x
)
ÒÒx y
;
ÒÒy z
int
ÚÚ 
updateResult
ÚÚ  
=
ÚÚ! "&
leaderBoardManagerClient
ÚÚ# ;
.
ÚÚ; <1
#UpdateDrawResultToPlayerLeaderBoard
ÚÚ< _
(
ÚÚ_ `"
UserProfileSingleton
ÚÚ` t
.
ÚÚt u
	idAccount
ÚÚu ~
)
ÚÚ~ 
;ÚÚ Ä
if
ÛÛ 
(
ÛÛ 
updateResult
ÛÛ 
==
ÛÛ  "
$num
ÛÛ# $
)
ÛÛ$ %
{
ÙÙ 
MatchCreator
ıı  
matchCreation
ıı! .
=
ıı/ 0
new
ıı1 4
MatchCreator
ıı5 A
(
ııA B
)
ııB C
{
ˆˆ 
idCreatorAccount
˜˜ (
=
˜˜) *"
UserProfileSingleton
˜˜+ ?
.
˜˜? @
	idAccount
˜˜@ I
,
˜˜I J
	codeMatch
¯¯ !
=
¯¯" #
MatchSingleton
¯¯$ 2
.
¯¯2 3
	codeMatch
¯¯3 <
,
¯¯< =

stateMatch
˘˘ "
=
˘˘# $
$str
˘˘% /
}
˙˙ 
;
˙˙ '
matchCreatorManagerClient
˚˚ -
.
˚˚- .
UpdateMatchState
˚˚. >
(
˚˚> ?
matchCreation
˚˚? L
)
˚˚L M
;
˚˚M N
}
¸¸ 
else
˝˝ 
{
˛˛ 
DialogManager
ˇˇ !
.
ˇˇ! "#
ShowErrorMessageAlert
ˇˇ" 7
(
ˇˇ7 8

Properties
ˇˇ8 B
.
ˇˇB C
	Resources
ˇˇC L
.
ˇˇL M(
dialogCouldntSaveMatchInfo
ˇˇM g
)
ˇˇg h
;
ˇˇh i
}
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ ,
endPointException
ÇÇ- >
)
ÇÇ> ?
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogFatal
ÑÑ 
(
ÑÑ  
endPointException
ÑÑ  1
)
ÑÑ1 2
;
ÑÑ2 3
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I%
dialogEndPointException
ÖÖI `
)
ÖÖ` a
;
ÖÖa b
ReturnToLoginView
ÜÜ !
(
ÜÜ! "
)
ÜÜ" #
;
ÜÜ# $
}
áá 
catch
àà 
(
àà 
TimeoutException
àà #
timeOutException
àà$ 4
)
àà4 5
{
ââ 
logger
ää 
.
ää 
LogWarn
ää 
(
ää 
timeOutException
ää /
)
ää/ 0
;
ää0 1
DialogManager
ãã 
.
ãã #
ShowErrorMessageAlert
ãã 3
(
ãã3 4

Properties
ãã4 >
.
ãã> ?
	Resources
ãã? H
.
ããH I$
dialogTimeOutException
ããI _
)
ãã_ `
;
ãã` a
}
åå 
catch
çç 
(
çç $
CommunicationException
çç )$
communicationException
çç* @
)
çç@ A
{
éé 
logger
èè 
.
èè 
LogFatal
èè 
(
èè  $
communicationException
èè  6
)
èè6 7
;
èè7 8
DialogManager
êê 
.
êê #
ShowErrorMessageAlert
êê 3
(
êê3 4

Properties
êê4 >
.
êê> ?
	Resources
êê? H
.
êêH I)
dialogComunicationException
êêI d
)
êêd e
;
êêe f
ReturnToLoginView
ëë !
(
ëë! "
)
ëë" #
;
ëë# $
}
íí 
}
ìì 	
private
ïï 
void
ïï  
ShowVictoryMessage
ïï '
(
ïï' (
string
ïï( .
result
ïï/ 5
)
ïï5 6
{
ññ 	
if
óó 
(
óó 
result
óó 
==
óó 
$str
óó  
)
óó  !
{
òò %
txtBlock_VictoryMessage
ôô '
.
ôô' (
Text
ôô( ,
=
ôô- .

Properties
ôô/ 9
.
ôô9 :
	Resources
ôô: C
.
ôôC D
lbl_Draw
ôôD L
;
ôôL M
}
öö 
else
õõ 
if
õõ 
(
õõ 
result
õõ 
==
õõ "
UserProfileSingleton
õõ 3
.
õõ3 4
username
õõ4 <
)
õõ< =
{
úú %
txtBlock_VictoryMessage
ùù '
.
ùù' (
Text
ùù( ,
=
ùù- .

Properties
ùù/ 9
.
ùù9 :
	Resources
ùù: C
.
ùùC D

lbl_Winner
ùùD N
;
ùùN O
}
ûû 
else
üü 
{
†† %
txtBlock_VictoryMessage
°° '
.
°°' (
Text
°°( ,
=
°°- .

Properties
°°/ 9
.
°°9 :
	Resources
°°: C
.
°°C D

lbl_Defeat
°°D N
;
°°N O
}
¢¢  
grd_VictoryOverlay
££ 
.
££ 

Visibility
££ )
=
££* +

Visibility
££, 6
.
££6 7
Visible
££7 >
;
££> ?

Storyboard
§§ 
victoryStoryboard
§§ (
=
§§) *
(
§§+ ,

Storyboard
§§, 6
)
§§6 7
FindResource
§§7 C
(
§§C D
$str
§§D ]
)
§§] ^
;
§§^ _
victoryStoryboard
•• 
.
•• 
Begin
•• #
(
••# $
)
••$ %
;
••% &
}
¶¶ 	
private
®® 
void
®® )
LockGameBoardAndStackPanels
®® 0
(
®®0 1
)
®®1 2
{
©© 	
stckp_Player1
™™ 
.
™™ 
	IsEnabled
™™ #
=
™™$ %
false
™™& +
;
™™+ ,
stckp_Player2
´´ 
.
´´ 
	IsEnabled
´´ #
=
´´$ %
false
´´& +
;
´´+ ,!
stckp_Player1Pieces
¨¨ 
.
¨¨  
	IsEnabled
¨¨  )
=
¨¨* +
false
¨¨, 1
;
¨¨1 2!
stckp_Player2Pieces
≠≠ 
.
≠≠  
	IsEnabled
≠≠  )
=
≠≠* +
false
≠≠, 1
;
≠≠1 2
foreach
ÆÆ 
(
ÆÆ 
	UIElement
ÆÆ 
element
ÆÆ %
in
ÆÆ& (!
canva_GameBoardGrid
ÆÆ) <
.
ÆÆ< =
Children
ÆÆ= E
)
ÆÆE F
{
ØØ 
if
∞∞ 
(
∞∞ 
element
∞∞ 
is
∞∞ 
Image
∞∞ $
image
∞∞% *
)
∞∞* +
{
±± 
image
≤≤ 
.
≤≤ 
	IsEnabled
≤≤ #
=
≤≤$ %
false
≤≤& +
;
≤≤+ ,
}
≥≥ 
}
¥¥ 
}
µµ 	
public
∑∑ 
void
∑∑  
PlayerDisconnected
∑∑ &
(
∑∑& '
string
∑∑' -"
disconnectedUsername
∑∑. B
)
∑∑B C
{
∏∏ 	

Dispatcher
ππ 
.
ππ 
Invoke
ππ 
(
ππ 
(
ππ 
)
ππ  
=>
ππ! #
{
∫∫ 
string
ªª 
message
ªª 
=
ªª  "
disconnectedUsername
ªª! 5
+
ªª6 7

Properties
ªª8 B
.
ªªB C
	Resources
ªªC L
.
ªªL M"
dialogLostConnection
ªªM a
;
ªªa b
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4
message
ºº4 ;
)
ºº; <
;
ºº< =
if
ææ 
(
ææ "
UserProfileSingleton
ææ (
.
ææ( )
	idAccount
ææ) 2
==
ææ3 5
	Constants
ææ6 ?
.
ææ? @
DefaultGuestId
ææ@ N
)
ææN O
{
øø 
ReturnToLoginView
¿¿ %
(
¿¿% &
)
¿¿& '
;
¿¿' (
}
¡¡ 
else
¬¬ 
{
√√ 
GoToMainView
ƒƒ  
(
ƒƒ  !
)
ƒƒ! "
;
ƒƒ" #
}
≈≈ 
}
∆∆ 
)
∆∆ 
;
∆∆ 
}
«« 	
}
…… 
}   Œπ
xC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\LobbyView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
[ 
CallbackBehavior 
( 
ConcurrencyMode %
=& '
ConcurrencyMode( 7
.7 8
	Reentrant8 A
)A B
]B C
public 

partial 
class 
	LobbyView "
:# $
Page% )
,) * 
IChatManagerCallback* >
,> ?#
IFriendsManagerCallback? V
,V W!
ILobbyManagerCallbackW l
{ 
private 
ChatManagerClient !
chatManager" -
;- .
private  
FriendsManagerClient $ 
friendsManagerClient% 9
;9 :
private 
LobbyManagerClient "
lobbyManagerClient# 5
;5 6
private $
UserSessionManagerClient ($
UserSessionManagerClient) A
;A B
private 
string 
matchLobbyCode %
;% &
private 
Profile 
userProfile #
=$ %
new& )
Profile* 1
(1 2
)2 3
{4 5
}6 7
;7 8
private 
List 
< 
UserSession  
>  !
usersInLobby" .
=/ 0
new1 4
List5 9
<9 :
UserSession: E
>E F
(F G
)G H
;H I
public 
	LobbyView 
( 
) 
{ 	 
friendsManagerClient  
=! "
new# & 
FriendsManagerClient' ;
(; <
new< ?
InstanceContext@ O
(O P
thisP T
)T U
)U V
;V W
chatManager 
= 
new 
ChatManagerClient /
(/ 0
new0 3
InstanceContext4 C
(C D
thisD H
)H I
)I J
;J K
lobbyManagerClient 
=  
new! $
LobbyManagerClient% 7
(7 8
new8 ;
InstanceContext< K
(K L
thisL P
)P Q
)Q R
;R S$
UserSessionManagerClient   $
=  % &
new  ' *$
UserSessionManagerClient  + C
(  C D
)  D E
;  E F
matchLobbyCode!! 
=!! 
MatchSingleton!! +
.!!+ ,
	codeMatch!!, 5
;!!5 6
InitializeComponent"" 
(""  
)""  !
;""! "
ConnectToChat## 
(## 
)## 
;## !
ConnectAsFriendJoined$$ !
($$! "
)$$" #
;$$# $
ConnectToTheLobby%% 
(%% 
)%% 
;%%  
lbl_GameCode&& 
.&& 
Content&&  
=&&! "
matchLobbyCode&&# 1
;&&1 2
if'' 
('' 
App'' 
.'' 
IsMusicPlaying'' "
)''" #
{(( 
App)) 
.)) 
	PlayMusic)) 
()) 
$str)) /
)))/ 0
;))0 1
}** 
}++ 	
private-- 
void--  
HideFullLobbyActions-- )
(--) *
)--* +
{.. 	
btn_SendOffPlayer// 
.// 

Visibility// (
=//) *

Visibility//+ 5
.//5 6
	Collapsed//6 ?
;//? @
	btn_Start00 
.00 

Visibility00  
=00! "

Visibility00# -
.00- .
	Collapsed00. 7
;007 8
stckp_Friends11 
.11 

Visibility11 $
=11% &

Visibility11' 1
.111 2
	Collapsed112 ;
;11; <
stckp_SearchFriends22 
.22  

Visibility22  *
=22+ ,

Visibility22- 7
.227 8
	Collapsed228 A
;22A B!
lvw_ActiveFriendsList33 !
.33! "

Visibility33" ,
=33- .

Visibility33/ 9
.339 :
	Collapsed33: C
;33C D
}44 	
private66 
void66 
ShowCreatorActions66 '
(66' (
)66( )
{77 	
stckp_Friends88 
.88 

Visibility88 $
=88% &

Visibility88' 1
.881 2
Visible882 9
;889 :
stckp_SearchFriends99 
.99  

Visibility99  *
=99+ ,

Visibility99- 7
.997 8
Visible998 ?
;99? @!
lvw_ActiveFriendsList:: !
.::! "

Visibility::" ,
=::- .

Visibility::/ 9
.::9 :
Visible::: A
;::A B
btn_SendOffPlayer;; 
.;; 

Visibility;; (
=;;) *

Visibility;;+ 5
.;;5 6
	Collapsed;;6 ?
;;;? @
	btn_Start<< 
.<< 

Visibility<<  
=<<! "

Visibility<<# -
.<<- .
	Collapsed<<. 7
;<<7 8
}== 	
private?? 
void?? 
ConnectToChat?? "
(??" #
)??# $
{@@ 	
LoggerManagerAA 
loggerAA  
=AA! "
newAA# &
LoggerManagerAA' 4
(AA4 5
thisAA5 9
.AA9 :
GetTypeAA: A
(AAA B
)AAB C
)AAC D
;AAD E
userProfileBB 
.BB 
usernameBB  
=BB! " 
UserProfileSingletonBB# 7
.BB7 8
usernameBB8 @
;BB@ A
userProfileCC 
.CC 
idAccesAccountCC &
=CC' ( 
UserProfileSingletonCC) =
.CC= >
	idAccountCC> G
;CCG H
tryDD 
{EE 
chatManagerFF 
.FF 
ConnectToChatLobbyFF .
(FF. /
userProfileFF/ :
,FF: ;
matchLobbyCodeFF< J
)FFJ K
;FFK L
}GG 
catchHH 
(HH %
EndpointNotFoundExceptionHH ,
endPointExceptionHH- >
)HH> ?
{II 
loggerJJ 
.JJ 
LogFatalJJ 
(JJ  
endPointExceptionJJ  1
)JJ1 2
;JJ2 3
DialogManagerKK 
.KK !
ShowErrorMessageAlertKK 3
(KK3 4

PropertiesKK4 >
.KK> ?
	ResourcesKK? H
.KKH I#
dialogEndPointExceptionKKI `
)KK` a
;KKa b
}LL 
catchMM 
(MM 
TimeoutExceptionMM #
timeOutExceptionMM$ 4
)MM4 5
{NN 
loggerOO 
.OO 
LogWarnOO 
(OO 
timeOutExceptionOO /
)OO/ 0
;OO0 1
DialogManagerPP 
.PP !
ShowErrorMessageAlertPP 3
(PP3 4

PropertiesPP4 >
.PP> ?
	ResourcesPP? H
.PPH I"
dialogTimeOutExceptionPPI _
)PP_ `
;PP` a
}QQ 
catchRR 
(RR "
CommunicationExceptionRR )"
communicationExceptionRR* @
)RR@ A
{SS 
loggerTT 
.TT 
LogFatalTT 
(TT  "
communicationExceptionTT  6
)TT6 7
;TT7 8
DialogManagerUU 
.UU !
ShowErrorMessageAlertUU 3
(UU3 4

PropertiesUU4 >
.UU> ?
	ResourcesUU? H
.UUH I'
dialogComunicationExceptionUUI d
)UUd e
;UUe f
}VV 
}WW 	
privateYY 
voidYY 
ConnectToTheLobbyYY &
(YY& '
)YY' (
{ZZ 	
LoggerManager[[ 
logger[[  
=[[! "
new[[# &
LoggerManager[[' 4
([[4 5
this[[5 9
.[[9 :
GetType[[: A
([[A B
)[[B C
)[[C D
;[[D E
try\\ 
{]] 
UserSession^^ 
userSession^^ '
=^^( )
new^^* -
UserSession^^. 9
(^^9 :
)^^: ;
{__ 
username`` 
=``  
UserProfileSingleton`` 3
.``3 4
username``4 <
,``< =
	idAccountaa 
=aa  
UserProfileSingletonaa  4
.aa4 5
	idAccountaa5 >
,aa> ?
	codeMatchbb 
=bb 
matchLobbyCodebb  .
}cc 
;cc 
lobbyManagerClientdd "
.dd" #
ConnectToLobbydd# 1
(dd1 2
userSessiondd2 =
,dd= >
matchLobbyCodedd> L
)ddL M
;ddM N
}ee 
catchff 
(ff %
EndpointNotFoundExceptionff ,
endPointExceptionff- >
)ff> ?
{gg 
loggerhh 
.hh 
LogFatalhh 
(hh  
endPointExceptionhh  1
)hh1 2
;hh2 3
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I#
dialogEndPointExceptioniiI `
)ii` a
;iia b
}jj 
catchkk 
(kk 
TimeoutExceptionkk #
timeOutExceptionkk$ 4
)kk4 5
{ll 
loggermm 
.mm 
LogWarnmm 
(mm 
timeOutExceptionmm /
)mm/ 0
;mm0 1
DialogManagernn 
.nn !
ShowErrorMessageAlertnn 3
(nn3 4

Propertiesnn4 >
.nn> ?
	Resourcesnn? H
.nnH I"
dialogTimeOutExceptionnnI _
)nn_ `
;nn` a
}oo 
catchpp 
(pp "
CommunicationExceptionpp )"
communicationExceptionpp* @
)pp@ A
{qq 
loggerrr 
.rr 
LogFatalrr 
(rr  "
communicationExceptionrr  6
)rr6 7
;rr7 8
DialogManagerss 
.ss !
ShowErrorMessageAlertss 3
(ss3 4

Propertiesss4 >
.ss> ?
	Resourcesss? H
.ssH I'
dialogComunicationExceptionssI d
)ssd e
;sse f
}tt 
}uu 	
privateww 
voidww !
ConnectAsFriendJoinedww *
(ww* +
)ww+ ,
{xx 	
LoggerManageryy 
loggeryy  
=yy! "
newyy# &
LoggerManageryy' 4
(yy4 5
thisyy5 9
.yy9 :
GetTypeyy: A
(yyA B
)yyB C
)yyC D
;yyD E
tryzz 
{{{ 
UserSession|| 
session|| #
=||$ %
new||& )
UserSession||* 5
(||5 6
)||6 7
{}} 
	idAccount~~ 
=~~ 
userProfile~~  +
.~~+ ,
idAccesAccount~~, :
,~~: ;
username 
= 
userProfile *
.* +
username+ 3
,3 4
}
ÄÄ 
;
ÄÄ "
friendsManagerClient
ÅÅ $
.
ÅÅ$ %#
JoinAsConnectedFriend
ÅÅ% :
(
ÅÅ: ;
session
ÅÅ; B
)
ÅÅB C
;
ÅÅC D"
friendsManagerClient
ÇÇ $
.
ÇÇ$ %
GetFriendsList
ÇÇ% 3
(
ÇÇ3 4
session
ÇÇ4 ;
)
ÇÇ; <
;
ÇÇ< =
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ '
EndpointNotFoundException
ÑÑ ,
endPointException
ÑÑ- >
)
ÑÑ> ?
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogFatal
ÜÜ 
(
ÜÜ  
endPointException
ÜÜ  1
)
ÜÜ1 2
;
ÜÜ2 3
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I%
dialogEndPointException
ááI `
)
áá` a
;
ááa b
}
àà 
catch
ââ 
(
ââ 
TimeoutException
ââ #
timeOutException
ââ$ 4
)
ââ4 5
{
ää 
logger
ãã 
.
ãã 
LogWarn
ãã 
(
ãã 
timeOutException
ãã /
)
ãã/ 0
;
ãã0 1
DialogManager
åå 
.
åå #
ShowErrorMessageAlert
åå 3
(
åå3 4

Properties
åå4 >
.
åå> ?
	Resources
åå? H
.
ååH I$
dialogTimeOutException
ååI _
)
åå_ `
;
åå` a
}
çç 
catch
éé 
(
éé $
CommunicationException
éé )$
communicationException
éé* @
)
éé@ A
{
èè 
logger
êê 
.
êê 
LogFatal
êê 
(
êê  $
communicationException
êê  6
)
êê6 7
;
êê7 8
DialogManager
ëë 
.
ëë #
ShowErrorMessageAlert
ëë 3
(
ëë3 4

Properties
ëë4 >
.
ëë> ?
	Resources
ëë? H
.
ëëH I)
dialogComunicationException
ëëI d
)
ëëd e
;
ëëe f
}
íí 
}
ìì 	
private
ïï 
void
ïï 
Image_MouseDown
ïï $
(
ïï$ %
object
ïï% +
sender
ïï, 2
,
ïï2 3"
MouseButtonEventArgs
ïï4 H
e
ïïI J
)
ïïJ K
{
ññ 	
if
óó 
(
óó 
DialogManager
óó 
.
óó *
ShowConfirmationMessageAlert
óó :
(
óó: ;

Properties
óó; E
.
óóE F
	Resources
óóF O
.
óóO P%
dialogConfirmLeaveLobby
óóP g
)
óóg h
)
óóh i
{
òò 
LoggerManager
ôô 
logger
ôô $
=
ôô% &
new
ôô' *
LoggerManager
ôô+ 8
(
ôô8 9
this
ôô9 =
.
ôô= >
GetType
ôô> E
(
ôôE F
)
ôôF G
)
ôôG H
;
ôôH I
UserSession
öö 
userSession
öö '
=
öö( )
new
öö* -
UserSession
öö. 9
(
öö9 :
)
öö: ;
{
õõ 
username
úú 
=
úú "
UserProfileSingleton
úú 3
.
úú3 4
username
úú4 <
,
úú< =
	idAccount
ùù 
=
ùù "
UserProfileSingleton
ùù  4
.
ùù4 5
	idAccount
ùù5 >
,
ùù> ?
	codeMatch
ûû 
=
ûû 
MatchSingleton
ûû  .
.
ûû. /
	codeMatch
ûû/ 8
}
üü 
;
üü 
try
†† 
{
°° 
bool
¢¢ 
isKicked
¢¢ !
=
¢¢" #
false
¢¢$ )
;
¢¢) *
MatchSingleton
££ "
.
££" #
Instance
££# +
.
££+ ,
ResetSingleton
££, :
(
££: ;
)
££; <
;
££< =!
KickPlayerFromLobby
§§ '
(
§§' (
userSession
§§( 3
,
§§3 4
isKicked
§§5 =
)
§§= >
;
§§> ?'
RedirectRespectivePlayers
•• -
(
••- .
isKicked
••. 6
)
••6 7
;
••7 8
matchLobbyCode
ßß "
=
ßß# $
$str
ßß% (
;
ßß( )
}
®® 
catch
©© 
(
©© '
EndpointNotFoundException
©© 0
endPointException
©©1 B
)
©©B C
{
™™ 
logger
´´ 
.
´´ 
LogFatal
´´ #
(
´´# $
endPointException
´´$ 5
)
´´5 6
;
´´6 7
DialogManager
¨¨ !
.
¨¨! "#
ShowErrorMessageAlert
¨¨" 7
(
¨¨7 8

Properties
¨¨8 B
.
¨¨B C
	Resources
¨¨C L
.
¨¨L M%
dialogEndPointException
¨¨M d
)
¨¨d e
;
¨¨e f
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
TimeoutException
ÆÆ '
timeOutException
ÆÆ( 8
)
ÆÆ8 9
{
ØØ 
logger
∞∞ 
.
∞∞ 
LogWarn
∞∞ "
(
∞∞" #
timeOutException
∞∞# 3
)
∞∞3 4
;
∞∞4 5
DialogManager
±± !
.
±±! "#
ShowErrorMessageAlert
±±" 7
(
±±7 8

Properties
±±8 B
.
±±B C
	Resources
±±C L
.
±±L M$
dialogTimeOutException
±±M c
)
±±c d
;
±±d e
}
≤≤ 
catch
≥≥ 
(
≥≥ $
CommunicationException
≥≥ -$
communicationException
≥≥. D
)
≥≥D E
{
¥¥ 
logger
µµ 
.
µµ 
LogFatal
µµ #
(
µµ# $$
communicationException
µµ$ :
)
µµ: ;
;
µµ; <
DialogManager
∂∂ !
.
∂∂! "#
ShowErrorMessageAlert
∂∂" 7
(
∂∂7 8

Properties
∂∂8 B
.
∂∂B C
	Resources
∂∂C L
.
∂∂L M)
dialogComunicationException
∂∂M h
)
∂∂h i
;
∂∂i j
}
∑∑ 
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª !
KickPlayerFromLobby
ªª (
(
ªª( )
UserSession
ªª) 4
session
ªª5 <
,
ªª< =
bool
ªª> B
isKicked
ªªC K
)
ªªK L
{
ºº 	
LoggerManager
ΩΩ 
logger
ΩΩ  
=
ΩΩ! "
new
ΩΩ# &
LoggerManager
ΩΩ' 4
(
ΩΩ4 5
this
ΩΩ5 9
.
ΩΩ9 :
GetType
ΩΩ: A
(
ΩΩA B
)
ΩΩB C
)
ΩΩC D
;
ΩΩD E
try
ææ 
{
øø  
lobbyManagerClient
¿¿ "
.
¿¿" #"
LeavePlayerFromLobby
¿¿# 7
(
¿¿7 8
session
¿¿8 ?
,
¿¿? @
matchLobbyCode
¿¿A O
,
¿¿O P
isKicked
¿¿Q Y
)
¿¿Y Z
;
¿¿Z [
}
¡¡ 
catch
¬¬ 
(
¬¬ '
EndpointNotFoundException
¬¬ ,
endPointException
¬¬- >
)
¬¬> ?
{
√√ 
logger
ƒƒ 
.
ƒƒ 
LogFatal
ƒƒ 
(
ƒƒ  
endPointException
ƒƒ  1
)
ƒƒ1 2
;
ƒƒ2 3
DialogManager
≈≈ 
.
≈≈ #
ShowErrorMessageAlert
≈≈ 3
(
≈≈3 4

Properties
≈≈4 >
.
≈≈> ?
	Resources
≈≈? H
.
≈≈H I%
dialogEndPointException
≈≈I `
)
≈≈` a
;
≈≈a b
}
∆∆ 
catch
«« 
(
«« 
TimeoutException
«« #
timeOutException
««$ 4
)
««4 5
{
»» 
logger
…… 
.
…… 
LogWarn
…… 
(
…… 
timeOutException
…… /
)
……/ 0
;
……0 1
DialogManager
   
.
   #
ShowErrorMessageAlert
   3
(
  3 4

Properties
  4 >
.
  > ?
	Resources
  ? H
.
  H I$
dialogTimeOutException
  I _
)
  _ `
;
  ` a
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ $
CommunicationException
ÃÃ )$
communicationException
ÃÃ* @
)
ÃÃ@ A
{
ÕÕ 
logger
ŒŒ 
.
ŒŒ 
LogFatal
ŒŒ 
(
ŒŒ  $
communicationException
ŒŒ  6
)
ŒŒ6 7
;
ŒŒ7 8
DialogManager
œœ 
.
œœ #
ShowErrorMessageAlert
œœ 3
(
œœ3 4

Properties
œœ4 >
.
œœ> ?
	Resources
œœ? H
.
œœH I)
dialogComunicationException
œœI d
)
œœd e
;
œœe f
}
–– 
}
—— 	
private
”” 
void
””  
LeaveUserGameLobby
”” '
(
””' (
)
””( )
{
‘‘ 	
LoggerManager
’’ 
logger
’’  
=
’’! "
new
’’# &
LoggerManager
’’' 4
(
’’4 5
this
’’5 9
.
’’9 :
GetType
’’: A
(
’’A B
)
’’B C
)
’’C D
;
’’D E
try
÷÷ 
{
◊◊ 
Profile
ÿÿ 
guestToDisconnect
ÿÿ )
=
ÿÿ* +
new
ÿÿ, /
Profile
ÿÿ0 7
(
ÿÿ7 8
)
ÿÿ8 9
{
ŸŸ 
username
⁄⁄ 
=
⁄⁄ "
UserProfileSingleton
⁄⁄ 3
.
⁄⁄3 4
username
⁄⁄4 <
,
⁄⁄< =
idAccesAccount
€€ "
=
€€# $"
UserProfileSingleton
€€% 9
.
€€9 :
	idAccount
€€: C
}
‹‹ 
;
‹‹ 
int
›› *
profileDisconnectionFromChat
›› 0
=
››1 2
chatManager
››3 >
.
››> ?%
DisconectPlayerFromChat
››? V
(
››V W
guestToDisconnect
››W h
,
››h i
matchLobbyCode
››j x
)
››x y
;
››y z
if
ﬁﬁ 
(
ﬁﬁ *
profileDisconnectionFromChat
ﬁﬁ 0
==
ﬁﬁ1 3
	Constants
ﬁﬁ4 =
.
ﬁﬁ= >
SuccesOperation
ﬁﬁ> M
)
ﬁﬁM N
{
ﬂﬂ 
MainMenu
‡‡ 
mainMenu
‡‡ %
=
‡‡& '
new
‡‡( +
MainMenu
‡‡, 4
(
‡‡4 5
)
‡‡5 6
;
‡‡6 7
this
·· 
.
·· 
NavigationService
·· *
.
··* +
Navigate
··+ 3
(
··3 4
mainMenu
··4 <
)
··< =
;
··= >
}
‚‚ 
else
„„ 
{
‰‰ 
DialogManager
ÂÂ !
.
ÂÂ! "%
ShowWarningMessageAlert
ÂÂ" 9
(
ÂÂ9 :

Properties
ÂÂ: D
.
ÂÂD E
	Resources
ÂÂE N
.
ÂÂN O-
dialogCouldntLobbyDisconnection
ÂÂO n
)
ÂÂn o
;
ÂÂo p
}
ÊÊ 
}
ÁÁ 
catch
ËË 
(
ËË '
EndpointNotFoundException
ËË ,
endPointException
ËË- >
)
ËË> ?
{
ÈÈ 
logger
ÍÍ 
.
ÍÍ 
LogFatal
ÍÍ 
(
ÍÍ  
endPointException
ÍÍ  1
)
ÍÍ1 2
;
ÍÍ2 3
DialogManager
ÎÎ 
.
ÎÎ #
ShowErrorMessageAlert
ÎÎ 3
(
ÎÎ3 4

Properties
ÎÎ4 >
.
ÎÎ> ?
	Resources
ÎÎ? H
.
ÎÎH I%
dialogEndPointException
ÎÎI `
)
ÎÎ` a
;
ÎÎa b
}
ÏÏ 
catch
ÌÌ 
(
ÌÌ 
TimeoutException
ÌÌ #
timeOutException
ÌÌ$ 4
)
ÌÌ4 5
{
ÓÓ 
logger
ÔÔ 
.
ÔÔ 
LogWarn
ÔÔ 
(
ÔÔ 
timeOutException
ÔÔ /
)
ÔÔ/ 0
;
ÔÔ0 1
DialogManager
 
.
 #
ShowErrorMessageAlert
 3
(
3 4

Properties
4 >
.
> ?
	Resources
? H
.
H I$
dialogTimeOutException
I _
)
_ `
;
` a
}
ÒÒ 
catch
ÚÚ 
(
ÚÚ $
CommunicationException
ÚÚ )$
communicationException
ÚÚ* @
)
ÚÚ@ A
{
ÛÛ 
logger
ÙÙ 
.
ÙÙ 
LogFatal
ÙÙ 
(
ÙÙ  $
communicationException
ÙÙ  6
)
ÙÙ6 7
;
ÙÙ7 8
DialogManager
ıı 
.
ıı #
ShowErrorMessageAlert
ıı 3
(
ıı3 4

Properties
ıı4 >
.
ıı> ?
	Resources
ıı? H
.
ııH I)
dialogComunicationException
ııI d
)
ııd e
;
ııe f
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ !
LeaveGuestGameLobby
˘˘ (
(
˘˘( )
)
˘˘) *
{
˙˙ 	
LoggerManager
˚˚ 
logger
˚˚  
=
˚˚! "
new
˚˚# &
LoggerManager
˚˚' 4
(
˚˚4 5
this
˚˚5 9
.
˚˚9 :
GetType
˚˚: A
(
˚˚A B
)
˚˚B C
)
˚˚C D
;
˚˚D E
try
¸¸ 
{
˝˝ 
	HiveProxy
˛˛ 
.
˛˛ &
UserSessionManagerClient
˛˛ 2&
userSessionManagerClient
˛˛3 K
=
˛˛L M
new
˛˛N Q
	HiveProxy
˛˛R [
.
˛˛[ \&
UserSessionManagerClient
˛˛\ t
(
˛˛t u
)
˛˛u v
;
˛˛v w
Profile
ˇˇ 
guestToDisconnect
ˇˇ )
=
ˇˇ* +
new
ˇˇ, /
Profile
ˇˇ0 7
(
ˇˇ7 8
)
ˇˇ8 9
{
ÄÄ 
username
ÅÅ 
=
ÅÅ "
UserProfileSingleton
ÅÅ 3
.
ÅÅ3 4
username
ÅÅ4 <
,
ÅÅ< =
idAccesAccount
ÇÇ "
=
ÇÇ# $"
UserProfileSingleton
ÇÇ% 9
.
ÇÇ9 :
	idAccount
ÇÇ: C
}
ÉÉ 
;
ÉÉ 
UserSession
ÑÑ 
userSession
ÑÑ '
=
ÑÑ( )
new
ÑÑ* -
UserSession
ÑÑ. 9
(
ÑÑ9 :
)
ÑÑ: ;
{
ÖÖ 
username
ÜÜ 
=
ÜÜ "
UserProfileSingleton
ÜÜ 3
.
ÜÜ3 4
username
ÜÜ4 <
,
ÜÜ< =
	idAccount
áá 
=
áá "
UserProfileSingleton
áá  4
.
áá4 5
	idAccount
áá5 >
,
áá> ?
}
àà 
;
àà 
int
ââ *
profileDisconnectionFromChat
ââ 0
=
ââ1 2
chatManager
ââ3 >
.
ââ> ?%
DisconectPlayerFromChat
ââ? V
(
ââV W
guestToDisconnect
ââW h
,
ââh i
matchLobbyCode
ââj x
)
ââx y
;
âây z
int
ää *
profileDisconnectionFromGame
ää 0
=
ää1 2&
userSessionManagerClient
ää3 K
.
ääK L

Disconnect
ääL V
(
ääV W
userSession
ääW b
,
ääb c
false
ääd i
)
ääi j
;
ääj k
if
ãã 
(
ãã *
profileDisconnectionFromChat
ãã /
==
ãã0 2
	Constants
ãã3 <
.
ãã< =
SuccesOperation
ãã= L
&&
ããM O*
profileDisconnectionFromGame
ããP l
==
ããm o
	Constants
ããp y
.
ããy z
SuccesOperationããz â
)ããâ ä
{
åå "
UserProfileSingleton
çç (
.
çç( )
Instance
çç) 1
.
çç1 2
ResetSingleton
çç2 @
(
çç@ A
)
ççA B
;
ççB C
	LoginView
éé 
	loginView
éé '
=
éé( )
new
éé* -
	LoginView
éé. 7
(
éé7 8
)
éé8 9
;
éé9 :
this
èè 
.
èè 
NavigationService
èè *
.
èè* +
Navigate
èè+ 3
(
èè3 4
	loginView
èè4 =
)
èè= >
;
èè> ?
}
êê 
else
ëë 
{
íí 
DialogManager
ìì !
.
ìì! "%
ShowWarningMessageAlert
ìì" 9
(
ìì9 :

Properties
ìì: D
.
ììD E
	Resources
ììE N
.
ììN O/
!globalDialog_PartialDisconnection
ììO p
)
ììp q
;
ììq r
}
îî 
}
ïï 
catch
ññ 
(
ññ '
EndpointNotFoundException
ññ ,
endPointException
ññ- >
)
ññ> ?
{
óó 
logger
òò 
.
òò 
LogFatal
òò 
(
òò  
endPointException
òò  1
)
òò1 2
;
òò2 3
DialogManager
ôô 
.
ôô #
ShowErrorMessageAlert
ôô 3
(
ôô3 4

Properties
ôô4 >
.
ôô> ?
	Resources
ôô? H
.
ôôH I%
dialogEndPointException
ôôI `
)
ôô` a
;
ôôa b
}
öö 
catch
õõ 
(
õõ 
TimeoutException
õõ #
timeOutException
õõ$ 4
)
õõ4 5
{
úú 
logger
ùù 
.
ùù 
LogWarn
ùù 
(
ùù 
timeOutException
ùù /
)
ùù/ 0
;
ùù0 1
DialogManager
ûû 
.
ûû #
ShowErrorMessageAlert
ûû 3
(
ûû3 4

Properties
ûû4 >
.
ûû> ?
	Resources
ûû? H
.
ûûH I$
dialogTimeOutException
ûûI _
)
ûû_ `
;
ûû` a
}
üü 
catch
†† 
(
†† $
CommunicationException
†† )$
communicationException
††* @
)
††@ A
{
°° 
logger
¢¢ 
.
¢¢ 
LogFatal
¢¢ 
(
¢¢  $
communicationException
¢¢  6
)
¢¢6 7
;
¢¢7 8
DialogManager
££ 
.
££ #
ShowErrorMessageAlert
££ 3
(
££3 4

Properties
££4 >
.
££> ?
	Resources
££? H
.
££H I)
dialogComunicationException
££I d
)
££d e
;
££e f
}
§§ 
}
•• 	
public
ßß 
void
ßß 
ReceiveMessage
ßß "
(
ßß" #
Message
ßß# *
[
ßß* +
]
ßß+ ,
messages
ßß- 5
)
ßß5 6
{
®® 	
ChatMessagesPanel
©© 
.
©© 
Children
©© &
.
©©& '
Clear
©©' ,
(
©©, -
)
©©- .
;
©©. /
for
™™ 
(
™™ 
int
™™ 
indexListMessage
™™ %
=
™™& '
$num
™™( )
;
™™) *
indexListMessage
™™+ ;
<
™™< =
messages
™™> F
.
™™F G
Length
™™G M
;
™™M N
indexListMessage
™™O _
++
™™_ a
)
™™a b
{
´´ 
if
¨¨ 
(
¨¨ 
messages
¨¨ 
[
¨¨ 
indexListMessage
¨¨ -
]
¨¨- .
.
¨¨. /
username
¨¨/ 7
.
¨¨7 8
Equals
¨¨8 >
(
¨¨> ?
userProfile
¨¨? J
.
¨¨J K
username
¨¨K S
)
¨¨S T
)
¨¨T U
{
≠≠ 
string
ÆÆ 
messageReceived
ÆÆ *
=
ÆÆ+ ,
$"
ÆÆ- /
{
ÆÆ/ 0
messages
ÆÆ0 8
[
ÆÆ8 9
indexListMessage
ÆÆ9 I
]
ÆÆI J
.
ÆÆJ K
username
ÆÆK S
}
ÆÆS T
$str
ÆÆT V
{
ÆÆV W
messages
ÆÆW _
[
ÆÆ_ `
indexListMessage
ÆÆ` p
]
ÆÆp q
.
ÆÆq r
text
ÆÆr v
}
ÆÆv w
$str
ÆÆw x
{
ÆÆx y
DateTimeÆÆy Å
.ÆÆÅ Ç
NowÆÆÇ Ö
.ÆÆÖ Ü
ToStringÆÆÜ é
(ÆÆé è
$strÆÆè ñ
)ÆÆñ ó
}ÆÆó ò
"ÆÆò ô
;ÆÆô ö
Border
ØØ 
messageContainer
ØØ +
=
ØØ, -
new
ØØ. 1
Border
ØØ2 8
{
∞∞ 

Background
±± "
=
±±# $
new
±±% (
SolidColorBrush
±±) 8
(
±±8 9
Colors
±±9 ?
.
±±? @
White
±±@ E
)
±±E F
,
±±F G
BorderThickness
≤≤ '
=
≤≤( )
new
≤≤* -
	Thickness
≤≤. 7
(
≤≤7 8
$num
≤≤8 9
)
≤≤9 :
,
≤≤: ;
Padding
≥≥ 
=
≥≥  !
new
≥≥" %
	Thickness
≥≥& /
(
≥≥/ 0
$num
≥≥0 2
)
≥≥2 3
,
≥≥3 4
Margin
¥¥ 
=
¥¥  
new
¥¥! $
	Thickness
¥¥% .
(
¥¥. /
$num
¥¥/ 1
,
¥¥1 2
$num
¥¥3 4
,
¥¥4 5
$num
¥¥6 8
,
¥¥8 9
$num
¥¥: ;
)
¥¥; <
,
¥¥< =!
HorizontalAlignment
µµ +
=
µµ, -!
HorizontalAlignment
µµ. A
.
µµA B
Right
µµB G
}
∂∂ 
;
∂∂ 
	TextBlock
∑∑ 
messageBlock
∑∑ *
=
∑∑+ ,
new
∑∑- 0
	TextBlock
∑∑1 :
{
∏∏ 
Text
ππ 
=
ππ 
messageReceived
ππ .
,
ππ. /

Foreground
∫∫ "
=
∫∫# $
new
∫∫% (
SolidColorBrush
∫∫) 8
(
∫∫8 9
Colors
∫∫9 ?
.
∫∫? @
Black
∫∫@ E
)
∫∫E F
,
∫∫F G
FontSize
ªª  
=
ªª! "
$num
ªª# %
,
ªª% &

FontWeight
ºº "
=
ºº# $
FontWeights
ºº% 0
.
ºº0 1
Bold
ºº1 5
,
ºº5 6
TextWrapping
ΩΩ $
=
ΩΩ% &
TextWrapping
ΩΩ' 3
.
ΩΩ3 4
Wrap
ΩΩ4 8
,
ΩΩ8 9
MaxWidth
ææ  
=
ææ! "
$num
ææ# &
}
øø 
;
øø 
messageContainer
¿¿ $
.
¿¿$ %
Child
¿¿% *
=
¿¿+ ,
messageBlock
¿¿- 9
;
¿¿9 :
ChatMessagesPanel
¡¡ %
.
¡¡% &
Children
¡¡& .
.
¡¡. /
Add
¡¡/ 2
(
¡¡2 3
messageContainer
¡¡3 C
)
¡¡C D
;
¡¡D E
}
¬¬ 
else
√√ 
{
ƒƒ 
string
≈≈ 
messageReceived
≈≈ *
=
≈≈+ ,
$"
≈≈- /
{
≈≈/ 0
messages
≈≈0 8
[
≈≈8 9
indexListMessage
≈≈9 I
]
≈≈I J
.
≈≈J K
username
≈≈K S
}
≈≈S T
$str
≈≈T V
{
≈≈V W
messages
≈≈W _
[
≈≈_ `
indexListMessage
≈≈` p
]
≈≈p q
.
≈≈q r
text
≈≈r v
}
≈≈v w
$str
≈≈w x
{
≈≈x y
DateTime≈≈y Å
.≈≈Å Ç
Now≈≈Ç Ö
.≈≈Ö Ü
ToString≈≈Ü é
(≈≈é è
$str≈≈è ñ
)≈≈ñ ó
}≈≈ó ò
"≈≈ò ô
;≈≈ô ö
Border
∆∆ 
messageContainer
∆∆ +
=
∆∆, -
new
∆∆. 1
Border
∆∆2 8
{
«« 

Background
»» "
=
»»# $
new
»»% (
SolidColorBrush
»») 8
(
»»8 9
Colors
»»9 ?
.
»»? @
White
»»@ E
)
»»E F
,
»»F G
BorderThickness
…… '
=
……( )
new
……* -
	Thickness
……. 7
(
……7 8
$num
……8 9
)
……9 :
,
……: ;
Padding
   
=
    !
new
  " %
	Thickness
  & /
(
  / 0
$num
  0 2
)
  2 3
,
  3 4
Margin
ÀÀ 
=
ÀÀ  
new
ÀÀ! $
	Thickness
ÀÀ% .
(
ÀÀ. /
$num
ÀÀ/ 1
,
ÀÀ1 2
$num
ÀÀ3 4
,
ÀÀ4 5
$num
ÀÀ6 8
,
ÀÀ8 9
$num
ÀÀ: ;
)
ÀÀ; <
,
ÀÀ< =!
HorizontalAlignment
ÃÃ +
=
ÃÃ, -!
HorizontalAlignment
ÃÃ. A
.
ÃÃA B
Left
ÃÃB F
}
ÕÕ 
;
ÕÕ 
	TextBlock
ŒŒ 
messageBlock
ŒŒ *
=
ŒŒ+ ,
new
ŒŒ- 0
	TextBlock
ŒŒ1 :
{
œœ 
Text
–– 
=
–– 
messageReceived
–– .
,
––. /

Foreground
—— "
=
——# $
new
——% (
SolidColorBrush
——) 8
(
——8 9
Colors
——9 ?
.
——? @
Black
——@ E
)
——E F
,
——F G
FontSize
““  
=
““! "
$num
““# %
,
““% &

FontWeight
”” "
=
””# $
FontWeights
””% 0
.
””0 1
Bold
””1 5
,
””5 6
TextWrapping
‘‘ $
=
‘‘% &
TextWrapping
‘‘' 3
.
‘‘3 4
Wrap
‘‘4 8
,
‘‘8 9
MaxWidth
’’  
=
’’! "
$num
’’# &
}
÷÷ 
;
÷÷ 
messageContainer
◊◊ $
.
◊◊$ %
Child
◊◊% *
=
◊◊+ ,
messageBlock
◊◊- 9
;
◊◊9 :
ChatMessagesPanel
ÿÿ %
.
ÿÿ% &
Children
ÿÿ& .
.
ÿÿ. /
Add
ÿÿ/ 2
(
ÿÿ2 3
messageContainer
ÿÿ3 C
)
ÿÿC D
;
ÿÿD E
}
ŸŸ 
}
⁄⁄ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ "
BtnSendMessage_Click
ﬁﬁ )
(
ﬁﬁ) *
object
ﬁﬁ* 0
sender
ﬁﬁ1 7
,
ﬁﬁ7 8
RoutedEventArgs
ﬁﬁ9 H
e
ﬁﬁI J
)
ﬁﬁJ K
{
ﬂﬂ 	
LoggerManager
‡‡ 
logger
‡‡  
=
‡‡! "
new
‡‡# &
LoggerManager
‡‡' 4
(
‡‡4 5
this
‡‡5 9
.
‡‡9 :
GetType
‡‡: A
(
‡‡A B
)
‡‡B C
)
‡‡C D
;
‡‡D E
string
·· 
message
·· 
=
·· 
txtb_MessageInput
·· .
.
··. /
Text
··/ 3
;
··3 4
if
„„ 
(
„„ 
!
„„ 
string
„„ 
.
„„ 
IsNullOrEmpty
„„ %
(
„„% &
message
„„& -
)
„„- .
)
„„. /
{
‰‰ 
Message
ÂÂ 
messageToSend
ÂÂ %
=
ÂÂ& '
new
ÂÂ( +
Message
ÂÂ, 3
(
ÂÂ3 4
)
ÂÂ4 5
{
ÊÊ 
username
ÁÁ 
=
ÁÁ 
userProfile
ÁÁ *
.
ÁÁ* +
username
ÁÁ+ 3
,
ÁÁ3 4
text
ËË 
=
ËË 
message
ËË "
}
ÈÈ 
;
ÈÈ 
try
ÍÍ 
{
ÎÎ 
chatManager
ÏÏ 
.
ÏÏ  
SendMessages
ÏÏ  ,
(
ÏÏ, -
messageToSend
ÏÏ- :
,
ÏÏ: ;
matchLobbyCode
ÏÏ; I
)
ÏÏI J
;
ÏÏJ K
txtb_MessageInput
ÌÌ %
.
ÌÌ% &
Clear
ÌÌ& +
(
ÌÌ+ ,
)
ÌÌ, -
;
ÌÌ- .
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ '
EndpointNotFoundException
ÔÔ 0
endPointException
ÔÔ1 B
)
ÔÔB C
{
 
logger
ÒÒ 
.
ÒÒ 
LogFatal
ÒÒ #
(
ÒÒ# $
endPointException
ÒÒ$ 5
)
ÒÒ5 6
;
ÒÒ6 7
DialogManager
ÚÚ !
.
ÚÚ! "#
ShowErrorMessageAlert
ÚÚ" 7
(
ÚÚ7 8

Properties
ÚÚ8 B
.
ÚÚB C
	Resources
ÚÚC L
.
ÚÚL M%
dialogEndPointException
ÚÚM d
)
ÚÚd e
;
ÚÚe f
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
TimeoutException
ÙÙ '
timeOutException
ÙÙ( 8
)
ÙÙ8 9
{
ıı 
logger
ˆˆ 
.
ˆˆ 
LogWarn
ˆˆ "
(
ˆˆ" #
timeOutException
ˆˆ# 3
)
ˆˆ3 4
;
ˆˆ4 5
DialogManager
˜˜ !
.
˜˜! "#
ShowErrorMessageAlert
˜˜" 7
(
˜˜7 8

Properties
˜˜8 B
.
˜˜B C
	Resources
˜˜C L
.
˜˜L M$
dialogTimeOutException
˜˜M c
)
˜˜c d
;
˜˜d e
}
¯¯ 
catch
˘˘ 
(
˘˘ $
CommunicationException
˘˘ -$
communicationException
˘˘. D
)
˘˘D E
{
˙˙ 
logger
˚˚ 
.
˚˚ 
LogFatal
˚˚ #
(
˚˚# $$
communicationException
˚˚$ :
)
˚˚: ;
;
˚˚; <
DialogManager
¸¸ !
.
¸¸! "#
ShowErrorMessageAlert
¸¸" 7
(
¸¸7 8

Properties
¸¸8 B
.
¸¸B C
	Resources
¸¸C L
.
¸¸L M)
dialogComunicationException
¸¸M h
)
¸¸h i
;
¸¸i j
}
˝˝ 
txtb_MessageInput
˛˛ !
.
˛˛! "
Clear
˛˛" '
(
˛˛' (
)
˛˛( )
;
˛˛) * 
txtBlock_CharCount
ˇˇ "
.
ˇˇ" #
Text
ˇˇ# '
=
ˇˇ( )
$str
ˇˇ* 1
;
ˇˇ1 2
}
ÄÄ 
}
ÅÅ 	
private
ÉÉ 
void
ÉÉ #
BtnInviteFriend_Click
ÉÉ *
(
ÉÉ* +
object
ÉÉ+ 1
sender
ÉÉ2 8
,
ÉÉ8 9
RoutedEventArgs
ÉÉ: I
e
ÉÉJ K
)
ÉÉK L
{
ÑÑ 	
LoggerManager
ÖÖ 
logger
ÖÖ  
=
ÖÖ! "
new
ÖÖ# &
LoggerManager
ÖÖ' 4
(
ÖÖ4 5
this
ÖÖ5 9
.
ÖÖ9 :
GetType
ÖÖ: A
(
ÖÖA B
)
ÖÖB C
)
ÖÖC D
;
ÖÖD E
	HiveProxy
ÜÜ 
.
ÜÜ *
EmailInvitationManagerClient
ÜÜ 2*
emailInvitationManagerClient
ÜÜ3 O
=
ÜÜP Q
new
ÜÜR U
	HiveProxy
ÜÜV _
.
ÜÜ_ `*
EmailInvitationManagerClient
ÜÜ` |
(
ÜÜ| }
)
ÜÜ} ~
;
ÜÜ~ 
try
áá 
{
àà 
Button
ââ 
clickedButton
ââ $
=
ââ% &
sender
ââ' -
as
ââ. 0
Button
ââ1 7
;
ââ7 8
Friend
ää 
friendToInvite
ää %
=
ää& '
clickedButton
ää( 5
.
ää5 6
DataContext
ää6 A
as
ääB D
Friend
ääE K
;
ääK L
UserVerificator
ãã 
userToInvite
ãã  ,
=
ãã- .
new
ãã/ 2
UserVerificator
ãã3 B
(
ããB C
)
ããC D
{
åå 
code
çç 
=
çç 
matchLobbyCode
çç )
,
çç) *
email
éé 
=
éé 
friendToInvite
éé *
.
éé* +
email
éé+ 0
,
éé0 1
}
èè 
;
èè 
int
êê 
resultInvitation
êê $
=
êê% &*
emailInvitationManagerClient
êê' C
.
êêC D!
SendEmailInvitation
êêD W
(
êêW X
userToInvite
êêX d
)
êêd e
;
êêe f
if
ëë 
(
ëë 
resultInvitation
ëë #
==
ëë$ &
	Constants
ëë' 0
.
ëë0 1
SuccesOperation
ëë1 @
)
ëë@ A
{
íí 
DialogManager
ìì !
.
ìì! "%
ShowSuccessMessageAlert
ìì" 9
(
ìì9 :

Properties
ìì: D
.
ììD E
	Resources
ììE N
.
ììN O'
dialogEmailInvitationSend
ììO h
)
ììh i
;
ììi j
}
îî 
else
ïï 
{
ññ 
DialogManager
óó !
.
óó! "#
ShowErrorMessageAlert
óó" 7
(
óó7 8

Properties
óó8 B
.
óóB C
	Resources
óóC L
.
óóL M$
dialogCouldntSendEmail
óóM c
)
óóc d
;
óód e
}
òò 
}
ôô 
catch
öö 
(
öö '
EndpointNotFoundException
öö ,
endPointException
öö- >
)
öö> ?
{
õõ 
logger
úú 
.
úú 
LogFatal
úú 
(
úú  
endPointException
úú  1
)
úú1 2
;
úú2 3
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4

Properties
ùù4 >
.
ùù> ?
	Resources
ùù? H
.
ùùH I%
dialogEndPointException
ùùI `
)
ùù` a
;
ùùa b
}
ûû 
catch
üü 
(
üü 
TimeoutException
üü #
timeOutException
üü$ 4
)
üü4 5
{
†† 
logger
°° 
.
°° 
LogWarn
°° 
(
°° 
timeOutException
°° /
)
°°/ 0
;
°°0 1
DialogManager
¢¢ 
.
¢¢ #
ShowErrorMessageAlert
¢¢ 3
(
¢¢3 4

Properties
¢¢4 >
.
¢¢> ?
	Resources
¢¢? H
.
¢¢H I$
dialogTimeOutException
¢¢I _
)
¢¢_ `
;
¢¢` a
}
££ 
catch
§§ 
(
§§ $
CommunicationException
§§ )$
communicationException
§§* @
)
§§@ A
{
•• 
logger
¶¶ 
.
¶¶ 
LogFatal
¶¶ 
(
¶¶  $
communicationException
¶¶  6
)
¶¶6 7
;
¶¶7 8
DialogManager
ßß 
.
ßß #
ShowErrorMessageAlert
ßß 3
(
ßß3 4

Properties
ßß4 >
.
ßß> ?
	Resources
ßß? H
.
ßßH I)
dialogComunicationException
ßßI d
)
ßßd e
;
ßße f
}
®® 
}
©© 	
private
¨¨ 
void
¨¨ )
TxtMessageInput_TextChanged
¨¨ 0
(
¨¨0 1
object
¨¨1 7
sender
¨¨8 >
,
¨¨> ?"
TextChangedEventArgs
¨¨@ T
e
¨¨U V
)
¨¨V W
{
≠≠ 	
int
ÆÆ 
currentLength
ÆÆ 
=
ÆÆ 
txtb_MessageInput
ÆÆ  1
.
ÆÆ1 2
Text
ÆÆ2 6
.
ÆÆ6 7
Length
ÆÆ7 =
;
ÆÆ= > 
txtBlock_CharCount
ØØ 
.
ØØ 
Text
ØØ #
=
ØØ$ %
$"
ØØ& (
{
ØØ( )
currentLength
ØØ) 6
}
ØØ6 7
$str
ØØ7 ;
"
ØØ; <
;
ØØ< =
if
∞∞ 
(
∞∞ 
currentLength
∞∞ 
==
∞∞  
$num
∞∞! $
)
∞∞$ %
{
±± 
txtb_MessageInput
≤≤ !
.
≤≤! "

IsReadOnly
≤≤" ,
=
≤≤- .
true
≤≤/ 3
;
≤≤3 4
}
≥≥ 
else
¥¥ 
{
µµ 
txtb_MessageInput
∂∂ !
.
∂∂! "

IsReadOnly
∂∂" ,
=
∂∂- .
false
∂∂/ 4
;
∂∂4 5
}
∑∑ 
}
∏∏ 	
private
∫∫ 
void
∫∫ 
BtnSendOff_Click
∫∫ %
(
∫∫% &
object
∫∫& ,
sender
∫∫- 3
,
∫∫3 4
RoutedEventArgs
∫∫5 D
e
∫∫E F
)
∫∫F G
{
ªª 	
UserSession
ºº 

userToKick
ºº "
=
ºº# $
usersInLobby
ºº% 1
[
ºº1 2
$num
ºº2 3
]
ºº3 4
;
ºº4 5
if
ΩΩ 
(
ΩΩ 
DialogManager
ΩΩ 
.
ΩΩ *
ShowConfirmationMessageAlert
ΩΩ :
(
ΩΩ: ;

Properties
ΩΩ; E
.
ΩΩE F
	Resources
ΩΩF O
.
ΩΩO P*
dialogConfirmationKickPlayer
ΩΩP l
)
ΩΩl m
)
ΩΩm n
{
ææ 
LoggerManager
øø 
logger
øø $
=
øø% &
new
øø' *
LoggerManager
øø+ 8
(
øø8 9
this
øø9 =
.
øø= >
GetType
øø> E
(
øøE F
)
øøF G
)
øøG H
;
øøH I
Profile
¿¿  
userToKickFromChat
¿¿ *
=
¿¿+ ,
new
¿¿- 0
Profile
¿¿1 8
(
¿¿8 9
)
¿¿9 :
{
¡¡ 
	idAccount
¬¬ 
=
¬¬ 

userToKick
¬¬  *
.
¬¬* +
	idAccount
¬¬+ 4
,
¬¬4 5
username
√√ 
=
√√ 

userToKick
√√ )
.
√√) *
username
√√* 2
,
√√2 3
}
ƒƒ 
;
ƒƒ 
try
≈≈ 
{
∆∆ 
bool
«« 
isKicked
«« !
=
««" #
true
««$ (
;
««( )
if
»» 
(
»» 

userToKick
»» "
.
»»" #
	idAccount
»»# ,
!=
»»- /
	Constants
»»0 9
.
»»9 :
DefaultGuestId
»»: H
)
»»H I
{
…… 
MatchSingleton
   &
.
  & '
Instance
  ' /
.
  / 0
ResetSingleton
  0 >
(
  > ?
)
  ? @
;
  @ A!
KickPlayerFromLobby
ÀÀ +
(
ÀÀ+ ,

userToKick
ÀÀ, 6
,
ÀÀ6 7
isKicked
ÀÀ8 @
)
ÀÀ@ A
;
ÀÀA B
chatManager
ÃÃ #
.
ÃÃ# $%
DisconectPlayerFromChat
ÃÃ$ ;
(
ÃÃ; < 
userToKickFromChat
ÃÃ< N
,
ÃÃN O
matchLobbyCode
ÃÃP ^
)
ÃÃ^ _
;
ÃÃ_ `
}
ÕÕ 
else
ŒŒ 
{
œœ 
MatchSingleton
–– &
.
––& '
Instance
––' /
.
––/ 0
ResetSingleton
––0 >
(
––> ?
)
––? @
;
––@ A!
KickPlayerFromLobby
—— +
(
——+ ,

userToKick
——, 6
,
——6 7
isKicked
——8 @
)
——@ A
;
——A B&
UserSessionManagerClient
““ 0
.
““0 1

Disconnect
““1 ;
(
““; <

userToKick
““< F
,
““F G
false
““H M
)
““M N
;
““N O
}
”” 
}
‘‘ 
catch
’’ 
(
’’ '
EndpointNotFoundException
’’ 0
endPointException
’’1 B
)
’’B C
{
÷÷ 
logger
◊◊ 
.
◊◊ 
LogFatal
◊◊ #
(
◊◊# $
endPointException
◊◊$ 5
)
◊◊5 6
;
◊◊6 7
DialogManager
ÿÿ !
.
ÿÿ! "#
ShowErrorMessageAlert
ÿÿ" 7
(
ÿÿ7 8

Properties
ÿÿ8 B
.
ÿÿB C
	Resources
ÿÿC L
.
ÿÿL M%
dialogEndPointException
ÿÿM d
)
ÿÿd e
;
ÿÿe f
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
TimeoutException
⁄⁄ '
timeOutException
⁄⁄( 8
)
⁄⁄8 9
{
€€ 
logger
‹‹ 
.
‹‹ 
LogWarn
‹‹ "
(
‹‹" #
timeOutException
‹‹# 3
)
‹‹3 4
;
‹‹4 5
DialogManager
›› !
.
››! "#
ShowErrorMessageAlert
››" 7
(
››7 8

Properties
››8 B
.
››B C
	Resources
››C L
.
››L M$
dialogTimeOutException
››M c
)
››c d
;
››d e
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ $
CommunicationException
ﬂﬂ -$
communicationException
ﬂﬂ. D
)
ﬂﬂD E
{
‡‡ 
logger
·· 
.
·· 
LogFatal
·· #
(
··# $$
communicationException
··$ :
)
··: ;
;
··; <
DialogManager
‚‚ !
.
‚‚! "#
ShowErrorMessageAlert
‚‚" 7
(
‚‚7 8

Properties
‚‚8 B
.
‚‚B C
	Resources
‚‚C L
.
‚‚L M)
dialogComunicationException
‚‚M h
)
‚‚h i
;
‚‚i j
}
„„ 
}
‰‰ 
}
ÂÂ 	
private
ÁÁ 
void
ÁÁ ,
RefreshActiveFriendsList_Click
ÁÁ 3
(
ÁÁ3 4
object
ÁÁ4 :
sender
ÁÁ; A
,
ÁÁA B
RoutedEventArgs
ÁÁC R
e
ÁÁS T
)
ÁÁT U
{
ËË 	
LoggerManager
ÈÈ 
logger
ÈÈ  
=
ÈÈ! "
new
ÈÈ# &
LoggerManager
ÈÈ' 4
(
ÈÈ4 5
this
ÈÈ5 9
.
ÈÈ9 :
GetType
ÈÈ: A
(
ÈÈA B
)
ÈÈB C
)
ÈÈC D
;
ÈÈD E
try
ÍÍ 
{
ÎÎ 
UserSession
ÏÏ 
userSession
ÏÏ '
=
ÏÏ( )
new
ÏÏ* -
UserSession
ÏÏ. 9
(
ÏÏ9 :
)
ÏÏ: ;
{
ÌÌ 
	idAccount
ÓÓ 
=
ÓÓ "
UserProfileSingleton
ÓÓ  4
.
ÓÓ4 5
	idAccount
ÓÓ5 >
,
ÓÓ> ?
username
ÔÔ 
=
ÔÔ "
UserProfileSingleton
ÔÔ 3
.
ÔÔ3 4
username
ÔÔ4 <
}
 
;
 "
friendsManagerClient
ÒÒ $
.
ÒÒ$ %
GetFriendsList
ÒÒ% 3
(
ÒÒ3 4
userSession
ÒÒ4 ?
)
ÒÒ? @
;
ÒÒ@ A
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ '
EndpointNotFoundException
ÛÛ ,
endPointException
ÛÛ- >
)
ÛÛ> ?
{
ÙÙ 
logger
ıı 
.
ıı 
LogFatal
ıı 
(
ıı  
endPointException
ıı  1
)
ıı1 2
;
ıı2 3
DialogManager
ˆˆ 
.
ˆˆ #
ShowErrorMessageAlert
ˆˆ 3
(
ˆˆ3 4

Properties
ˆˆ4 >
.
ˆˆ> ?
	Resources
ˆˆ? H
.
ˆˆH I%
dialogEndPointException
ˆˆI `
)
ˆˆ` a
;
ˆˆa b
}
˜˜ 
catch
¯¯ 
(
¯¯ 
TimeoutException
¯¯ #
timeOutException
¯¯$ 4
)
¯¯4 5
{
˘˘ 
logger
˙˙ 
.
˙˙ 
LogWarn
˙˙ 
(
˙˙ 
timeOutException
˙˙ /
)
˙˙/ 0
;
˙˙0 1
DialogManager
˚˚ 
.
˚˚ #
ShowErrorMessageAlert
˚˚ 3
(
˚˚3 4

Properties
˚˚4 >
.
˚˚> ?
	Resources
˚˚? H
.
˚˚H I$
dialogTimeOutException
˚˚I _
)
˚˚_ `
;
˚˚` a
}
¸¸ 
catch
˝˝ 
(
˝˝ $
CommunicationException
˝˝ )$
communicationException
˝˝* @
)
˝˝@ A
{
˛˛ 
logger
ˇˇ 
.
ˇˇ 
LogFatal
ˇˇ 
(
ˇˇ  $
communicationException
ˇˇ  6
)
ˇˇ6 7
;
ˇˇ7 8
DialogManager
ÄÄ 
.
ÄÄ #
ShowErrorMessageAlert
ÄÄ 3
(
ÄÄ3 4

Properties
ÄÄ4 >
.
ÄÄ> ?
	Resources
ÄÄ? H
.
ÄÄH I)
dialogComunicationException
ÄÄI d
)
ÄÄd e
;
ÄÄe f
}
ÅÅ 
}
ÇÇ 	
public
ÑÑ 
void
ÑÑ $
ObtainConnectedFriends
ÑÑ *
(
ÑÑ* +
UserSession
ÑÑ+ 6
[
ÑÑ6 7
]
ÑÑ7 8
connectedFriends
ÑÑ9 I
)
ÑÑI J
{
ÖÖ 	
LoggerManager
ÜÜ 
logger
ÜÜ  
=
ÜÜ! "
new
ÜÜ# &
LoggerManager
ÜÜ' 4
(
ÜÜ4 5
this
ÜÜ5 9
.
ÜÜ9 :
GetType
ÜÜ: A
(
ÜÜA B
)
ÜÜB C
)
ÜÜC D
;
ÜÜD E#
lvw_ActiveFriendsList
áá !
.
áá! "
Items
áá" '
.
áá' (
Clear
áá( -
(
áá- .
)
áá. /
;
áá/ 0
try
àà 
{
ââ 
	HiveProxy
ää 
.
ää %
FriendshipManagerClient
ää 1%
friendshipManagerClient
ää2 I
=
ääJ K
new
ääL O
	HiveProxy
ääP Y
.
ääY Z%
FriendshipManagerClient
ääZ q
(
ääq r
)
äär s
;
ääs t
Profile
ãã  
userProfileRequest
ãã *
=
ãã+ ,
new
ãã- 0
Profile
ãã1 8
(
ãã8 9
)
ãã9 :
{
åå 
idAccesAccount
çç "
=
çç# $"
UserProfileSingleton
çç% 9
.
çç9 :
	idAccount
çç: C
}
éé 
;
éé 
Profile
èè 
[
èè 
]
èè 
friendsObtained
èè )
=
èè* +%
friendshipManagerClient
èè, C
.
èèC D
GetAllFriends
èèD Q
(
èèQ R 
userProfileRequest
èèR d
)
èèd e
;
èèe f
List
êê 
<
êê 
Friend
êê 
>
êê 
friends
êê $
=
êê% &
new
êê' *
List
êê+ /
<
êê/ 0
Friend
êê0 6
>
êê6 7
(
êê7 8
)
êê8 9
;
êê9 :!
UserSessionComparer
ëë #
comparer
ëë$ ,
=
ëë- .
new
ëë/ 2!
UserSessionComparer
ëë3 F
(
ëëF G
)
ëëG H
;
ëëH I
for
íí 
(
íí 
int
íí 
friendsIndex
íí %
=
íí& '
$num
íí( )
;
íí) *
friendsObtained
íí+ :
.
íí: ;
Length
íí; A
>
ííB C
friendsIndex
ííD P
;
ííP Q
friendsIndex
ííR ^
++
íí^ `
)
íí` a
{
ìì 
UserSession
îî 
friendSession
îî  -
=
îî. /
new
îî0 3
UserSession
îî4 ?
(
îî? @
)
îî@ A
{
ïï 
username
ññ  
=
ññ! "
friendsObtained
ññ# 2
[
ññ2 3
friendsIndex
ññ3 ?
]
ññ? @
.
ññ@ A
username
ññA I
,
ññI J
	idAccount
óó !
=
óó" #
friendsObtained
óó$ 3
[
óó3 4
friendsIndex
óó4 @
]
óó@ A
.
óóA B
	idAccount
óóB K
}
òò 
;
òò 
if
ôô 
(
ôô 
connectedFriends
ôô (
.
ôô( )
Contains
ôô) 1
(
ôô1 2
friendSession
ôô2 ?
,
ôô? @
comparer
ôô@ H
)
ôôH I
)
ôôI J
{
öö 
Friend
õõ 
ActiveFriend
õõ +
=
õõ, -
new
õõ. 1
Friend
õõ2 8
(
õõ8 9
)
õõ9 :
{
úú 
	idAccount
ùù %
=
ùù& '
friendsObtained
ùù( 7
[
ùù7 8
friendsIndex
ùù8 D
]
ùùD E
.
ùùE F
	idAccount
ùùF O
,
ùùO P
username
ûû $
=
ûû% &
friendsObtained
ûû' 6
[
ûû6 7
friendsIndex
ûû7 C
]
ûûC D
.
ûûD E
username
ûûE M
,
ûûM N
nickname
üü $
=
üü% &
friendsObtained
üü' 6
[
üü6 7
friendsIndex
üü7 C
]
üüC D
.
üüD E
nickname
üüE M
,
üüM N
email
†† !
=
††" #
friendsObtained
††$ 3
[
††3 4
friendsIndex
††4 @
]
††@ A
.
††A B
email
††B G
,
††G H
	imagePath
°° %
=
°°& '
friendsObtained
°°( 7
[
°°7 8
friendsIndex
°°8 D
]
°°D E
.
°°E F
	imagePath
°°F O
}
¢¢ 
;
¢¢ 
friends
££ 
.
££  
Add
££  #
(
££# $
ActiveFriend
££$ 0
)
££0 1
;
££1 2
}
§§ 
}
•• 
Application
¶¶ 
.
¶¶ 
Current
¶¶ #
.
¶¶# $

Dispatcher
¶¶$ .
.
¶¶. /
Invoke
¶¶/ 5
(
¶¶5 6
(
¶¶6 7
)
¶¶7 8
=>
¶¶9 ;
{
ßß #
lvw_ActiveFriendsList
®® )
.
®®) *
Items
®®* /
.
®®/ 0
Clear
®®0 5
(
®®5 6
)
®®6 7
;
®®7 8
for
©© 
(
©© 
int
©© 
indexFriends
©© (
=
©©) *
$num
©©+ ,
;
©©, -
friends
©©. 5
.
©©5 6
Count
©©6 ;
>
©©< =
indexFriends
©©> J
;
©©J K
indexFriends
©©L X
++
©©X Z
)
©©Z [
{
™™ #
lvw_ActiveFriendsList
´´ -
.
´´- .
Items
´´. 3
.
´´3 4
Add
´´4 7
(
´´7 8
friends
´´8 ?
[
´´? @
indexFriends
´´@ L
]
´´L M
)
´´M N
;
´´N O
}
¨¨ 
}
≠≠ 
)
≠≠ 
;
≠≠ 
}
ÆÆ 
catch
ØØ 
(
ØØ '
EndpointNotFoundException
ØØ ,
endPointException
ØØ- >
)
ØØ> ?
{
∞∞ 
logger
±± 
.
±± 
LogFatal
±± 
(
±±  
endPointException
±±  1
)
±±1 2
;
±±2 3
DialogManager
≤≤ 
.
≤≤ #
ShowErrorMessageAlert
≤≤ 3
(
≤≤3 4

Properties
≤≤4 >
.
≤≤> ?
	Resources
≤≤? H
.
≤≤H I%
dialogEndPointException
≤≤I `
)
≤≤` a
;
≤≤a b
}
≥≥ 
catch
¥¥ 
(
¥¥ 
TimeoutException
¥¥ #
timeOutException
¥¥$ 4
)
¥¥4 5
{
µµ 
logger
∂∂ 
.
∂∂ 
LogWarn
∂∂ 
(
∂∂ 
timeOutException
∂∂ /
)
∂∂/ 0
;
∂∂0 1
DialogManager
∑∑ 
.
∑∑ #
ShowErrorMessageAlert
∑∑ 3
(
∑∑3 4

Properties
∑∑4 >
.
∑∑> ?
	Resources
∑∑? H
.
∑∑H I$
dialogTimeOutException
∑∑I _
)
∑∑_ `
;
∑∑` a
}
∏∏ 
catch
ππ 
(
ππ $
CommunicationException
ππ )$
communicationException
ππ* @
)
ππ@ A
{
∫∫ 
logger
ªª 
.
ªª 
LogFatal
ªª 
(
ªª  $
communicationException
ªª  6
)
ªª6 7
;
ªª7 8
DialogManager
ºº 
.
ºº #
ShowErrorMessageAlert
ºº 3
(
ºº3 4

Properties
ºº4 >
.
ºº> ?
	Resources
ºº? H
.
ººH I)
dialogComunicationException
ººI d
)
ººd e
;
ººe f
}
ΩΩ 
}
ææ 	
public
¿¿ 
void
¿¿ #
ReceivePlayersToLobby
¿¿ )
(
¿¿) *
UserSession
¿¿* 5
[
¿¿5 6
]
¿¿6 7
user
¿¿8 <
)
¿¿< =
{
¡¡ 	
usersInLobby
¬¬ 
=
¬¬ 
user
¬¬ 
.
¬¬  
ToList
¬¬  &
(
¬¬& '
)
¬¬' (
;
¬¬( )
if
√√ 
(
√√ 
user
√√ 
[
√√ 
$num
√√ 
]
√√ 
.
√√ 
	idAccount
√√ !
==
√√" $
-
√√% &
$num
√√& '
)
√√' (
{
ƒƒ 
bool
≈≈ 
isKicked
≈≈ 
=
≈≈ 
false
≈≈  %
;
≈≈% &
DialogManager
∆∆ 
.
∆∆ %
ShowWarningMessageAlert
∆∆ 5
(
∆∆5 6

Properties
∆∆6 @
.
∆∆@ A
	Resources
∆∆A J
.
∆∆J K
dialogHostHasLeft
∆∆K \
)
∆∆\ ]
;
∆∆] ^'
RedirectRespectivePlayers
«« )
(
««) *
isKicked
««* 2
)
««2 3
;
««3 4
}
»» 
else
…… 
if
…… 
(
…… 
user
…… 
.
…… 
Length
……  
==
……! #
$num
……$ %
)
……% &
{
   $
ChargeOnePlayerProfile
ÀÀ &
(
ÀÀ& '
user
ÀÀ' +
[
ÀÀ+ ,
$num
ÀÀ, -
]
ÀÀ- .
)
ÀÀ. /
;
ÀÀ/ 0
}
ÃÃ 
else
ÕÕ 
if
ÕÕ 
(
ÕÕ 
user
ÕÕ 
.
ÕÕ 
Length
ÕÕ  
==
ÕÕ! #
$num
ÕÕ$ %
)
ÕÕ% &
{
ŒŒ %
ChargeTwoPlayersProfile
œœ '
(
œœ' (
user
œœ( ,
)
œœ, -
;
œœ- .
}
–– 
}
—— 	
private
”” 
void
”” '
RedirectRespectivePlayers
”” .
(
””. /
bool
””/ 3
isKicked
””4 <
)
””< =
{
‘‘ 	
LoggerManager
’’ 
logger
’’  
=
’’! "
new
’’# &
LoggerManager
’’' 4
(
’’4 5
this
’’5 9
.
’’9 :
GetType
’’: A
(
’’A B
)
’’B C
)
’’C D
;
’’D E
UserSession
÷÷ 
userSession
÷÷ #
=
÷÷$ %
new
÷÷& )
UserSession
÷÷* 5
(
÷÷5 6
)
÷÷6 7
{
◊◊ 
username
ÿÿ 
=
ÿÿ "
UserProfileSingleton
ÿÿ /
.
ÿÿ/ 0
username
ÿÿ0 8
,
ÿÿ8 9
	idAccount
ŸŸ 
=
ŸŸ "
UserProfileSingleton
ŸŸ 0
.
ŸŸ0 1
	idAccount
ŸŸ1 :
}
⁄⁄ 
;
⁄⁄ 
try
€€ 
{
‹‹ 
if
›› 
(
›› "
UserProfileSingleton
›› (
.
››( )
	idAccount
››) 2
!=
››3 5
	Constants
››6 ?
.
››? @
DefaultGuestId
››@ N
)
››N O
{
ﬁﬁ 
MatchSingleton
ﬂﬂ "
.
ﬂﬂ" #
Instance
ﬂﬂ# +
.
ﬂﬂ+ ,
ResetSingleton
ﬂﬂ, :
(
ﬂﬂ: ;
)
ﬂﬂ; <
;
ﬂﬂ< =!
KickPlayerFromLobby
‡‡ '
(
‡‡' (
userSession
‡‡( 3
,
‡‡3 4
isKicked
‡‡5 =
)
‡‡= >
;
‡‡> ? 
LeaveUserGameLobby
·· &
(
··& '
)
··' (
;
··( )
}
‚‚ 
else
„„ 
{
‰‰ 
MatchSingleton
ÂÂ "
.
ÂÂ" #
Instance
ÂÂ# +
.
ÂÂ+ ,
ResetSingleton
ÂÂ, :
(
ÂÂ: ;
)
ÂÂ; <
;
ÂÂ< =!
KickPlayerFromLobby
ÊÊ '
(
ÊÊ' (
userSession
ÊÊ( 3
,
ÊÊ3 4
isKicked
ÊÊ5 =
)
ÊÊ= >
;
ÊÊ> ?!
LeaveGuestGameLobby
ÁÁ '
(
ÁÁ' (
)
ÁÁ( )
;
ÁÁ) *
}
ËË 
matchLobbyCode
ÈÈ 
=
ÈÈ  
$str
ÈÈ! $
;
ÈÈ$ %
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ '
EndpointNotFoundException
ÎÎ ,
endPointException
ÎÎ- >
)
ÎÎ> ?
{
ÏÏ 
logger
ÌÌ 
.
ÌÌ 
LogFatal
ÌÌ 
(
ÌÌ  
endPointException
ÌÌ  1
)
ÌÌ1 2
;
ÌÌ2 3
DialogManager
ÓÓ 
.
ÓÓ #
ShowErrorMessageAlert
ÓÓ 3
(
ÓÓ3 4

Properties
ÓÓ4 >
.
ÓÓ> ?
	Resources
ÓÓ? H
.
ÓÓH I%
dialogEndPointException
ÓÓI `
)
ÓÓ` a
;
ÓÓa b
}
ÔÔ 
catch
 
(
 
TimeoutException
 #
timeOutException
$ 4
)
4 5
{
ÒÒ 
logger
ÚÚ 
.
ÚÚ 
LogWarn
ÚÚ 
(
ÚÚ 
timeOutException
ÚÚ /
)
ÚÚ/ 0
;
ÚÚ0 1
DialogManager
ÛÛ 
.
ÛÛ #
ShowErrorMessageAlert
ÛÛ 3
(
ÛÛ3 4

Properties
ÛÛ4 >
.
ÛÛ> ?
	Resources
ÛÛ? H
.
ÛÛH I$
dialogTimeOutException
ÛÛI _
)
ÛÛ_ `
;
ÛÛ` a
}
ÙÙ 
catch
ıı 
(
ıı $
CommunicationException
ıı )$
communicationException
ıı* @
)
ıı@ A
{
ˆˆ 
logger
˜˜ 
.
˜˜ 
LogFatal
˜˜ 
(
˜˜  $
communicationException
˜˜  6
)
˜˜6 7
;
˜˜7 8
DialogManager
¯¯ 
.
¯¯ #
ShowErrorMessageAlert
¯¯ 3
(
¯¯3 4

Properties
¯¯4 >
.
¯¯> ?
	Resources
¯¯? H
.
¯¯H I)
dialogComunicationException
¯¯I d
)
¯¯d e
;
¯¯e f
}
˘˘ 
}
˙˙ 	
private
¸¸ 
void
¸¸ $
ChargeOnePlayerProfile
¸¸ +
(
¸¸+ ,
UserSession
¸¸, 7
user
¸¸8 <
)
¸¸< =
{
˝˝ 	
LoggerManager
˛˛ 
logger
˛˛  
=
˛˛! "
new
˛˛# &
LoggerManager
˛˛' 4
(
˛˛4 5
this
˛˛5 9
.
˛˛9 :
GetType
˛˛: A
(
˛˛A B
)
˛˛B C
)
˛˛C D
;
˛˛D E
	HiveProxy
ˇˇ 
.
ˇˇ 
UserManagerClient
ˇˇ '
userManagerClient
ˇˇ( 9
=
ˇˇ: ;
new
ˇˇ< ?
	HiveProxy
ˇˇ@ I
.
ˇˇI J
UserManagerClient
ˇˇJ [
(
ˇˇ[ \
)
ˇˇ\ ]
;
ˇˇ] ^
try
ÄÄ 
{
ÅÅ 
Profile
ÇÇ 
profileUser
ÇÇ #
=
ÇÇ$ %
userManagerClient
ÇÇ& 7
.
ÇÇ7 8&
GetUserProfileByUsername
ÇÇ8 P
(
ÇÇP Q
user
ÇÇQ U
.
ÇÇU V
username
ÇÇV ^
)
ÇÇ^ _
;
ÇÇ_ `
txtb_HostName
ÉÉ 
.
ÉÉ 
Text
ÉÉ "
=
ÉÉ# $
profileUser
ÉÉ% 0
.
ÉÉ0 1
nickname
ÉÉ1 9
;
ÉÉ9 :
img_AvatarHost
ÑÑ 
.
ÑÑ 
Source
ÑÑ %
=
ÑÑ& '
new
ÑÑ( +
BitmapImage
ÑÑ, 7
(
ÑÑ7 8
new
ÑÑ8 ;
Uri
ÑÑ< ?
(
ÑÑ? @
profileUser
ÑÑ@ K
.
ÑÑK L
	imagePath
ÑÑL U
,
ÑÑU V
UriKind
ÑÑW ^
.
ÑÑ^ _
Relative
ÑÑ_ g
)
ÑÑg h
)
ÑÑh i
;
ÑÑi j
	brd_Guest
ÖÖ 
.
ÖÖ 

Visibility
ÖÖ $
=
ÖÖ% &

Visibility
ÖÖ' 1
.
ÖÖ1 2
	Collapsed
ÖÖ2 ;
;
ÖÖ; < 
ShowCreatorActions
ÜÜ "
(
ÜÜ" #
)
ÜÜ# $
;
ÜÜ$ %
}
áá 
catch
àà 
(
àà '
EndpointNotFoundException
àà ,
endPointException
àà- >
)
àà> ?
{
ââ 
logger
ää 
.
ää 
LogFatal
ää 
(
ää  
endPointException
ää  1
)
ää1 2
;
ää2 3
DialogManager
ãã 
.
ãã #
ShowErrorMessageAlert
ãã 3
(
ãã3 4

Properties
ãã4 >
.
ãã> ?
	Resources
ãã? H
.
ããH I%
dialogEndPointException
ããI `
)
ãã` a
;
ããa b
}
åå 
catch
çç 
(
çç 
TimeoutException
çç #
timeOutException
çç$ 4
)
çç4 5
{
éé 
logger
èè 
.
èè 
LogWarn
èè 
(
èè 
timeOutException
èè /
)
èè/ 0
;
èè0 1
DialogManager
êê 
.
êê #
ShowErrorMessageAlert
êê 3
(
êê3 4

Properties
êê4 >
.
êê> ?
	Resources
êê? H
.
êêH I$
dialogTimeOutException
êêI _
)
êê_ `
;
êê` a
}
ëë 
catch
íí 
(
íí $
CommunicationException
íí )$
communicationException
íí* @
)
íí@ A
{
ìì 
logger
îî 
.
îî 
LogFatal
îî 
(
îî  $
communicationException
îî  6
)
îî6 7
;
îî7 8
DialogManager
ïï 
.
ïï #
ShowErrorMessageAlert
ïï 3
(
ïï3 4

Properties
ïï4 >
.
ïï> ?
	Resources
ïï? H
.
ïïH I)
dialogComunicationException
ïïI d
)
ïïd e
;
ïïe f
}
ññ 
}
óó 	
private
ôô 
void
ôô %
ChargeTwoPlayersProfile
ôô ,
(
ôô, -
UserSession
ôô- 8
[
ôô8 9
]
ôô9 :
users
ôô; @
)
ôô@ A
{
öö 	
LoggerManager
õõ 
logger
õõ  
=
õõ! "
new
õõ# &
LoggerManager
õõ' 4
(
õõ4 5
this
õõ5 9
.
õõ9 :
GetType
õõ: A
(
õõA B
)
õõB C
)
õõC D
;
õõD E
	HiveProxy
úú 
.
úú 
UserManagerClient
úú '
userManagerClient
úú( 9
=
úú: ;
new
úú< ?
	HiveProxy
úú@ I
.
úúI J
UserManagerClient
úúJ [
(
úú[ \
)
úú\ ]
;
úú] ^
try
ùù 
{
ûû 
Profile
üü 
profileUserHost
üü '
=
üü( )
userManagerClient
üü* ;
.
üü; <&
GetUserProfileByUsername
üü< T
(
üüT U
users
üüU Z
[
üüZ [
$num
üü[ \
]
üü\ ]
.
üü] ^
username
üü^ f
)
üüf g
;
üüg h
txtb_HostName
†† 
.
†† 
Text
†† "
=
††# $
profileUserHost
††% 4
.
††4 5
nickname
††5 =
;
††= >
img_AvatarHost
°° 
.
°° 
Source
°° %
=
°°& '
new
°°( +
BitmapImage
°°, 7
(
°°7 8
new
°°8 ;
Uri
°°< ?
(
°°? @
profileUserHost
°°@ O
.
°°O P
	imagePath
°°P Y
,
°°Y Z
UriKind
°°[ b
.
°°b c
Relative
°°c k
)
°°k l
)
°°l m
;
°°m n
if
¢¢ 
(
¢¢ 
users
¢¢ 
[
¢¢ 
$num
¢¢ 
]
¢¢ 
.
¢¢ 
	idAccount
¢¢ &
==
¢¢' )
	Constants
¢¢* 3
.
¢¢3 4
DefaultGuestId
¢¢4 B
)
¢¢B C
{
££ 
txtb_GuestName
§§ "
.
§§" #
Text
§§# '
=
§§( )
users
§§* /
[
§§/ 0
$num
§§0 1
]
§§1 2
.
§§2 3
username
§§3 ;
;
§§; <
img_AvatarGuest
•• #
.
••# $
Source
••$ *
=
••+ ,
new
••- 0
BitmapImage
••1 <
(
••< =
new
••= @
Uri
••A D
(
••D E
$str
••E b
,
••b c
UriKind
••d k
.
••k l
Relative
••l t
)
••t u
)
••u v
;
••v w
}
¶¶ 
else
ßß 
{
®® 
Profile
©© 
profileUserGuest
©© ,
=
©©- .
userManagerClient
©©/ @
.
©©@ A&
GetUserProfileByUsername
©©A Y
(
©©Y Z
users
©©Z _
[
©©_ `
$num
©©` a
]
©©a b
.
©©b c
username
©©c k
)
©©k l
;
©©l m
txtb_GuestName
™™ "
.
™™" #
Text
™™# '
=
™™( )
profileUserGuest
™™* :
.
™™: ;
nickname
™™; C
;
™™C D
img_AvatarGuest
´´ #
.
´´# $
Source
´´$ *
=
´´+ ,
new
´´- 0
BitmapImage
´´1 <
(
´´< =
new
´´= @
Uri
´´A D
(
´´D E
profileUserGuest
´´E U
.
´´U V
	imagePath
´´V _
,
´´_ `
UriKind
´´a h
.
´´h i
Relative
´´i q
)
´´q r
)
´´r s
;
´´s t
}
¨¨ 
	brd_Guest
≠≠ 
.
≠≠ 

Visibility
≠≠ $
=
≠≠% &

Visibility
≠≠' 1
.
≠≠1 2
Visible
≠≠2 9
;
≠≠9 :
	GameMatch
ÆÆ 
gamer
ÆÆ 
=
ÆÆ  !
new
ÆÆ" %
	GameMatch
ÆÆ& /
(
ÆÆ/ 0
)
ÆÆ0 1
{
ØØ 
	idAccount
∞∞ 
=
∞∞ "
UserProfileSingleton
∞∞  4
.
∞∞4 5
	idAccount
∞∞5 >
,
∞∞> ?
code
±± 
=
±± 
matchLobbyCode
±± )
}
≤≤ 
;
≤≤ 
int
≥≥ !
verificationCreator
≥≥ '
=
≥≥( ) 
lobbyManagerClient
≥≥* <
.
≥≥< =%
VerifyCreatorOfTheMatch
≥≥= T
(
≥≥T U
gamer
≥≥U Z
)
≥≥Z [
;
≥≥[ \ 
ShowCorrectActions
¥¥ "
(
¥¥" #!
verificationCreator
¥¥# 6
)
¥¥6 7
;
¥¥7 8
}
µµ 
catch
∂∂ 
(
∂∂ '
EndpointNotFoundException
∂∂ ,
endPointException
∂∂- >
)
∂∂> ?
{
∑∑ 
logger
∏∏ 
.
∏∏ 
LogFatal
∏∏ 
(
∏∏  
endPointException
∏∏  1
)
∏∏1 2
;
∏∏2 3
DialogManager
ππ 
.
ππ #
ShowErrorMessageAlert
ππ 3
(
ππ3 4

Properties
ππ4 >
.
ππ> ?
	Resources
ππ? H
.
ππH I%
dialogEndPointException
ππI `
)
ππ` a
;
ππa b
}
∫∫ 
catch
ªª 
(
ªª 
TimeoutException
ªª #
timeOutException
ªª$ 4
)
ªª4 5
{
ºº 
logger
ΩΩ 
.
ΩΩ 
LogWarn
ΩΩ 
(
ΩΩ 
timeOutException
ΩΩ /
)
ΩΩ/ 0
;
ΩΩ0 1
DialogManager
ææ 
.
ææ #
ShowErrorMessageAlert
ææ 3
(
ææ3 4

Properties
ææ4 >
.
ææ> ?
	Resources
ææ? H
.
ææH I$
dialogTimeOutException
ææI _
)
ææ_ `
;
ææ` a
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ )$
communicationException
¿¿* @
)
¿¿@ A
{
¡¡ 
logger
¬¬ 
.
¬¬ 
LogFatal
¬¬ 
(
¬¬  $
communicationException
¬¬  6
)
¬¬6 7
;
¬¬7 8
DialogManager
√√ 
.
√√ #
ShowErrorMessageAlert
√√ 3
(
√√3 4

Properties
√√4 >
.
√√> ?
	Resources
√√? H
.
√√H I)
dialogComunicationException
√√I d
)
√√d e
;
√√e f
}
ƒƒ 
}
≈≈ 	
private
«« 
void
««  
ShowCorrectActions
«« '
(
««' (
int
««( + 
verificationResult
««, >
)
««> ?
{
»» 	
if
…… 
(
……  
verificationResult
…… !
==
……" $
$num
……% &
)
……& '
{
   "
HideFullLobbyActions
ÀÀ $
(
ÀÀ$ %
)
ÀÀ% &
;
ÀÀ& '
btn_SendOffPlayer
ÃÃ !
.
ÃÃ! "

Visibility
ÃÃ" ,
=
ÃÃ- .

Visibility
ÃÃ/ 9
.
ÃÃ9 :
	Collapsed
ÃÃ: C
;
ÃÃC D
}
ÕÕ 
else
ÕÕ 
if
ÕÕ 
(
ÕÕ  
verificationResult
ÕÕ '
==
ÕÕ( *
$num
ÕÕ+ ,
)
ÕÕ, -
{
ŒŒ "
HideFullLobbyActions
œœ $
(
œœ$ %
)
œœ% &
;
œœ& '
btn_SendOffPlayer
–– !
.
––! "

Visibility
––" ,
=
––, -

Visibility
––. 8
.
––8 9
Visible
––9 @
;
––@ A
	btn_Start
—— 
.
—— 

Visibility
—— $
=
——% &

Visibility
——' 1
.
——1 2
Visible
——2 9
;
——9 :
}
““ 
}
”” 	
private
’’ 
void
’’  
SearchFriend_Click
’’ '
(
’’' (
object
’’( .
sender
’’/ 5
,
’’5 6
	EventArgs
’’7 @
e
’’A B
)
’’B C
{
÷÷ 	
txt_SearchFriend
◊◊ 
.
◊◊ 
BorderBrush
◊◊ (
=
◊◊) *
Brushes
◊◊+ 2
.
◊◊2 3
Yellow
◊◊3 9
;
◊◊9 :
if
ÿÿ 
(
ÿÿ 
ValidateField
ÿÿ 
(
ÿÿ 
)
ÿÿ 
)
ÿÿ  
{
ŸŸ 
List
⁄⁄ 
<
⁄⁄ 
Friend
⁄⁄ 
>
⁄⁄ 
friends
⁄⁄ $
=
⁄⁄% &#
lvw_ActiveFriendsList
⁄⁄' <
.
⁄⁄< =
Items
⁄⁄= B
.
⁄⁄B C
Cast
⁄⁄C G
<
⁄⁄G H
Friend
⁄⁄H N
>
⁄⁄N O
(
⁄⁄O P
)
⁄⁄P Q
.
⁄⁄Q R
ToList
⁄⁄R X
(
⁄⁄X Y
)
⁄⁄Y Z
;
⁄⁄Z [
Friend
€€ 
foundedFriend
€€ $
=
€€% &
new
€€' *
Friend
€€+ 1
(
€€1 2
)
€€2 3
;
€€3 4
foundedFriend
‹‹ 
.
‹‹ 
username
‹‹ &
=
‹‹' (
$str
‹‹) 5
;
‹‹5 6
for
›› 
(
›› 
int
›› 
friendsIndex
›› $
=
››$ %
$num
››% &
;
››& '
friendsIndex
››( 4
<
››4 5
friends
››5 <
.
››< =
Count
››= B
;
››B C
friendsIndex
››D P
++
››P R
)
››R S
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ 
friends
ﬂﬂ 
[
ﬂﬂ 
friendsIndex
ﬂﬂ +
]
ﬂﬂ+ ,
.
ﬂﬂ, -
username
ﬂﬂ- 5
==
ﬂﬂ6 8
txt_SearchFriend
ﬂﬂ9 I
.
ﬂﬂI J
Text
ﬂﬂJ N
)
ﬂﬂN O
{
‡‡ 
foundedFriend
·· $
=
··% &
friends
··' .
[
··. /
friendsIndex
··/ ;
]
··; <
;
··< =
}
‚‚ 
}
„„ 
if
‰‰ 
(
‰‰ 
foundedFriend
‰‰ !
.
‰‰! "
username
‰‰" *
!=
‰‰+ -
$str
‰‰. :
)
‰‰: ;
{
ÂÂ #
lvw_ActiveFriendsList
ÊÊ )
.
ÊÊ) *
Items
ÊÊ* /
.
ÊÊ/ 0
Clear
ÊÊ0 5
(
ÊÊ5 6
)
ÊÊ6 7
;
ÊÊ7 8#
lvw_ActiveFriendsList
ÁÁ )
.
ÁÁ) *
Items
ÁÁ* /
.
ÁÁ/ 0
Add
ÁÁ0 3
(
ÁÁ3 4
foundedFriend
ÁÁ4 A
)
ÁÁA B
;
ÁÁB C
}
ËË 
else
ÈÈ 
{
ÍÍ 
DialogManager
ÎÎ !
.
ÎÎ! "%
ShowWarningMessageAlert
ÎÎ" 9
(
ÎÎ9 :

Properties
ÎÎ: D
.
ÎÎD E
	Resources
ÎÎE N
.
ÎÎN O+
dialogMangerCouldntFindFriend
ÎÎO l
)
ÎÎl m
;
ÎÎm n
}
ÏÏ 
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
DialogManager
 
.
 #
ShowErrorMessageAlert
 3
(
3 4

Properties
4 >
.
> ?
	Resources
? H
.
H I
dialogWrongData
I X
)
X Y
;
Y Z
}
ÒÒ 
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ 
BtnStarGame_Click
ÙÙ &
(
ÙÙ& '
object
ÙÙ' -
sender
ÙÙ. 4
,
ÙÙ4 5
RoutedEventArgs
ÙÙ6 E
e
ÙÙF G
)
ÙÙG H
{
ıı 	
LoggerManager
ˆˆ 
logger
ˆˆ  
=
ˆˆ! "
new
ˆˆ# &
LoggerManager
ˆˆ' 4
(
ˆˆ4 5
this
ˆˆ5 9
.
ˆˆ9 :
GetType
ˆˆ: A
(
ˆˆA B
)
ˆˆB C
)
ˆˆC D
;
ˆˆD E
try
˜˜ 
{
¯¯  
lobbyManagerClient
˘˘ "
.
˘˘" #

StartMatch
˘˘# -
(
˘˘- .
matchLobbyCode
˘˘. <
)
˘˘< =
;
˘˘= >
MatchCreator
˙˙ 
matchCreator
˙˙ )
=
˙˙* +
new
˙˙, /
MatchCreator
˙˙0 <
(
˙˙< =
)
˙˙= >
{
˚˚ 
idCreatorAccount
¸¸ $
=
¸¸% &"
UserProfileSingleton
¸¸' ;
.
¸¸; <
	idAccount
¸¸< E
,
¸¸E F
	codeMatch
˝˝ 
=
˝˝ 
matchLobbyCode
˝˝  .
,
˝˝. /

stateMatch
˛˛ 
=
˛˛  
$str
˛˛! *
}
ˇˇ 
;
ˇˇ '
MatchCreatorManagerClient
ÄÄ )'
matchCreatorManagerClient
ÄÄ* C
=
ÄÄD E
new
ÄÄF I'
MatchCreatorManagerClient
ÄÄJ c
(
ÄÄc d
)
ÄÄd e
;
ÄÄe f'
matchCreatorManagerClient
ÅÅ )
.
ÅÅ) *
UpdateMatchState
ÅÅ* :
(
ÅÅ: ;
matchCreator
ÅÅ; G
)
ÅÅG H
;
ÅÅH I
GameBoardView
ÇÇ 
gameBoardView
ÇÇ +
=
ÇÇ, -
new
ÇÇ. 1
GameBoardView
ÇÇ2 ?
(
ÇÇ? @
)
ÇÇ@ A
;
ÇÇA B
this
ÉÉ 
.
ÉÉ 
NavigationService
ÉÉ &
.
ÉÉ& '
Navigate
ÉÉ' /
(
ÉÉ/ 0
gameBoardView
ÉÉ0 =
)
ÉÉ= >
;
ÉÉ> ?
}
ÑÑ 
catch
ÖÖ 
(
ÖÖ '
EndpointNotFoundException
ÖÖ ,
endPointException
ÖÖ- >
)
ÖÖ> ?
{
ÜÜ 
logger
áá 
.
áá 
LogFatal
áá 
(
áá  
endPointException
áá  1
)
áá1 2
;
áá2 3
DialogManager
àà 
.
àà #
ShowErrorMessageAlert
àà 3
(
àà3 4

Properties
àà4 >
.
àà> ?
	Resources
àà? H
.
ààH I%
dialogEndPointException
ààI `
)
àà` a
;
ààa b
}
ââ 
catch
ää 
(
ää 
TimeoutException
ää #
timeOutException
ää$ 4
)
ää4 5
{
ãã 
logger
åå 
.
åå 
LogWarn
åå 
(
åå 
timeOutException
åå /
)
åå/ 0
;
åå0 1
DialogManager
çç 
.
çç #
ShowErrorMessageAlert
çç 3
(
çç3 4

Properties
çç4 >
.
çç> ?
	Resources
çç? H
.
ççH I$
dialogTimeOutException
ççI _
)
çç_ `
;
çç` a
}
éé 
catch
èè 
(
èè $
CommunicationException
èè )$
communicationException
èè* @
)
èè@ A
{
êê 
logger
ëë 
.
ëë 
LogFatal
ëë 
(
ëë  $
communicationException
ëë  6
)
ëë6 7
;
ëë7 8
DialogManager
íí 
.
íí #
ShowErrorMessageAlert
íí 3
(
íí3 4

Properties
íí4 >
.
íí> ?
	Resources
íí? H
.
ííH I)
dialogComunicationException
ííI d
)
ííd e
;
ííe f
}
ìì 
}
îî 	
private
ññ 
bool
ññ 
ValidateField
ññ "
(
ññ" #
)
ññ# $
{
óó 	
bool
òò  
validationUserName
òò #
=
òò$ %
	Validator
òò& /
.
òò/ 0
ValidateUsername
òò0 @
(
òò@ A
txt_SearchFriend
òòA Q
.
òòQ R
Text
òòR V
)
òòV W
;
òòW X
if
ôô 
(
ôô 
!
ôô  
validationUserName
ôô #
)
ôô# $
{
öö 
txt_SearchFriend
õõ  
.
õõ  !
BorderBrush
õõ! ,
=
õõ- .
Brushes
õõ/ 6
.
õõ6 7
Red
õõ7 :
;
õõ: ;
}
úú 
return
ùù  
validationUserName
ùù %
;
ùù% &
}
ûû 	
public
†† 
void
†† '
ReceiveKickedNotification
†† -
(
††- .
)
††. /
{
°° 	
DialogManager
¢¢ 
.
¢¢ %
ShowWarningMessageAlert
¢¢ 1
(
¢¢1 2

Properties
¢¢2 <
.
¢¢< =
	Resources
¢¢= F
.
¢¢F G!
dialogYouveBeenKick
¢¢G Z
)
¢¢Z [
;
¢¢[ \
if
££ 
(
££ "
UserProfileSingleton
££ #
.
££# $
	idAccount
££$ -
==
££. 0
	Constants
££1 :
.
££: ;
DefaultGuestId
££; I
)
££I J
{
§§ 
	LoginView
•• 
	loginView
•• #
=
••$ %
new
••& )
	LoginView
••* 3
(
••3 4
)
••4 5
;
••5 6
this
¶¶ 
.
¶¶ 
NavigationService
¶¶ &
.
¶¶& '
Navigate
¶¶' /
(
¶¶/ 0
	loginView
¶¶0 9
)
¶¶9 :
;
¶¶: ;
}
ßß 
else
®® 
{
©© 
MainMenu
™™ 
mainMenu
™™ !
=
™™" #
new
™™$ '
MainMenu
™™( 0
(
™™0 1
)
™™1 2
;
™™2 3
this
´´ 
.
´´ 
NavigationService
´´ &
.
´´& '
Navigate
´´' /
(
´´/ 0
mainMenu
´´0 8
)
´´8 9
;
´´9 :
}
¨¨ 
}
≠≠ 	
public
ØØ 
void
ØØ +
ReceiveStartMatchNotification
ØØ 1
(
ØØ1 2
)
ØØ2 3
{
∞∞ 	
GameBoardView
±± 
gameBoardView
±± '
=
±±( )
new
±±* -
GameBoardView
±±. ;
(
±±; <
)
±±< =
;
±±= >
this
≤≤ 
.
≤≤ 
NavigationService
≤≤ "
.
≤≤" #
Navigate
≤≤# +
(
≤≤+ ,
gameBoardView
≤≤, 9
)
≤≤9 :
;
≤≤: ;
}
≥≥ 	
private
µµ 
sealed
µµ 
class
µµ 
Friend
µµ #
{
∂∂ 	
public
∑∑ 
int
∑∑ 
	idAccount
∑∑  
{
∑∑! "
get
∑∑$ '
;
∑∑' (
set
∑∑) ,
;
∑∑, -
}
∑∑. /
public
∏∏ 
string
∏∏ 
username
∏∏ "
{
∏∏# $
get
∏∏& )
;
∏∏) *
set
∏∏+ .
;
∏∏. /
}
∏∏0 1
public
∫∫ 
string
∫∫ 
nickname
∫∫ "
{
∫∫# $
get
∫∫% (
;
∫∫( )
set
∫∫* -
;
∫∫- .
}
∫∫/ 0
public
ªª 
string
ªª 
email
ªª 
{
ªª  !
get
ªª" %
;
ªª% &
set
ªª' *
;
ªª* +
}
ªª, -
public
ΩΩ 
string
ΩΩ 
	imagePath
ΩΩ #
{
ΩΩ$ %
get
ΩΩ& )
;
ΩΩ) *
set
ΩΩ+ .
;
ΩΩ. /
}
ΩΩ0 1
}
øø 	
}
¿¿ 
public
√√ 

class
√√ !
UserSessionComparer
√√ $
:
√√% &
IEqualityComparer
√√' 8
<
√√8 9
UserSession
√√9 D
>
√√D E
{
ƒƒ 
public
≈≈ 
bool
≈≈ 
Equals
≈≈ 
(
≈≈ 
UserSession
≈≈ &
userSessionOne
≈≈' 5
,
≈≈5 6
UserSession
≈≈7 B
userSessionTwo
≈≈C Q
)
≈≈Q R
{
∆∆ 	
return
«« 
string
«« 
.
«« 
Equals
««  
(
««  !
userSessionOne
««! /
.
««/ 0
username
««0 8
,
««8 9
userSessionTwo
««: H
.
««H I
username
««I Q
,
««Q R
StringComparison
««S c
.
««c d
Ordinal
««d k
)
««k l
&&
««m o
userSessionOne
»» !
.
»»! "
	idAccount
»»" +
==
»», .
userSessionTwo
»»/ =
.
»»= >
	idAccount
»»> G
&&
»»H J
userSessionOne
»»K Y
.
»»Y Z
	codeMatch
»»Z c
==
»»d f
userSessionTwo
»»g u
.
»»u v
	codeMatch
»»v 
;»» Ä
}
…… 	
public
ÀÀ 
int
ÀÀ 
GetHashCode
ÀÀ 
(
ÀÀ 
UserSession
ÀÀ *
userSession
ÀÀ+ 6
)
ÀÀ6 7
{
ÃÃ 	
int
ÕÕ 
hashUsername
ÕÕ 
=
ÕÕ 
userSession
ÕÕ *
.
ÕÕ* +
username
ÕÕ+ 3
?
ÕÕ3 4
.
ÕÕ4 5
GetHashCode
ÕÕ5 @
(
ÕÕ@ A
)
ÕÕA B
??
ÕÕC E
$num
ÕÕF G
;
ÕÕG H
int
ŒŒ 
hashIdAccount
ŒŒ 
=
ŒŒ 
userSession
ŒŒ  +
.
ŒŒ+ ,
	idAccount
ŒŒ, 5
.
ŒŒ5 6
GetHashCode
ŒŒ6 A
(
ŒŒA B
)
ŒŒB C
;
ŒŒC D
int
œœ 
hashCodeMatch
œœ 
=
œœ 
userSession
œœ  +
.
œœ+ ,
	codeMatch
œœ, 5
?
œœ5 6
.
œœ6 7
GetHashCode
œœ7 B
(
œœB C
)
œœC D
??
œœE G
$num
œœH I
;
œœI J
return
–– 
hashUsername
–– 
^
––  !
hashIdAccount
––" /
^
––0 1
hashCodeMatch
––2 ?
;
––? @
}
—— 	
}
““ 
}’’ ›ç
{C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\GameCodeView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
GameCodeView %
:& '
Page( ,
{ 
private 
string 

_codeLobby !
;! "
public 
GameCodeView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private!! 
void!! 
Image_MouseDown!! $
(!!$ %
object!!% +
sender!!, 2
,!!2 3 
MouseButtonEventArgs!!4 H
e!!I J
)!!J K
{"" 	
if## 
(##  
UserProfileSingleton## #
.### $
	idAccount##$ -
==##. 0
	Constants##1 :
.##: ;
DefaultGuestId##; I
)##I J
{$$ #
LeaveGuestGameLobbyJoin%% '
(%%' (
)%%( )
;%%) *
}&& 
else'' 
{(( 
MainMenu)) 
mainMenu)) !
=))" #
new))$ '
MainMenu))( 0
())0 1
)))1 2
;))2 3
this** 
.** 
NavigationService** &
.**& '
Navigate**' /
(**/ 0
mainMenu**0 8
)**8 9
;**9 :
}++ 
},, 	
private.. 
void.. #
LeaveGuestGameLobbyJoin.. ,
(.., -
)..- .
{// 	
LoggerManager00 
logger00  
=00! "
new00# &
LoggerManager00' 4
(004 5
this005 9
.009 :
GetType00: A
(00A B
)00B C
)00C D
;00D E
try11 
{22 
	HiveProxy33 
.33 $
UserSessionManagerClient33 2$
userSessionManagerClient333 K
=33L M
new33N Q
	HiveProxy33R [
.33[ \$
UserSessionManagerClient33\ t
(33t u
)33u v
;33v w
UserSession44 
userSession44 '
=44( )
new44* -
UserSession44. 9
(449 :
)44: ;
{55 
	idAccount66 
=66 
	Constants66  )
.66) *
DefaultGuestId66* 8
,668 9
username77 
=77  
UserProfileSingleton77 3
.773 4
username774 <
}88 
;88 
int99 (
profileDisconnectionFromGame99 0
=991 2$
userSessionManagerClient993 K
.99K L

Disconnect99L V
(99V W
userSession99W b
,99b c
false99d i
)99i j
;99j k
if:: 
(:: (
profileDisconnectionFromGame:: 0
==::1 3
	Constants::4 =
.::= >
SuccesOperation::> M
)::M N
{;;  
UserProfileSingleton<< (
.<<( )
Instance<<) 1
.<<1 2
ResetSingleton<<2 @
(<<@ A
)<<A B
;<<B C
	LoginView== 
	loginView== '
===( )
new==* -
	LoginView==. 7
(==7 8
)==8 9
;==9 :
this>> 
.>> 
NavigationService>> *
.>>* +
Navigate>>+ 3
(>>3 4
	loginView>>4 =
)>>= >
;>>> ?
}?? 
else@@ 
{AA 
DialogManagerBB !
.BB! "#
ShowWarningMessageAlertBB" 9
(BB9 :

PropertiesBB: D
.BBD E
	ResourcesBBE N
.BBN O+
dialogCouldntLobbyDisconnectionBBO n
)BBn o
;BBo p
}CC 
}DD 
catchEE 
(EE %
EndpointNotFoundExceptionEE ,
endPointExceptionEE- >
)EE> ?
{FF 
loggerGG 
.GG 
LogFatalGG 
(GG  
endPointExceptionGG  1
)GG1 2
;GG2 3
DialogManagerHH 
.HH !
ShowErrorMessageAlertHH 3
(HH3 4

PropertiesHH4 >
.HH> ?
	ResourcesHH? H
.HHH I#
dialogEndPointExceptionHHI `
)HH` a
;HHa b
}II 
catchJJ 
(JJ 
TimeoutExceptionJJ #
timeOutExceptionJJ$ 4
)JJ4 5
{KK 
loggerLL 
.LL 
LogWarnLL 
(LL 
timeOutExceptionLL /
)LL/ 0
;LL0 1
DialogManagerMM 
.MM !
ShowErrorMessageAlertMM 3
(MM3 4

PropertiesMM4 >
.MM> ?
	ResourcesMM? H
.MMH I"
dialogTimeOutExceptionMMI _
)MM_ `
;MM` a
}NN 
catchOO 
(OO "
CommunicationExceptionOO )"
communicationExceptionOO* @
)OO@ A
{PP 
loggerQQ 
.QQ 
LogFatalQQ 
(QQ  "
communicationExceptionQQ  6
)QQ6 7
;QQ7 8
DialogManagerRR 
.RR !
ShowErrorMessageAlertRR 3
(RR3 4

PropertiesRR4 >
.RR> ?
	ResourcesRR? H
.RRH I'
dialogComunicationExceptionRRI d
)RRd e
;RRe f
}SS 
}TT 	
privateWW 
voidWW 
BtnJoin_ClickWW "
(WW" #
objectWW# )
senderWW* 0
,WW0 1
RoutedEventArgsWW2 A
eWWB C
)WWC D
{XX 	
	txtb_CodeYY 
.YY 
BorderBrushYY !
=YY" #
BrushesYY$ +
.YY+ ,
YellowYY, 2
;YY2 3
ifZZ 
(ZZ 
ValidateFieldZZ 
(ZZ 
)ZZ 
)ZZ  
{[[ 

_codeLobby\\ 
=\\ 
Regex\\ "
.\\" #
Replace\\# *
(\\* +
	txtb_Code\\+ 4
.\\4 5
Text\\5 9
.\\9 :
Trim\\: >
(\\> ?
)\\? @
,\\@ A
$str\\B H
,\\H I
$str\\J L
,\\L M
RegexOptions\\N Z
.\\Z [
None\\[ _
,\\_ `
TimeSpan\\a i
.\\i j
FromMilliseconds\\j z
(\\z {
$num\\{ ~
)\\~ 
)	\\ Ä
;
\\Ä Å
int]] !
validationResultLobby]] )
=]]* +!
ValidateExistingLobby]], A
(]]A B

_codeLobby]]B L
)]]L M
;]]M N
if^^ 
(^^ !
validationResultLobby^^ )
==^^* ,
	Constants^^- 6
.^^6 7
DataMatches^^7 B
)^^B C
{__ #
ValidateCapacityOfLobby`` +
(``+ ,

_codeLobby``, 6
)``6 7
;``7 8
}aa 
elsebb 
ifbb 
(bb !
validationResultLobbybb -
==bb. 0
	Constantsbb1 :
.bb: ;
NoDataMatchesbb; H
)bbH I
{cc 
DialogManagerdd !
.dd! "#
ShowWarningMessageAlertdd" 9
(dd9 :

Propertiesdd: D
.ddD E
	ResourcesddE N
.ddN O!
dialogNotExistingCodeddO d
)ddd e
;dde f
}ee 
}ff 
elsegg 
{hh 
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I
dialogWrongDataiiI X
)iiX Y
;iiY Z
}jj 
}kk 	
privatemm 
voidmm #
ValidateCapacityOfLobbymm ,
(mm, -
stringmm- 3
	codeLobbymm4 =
)mm= >
{nn 	
LoggerManageroo 
loggeroo  
=oo! "
newoo# &
LoggerManageroo' 4
(oo4 5
thisoo5 9
.oo9 :
GetTypeoo: A
(ooA B
)ooB C
)ooC D
;ooD E
trypp 
{qq 
	HiveProxyrr 
.rr %
MatchCreatorManagerClientrr 3%
matchCreatorManagerClientrr4 M
=rrN O
newrrP S%
MatchCreatorManagerClientrrT m
(rrm n
)rrn o
;rro p
boolss 
verificationResultss '
=ss( )%
matchCreatorManagerClientss* C
.ssC D
VerifyIfLobbyIsFullssD W
(ssW X
	codeLobbyssX a
)ssa b
;ssb c
iftt 
(tt 
verificationResulttt &
)tt& '
{uu 
DialogManagervv !
.vv! "!
ShowErrorMessageAlertvv" 7
(vv7 8

Propertiesvv8 B
.vvB C
	ResourcesvvC L
.vvL M
dialogFullLobbyvvM \
)vv\ ]
;vv] ^
}ww 
elsexx 
{yy 
MatchSingletonzz "
.zz" #
Instancezz# +
.zz+ ,
CreateInstancezz, :
(zz: ;
	codeLobbyzz; D
)zzD E
;zzE F
	LobbyView{{ 
	lobbyView{{ '
={{( )
new{{* -
	LobbyView{{. 7
({{7 8
){{8 9
;{{9 :
this|| 
.|| 
NavigationService|| *
.||* +
Navigate||+ 3
(||3 4
	lobbyView||4 =
)||= >
;||> ?
}}} 
}~~ 
catch 
( %
EndpointNotFoundException ,
endPointException- >
)> ?
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogFatal
ÅÅ 
(
ÅÅ  
endPointException
ÅÅ  1
)
ÅÅ1 2
;
ÅÅ2 3
DialogManager
ÇÇ 
.
ÇÇ #
ShowErrorMessageAlert
ÇÇ 3
(
ÇÇ3 4

Properties
ÇÇ4 >
.
ÇÇ> ?
	Resources
ÇÇ? H
.
ÇÇH I%
dialogEndPointException
ÇÇI `
)
ÇÇ` a
;
ÇÇa b
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
TimeoutException
ÑÑ #
timeOutException
ÑÑ$ 4
)
ÑÑ4 5
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogWarn
ÜÜ 
(
ÜÜ 
timeOutException
ÜÜ /
)
ÜÜ/ 0
;
ÜÜ0 1
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I$
dialogTimeOutException
ááI _
)
áá_ `
;
áá` a
}
àà 
catch
ââ 
(
ââ $
CommunicationException
ââ )$
communicationException
ââ* @
)
ââ@ A
{
ää 
logger
ãã 
.
ãã 
LogFatal
ãã 
(
ãã  $
communicationException
ãã  6
)
ãã6 7
;
ãã7 8
DialogManager
åå 
.
åå #
ShowErrorMessageAlert
åå 3
(
åå3 4

Properties
åå4 >
.
åå> ?
	Resources
åå? H
.
ååH I)
dialogComunicationException
ååI d
)
ååd e
;
ååe f
}
çç 
}
éé 	
private
êê 
int
êê #
ValidateExistingLobby
êê )
(
êê) *
string
êê* 0
	codeLobby
êê1 :
)
êê: ;
{
ëë 	
LoggerManager
íí 
logger
íí  
=
íí! "
new
íí# &
LoggerManager
íí' 4
(
íí4 5
this
íí5 9
.
íí9 :
GetType
íí: A
(
ííA B
)
ííB C
)
ííC D
;
ííD E
int
ìì 
validationResult
ìì  
=
ìì! "
	Constants
ìì# ,
.
ìì, -
ErrorOperation
ìì- ;
;
ìì; <
try
îî 
{
ïï 
	HiveProxy
ññ 
.
ññ '
MatchCreatorManagerClient
ññ 3'
matchCreatorManagerClient
ññ4 M
=
ññN O
new
ññP S'
MatchCreatorManagerClient
ññT m
(
ññm n
)
ññn o
;
ñño p
bool
óó &
validationExistingResult
óó -
=
óó. /'
matchCreatorManagerClient
óó0 I
.
óóI J 
VerifyExistingCode
óóJ \
(
óó\ ]
	codeLobby
óó] f
)
óóf g
;
óóg h
if
òò 
(
òò &
validationExistingResult
òò ,
)
òò, -
{
ôô 
validationResult
öö $
=
öö% &
	Constants
öö' 0
.
öö0 1
DataMatches
öö1 <
;
öö< =
}
õõ 
else
úú 
{
ùù 
validationResult
ûû $
=
ûû% &
	Constants
ûû' 0
.
ûû0 1
NoDataMatches
ûû1 >
;
ûû> ?
}
üü 
}
†† 
catch
°° 
(
°° '
EndpointNotFoundException
°° ,
endPointException
°°- >
)
°°> ?
{
¢¢ 
logger
££ 
.
££ 
LogFatal
££ 
(
££  
endPointException
££  1
)
££1 2
;
££2 3
DialogManager
§§ 
.
§§ #
ShowErrorMessageAlert
§§ 3
(
§§3 4

Properties
§§4 >
.
§§> ?
	Resources
§§? H
.
§§H I%
dialogEndPointException
§§I `
)
§§` a
;
§§a b
}
•• 
catch
¶¶ 
(
¶¶ 
TimeoutException
¶¶ #
timeOutException
¶¶$ 4
)
¶¶4 5
{
ßß 
logger
®® 
.
®® 
LogWarn
®® 
(
®® 
timeOutException
®® /
)
®®/ 0
;
®®0 1
DialogManager
©© 
.
©© #
ShowErrorMessageAlert
©© 3
(
©©3 4

Properties
©©4 >
.
©©> ?
	Resources
©©? H
.
©©H I$
dialogTimeOutException
©©I _
)
©©_ `
;
©©` a
}
™™ 
catch
´´ 
(
´´ $
CommunicationException
´´ )$
communicationException
´´* @
)
´´@ A
{
¨¨ 
logger
≠≠ 
.
≠≠ 
LogFatal
≠≠ 
(
≠≠  $
communicationException
≠≠  6
)
≠≠6 7
;
≠≠7 8
DialogManager
ÆÆ 
.
ÆÆ #
ShowErrorMessageAlert
ÆÆ 3
(
ÆÆ3 4

Properties
ÆÆ4 >
.
ÆÆ> ?
	Resources
ÆÆ? H
.
ÆÆH I)
dialogComunicationException
ÆÆI d
)
ÆÆd e
;
ÆÆe f
}
ØØ 
return
∞∞ 
validationResult
∞∞ #
;
∞∞# $
}
±± 	
private
≥≥ 
bool
≥≥ 
ValidateField
≥≥ "
(
≥≥" #
)
≥≥# $
{
¥¥ 	
bool
µµ 
validationResult
µµ !
=
µµ" #
	Validator
µµ$ -
.
µµ- .
ValidateCode
µµ. :
(
µµ: ;
	txtb_Code
µµ; D
.
µµD E
Text
µµE I
)
µµI J
;
µµJ K
if
∂∂ 
(
∂∂ 
!
∂∂ 
validationResult
∂∂ !
)
∂∂! "
{
∑∑ 
	txtb_Code
∏∏ 
.
∏∏ 
BorderBrush
∏∏ %
=
∏∏& '
Brushes
∏∏( /
.
∏∏/ 0
Red
∏∏0 3
;
∏∏3 4
}
ππ 
return
∫∫ 
validationResult
∫∫ #
;
∫∫# $
}
ªª 	
private
ΩΩ 
void
ΩΩ ,
Txtb_Username_PreviewTextInput
ΩΩ 3
(
ΩΩ3 4
object
ΩΩ4 :
sender
ΩΩ; A
,
ΩΩA B&
TextCompositionEventArgs
ΩΩC [
e
ΩΩ\ ]
)
ΩΩ] ^
{
ææ 	
e
¿¿ 
.
¿¿ 
Handled
¿¿ 
=
¿¿ 
!
¿¿ 
Regex
¿¿ 
.
¿¿ 
IsMatch
¿¿ &
(
¿¿& '
e
¿¿' (
.
¿¿( )
Text
¿¿) -
,
¿¿- .
$str
¿¿/ 8
,
¿¿8 9
RegexOptions
¿¿: F
.
¿¿F G
None
¿¿G K
,
¿¿K L
TimeSpan
¿¿M U
.
¿¿U V
FromMilliseconds
¿¿V f
(
¿¿f g
$num
¿¿g j
)
¿¿j k
)
¿¿k l
;
¿¿l m
}
¡¡ 	
private
√√ 
void
√√ '
Txtb_Username_TextChanged
√√ .
(
√√. /
object
√√/ 5
sender
√√6 <
,
√√< ="
TextChangedEventArgs
√√> R
e
√√S T
)
√√T U
{
ƒƒ 	
var
≈≈ 
textBox
≈≈ 
=
≈≈ 
sender
≈≈  
as
≈≈! #
TextBox
≈≈$ +
;
≈≈+ ,
if
∆∆ 
(
∆∆ 
textBox
∆∆ 
==
∆∆ 
null
∆∆ 
)
∆∆  
return
∆∆! '
;
∆∆' (
string
»» 
	cleanText
»» 
=
»» 
textBox
»» &
.
»»& '
Text
»»' +
.
»»+ ,
Replace
»», 3
(
»»3 4
$str
»»4 7
,
»»7 8
$str
»»9 ;
)
»»; <
;
»»< =
if
   
(
   
	cleanText
   
.
   
Length
    
>
  ! "
$num
  # $
)
  $ %
{
ÀÀ 
	cleanText
ÃÃ 
=
ÃÃ 
	cleanText
ÃÃ %
.
ÃÃ% &
	Substring
ÃÃ& /
(
ÃÃ/ 0
$num
ÃÃ0 1
,
ÃÃ1 2
$num
ÃÃ3 4
)
ÃÃ4 5
;
ÃÃ5 6
}
ÕÕ 
string
œœ 
formattedText
œœ  
=
œœ! "
string
œœ# )
.
œœ) *
Join
œœ* .
(
œœ. /
$str
œœ/ 5
,
œœ5 6
	cleanText
œœ7 @
.
œœ@ A
ToCharArray
œœA L
(
œœL M
)
œœM N
)
œœN O
;
œœO P
if
—— 
(
—— 
textBox
—— 
.
—— 
Text
—— 
!=
—— 
formattedText
——  -
)
——- .
{
““ 
textBox
”” 
.
”” 
Text
”” 
=
”” 
formattedText
”” ,
;
””, -
textBox
‘‘ 
.
‘‘ 

CaretIndex
‘‘ "
=
‘‘# $
textBox
‘‘% ,
.
‘‘, -
Text
‘‘- 1
.
‘‘1 2
Length
‘‘2 8
;
‘‘8 9
}
’’ 
}
÷÷ 	
}
◊◊ 
}ÿÿ •ƒ
~C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\FriendsListView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
FriendsListView (
:) *
Page+ /
{ 
private 
Profile 
[ 
] 
friendsObtained )
;) *
public 
FriendsListView 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! "
} 	
private   
void   
LoadFriendships   $
(  $ %
)  % &
{!! 	
lvw_FriendsList"" 
."" 
Items"" !
.""! "
Clear""" '
(""' (
)""( )
;"") *
	HiveProxy## 
.## #
FriendshipManagerClient## -#
friendshipManagerClient##. E
=##F G
new##H K
	HiveProxy##L U
.##U V#
FriendshipManagerClient##V m
(##m n
)##n o
;##o p
LoggerManager$$ 
logger$$  
=$$! "
new$$# &
LoggerManager$$' 4
($$4 5
this$$5 9
.$$9 :
GetType$$: A
($$A B
)$$B C
)$$C D
;$$D E
try%% 
{&& 
Profile'' 
userProfile'' #
=''$ %
new''& )
Profile''* 1
(''1 2
)''2 3
{(( 
idAccesAccount)) "
=))# $ 
UserProfileSingleton))% 9
.))9 :
	idAccount)): C
}** 
;** 
friendsObtained++ 
=++  !#
friendshipManagerClient++" 9
.++9 :
GetAllFriends++: G
(++G H
userProfile++H S
)++S T
;++T U
if,, 
(,, 
friendsObtained,, #
.,,# $
Length,,$ *
==,,+ -
$num,,. /
),,/ 0
{-- 
DialogManager.. !
...! "#
ShowWarningMessageAlert.." 9
(..9 :

Properties..: D
...D E
	Resources..E N
...N O 
dialogNoFriendsAdded..O c
)..c d
;..d e
}// 
else00 
if00 
(00 
friendsObtained00 (
[00( )
$num00) *
]00* +
.00+ ,
	idProfile00, 5
==006 8
	Constants009 B
.00B C
ErrorOperation00C Q
)00Q R
{11 
DialogManager22 !
.22! "!
ShowErrorMessageAlert22" 7
(227 8

Properties228 B
.22B C
	Resources22C L
.22L M
dialogDataBaseError22M `
)22` a
;22a b
}33 
else44 
{55 "
LoadFriendsInformation66 *
(66* +
)66+ ,
;66, -
}77 
}88 
catch99 
(99 %
EndpointNotFoundException99 ,
endPointException99- >
)99> ?
{:: 
logger;; 
.;; 
LogFatal;; 
(;;  
endPointException;;  1
);;1 2
;;;2 3
DialogManager<< 
.<< !
ShowErrorMessageAlert<< 3
(<<3 4

Properties<<4 >
.<<> ?
	Resources<<? H
.<<H I#
dialogEndPointException<<I `
)<<` a
;<<a b
}== 
catch>> 
(>> 
TimeoutException>> #
timeOutException>>$ 4
)>>4 5
{?? 
logger@@ 
.@@ 
LogWarn@@ 
(@@ 
timeOutException@@ /
)@@/ 0
;@@0 1
DialogManagerAA 
.AA !
ShowErrorMessageAlertAA 3
(AA3 4

PropertiesAA4 >
.AA> ?
	ResourcesAA? H
.AAH I"
dialogTimeOutExceptionAAI _
)AA_ `
;AA` a
}BB 
catchCC 
(CC "
CommunicationExceptionCC )"
communicationExceptionCC* @
)CC@ A
{DD 
loggerEE 
.EE 
LogFatalEE 
(EE  "
communicationExceptionEE  6
)EE6 7
;EE7 8
DialogManagerFF 
.FF !
ShowErrorMessageAlertFF 3
(FF3 4

PropertiesFF4 >
.FF> ?
	ResourcesFF? H
.FFH I'
dialogComunicationExceptionFFI d
)FFd e
;FFe f
}GG 
}HH 	
privateJJ 
voidJJ "
LoadFriendsInformationJJ +
(JJ+ ,
)JJ, -
{KK 	
LoggerManagerLL 
loggerLL  
=LL! "
newLL# &
LoggerManagerLL' 4
(LL4 5
thisLL5 9
.LL9 :
GetTypeLL: A
(LLA B
)LLB C
)LLC D
;LLD E
	HiveProxyMM 
.MM $
UserSessionManagerClientMM .$
userSessionManagerClientMM/ G
=MMH I
newMMJ M
	HiveProxyMMN W
.MMW X$
UserSessionManagerClientMMX p
(MMp q
)MMq r
;MMr s
tryNN 
{OO 
forPP 
(PP 
intPP 
indexUsersProfilePP *
=PP+ ,
$numPP- .
;PP. /
indexUsersProfilePP0 A
<PPB C
friendsObtainedPPD S
.PPS T
LengthPPT Z
;PPZ [
indexUsersProfilePP\ m
++PPm o
)PPo p
{QQ 
UserSessionRR 
userSessionRR  +
=RR, -
newRR. 1
UserSessionRR2 =
(RR= >
)RR> ?
{SS 
usernameTT  
=TT! "
friendsObtainedTT# 2
[TT2 3
indexUsersProfileTT3 D
]TTD E
.TTE F
usernameTTF N
,TTN O
	idAccountUU !
=UU" #
friendsObtainedUU$ 3
[UU3 4
indexUsersProfileUU4 E
]UUE F
.UUF G
	idAccountUUG P
}VV 
;VV 
boolWW 
stateFriendWW $
=WW% &$
userSessionManagerClientWW' ?
.WW? @
VerifyConnectivityWW@ R
(WWR S
userSessionWWS ^
)WW^ _
;WW_ `
ProfileUserXX 
profileUserXX  +
=XX, -
newXX. 1
ProfileUserXX2 =
(XX= >
)XX> ?
{YY 
	idProfileZZ !
=ZZ" #
friendsObtainedZZ$ 3
[ZZ3 4
indexUsersProfileZZ4 E
]ZZE F
.ZZF G
	idProfileZZG P
,ZZP Q
	idAccount[[ !
=[[" #
friendsObtained[[$ 3
[[[3 4
indexUsersProfile[[4 E
][[E F
.[[F G
	idAccount[[G P
,[[P Q
username\\  
=\\! "
friendsObtained\\# 2
[\\2 3
indexUsersProfile\\3 D
]\\D E
.\\E F
username\\F N
,\\N O
imageProfile]] $
=]]% &
friendsObtained]]' 6
[]]6 7
indexUsersProfile]]7 H
]]]H I
.]]I J
	imagePath]]J S
,]]S T
state^^ 
=^^ 
stateFriend^^  +
}__ 
;__ 
lvw_FriendsList`` #
.``# $
Items``$ )
.``) *
Add``* -
(``- .
profileUser``. 9
)``9 :
;``: ;
}aa 
}bb 
catchcc 
(cc %
EndpointNotFoundExceptioncc ,
endPointExceptioncc- >
)cc> ?
{dd 
loggeree 
.ee 
LogFatalee 
(ee  
endPointExceptionee  1
)ee1 2
;ee2 3
DialogManagerff 
.ff !
ShowErrorMessageAlertff 3
(ff3 4

Propertiesff4 >
.ff> ?
	Resourcesff? H
.ffH I#
dialogEndPointExceptionffI `
)ff` a
;ffa b
}gg 
catchhh 
(hh 
TimeoutExceptionhh #
timeOutExceptionhh$ 4
)hh4 5
{ii 
loggerjj 
.jj 
LogWarnjj 
(jj 
timeOutExceptionjj /
)jj/ 0
;jj0 1
DialogManagerkk 
.kk !
ShowErrorMessageAlertkk 3
(kk3 4

Propertieskk4 >
.kk> ?
	Resourceskk? H
.kkH I"
dialogTimeOutExceptionkkI _
)kk_ `
;kk` a
}ll 
catchmm 
(mm "
CommunicationExceptionmm )"
communicationExceptionmm* @
)mm@ A
{nn 
loggeroo 
.oo 
LogFataloo 
(oo  "
communicationExceptionoo  6
)oo6 7
;oo7 8
DialogManagerpp 
.pp !
ShowErrorMessageAlertpp 3
(pp3 4

Propertiespp4 >
.pp> ?
	Resourcespp? H
.ppH I'
dialogComunicationExceptionppI d
)ppd e
;ppe f
}qq 
}ss 	
privateuu 
voiduu 
LoadFriendRequestsuu '
(uu' (
)uu( )
{vv 	
	HiveProxyww 
.ww &
FriendRequestManagerClientww 0&
friendRequestManagerClientww1 K
=wwL M
newwwN Q
	HiveProxywwR [
.ww[ \&
FriendRequestManagerClientww\ v
(wwv w
)www x
;wwx y
LoggerManagerxx 
loggerxx  
=xx! "
newxx# &
LoggerManagerxx' 4
(xx4 5
thisxx5 9
.xx9 :
GetTypexx: A
(xxA B
)xxB C
)xxC D
;xxD E
lvw_FriendRequestsyy 
.yy 
Itemsyy $
.yy$ %
Clearyy% *
(yy* +
)yy+ ,
;yy, -
try{{ 
{|| 
Profile}} 
userProfile}} #
=}}$ %
new}}& )
Profile}}* 1
(}}1 2
)}}2 3
{~~ 
idAccesAccount "
=# $ 
UserProfileSingleton% 9
.9 :
	idAccount: C
}
ÄÄ 
;
ÄÄ 
Profile
ÅÅ 
[
ÅÅ 
]
ÅÅ $
friendRequestsObtained
ÅÅ 0
=
ÅÅ1 2(
friendRequestManagerClient
ÅÅ3 M
.
ÅÅM N
GetFriendRequests
ÅÅN _
(
ÅÅ_ `
userProfile
ÅÅ` k
)
ÅÅk l
;
ÅÅl m
if
ÇÇ 
(
ÇÇ $
friendRequestsObtained
ÇÇ *
.
ÇÇ* +
Length
ÇÇ+ 1
==
ÇÇ2 4
	Constants
ÇÇ5 >
.
ÇÇ> ?
NoDataMatches
ÇÇ? L
)
ÇÇL M
{
ÉÉ 
DialogManager
ÑÑ !
.
ÑÑ! "%
ShowWarningMessageAlert
ÑÑ" 9
(
ÑÑ9 :

Properties
ÑÑ: D
.
ÑÑD E
	Resources
ÑÑE N
.
ÑÑN O#
dialogNoFriendRequest
ÑÑO d
)
ÑÑd e
;
ÑÑe f
}
ÖÖ 
else
ÜÜ 
if
ÜÜ 
(
ÜÜ $
friendRequestsObtained
ÜÜ /
[
ÜÜ/ 0
$num
ÜÜ0 1
]
ÜÜ1 2
.
ÜÜ2 3
	idProfile
ÜÜ3 <
==
ÜÜ= ?
	Constants
ÜÜ@ I
.
ÜÜI J
ErrorOperation
ÜÜJ X
)
ÜÜX Y
{
áá 
DialogManager
àà !
.
àà! "#
ShowErrorMessageAlert
àà" 7
(
àà7 8

Properties
àà8 B
.
ààB C
	Resources
ààC L
.
ààL M!
dialogDataBaseError
ààM `
)
àà` a
;
ààa b
}
ââ 
else
ää 
{
ãã "
LoadUsersInformation
åå (
(
åå( )$
friendRequestsObtained
åå) ?
)
åå? @
;
åå@ A
}
çç 
}
éé 
catch
èè 
(
èè '
EndpointNotFoundException
èè ,
endPointException
èè- >
)
èè> ?
{
êê 
logger
ëë 
.
ëë 
LogFatal
ëë 
(
ëë  
endPointException
ëë  1
)
ëë1 2
;
ëë2 3
DialogManager
íí 
.
íí #
ShowErrorMessageAlert
íí 3
(
íí3 4

Properties
íí4 >
.
íí> ?
	Resources
íí? H
.
ííH I%
dialogEndPointException
ííI `
)
íí` a
;
íía b
}
ìì 
catch
îî 
(
îî 
TimeoutException
îî #
timeOutException
îî$ 4
)
îî4 5
{
ïï 
logger
ññ 
.
ññ 
LogWarn
ññ 
(
ññ 
timeOutException
ññ /
)
ññ/ 0
;
ññ0 1
DialogManager
óó 
.
óó #
ShowErrorMessageAlert
óó 3
(
óó3 4

Properties
óó4 >
.
óó> ?
	Resources
óó? H
.
óóH I$
dialogTimeOutException
óóI _
)
óó_ `
;
óó` a
}
òò 
catch
ôô 
(
ôô $
CommunicationException
ôô )$
communicationException
ôô* @
)
ôô@ A
{
öö 
logger
õõ 
.
õõ 
LogFatal
õõ 
(
õõ  $
communicationException
õõ  6
)
õõ6 7
;
õõ7 8
DialogManager
úú 
.
úú #
ShowErrorMessageAlert
úú 3
(
úú3 4

Properties
úú4 >
.
úú> ?
	Resources
úú? H
.
úúH I)
dialogComunicationException
úúI d
)
úúd e
;
úúe f
}
ùù 
}
ûû 	
private
†† 
void
†† "
LoadUsersInformation
†† )
(
††) *
Profile
††* 1
[
††1 2
]
††2 3
usersProfile
††4 @
)
††@ A
{
°° 	
for
¢¢ 
(
¢¢ 
int
¢¢ 
indexUsersProfile
¢¢ %
=
¢¢& '
$num
¢¢( )
;
¢¢) *
indexUsersProfile
¢¢, =
<
¢¢> ?
usersProfile
¢¢@ L
.
¢¢L M
Length
¢¢M S
;
¢¢S T
indexUsersProfile
¢¢U f
++
¢¢f h
)
¢¢h i
{
££ 
ProfileUser
§§ 
profileUser
§§ '
=
§§( )
new
§§* -
ProfileUser
§§. 9
(
§§9 :
)
§§: ;
{
•• 
	idProfile
¶¶ 
=
¶¶ 
usersProfile
¶¶  ,
[
¶¶, -
indexUsersProfile
¶¶- >
]
¶¶> ?
.
¶¶? @
	idProfile
¶¶@ I
,
¶¶I J
	idAccount
ßß 
=
ßß 
usersProfile
ßß  ,
[
ßß, -
indexUsersProfile
ßß- >
]
ßß> ?
.
ßß? @
idAccesAccount
ßß@ N
,
ßßN O
username
®® 
=
®® 
usersProfile
®® +
[
®®+ ,
indexUsersProfile
®®, =
]
®®= >
.
®®> ?
nickname
®®? G
,
®®G H
imageProfile
©©  
=
©©! "
usersProfile
©©# /
[
©©/ 0
indexUsersProfile
©©0 A
]
©©A B
.
©©B C
	imagePath
©©C L
,
©©L M
}
™™ 
;
™™  
lvw_FriendRequests
´´ "
.
´´" #
Items
´´# (
.
´´( )
Add
´´) ,
(
´´, -
profileUser
´´- 8
)
´´8 9
;
´´9 :
}
¨¨ 
}
≠≠ 	
private
ØØ 
void
ØØ 

SearchUser
ØØ 
(
ØØ  
object
ØØ  &
sender
ØØ' -
,
ØØ- .
RoutedEventArgs
ØØ/ >
e
ØØ? @
)
ØØ@ A
{
∞∞ 	
if
±± 
(
±± 
VerifyField
±± 
(
±± 
)
±± 
)
±± 
{
≤≤ 
if
¥¥ 
(
¥¥ 
txtb_SearchFriend
¥¥ %
.
¥¥% &
Text
¥¥& *
==
¥¥+ -"
UserProfileSingleton
¥¥. B
.
¥¥B C
username
¥¥C K
)
¥¥K L
{
µµ 
DialogManager
∂∂ !
.
∂∂! "%
ShowWarningMessageAlert
∂∂" 9
(
∂∂9 :

Properties
∂∂: D
.
∂∂D E
	Resources
∂∂E N
.
∂∂N O%
dialogCanNotAddYourself
∂∂O f
)
∂∂f g
;
∂∂g h
}
∑∑ 
else
∏∏ 
{
ππ #
LoadFriendToAddSearch
∫∫ )
(
∫∫) *
)
∫∫* +
;
∫∫+ ,
}
ªª 
}
ºº 
else
ΩΩ 
{
ææ 
DialogManager
øø 
.
øø #
ShowErrorMessageAlert
øø 3
(
øø3 4

Properties
øø4 >
.
øø> ?
	Resources
øø? H
.
øøH I
dialogWrongData
øøI X
)
øøX Y
;
øøY Z
}
¿¿ 
}
¡¡ 	
public
√√ 
bool
√√ 
VerifyField
√√ 
(
√√  
)
√√  !
{
ƒƒ 	
lvw_FriendToAdd
≈≈ 
.
≈≈ 
Items
≈≈ !
.
≈≈! "
Clear
≈≈" '
(
≈≈' (
)
≈≈( )
;
≈≈) *
bool
∆∆ 
usernameField
∆∆ 
=
∆∆  
	Validator
∆∆! *
.
∆∆* +
ValidateUsername
∆∆+ ;
(
∆∆; <
txtb_SearchFriend
∆∆< M
.
∆∆M N
Text
∆∆N R
)
∆∆R S
;
∆∆S T
if
»» 
(
»» 
!
»» 
usernameField
»» 
)
»» 
{
…… 
txtb_SearchFriend
   !
.
  ! "
BorderBrush
  " -
=
  . /
Brushes
  0 7
.
  7 8
Red
  8 ;
;
  ; <
}
ÀÀ 
return
ÕÕ 
usernameField
ÕÕ  
;
ÕÕ  !
}
ŒŒ 	
private
–– 
void
–– #
LoadFriendToAddSearch
–– *
(
––* +
)
––+ ,
{
—— 	
	HiveProxy
““ 
.
““ 
UserManagerClient
““ '
userManagerClient
““( 9
=
““: ;
new
““< ?
	HiveProxy
““@ I
.
““I J
UserManagerClient
““J [
(
““[ \
)
““\ ]
;
““] ^
LoggerManager
”” 
logger
””  
=
””! "
new
””# &
LoggerManager
””' 4
(
””4 5
this
””5 9
.
””9 :
GetType
””: A
(
””A B
)
””B C
)
””C D
;
””D E
try
’’ 
{
÷÷ 
Profile
◊◊ !
userProfileObtained
◊◊ +
=
◊◊, -
userManagerClient
◊◊. ?
.
◊◊? @&
GetUserProfileByUsername
◊◊@ X
(
◊◊X Y
txtb_SearchFriend
◊◊Y j
.
◊◊j k
Text
◊◊k o
)
◊◊o p
;
◊◊p q
if
ŸŸ 
(
ŸŸ !
userProfileObtained
ŸŸ '
.
ŸŸ' (
	idProfile
ŸŸ( 1
>=
ŸŸ2 4
$num
ŸŸ5 6
)
ŸŸ6 7
{
⁄⁄ 
Profile
€€ 
profileObtained
€€ +
=
€€, -
new
€€. 1
Profile
€€2 9
(
€€9 :
)
€€: ;
{
‹‹ 
idAccesAccount
›› &
=
››' (!
userProfileObtained
››) <
.
››< =
idAccesAccount
››= K
}
ﬁﬁ 
;
ﬁﬁ 
int
ﬂﬂ .
 verificationFriendRequestExisted
ﬂﬂ 8
=
ﬂﬂ9 :)
VerifyExistingFriendRequest
ﬂﬂ; V
(
ﬂﬂV W
profileObtained
ﬂﬂW f
)
ﬂﬂf g
;
ﬂﬂg h
bool
‡‡ 

areFriends
‡‡ #
=
‡‡$ %
false
‡‡& +
;
‡‡+ ,
if
‚‚ 
(
‚‚ .
 verificationFriendRequestExisted
‚‚ 8
==
‚‚9 ;
$num
‚‚< =
)
‚‚= >
{
„„ 

areFriends
‰‰ "
=
‰‰# $
false
‰‰% *
;
‰‰* +!
LoadUserInformation
ÂÂ +
(
ÂÂ+ ,!
userProfileObtained
ÂÂ, ?
,
ÂÂ? @

areFriends
ÂÂ@ J
)
ÂÂJ K
;
ÂÂK L
}
ÊÊ 
else
ÁÁ 
if
ÁÁ 
(
ÁÁ .
 verificationFriendRequestExisted
ÁÁ =
>=
ÁÁ> @
$num
ÁÁA B
)
ÁÁB C
{
ËË 

areFriends
ÈÈ "
=
ÈÈ# $
true
ÈÈ% )
;
ÈÈ) *!
LoadUserInformation
ÍÍ +
(
ÍÍ+ ,!
userProfileObtained
ÍÍ, ?
,
ÍÍ? @

areFriends
ÍÍA K
)
ÍÍK L
;
ÍÍL M
}
ÎÎ 
else
ÏÏ 
{
ÌÌ 
DialogManager
ÓÓ %
.
ÓÓ% &#
ShowErrorMessageAlert
ÓÓ& ;
(
ÓÓ; <

Properties
ÓÓ< F
.
ÓÓF G
	Resources
ÓÓG P
.
ÓÓP Q!
dialogDataBaseError
ÓÓQ d
)
ÓÓd e
;
ÓÓe f
}
ÔÔ 
}
 
else
 
if
 
(
 !
userProfileObtained
 ,
.
, -
	idProfile
- 6
==
7 9
	Constants
: C
.
C D
NoDataMatches
D Q
)
Q R
{
ÒÒ 
DialogManager
ÚÚ !
.
ÚÚ! "%
ShowWarningMessageAlert
ÚÚ" 9
(
ÚÚ9 :

Properties
ÚÚ: D
.
ÚÚD E
	Resources
ÚÚE N
.
ÚÚN O#
dialogNoUsernameFound
ÚÚO d
)
ÚÚd e
;
ÚÚe f
}
ÛÛ 
else
ÛÛ 
if
ÛÛ 
(
ÛÛ !
userProfileObtained
ÛÛ ,
.
ÛÛ, -
	idProfile
ÛÛ- 6
==
ÛÛ7 9
	Constants
ÛÛ: C
.
ÛÛC D
ErrorOperation
ÛÛD R
)
ÛÛR S
{
ÙÙ 
DialogManager
ıı !
.
ıı! "#
ShowErrorMessageAlert
ıı" 7
(
ıı7 8

Properties
ıı8 B
.
ııB C
	Resources
ııC L
.
ııL M!
dialogDataBaseError
ııM `
)
ıı` a
;
ııa b
}
ˆˆ 
}
˜˜ 
catch
¯¯ 
(
¯¯ '
EndpointNotFoundException
¯¯ ,
endPointException
¯¯- >
)
¯¯> ?
{
˘˘ 
logger
˙˙ 
.
˙˙ 
LogFatal
˙˙ 
(
˙˙  
endPointException
˙˙  1
)
˙˙1 2
;
˙˙2 3
DialogManager
˚˚ 
.
˚˚ #
ShowErrorMessageAlert
˚˚ 3
(
˚˚3 4

Properties
˚˚4 >
.
˚˚> ?
	Resources
˚˚? H
.
˚˚H I%
dialogEndPointException
˚˚I `
)
˚˚` a
;
˚˚a b
}
¸¸ 
catch
˝˝ 
(
˝˝ 
TimeoutException
˝˝ #
timeOutException
˝˝$ 4
)
˝˝4 5
{
˛˛ 
logger
ˇˇ 
.
ˇˇ 
LogWarn
ˇˇ 
(
ˇˇ 
timeOutException
ˇˇ /
)
ˇˇ/ 0
;
ˇˇ0 1
DialogManager
ÄÄ 
.
ÄÄ #
ShowErrorMessageAlert
ÄÄ 3
(
ÄÄ3 4

Properties
ÄÄ4 >
.
ÄÄ> ?
	Resources
ÄÄ? H
.
ÄÄH I$
dialogTimeOutException
ÄÄI _
)
ÄÄ_ `
;
ÄÄ` a
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ $
CommunicationException
ÇÇ )$
communicationException
ÇÇ* @
)
ÇÇ@ A
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogFatal
ÑÑ 
(
ÑÑ  $
communicationException
ÑÑ  6
)
ÑÑ6 7
;
ÑÑ7 8
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I)
dialogComunicationException
ÖÖI d
)
ÖÖd e
;
ÖÖe f
}
ÜÜ 
}
áá 	
private
ââ 
int
ââ )
VerifyExistingFriendRequest
ââ /
(
ââ/ 0
Profile
ââ0 7
profileObtained
ââ8 G
)
ââG H
{
ää 	
LoggerManager
ãã 
logger
ãã  
=
ãã! "
new
ãã# &
LoggerManager
ãã' 4
(
ãã4 5
this
ãã5 9
.
ãã9 :
GetType
ãã: A
(
ããA B
)
ããB C
)
ããC D
;
ããD E
	HiveProxy
åå 
.
åå (
FriendRequestManagerClient
åå 0(
friendRequestManagerClient
åå1 K
=
ååL M
new
ååN Q
	HiveProxy
ååR [
.
åå[ \(
FriendRequestManagerClient
åå\ v
(
ååv w
)
ååw x
;
ååx y
int
çç  
verificationResult
çç "
=
çç# $
	Constants
çç% .
.
çç. /
ErrorOperation
çç/ =
;
çç= >
try
éé 
{
èè 
Profile
êê 
searcherProfile
êê '
=
êê( )
new
êê* -
Profile
êê. 5
(
êê5 6
)
êê6 7
{
ëë 
idAccesAccount
íí "
=
íí# $"
UserProfileSingleton
íí% 9
.
íí9 :
	idAccount
íí: C
}
ìì 
;
ìì  
verificationResult
îî "
=
îî# $(
friendRequestManagerClient
îî% ?
.
îî? @+
VerifyFriendRequestRegistered
îî@ ]
(
îî] ^
searcherProfile
îî^ m
,
îîm n
profileObtained
îîo ~
)
îî~ 
;îî Ä
}
ïï 
catch
ññ 
(
ññ '
EndpointNotFoundException
ññ ,
endPointException
ññ- >
)
ññ> ?
{
óó 
logger
òò 
.
òò 
LogFatal
òò 
(
òò  
endPointException
òò  1
)
òò1 2
;
òò2 3
DialogManager
ôô 
.
ôô #
ShowErrorMessageAlert
ôô 3
(
ôô3 4

Properties
ôô4 >
.
ôô> ?
	Resources
ôô? H
.
ôôH I%
dialogEndPointException
ôôI `
)
ôô` a
;
ôôa b
}
öö 
catch
õõ 
(
õõ 
TimeoutException
õõ #
timeOutException
õõ$ 4
)
õõ4 5
{
úú 
logger
ùù 
.
ùù 
LogWarn
ùù 
(
ùù 
timeOutException
ùù /
)
ùù/ 0
;
ùù0 1
DialogManager
ûû 
.
ûû #
ShowErrorMessageAlert
ûû 3
(
ûû3 4

Properties
ûû4 >
.
ûû> ?
	Resources
ûû? H
.
ûûH I$
dialogTimeOutException
ûûI _
)
ûû_ `
;
ûû` a
}
üü 
catch
†† 
(
†† $
CommunicationException
†† )$
communicationException
††* @
)
††@ A
{
°° 
logger
¢¢ 
.
¢¢ 
LogFatal
¢¢ 
(
¢¢  $
communicationException
¢¢  6
)
¢¢6 7
;
¢¢7 8
DialogManager
££ 
.
££ #
ShowErrorMessageAlert
££ 3
(
££3 4

Properties
££4 >
.
££> ?
	Resources
££? H
.
££H I)
dialogComunicationException
££I d
)
££d e
;
££e f
}
§§ 
return
••  
verificationResult
•• %
;
••% &
}
¶¶ 	
private
®® 
void
®® !
AcceptFriendRequest
®® (
(
®®( )
object
®®) /
sender
®®0 6
,
®®6 7
	EventArgs
®®8 A
e
®®B C
)
®®C D
{
©© 	
Button
™™ 
clickedButton
™™  
=
™™! "
sender
™™# )
as
™™* ,
Button
™™- 3
;
™™3 4
ProfileUser
´´ 
profileUser
´´ #
=
´´$ %
clickedButton
´´& 3
.
´´3 4
DataContext
´´4 ?
as
´´@ B
ProfileUser
´´C N
;
´´N O
if
≠≠ 
(
≠≠ 
profileUser
≠≠ 
!=
≠≠ 
null
≠≠ #
)
≠≠# $
{
ÆÆ %
SendAcceptFriendRequest
ØØ '
(
ØØ' (
profileUser
ØØ( 3
)
ØØ3 4
;
ØØ4 5
}
∞∞ 
else
±± 
{
≤≤ 
DialogManager
≥≥ 
.
≥≥ #
ShowErrorMessageAlert
≥≥ 3
(
≥≥3 4

Properties
≥≥4 >
.
≥≥> ?
	Resources
≥≥? H
.
≥≥H I,
dialogErrorAtObtainingUserData
≥≥I g
)
≥≥g h
;
≥≥h i
}
¥¥ 
}
µµ 	
private
∏∏ 
void
∏∏ "
DeclineFriendRequest
∏∏ )
(
∏∏) *
object
∏∏* 0
sender
∏∏1 7
,
∏∏7 8
	EventArgs
∏∏9 B
e
∏∏C D
)
∏∏D E
{
ππ 	
Button
∫∫ 
clickedButton
∫∫  
=
∫∫! "
sender
∫∫# )
as
∫∫* ,
Button
∫∫- 3
;
∫∫3 4
ProfileUser
ªª 
profileUser
ªª #
=
ªª$ %
clickedButton
ªª& 3
.
ªª3 4
DataContext
ªª4 ?
as
ªª@ B
ProfileUser
ªªC N
;
ªªN O
if
ΩΩ 
(
ΩΩ 
profileUser
ΩΩ 
!=
ΩΩ 
null
ΩΩ #
)
ΩΩ# $
{
ææ &
SendDeclineFriendRequest
øø (
(
øø( )
profileUser
øø) 4
)
øø4 5
;
øø5 6
}
¿¿ 
else
¡¡ 
{
¬¬ 
DialogManager
√√ 
.
√√ #
ShowErrorMessageAlert
√√ 3
(
√√3 4

Properties
√√4 >
.
√√> ?
	Resources
√√? H
.
√√H I,
dialogErrorAtObtainingUserData
√√I g
)
√√g h
;
√√h i
}
ƒƒ 
}
≈≈ 	
private
»» 
void
»» 
SendFriendRequest
»» &
(
»»& '
object
»»' -
sender
»». 4
,
»»4 5
RoutedEventArgs
»»6 E
e
»»F G
)
»»G H
{
…… 	
Button
   
clickedButton
    
=
  ! "
sender
  # )
as
  * ,
Button
  - 3
;
  3 4
ProfileUser
ÀÀ 
profileUser
ÀÀ #
=
ÀÀ$ %
clickedButton
ÀÀ& 3
.
ÀÀ3 4
DataContext
ÀÀ4 ?
as
ÀÀ@ B
ProfileUser
ÀÀC N
;
ÀÀN O
if
ÃÃ 
(
ÃÃ 
profileUser
ÃÃ 
!=
ÃÃ 
null
ÃÃ "
)
ÃÃ" #
{
ÕÕ !
CreateFriendRequest
ŒŒ #
(
ŒŒ# $
profileUser
ŒŒ$ /
)
ŒŒ/ 0
;
ŒŒ0 1
}
œœ 
else
–– 
{
—— 
DialogManager
““ 
.
““ #
ShowErrorMessageAlert
““ 3
(
““3 4

Properties
““4 >
.
““> ?
	Resources
““? H
.
““H I,
dialogErrorAtObtainingUserData
““I g
)
““g h
;
““h i
}
”” 
}
‘‘ 	
private
÷÷ 
void
÷÷ %
SendAcceptFriendRequest
÷÷ ,
(
÷÷, -
ProfileUser
÷÷- 8
userToResponse
÷÷9 G
)
÷÷G H
{
◊◊ 	
LoggerManager
ÿÿ 
logger
ÿÿ  
=
ÿÿ! "
new
ÿÿ# &
LoggerManager
ÿÿ' 4
(
ÿÿ4 5
this
ÿÿ5 9
.
ÿÿ9 :
GetType
ÿÿ: A
(
ÿÿA B
)
ÿÿB C
)
ÿÿC D
;
ÿÿD E
	HiveProxy
ŸŸ 
.
ŸŸ (
FriendRequestManagerClient
ŸŸ 0(
friendRequestManagerClient
ŸŸ1 K
=
ŸŸL M
new
ŸŸN Q(
FriendRequestManagerClient
ŸŸR l
(
ŸŸl m
)
ŸŸm n
;
ŸŸn o
Profile
⁄⁄ 
	playerOne
⁄⁄ 
=
⁄⁄ 
new
⁄⁄  #
Profile
⁄⁄$ +
(
⁄⁄+ ,
)
⁄⁄, -
{
€€ 
idAccesAccount
‹‹ 
=
‹‹  "
UserProfileSingleton
‹‹! 5
.
‹‹5 6
	idAccount
‹‹6 ?
}
›› 
;
›› 
Profile
ﬁﬁ 
	playerTwo
ﬁﬁ 
=
ﬁﬁ 
new
ﬁﬁ  #
Profile
ﬁﬁ$ +
(
ﬁﬁ+ ,
)
ﬁﬁ, -
{
ﬂﬂ 
idAccesAccount
‡‡ 
=
‡‡  
userToResponse
‡‡! /
.
‡‡/ 0
	idAccount
‡‡0 9
}
·· 
;
·· 
try
‚‚ 
{
„„ 
int
‰‰ 
resultCreation
‰‰ "
=
‰‰# $(
friendRequestManagerClient
‰‰% ?
.
‰‰? @!
AcceptFriendRequest
‰‰@ S
(
‰‰S T
	playerOne
‰‰T ]
,
‰‰] ^
	playerTwo
‰‰_ h
)
‰‰h i
;
‰‰i j
if
ÂÂ 
(
ÂÂ 
resultCreation
ÂÂ "
==
ÂÂ# %
	Constants
ÂÂ& /
.
ÂÂ/ 0
SuccesOperation
ÂÂ0 ?
)
ÂÂ? @
{
ÊÊ 
DialogManager
ÁÁ !
.
ÁÁ! "%
ShowSuccessMessageAlert
ÁÁ" 9
(
ÁÁ9 :

Properties
ÁÁ: D
.
ÁÁD E
	Resources
ÁÁE N
.
ÁÁN O'
dialogAcceptFriendRequest
ÁÁO h
)
ÁÁh i
;
ÁÁi j 
lvw_FriendRequests
ËË &
.
ËË& '
Items
ËË' ,
.
ËË, -
Clear
ËË- 2
(
ËË2 3
)
ËË3 4
;
ËË4 5
}
ÈÈ 
else
ÍÍ 
if
ÍÍ 
(
ÍÍ 
resultCreation
ÍÍ '
==
ÍÍ( *
	Constants
ÍÍ+ 4
.
ÍÍ4 5
ErrorOperation
ÍÍ5 C
)
ÍÍC D
{
ÎÎ 
DialogManager
ÏÏ !
.
ÏÏ! "#
ShowErrorMessageAlert
ÏÏ" 7
(
ÏÏ7 8

Properties
ÏÏ8 B
.
ÏÏB C
	Resources
ÏÏC L
.
ÏÏL M!
dialogDataBaseError
ÏÏM `
)
ÏÏ` a
;
ÏÏa b
}
ÌÌ 
}
ÓÓ 
catch
ÔÔ 
(
ÔÔ '
EndpointNotFoundException
ÔÔ ,
endPointException
ÔÔ- >
)
ÔÔ> ?
{
 
logger
ÒÒ 
.
ÒÒ 
LogFatal
ÒÒ 
(
ÒÒ  
endPointException
ÒÒ  1
)
ÒÒ1 2
;
ÒÒ2 3
DialogManager
ÚÚ 
.
ÚÚ #
ShowErrorMessageAlert
ÚÚ 3
(
ÚÚ3 4

Properties
ÚÚ4 >
.
ÚÚ> ?
	Resources
ÚÚ? H
.
ÚÚH I%
dialogEndPointException
ÚÚI `
)
ÚÚ` a
;
ÚÚa b
}
ÛÛ 
catch
ÙÙ 
(
ÙÙ 
TimeoutException
ÙÙ #
timeOutException
ÙÙ$ 4
)
ÙÙ4 5
{
ıı 
logger
ˆˆ 
.
ˆˆ 
LogWarn
ˆˆ 
(
ˆˆ 
timeOutException
ˆˆ /
)
ˆˆ/ 0
;
ˆˆ0 1
DialogManager
˜˜ 
.
˜˜ #
ShowErrorMessageAlert
˜˜ 3
(
˜˜3 4

Properties
˜˜4 >
.
˜˜> ?
	Resources
˜˜? H
.
˜˜H I$
dialogTimeOutException
˜˜I _
)
˜˜_ `
;
˜˜` a
}
¯¯ 
catch
˘˘ 
(
˘˘ $
CommunicationException
˘˘ )$
communicationException
˘˘* @
)
˘˘@ A
{
˙˙ 
logger
˚˚ 
.
˚˚ 
LogFatal
˚˚ 
(
˚˚  $
communicationException
˚˚  6
)
˚˚6 7
;
˚˚7 8
DialogManager
¸¸ 
.
¸¸ #
ShowErrorMessageAlert
¸¸ 3
(
¸¸3 4

Properties
¸¸4 >
.
¸¸> ?
	Resources
¸¸? H
.
¸¸H I)
dialogComunicationException
¸¸I d
)
¸¸d e
;
¸¸e f
}
˝˝ 
}
˛˛ 	
private
ÄÄ 
void
ÄÄ &
SendDeclineFriendRequest
ÄÄ -
(
ÄÄ- .
ProfileUser
ÄÄ. 9
userToResponse
ÄÄ: H
)
ÄÄH I
{
ÅÅ 	
LoggerManager
ÇÇ 
logger
ÇÇ  
=
ÇÇ! "
new
ÇÇ# &
LoggerManager
ÇÇ' 4
(
ÇÇ4 5
this
ÇÇ5 9
.
ÇÇ9 :
GetType
ÇÇ: A
(
ÇÇA B
)
ÇÇB C
)
ÇÇC D
;
ÇÇD E
	HiveProxy
ÉÉ 
.
ÉÉ (
FriendRequestManagerClient
ÉÉ 0(
friendRequestManagerClient
ÉÉ1 K
=
ÉÉL M
new
ÉÉN Q(
FriendRequestManagerClient
ÉÉR l
(
ÉÉl m
)
ÉÉm n
;
ÉÉn o
Profile
ÑÑ 
	playerOne
ÑÑ 
=
ÑÑ 
new
ÑÑ  #
Profile
ÑÑ$ +
(
ÑÑ+ ,
)
ÑÑ, -
{
ÖÖ 
idAccesAccount
ÜÜ 
=
ÜÜ  "
UserProfileSingleton
ÜÜ! 5
.
ÜÜ5 6
	idAccount
ÜÜ6 ?
}
áá 
;
áá 
Profile
àà 
	playerTwo
àà 
=
àà 
new
àà  #
Profile
àà$ +
(
àà+ ,
)
àà, -
{
ââ 
idAccesAccount
ää 
=
ää  
userToResponse
ää! /
.
ää/ 0
	idAccount
ää0 9
}
ãã 
;
ãã 
try
åå 
{
çç 
int
éé 
resultCreation
éé "
=
éé# $(
friendRequestManagerClient
éé% ?
.
éé? @"
DeclineFriendRequest
éé@ T
(
ééT U
	playerOne
ééU ^
,
éé^ _
	playerTwo
éé` i
)
ééi j
;
ééj k
if
èè 
(
èè 
resultCreation
èè "
==
èè# %
	Constants
èè& /
.
èè/ 0
SuccesOperation
èè0 ?
)
èè? @
{
êê 
DialogManager
ëë !
.
ëë! "%
ShowSuccessMessageAlert
ëë" 9
(
ëë9 :

Properties
ëë: D
.
ëëD E
	Resources
ëëE N
.
ëëN O)
dialogDeclinedFriendRequest
ëëO j
)
ëëj k
;
ëëk l 
lvw_FriendRequests
íí &
.
íí& '
Items
íí' ,
.
íí, -
Clear
íí- 2
(
íí2 3
)
íí3 4
;
íí4 5
}
ìì 
else
îî 
if
îî 
(
îî 
resultCreation
îî '
==
îî( *
	Constants
îî+ 4
.
îî4 5
ErrorOperation
îî5 C
)
îîC D
{
ïï 
DialogManager
ññ !
.
ññ! "#
ShowErrorMessageAlert
ññ" 7
(
ññ7 8

Properties
ññ8 B
.
ññB C
	Resources
ññC L
.
ññL M!
dialogDataBaseError
ññM `
)
ññ` a
;
ñña b
}
óó 
}
òò 
catch
ôô 
(
ôô '
EndpointNotFoundException
ôô ,
endPointException
ôô- >
)
ôô> ?
{
öö 
logger
õõ 
.
õõ 
LogFatal
õõ 
(
õõ  
endPointException
õõ  1
)
õõ1 2
;
õõ2 3
DialogManager
úú 
.
úú #
ShowErrorMessageAlert
úú 3
(
úú3 4

Properties
úú4 >
.
úú> ?
	Resources
úú? H
.
úúH I%
dialogEndPointException
úúI `
)
úú` a
;
úúa b
}
ùù 
catch
ûû 
(
ûû 
TimeoutException
ûû #
timeOutException
ûû$ 4
)
ûû4 5
{
üü 
logger
†† 
.
†† 
LogWarn
†† 
(
†† 
timeOutException
†† /
)
††/ 0
;
††0 1
DialogManager
°° 
.
°° #
ShowErrorMessageAlert
°° 3
(
°°3 4

Properties
°°4 >
.
°°> ?
	Resources
°°? H
.
°°H I$
dialogTimeOutException
°°I _
)
°°_ `
;
°°` a
}
¢¢ 
catch
££ 
(
££ $
CommunicationException
££ )$
communicationException
££* @
)
££@ A
{
§§ 
logger
•• 
.
•• 
LogFatal
•• 
(
••  $
communicationException
••  6
)
••6 7
;
••7 8
DialogManager
¶¶ 
.
¶¶ #
ShowErrorMessageAlert
¶¶ 3
(
¶¶3 4

Properties
¶¶4 >
.
¶¶> ?
	Resources
¶¶? H
.
¶¶H I)
dialogComunicationException
¶¶I d
)
¶¶d e
;
¶¶e f
}
ßß 
}
®® 	
private
™™ 
void
™™ !
CreateFriendRequest
™™ (
(
™™( )
ProfileUser
™™) 4

userToSend
™™5 ?
)
™™? @
{
´´ 	
LoggerManager
¨¨ 
logger
¨¨  
=
¨¨! "
new
¨¨# &
LoggerManager
¨¨' 4
(
¨¨4 5
this
¨¨5 9
.
¨¨9 :
GetType
¨¨: A
(
¨¨A B
)
¨¨B C
)
¨¨C D
;
¨¨D E
	HiveProxy
≠≠ 
.
≠≠ (
FriendRequestManagerClient
≠≠ 0(
friendRequestManagerClient
≠≠1 K
=
≠≠L M
new
≠≠N Q(
FriendRequestManagerClient
≠≠R l
(
≠≠l m
)
≠≠m n
;
≠≠n o
Profile
ÆÆ 
	playerOne
ÆÆ 
=
ÆÆ 
new
ÆÆ  #
Profile
ÆÆ$ +
(
ÆÆ+ ,
)
ÆÆ, -
{
ØØ 
idAccesAccount
∞∞ 
=
∞∞  "
UserProfileSingleton
∞∞! 5
.
∞∞5 6
	idAccount
∞∞6 ?
}
±± 
;
±± 
Profile
≤≤ 
	playerTwo
≤≤ 
=
≤≤ 
new
≤≤  #
Profile
≤≤$ +
(
≤≤+ ,
)
≤≤, -
{
≥≥ 
idAccesAccount
¥¥ 
=
¥¥  

userToSend
¥¥! +
.
¥¥+ ,
	idAccount
¥¥, 5
}
µµ 
;
µµ 
try
∂∂ 
{
∑∑ 
int
∏∏ 
resultCreation
∏∏ "
=
∏∏# $(
friendRequestManagerClient
∏∏% ?
.
∏∏? @!
CreateFriendRequest
∏∏@ S
(
∏∏S T
	playerOne
∏∏T ]
,
∏∏] ^
	playerTwo
∏∏_ h
)
∏∏h i
;
∏∏i j
if
ππ 
(
ππ 
resultCreation
ππ !
==
ππ" $
	Constants
ππ% .
.
ππ. /
SuccesOperation
ππ/ >
)
ππ> ?
{
∫∫ 
DialogManager
ªª !
.
ªª! "%
ShowSuccessMessageAlert
ªª" 9
(
ªª9 :

Properties
ªª: D
.
ªªD E
	Resources
ªªE N
.
ªªN O'
dialogFriendRequestSended
ªªO h
)
ªªh i
;
ªªi j
lvw_FriendToAdd
ºº #
.
ºº# $
Items
ºº$ )
.
ºº) *
Clear
ºº* /
(
ºº/ 0
)
ºº0 1
;
ºº1 2
}
ΩΩ 
else
ææ 
if
ææ 
(
ææ 
resultCreation
ææ &
==
ææ' )
	Constants
ææ* 3
.
ææ3 4
ErrorOperation
ææ4 B
)
ææB C
{
øø 
DialogManager
¿¿ !
.
¿¿! "#
ShowErrorMessageAlert
¿¿" 7
(
¿¿7 8

Properties
¿¿8 B
.
¿¿B C
	Resources
¿¿C L
.
¿¿L M!
dialogDataBaseError
¿¿M `
)
¿¿` a
;
¿¿a b
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ '
EndpointNotFoundException
√√ ,
endPointException
√√- >
)
√√> ?
{
ƒƒ 
logger
≈≈ 
.
≈≈ 
LogFatal
≈≈ 
(
≈≈  
endPointException
≈≈  1
)
≈≈1 2
;
≈≈2 3
DialogManager
∆∆ 
.
∆∆ #
ShowErrorMessageAlert
∆∆ 3
(
∆∆3 4

Properties
∆∆4 >
.
∆∆> ?
	Resources
∆∆? H
.
∆∆H I%
dialogEndPointException
∆∆I `
)
∆∆` a
;
∆∆a b
}
«« 
catch
»» 
(
»» 
TimeoutException
»» #
timeOutException
»»$ 4
)
»»4 5
{
…… 
logger
   
.
   
LogWarn
   
(
   
timeOutException
   /
)
  / 0
;
  0 1
DialogManager
ÀÀ 
.
ÀÀ #
ShowErrorMessageAlert
ÀÀ 3
(
ÀÀ3 4

Properties
ÀÀ4 >
.
ÀÀ> ?
	Resources
ÀÀ? H
.
ÀÀH I$
dialogTimeOutException
ÀÀI _
)
ÀÀ_ `
;
ÀÀ` a
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ $
CommunicationException
ÕÕ )$
communicationException
ÕÕ* @
)
ÕÕ@ A
{
ŒŒ 
logger
œœ 
.
œœ 
LogFatal
œœ 
(
œœ  $
communicationException
œœ  6
)
œœ6 7
;
œœ7 8
DialogManager
–– 
.
–– #
ShowErrorMessageAlert
–– 3
(
––3 4

Properties
––4 >
.
––> ?
	Resources
––? H
.
––H I)
dialogComunicationException
––I d
)
––d e
;
––e f
}
—— 
}
““ 	
private
‘‘ 
void
‘‘ 
DeleteFriendClick
‘‘ &
(
‘‘& '
object
‘‘' -
sender
‘‘. 4
,
‘‘4 5
RoutedEventArgs
‘‘6 E
e
‘‘F G
)
‘‘G H
{
’’ 	
bool
÷÷ 
	selection
÷÷ 
=
÷÷ 
DialogManager
÷÷ *
.
÷÷* +*
ShowConfirmationMessageAlert
÷÷+ G
(
÷÷G H

Properties
÷÷H R
.
÷÷R S
	Resources
÷÷S \
.
÷÷\ ]'
dialogConfirmFriendDelete
÷÷] v
)
÷÷v w
;
÷÷w x
if
◊◊ 
(
◊◊ 
	selection
◊◊ 
)
◊◊ 
{
ÿÿ 
Button
ŸŸ 
clickedButton
ŸŸ $
=
ŸŸ% &
sender
ŸŸ' -
as
ŸŸ. 0
Button
ŸŸ1 7
;
ŸŸ7 8
ProfileUser
⁄⁄ 
profileUser
⁄⁄ '
=
⁄⁄( )
clickedButton
⁄⁄* 7
.
⁄⁄7 8
DataContext
⁄⁄8 C
as
⁄⁄D F
ProfileUser
⁄⁄G R
;
⁄⁄R S
if
€€ 
(
€€ 
profileUser
€€ 
!=
€€  "
null
€€# '
)
€€' (
{
‹‹ '
SendEliminationFriendShip
›› -
(
››- .
profileUser
››. 9
)
››9 :
;
››: ;
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
DialogManager
·· !
.
··! "#
ShowErrorMessageAlert
··" 7
(
··7 8

Properties
··8 B
.
··B C
	Resources
··C L
.
··L M,
dialogErrorAtObtainingUserData
··M k
)
··k l
;
··l m
}
‚‚ 
}
„„ 
}
‰‰ 	
private
ÊÊ 
void
ÊÊ '
SendEliminationFriendShip
ÊÊ .
(
ÊÊ. /
ProfileUser
ÊÊ/ :
profileUser
ÊÊ; F
)
ÊÊF G
{
ÁÁ 	
LoggerManager
ËË 
logger
ËË  
=
ËË! "
new
ËË# &
LoggerManager
ËË' 4
(
ËË4 5
this
ËË5 9
.
ËË9 :
GetType
ËË: A
(
ËËA B
)
ËËB C
)
ËËC D
;
ËËD E
	HiveProxy
ÈÈ 
.
ÈÈ %
FriendshipManagerClient
ÈÈ -%
friendShipManagerClient
ÈÈ. E
=
ÈÈF G
new
ÈÈH K%
FriendshipManagerClient
ÈÈL c
(
ÈÈc d
)
ÈÈd e
;
ÈÈe f
Profile
ÍÍ 
removingPlayer
ÍÍ "
=
ÍÍ# $
new
ÍÍ% (
Profile
ÍÍ) 0
(
ÍÍ0 1
)
ÍÍ1 2
{
ÎÎ 
idAccesAccount
ÏÏ 
=
ÏÏ  "
UserProfileSingleton
ÏÏ! 5
.
ÏÏ5 6
	idAccount
ÏÏ6 ?
}
ÌÌ 
;
ÌÌ 
Profile
ÓÓ 
friendToRemove
ÓÓ "
=
ÓÓ# $
new
ÓÓ% (
Profile
ÓÓ) 0
(
ÓÓ0 1
)
ÓÓ1 2
{
ÔÔ 
idAccesAccount
 
=
  
profileUser
! ,
.
, -
	idAccount
- 6
}
ÒÒ 
;
ÒÒ 
try
ÚÚ 
{
ÛÛ 
int
ÙÙ 
resultCreation
ÙÙ "
=
ÙÙ# $%
friendShipManagerClient
ÙÙ% <
.
ÙÙ< =
DeleteFriend
ÙÙ= I
(
ÙÙI J
removingPlayer
ÙÙJ X
,
ÙÙX Y
friendToRemove
ÙÙZ h
)
ÙÙh i
;
ÙÙi j
if
ıı 
(
ıı 
resultCreation
ıı "
==
ıı# %
	Constants
ıı& /
.
ıı/ 0
SuccesOperation
ıı0 ?
)
ıı? @
{
ˆˆ 
DialogManager
˜˜ !
.
˜˜! "%
ShowSuccessMessageAlert
˜˜" 9
(
˜˜9 :

Properties
˜˜: D
.
˜˜D E
	Resources
˜˜E N
.
˜˜N O!
dialogFriendDeleted
˜˜O b
)
˜˜b c
;
˜˜c d
LoadFriendships
¯¯ #
(
¯¯# $
)
¯¯$ %
;
¯¯% &
}
˘˘ 
else
˙˙ 
if
˙˙ 
(
˙˙ 
resultCreation
˙˙ '
==
˙˙( *
	Constants
˙˙+ 4
.
˙˙4 5
ErrorOperation
˙˙5 C
)
˙˙C D
{
˚˚ 
DialogManager
¸¸ !
.
¸¸! "#
ShowErrorMessageAlert
¸¸" 7
(
¸¸7 8

Properties
¸¸8 B
.
¸¸B C
	Resources
¸¸C L
.
¸¸L M!
dialogDataBaseError
¸¸M `
)
¸¸` a
;
¸¸a b
}
˝˝ 
}
˛˛ 
catch
ˇˇ 
(
ˇˇ '
EndpointNotFoundException
ˇˇ ,
endPointException
ˇˇ- >
)
ˇˇ> ?
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogFatal
ÅÅ 
(
ÅÅ  
endPointException
ÅÅ  1
)
ÅÅ1 2
;
ÅÅ2 3
DialogManager
ÇÇ 
.
ÇÇ #
ShowErrorMessageAlert
ÇÇ 3
(
ÇÇ3 4

Properties
ÇÇ4 >
.
ÇÇ> ?
	Resources
ÇÇ? H
.
ÇÇH I%
dialogEndPointException
ÇÇI `
)
ÇÇ` a
;
ÇÇa b
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ 
TimeoutException
ÑÑ #
timeOutException
ÑÑ$ 4
)
ÑÑ4 5
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogWarn
ÜÜ 
(
ÜÜ 
timeOutException
ÜÜ /
)
ÜÜ/ 0
;
ÜÜ0 1
DialogManager
áá 
.
áá #
ShowErrorMessageAlert
áá 3
(
áá3 4

Properties
áá4 >
.
áá> ?
	Resources
áá? H
.
ááH I$
dialogTimeOutException
ááI _
)
áá_ `
;
áá` a
}
àà 
catch
ââ 
(
ââ $
CommunicationException
ââ )$
communicationException
ââ* @
)
ââ@ A
{
ää 
logger
ãã 
.
ãã 
LogFatal
ãã 
(
ãã  $
communicationException
ãã  6
)
ãã6 7
;
ãã7 8
DialogManager
åå 
.
åå #
ShowErrorMessageAlert
åå 3
(
åå3 4

Properties
åå4 >
.
åå> ?
	Resources
åå? H
.
ååH I)
dialogComunicationException
ååI d
)
ååd e
;
ååe f
}
çç 
}
éé 	
public
êê 
void
êê !
LoadUserInformation
êê '
(
êê' (
Profile
êê( /
profile
êê0 7
,
êê7 8
bool
êê9 =

areFriends
êê> H
)
êêH I
{
ëë 	
ProfileUser
íí 
profileUser
íí #
=
íí$ %
new
íí& )
ProfileUser
íí* 5
(
íí5 6
)
íí6 7
{
ìì 
	idProfile
îî 
=
îî 
profile
îî #
.
îî# $
	idProfile
îî$ -
,
îî- .
	idAccount
ïï 
=
ïï 
profile
ïï #
.
ïï# $
idAccesAccount
ïï$ 2
,
ïï2 3
username
ññ 
=
ññ 
profile
ññ "
.
ññ" #
username
ññ# +
,
ññ+ ,
imageProfile
óó 
=
óó 
profile
óó &
.
óó& '
	imagePath
óó' 0
,
óó0 1

areFriends
òò 
=
òò 

areFriends
òò '
}
ôô 
;
ôô 
lvw_FriendToAdd
öö 
.
öö 
Items
öö !
.
öö! "
Add
öö" %
(
öö% &
profileUser
öö& 1
)
öö1 2
;
öö2 3
}
õõ 	
private
ùù 
sealed
ùù 
class
ùù 
ProfileUser
ùù (
{
ûû 	
public
üü 
int
üü 
	idProfile
üü  
{
üü! "
get
üü$ '
;
üü' (
set
üü) ,
;
üü, -
}
üü. /
public
†† 
int
†† 
	idAccount
††  
{
††! "
get
††# &
;
††& '
set
††( +
;
††+ ,
}
††- .
public
°° 
string
°° 
username
°° "
{
°°# $
get
°°% (
;
°°( )
set
°°* -
;
°°- .
}
°°/ 0
public
¢¢ 
string
¢¢ 
imageProfile
¢¢ &
{
¢¢' (
get
¢¢) ,
;
¢¢, -
set
¢¢. 1
;
¢¢1 2
}
¢¢3 4
public
££ 
bool
££ 
state
££ 
{
££ 
get
££  #
;
££# $
set
££% (
;
££( )
}
££* +
public
§§ 
bool
§§ 

areFriends
§§ "
{
§§# $
get
§§% (
;
§§( )
set
§§* -
;
§§- .
}
§§/ 0
}
•• 	
private
ßß 
void
ßß 
BtnFriends_Click
ßß %
(
ßß% &
object
ßß& ,
sender
ßß- 3
,
ßß3 4
RoutedEventArgs
ßß5 D
e
ßßE F
)
ßßF G
{
®® 	
stckp_GameFriends
©© 
.
©© 

Visibility
©© (
=
©©) *

Visibility
©©+ 5
.
©©5 6
Visible
©©6 =
;
©©= >"
stckp_FriendRequests
™™  
.
™™  !

Visibility
™™! +
=
™™, -

Visibility
™™. 8
.
™™8 9
	Collapsed
™™9 B
;
™™B C
stck_AddNewFriend
´´ 
.
´´ 

Visibility
´´ (
=
´´) *

Visibility
´´+ 5
.
´´5 6
	Collapsed
´´6 ?
;
´´? @
LoadFriendships
¨¨ 
(
¨¨ 
)
¨¨ 
;
¨¨ 
}
≠≠ 	
private
ØØ 
void
ØØ %
BtnFriendRequests_Click
ØØ ,
(
ØØ, -
object
ØØ- 3
sender
ØØ4 :
,
ØØ: ;
RoutedEventArgs
ØØ< K
e
ØØL M
)
ØØM N
{
∞∞ 	
stckp_GameFriends
±± 
.
±± 

Visibility
±± (
=
±±) *

Visibility
±±+ 5
.
±±5 6
	Collapsed
±±6 ?
;
±±? @"
stckp_FriendRequests
≤≤  
.
≤≤  !

Visibility
≤≤! +
=
≤≤, -

Visibility
≤≤. 8
.
≤≤8 9
Visible
≤≤9 @
;
≤≤@ A
stck_AddNewFriend
≥≥ 
.
≥≥ 

Visibility
≥≥ (
=
≥≥) *

Visibility
≥≥+ 5
.
≥≥5 6
	Collapsed
≥≥6 ?
;
≥≥? @ 
LoadFriendRequests
¥¥ 
(
¥¥ 
)
¥¥  
;
¥¥  !
}
µµ 	
private
∑∑ 
void
∑∑ 
BtnAdd_Click
∑∑ !
(
∑∑! "
object
∑∑" (
sender
∑∑) /
,
∑∑/ 0
RoutedEventArgs
∑∑1 @
e
∑∑A B
)
∑∑B C
{
∏∏ 	
stckp_GameFriends
ππ 
.
ππ 

Visibility
ππ (
=
ππ) *

Visibility
ππ+ 5
.
ππ5 6
	Collapsed
ππ6 ?
;
ππ? @"
stckp_FriendRequests
∫∫  
.
∫∫  !

Visibility
∫∫! +
=
∫∫, -

Visibility
∫∫. 8
.
∫∫8 9
	Collapsed
∫∫9 B
;
∫∫B C
stck_AddNewFriend
ªª 
.
ªª 

Visibility
ªª (
=
ªª) *

Visibility
ªª+ 5
.
ªª5 6
Visible
ªª6 =
;
ªª= >
}
ºº 	
private
ææ 
void
ææ 
Image_MouseDown
ææ $
(
ææ$ %
object
ææ% +
sender
ææ, 2
,
ææ2 3"
MouseButtonEventArgs
ææ4 H
e
ææI J
)
ææJ K
{
øø 	
MainMenu
¿¿ 
mainMenu
¿¿ 
=
¿¿ 
new
¿¿  #
MainMenu
¿¿$ ,
(
¿¿, -
)
¿¿- .
;
¿¿. /
this
¡¡ 
.
¡¡ 
NavigationService
¡¡ "
.
¡¡" #
Navigate
¡¡# +
(
¡¡+ ,
mainMenu
¡¡, 4
)
¡¡4 5
;
¡¡5 6
}
¬¬ 	
private
ƒƒ 
void
ƒƒ 
ReturnMainMenu
ƒƒ #
(
ƒƒ# $
object
ƒƒ$ *
sender
ƒƒ+ 1
,
ƒƒ1 2
RoutedEventArgs
ƒƒ3 B
e
ƒƒC D
)
ƒƒD E
{
≈≈ 	
MainMenu
∆∆ 
mainMenu
∆∆ 
=
∆∆ 
new
∆∆  #
MainMenu
∆∆$ ,
(
∆∆, -
)
∆∆- .
;
∆∆. /
this
«« 
.
«« 
NavigationService
«« "
.
««" #
Navigate
««# +
(
««+ ,
mainMenu
««, 4
)
««4 5
;
««5 6
}
»» 	
public
   
void
   $
ObtainConnectedFriends
   *
(
  * +
string
  + 1
[
  1 2
]
  2 3
connectedFriends
  4 D
)
  D E
{
ÀÀ 	"
ObservableCollection
ÃÃ  
<
ÃÃ  !
ProfileUser
ÃÃ! ,
>
ÃÃ, -
usersRefreshed
ÃÃ. <
=
ÃÃ= >
new
ÃÃ? B"
ObservableCollection
ÃÃC W
<
ÃÃW X
ProfileUser
ÃÃX c
>
ÃÃc d
(
ÃÃd e
)
ÃÃe f
;
ÃÃf g
for
ÕÕ 
(
ÕÕ 
int
ÕÕ 
indexListView
ÕÕ "
=
ÕÕ# $
$num
ÕÕ% &
;
ÕÕ& '
indexListView
ÕÕ( 5
<
ÕÕ6 7
lvw_FriendsList
ÕÕ8 G
.
ÕÕG H
Items
ÕÕH M
.
ÕÕM N
Count
ÕÕN S
;
ÕÕS T
indexListView
ÕÕU b
++
ÕÕb d
)
ÕÕd e
{
ŒŒ 
ProfileUser
œœ 
profile
œœ #
=
œœ$ %
lvw_FriendsList
œœ& 5
.
œœ5 6
Items
œœ6 ;
[
œœ; <
indexListView
œœ< I
]
œœI J
as
œœK M
ProfileUser
œœN Y
;
œœY Z
if
–– 
(
–– 
profile
–– 
!=
–– 
null
–– "
)
––" #
{
—— 
profile
““ 
.
““ 
state
““ !
=
““" #
connectedFriends
““$ 4
.
““4 5
Contains
““5 =
(
““= >
profile
““> E
.
““E F
username
““F N
)
““N O
;
““O P
}
”” 
usersRefreshed
‘‘ 
.
‘‘ 
Add
‘‘ "
(
‘‘" #
profile
‘‘# *
)
‘‘* +
;
‘‘+ ,
}
’’ 
lvw_FriendsList
÷÷ 
.
÷÷ 
Items
÷÷ !
.
÷÷! "
Clear
÷÷" '
(
÷÷' (
)
÷÷( )
;
÷÷) *
lvw_FriendsList
◊◊ 
.
◊◊ 
ItemsSource
◊◊ '
=
◊◊( )
usersRefreshed
◊◊* 8
;
◊◊8 9
}
ÿÿ 	
}
ŸŸ 
}⁄⁄ Ã
ÇC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\EditCredentialsView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
EditCredentialsView ,
:- .
Page/ 3
{ 
private 
DispatcherTimer 
_timer  &
;& '
private 
int 
	_timeLeft 
= 
$num  "
;" #
public 
EditCredentialsView "
(" #
)# $
{ 	
InitializeComponent 
(  
)  !
;! "

StartTimer 
( 
) 
; 
FocusFirstTextBox   
(   
)   
;    
InitializeUserData!! 
(!! 
)!!  
;!!  !
}"" 	
public$$ 
void$$ 
InitializeUserData$$ &
($$& '
)$$' (
{%% 	
	lbl_Email&& 
.&& 
Content&& 
=&&  
UserProfileSingleton&&  4
.&&4 5
email&&5 :
;&&: ;
	txt_Email'' 
.'' 
Text'' 
=''  
UserProfileSingleton'' 1
.''1 2
email''2 7
;''7 8
}(( 	
private)) 
void)) 

StartTimer)) 
())  
)))  !
{** 	
_timer++ 
=++ 
new++ 
DispatcherTimer++ (
(++( )
)++) *
;++* +
_timer,, 
.,, 
Interval,, 
=,, 
TimeSpan,, &
.,,& '
FromSeconds,,' 2
(,,2 3
$num,,3 4
),,4 5
;,,5 6
_timer-- 
.-- 
Tick-- 
+=-- 

Timer_Tick-- %
;--% &
_timer.. 
... 
Start.. 
(.. 
).. 
;.. 
}// 	
private00 
void00 

Timer_Tick00 
(00  
object00  &
sender00' -
,00- .
	EventArgs00/ 8
e009 :
)00: ;
{11 	
	_timeLeft22 
--22 
;22 
	txt_Timer33 
.33 
Text33 
=33 

Properties33 '
.33' (
	Resources33( 1
.331 2
	txt_Timer332 ;
+33< =
	_timeLeft33> G
;33G H
if55 
(55 
	_timeLeft55 
<=55 
$num55 
)55 
{66 
_timer77 
.77 
Stop77 
(77 
)77 
;77 
	txt_Timer88 
.88 

Visibility88 $
=88% &

Visibility88' 1
.881 2
	Collapsed882 ;
;88; <
txt_ResendLink99 
.99 

Visibility99 )
=99* +

Visibility99, 6
.996 7
Visible997 >
;99> ?
txt_ResendCodeClick:: #
.::# $

Visibility::$ .
=::/ 0

Visibility::1 ;
.::; <
Visible::< C
;::C D
};; 
}<< 	
private== 
void== 
FocusFirstTextBox== &
(==& '
)==' (
{>> 	
TextBox?? 
firstTextBox??  
=??! "
(??# $
TextBox??$ +
)??+ ,
brd_BubbleOne??, 9
.??9 :
Child??: ?
;??? @
firstTextBox@@ 
.@@ 
Focus@@ 
(@@ 
)@@  
;@@  !
}AA 	
privateCC 
voidCC 
TextBox_TextChangedCC (
(CC( )
objectCC) /
senderCC0 6
,CC6 7 
TextChangedEventArgsCC8 L
eCCM N
)CCN O
{DD 	
TextBoxEE 
currentTextBoxEE "
=EE# $
(EE% &
TextBoxEE& -
)EE- .
senderEE. 4
;EE4 5
ifGG 
(GG 
currentTextBoxGG 
.GG 
TextGG #
.GG# $
LengthGG$ *
==GG+ -
$numGG. /
)GG/ 0
{HH 
MoveToNextTextBoxII !
(II! "
currentTextBoxII" 0
)II0 1
;II1 2
}JJ 
elseKK 
ifKK 
(KK 
currentTextBoxKK #
.KK# $
TextKK$ (
.KK( )
LengthKK) /
==KK0 2
$numKK3 4
)KK4 5
{LL !
MoveToPreviousTextBoxMM %
(MM% &
currentTextBoxMM& 4
)MM4 5
;MM5 6
}NN 
ifPP 
(PP 
AllTextBoxesFilledPP "
(PP" #
)PP# $
)PP$ %
{QQ 
ValidateCodeRR 
(RR 
)RR 
;RR 
}SS 
}TT 	
privateWW 
voidWW 
TextBox_GotFocusWW %
(WW% &
objectWW& ,
senderWW- 3
,WW3 4
RoutedEventArgsWW5 D
eWWE F
)WWF G
{XX 	
TextBoxYY 
currentTextBoxYY "
=YY# $
(YY% &
TextBoxYY& -
)YY- .
senderYY. 4
;YY4 5
BorderZZ 
currentBorderZZ  
=ZZ! "
(ZZ# $
BorderZZ$ *
)ZZ* +
currentTextBoxZZ+ 9
.ZZ9 :
ParentZZ: @
;ZZ@ A
currentBorder[[ 
.[[ 
BorderBrush[[ %
=[[& '
Brushes[[( /
.[[/ 0
Yellow[[0 6
;[[6 7
}\\ 	
private]] 
void]] 
TextBox_LostFocus]] &
(]]& '
object]]' -
sender]]. 4
,]]4 5
RoutedEventArgs]]6 E
e]]F G
)]]G H
{^^ 	
TextBox__ 
currentTextBox__ "
=__# $
(__% &
TextBox__& -
)__- .
sender__. 4
;__4 5
Border`` 
currentBorder``  
=``! "
(``# $
Border``$ *
)``* +
currentTextBox``+ 9
.``9 :
Parent``: @
;``@ A
currentBorderaa 
.aa 
BorderBrushaa %
=aa& '
Brushesaa( /
.aa/ 0
Whiteaa0 5
;aa5 6
}bb 	
privatedd 
voiddd 
MoveToNextTextBoxdd &
(dd& '
TextBoxdd' .
currentTextBoxdd/ =
)dd= >
{ee 	
ifgg 
(gg 
currentTextBoxgg 
==gg !
(gg" #
TextBoxgg# *
)gg* +
brd_BubbleOnegg+ 8
.gg8 9
Childgg9 >
)gg> ?
(hh 
(hh 
TextBoxhh 
)hh 
brd_BubbleTwohh '
.hh' (
Childhh( -
)hh- .
.hh. /
Focushh/ 4
(hh4 5
)hh5 6
;hh6 7
elsejj 
ifjj 
(jj 
currentTextBoxjj #
==jj$ &
(jj' (
TextBoxjj( /
)jj/ 0
brd_BubbleTwojj0 =
.jj= >
Childjj> C
)jjC D
(kk 
(kk 
TextBoxkk 
)kk 
brd_BubbleThreekk )
.kk) *
Childkk* /
)kk/ 0
.kk0 1
Focuskk1 6
(kk6 7
)kk7 8
;kk8 9
elsemm 
ifmm 
(mm 
currentTextBoxmm #
==mm$ &
(mm' (
TextBoxmm( /
)mm/ 0
brd_BubbleThreemm0 ?
.mm? @
Childmm@ E
)mmE F
(nn 
(nn 
TextBoxnn 
)nn 
brd_BubbleFournn (
.nn( )
Childnn) .
)nn. /
.nn/ 0
Focusnn0 5
(nn5 6
)nn6 7
;nn7 8
elsepp 
ifpp 
(pp 
currentTextBoxpp #
==pp$ &
(pp' (
TextBoxpp( /
)pp/ 0
brd_BubbleFourpp0 >
.pp> ?
Childpp? D
)ppD E
(qq 
(qq 
TextBoxqq 
)qq 
brd_BubbleFiveqq (
.qq( )
Childqq) .
)qq. /
.qq/ 0
Focusqq0 5
(qq5 6
)qq6 7
;qq7 8
elsess 
ifss 
(ss 
currentTextBoxss #
==ss$ &
(ss' (
TextBoxss( /
)ss/ 0
brd_BubbleFivess0 >
.ss> ?
Childss? D
)ssD E
(tt 
(tt 
TextBoxtt 
)tt 
brd_BubbleSixtt '
.tt' (
Childtt( -
)tt- .
.tt. /
Focustt/ 4
(tt4 5
)tt5 6
;tt6 7
}uu 	
privateww 
voidww !
MoveToPreviousTextBoxww *
(ww* +
TextBoxww+ 2
currentTextBoxww3 A
)wwA B
{xx 	
ifyy 
(yy 
currentTextBoxyy 
==yy !
(yy" #
TextBoxyy# *
)yy* +
brd_BubbleSixyy+ 8
.yy8 9
Childyy9 >
)yy> ?
(zz 
(zz 
TextBoxzz 
)zz 
brd_BubbleFivezz (
.zz( )
Childzz) .
)zz. /
.zz/ 0
Focuszz0 5
(zz5 6
)zz6 7
;zz7 8
else|| 
if|| 
(|| 
currentTextBox|| #
==||$ &
(||' (
TextBox||( /
)||/ 0
brd_BubbleFive||0 >
.||> ?
Child||? D
)||D E
(}} 
(}} 
TextBox}} 
)}} 
brd_BubbleFour}} (
.}}( )
Child}}) .
)}}. /
.}}/ 0
Focus}}0 5
(}}5 6
)}}6 7
;}}7 8
else 
if 
( 
currentTextBox #
==$ &
(' (
TextBox( /
)/ 0
brd_BubbleFour0 >
.> ?
Child? D
)D E
(
ÄÄ 
(
ÄÄ 
TextBox
ÄÄ 
)
ÄÄ 
brd_BubbleThree
ÄÄ )
.
ÄÄ) *
Child
ÄÄ* /
)
ÄÄ/ 0
.
ÄÄ0 1
Focus
ÄÄ1 6
(
ÄÄ6 7
)
ÄÄ7 8
;
ÄÄ8 9
else
ÇÇ 
if
ÇÇ 
(
ÇÇ 
currentTextBox
ÇÇ #
==
ÇÇ$ &
(
ÇÇ' (
TextBox
ÇÇ( /
)
ÇÇ/ 0
brd_BubbleThree
ÇÇ0 ?
.
ÇÇ? @
Child
ÇÇ@ E
)
ÇÇE F
(
ÉÉ 
(
ÉÉ 
TextBox
ÉÉ 
)
ÉÉ 
brd_BubbleTwo
ÉÉ '
.
ÉÉ' (
Child
ÉÉ( -
)
ÉÉ- .
.
ÉÉ. /
Focus
ÉÉ/ 4
(
ÉÉ4 5
)
ÉÉ5 6
;
ÉÉ6 7
else
ÖÖ 
if
ÖÖ 
(
ÖÖ 
currentTextBox
ÖÖ #
==
ÖÖ$ &
(
ÖÖ' (
TextBox
ÖÖ( /
)
ÖÖ/ 0
brd_BubbleTwo
ÖÖ0 =
.
ÖÖ= >
Child
ÖÖ> C
)
ÖÖC D
(
ÜÜ 
(
ÜÜ 
TextBox
ÜÜ 
)
ÜÜ 
brd_BubbleOne
ÜÜ '
.
ÜÜ' (
Child
ÜÜ( -
)
ÜÜ- .
.
ÜÜ. /
Focus
ÜÜ/ 4
(
ÜÜ4 5
)
ÜÜ5 6
;
ÜÜ6 7
}
áá 	
private
ââ 
bool
ââ  
AllTextBoxesFilled
ââ '
(
ââ' (
)
ââ( )
{
ää 	
return
ãã 
(
ãã 
(
ãã 
TextBox
ãã 
)
ãã 
brd_BubbleOne
ãã *
.
ãã* +
Child
ãã+ 0
)
ãã0 1
.
ãã1 2
Text
ãã2 6
.
ãã6 7
Length
ãã7 =
>
ãã> ?
$num
ãã@ A
&&
ããB D
(
åå 
(
åå 
TextBox
åå 
)
åå 
brd_BubbleTwo
åå *
.
åå* +
Child
åå+ 0
)
åå0 1
.
åå1 2
Text
åå2 6
.
åå6 7
Length
åå7 =
>
åå> ?
$num
åå@ A
&&
ååB D
(
çç 
(
çç 
TextBox
çç 
)
çç 
brd_BubbleThree
çç ,
.
çç, -
Child
çç- 2
)
çç2 3
.
çç3 4
Text
çç4 8
.
çç8 9
Length
çç9 ?
>
çç@ A
$num
ççB C
&&
ççD F
(
éé 
(
éé 
TextBox
éé 
)
éé 
brd_BubbleFour
éé +
.
éé+ ,
Child
éé, 1
)
éé1 2
.
éé2 3
Text
éé3 7
.
éé7 8
Length
éé8 >
>
éé? @
$num
ééA B
&&
ééC E
(
èè 
(
èè 
TextBox
èè 
)
èè 
brd_BubbleFive
èè +
.
èè+ ,
Child
èè, 1
)
èè1 2
.
èè2 3
Text
èè3 7
.
èè7 8
Length
èè8 >
>
èè? @
$num
èèA B
&&
èèC E
(
êê 
(
êê 
TextBox
êê 
)
êê 
brd_BubbleSix
êê *
.
êê* +
Child
êê+ 0
)
êê0 1
.
êê1 2
Text
êê2 6
.
êê6 7
Length
êê7 =
>
êê> ?
$num
êê@ A
;
êêA B
}
ëë 	
private
ìì 
void
ìì 
ValidateCode
ìì !
(
ìì! "
)
ìì" #
{
îî 	
string
ïï 
enteredCode
ïï 
=
ïï  
GetEnteredCode
ïï! /
(
ïï/ 0
)
ïï0 1
;
ïï1 2
if
óó 
(
óó 
IsValidCode
óó 
(
óó 
enteredCode
óó '
)
óó' (
)
óó( )
{
òò $
ShowNewPasswordSection
ôô &
(
ôô& '
)
ôô' (
;
ôô( )
}
öö 
else
õõ 
{
úú 
lbl_ErrorMessage
ùù  
.
ùù  !

Visibility
ùù! +
=
ùù, -

Visibility
ùù. 8
.
ùù8 9
Visible
ùù9 @
;
ùù@ A
}
ûû 
}
üü 	
private
°° 
string
°° 
GetEnteredCode
°° %
(
°°% &
)
°°& '
{
¢¢ 	
return
££ 
$"
££ 
{
££ 
(
££ 
(
££ 
TextBox
££ 
)
££  
brd_BubbleOne
££  -
.
££- .
Child
££. 3
)
££3 4
.
££4 5
Text
££5 9
}
££9 :
{
££: ;
(
££; <
(
££< =
TextBox
££= D
)
££D E
brd_BubbleTwo
££E R
.
££R S
Child
££S X
)
££X Y
.
££Y Z
Text
££Z ^
}
££^ _
"
££_ `
+
££a b
$"
§§ 
{
§§ 
(
§§ 
(
§§ 
TextBox
§§ 
)
§§  
brd_BubbleThree
§§  /
.
§§/ 0
Child
§§0 5
)
§§5 6
.
§§6 7
Text
§§7 ;
}
§§; <
{
§§< =
(
§§= >
(
§§> ?
TextBox
§§? F
)
§§F G
brd_BubbleFour
§§G U
.
§§U V
Child
§§V [
)
§§[ \
.
§§\ ]
Text
§§] a
}
§§a b
"
§§b c
+
§§d e
$"
•• 
{
•• 
(
•• 
(
•• 
TextBox
•• 
)
••  
brd_BubbleFive
••  .
.
••. /
Child
••/ 4
)
••4 5
.
••5 6
Text
••6 :
}
••: ;
{
••; <
(
••< =
(
••= >
TextBox
••> E
)
••E F
brd_BubbleSix
••F S
.
••S T
Child
••T Y
)
••Y Z
.
••Z [
Text
••[ _
}
••_ `
"
••` a
;
••a b
}
¶¶ 	
private
©© 
bool
©© 
IsValidCode
©©  
(
©©  !
string
©©! '
code
©©( ,
)
©©, -
{
™™ 	
LoggerManager
´´ 
logger
´´  
=
´´! "
new
´´# &
LoggerManager
´´' 4
(
´´4 5
this
´´5 9
.
´´9 :
GetType
´´: A
(
´´A B
)
´´B C
)
´´C D
;
´´D E
	HiveProxy
¨¨ 
.
¨¨ ,
EmailVerificationManagerClient
¨¨ 4&
emailVerificationManager
¨¨5 M
=
¨¨N O
new
¨¨P S
	HiveProxy
¨¨T ]
.
¨¨] ^,
EmailVerificationManagerClient
¨¨^ |
(
¨¨| }
)
¨¨} ~
;
¨¨~ 
bool
≠≠ 
isValid
≠≠ 
=
≠≠ 
false
≠≠  
;
≠≠  !
try
ØØ 
{
∞∞ 
UserVerificator
±± 
verificationUser
±±  0
=
±±1 2
new
±±3 6
UserVerificator
±±7 F
(
±±F G
)
±±G H
;
±±H I
verificationUser
≤≤  
.
≤≤  !
email
≤≤! &
=
≤≤' ("
UserProfileSingleton
≤≤) =
.
≤≤= >
email
≤≤> C
;
≤≤C D
verificationUser
≥≥  
.
≥≥  !
code
≥≥! %
=
≥≥& '
code
≥≥( ,
;
≥≥, -
isValid
¥¥ 
=
¥¥ &
emailVerificationManager
¥¥ 2
.
¥¥2 3$
VerifyCodeVerification
¥¥3 I
(
¥¥I J
verificationUser
¥¥J Z
)
¥¥Z [
;
¥¥[ \
}
µµ 
catch
∂∂ 
(
∂∂ '
EndpointNotFoundException
∂∂ ,
endPointException
∂∂- >
)
∂∂> ?
{
∑∑ 
logger
∏∏ 
.
∏∏ 
LogFatal
∏∏ 
(
∏∏  
endPointException
∏∏  1
)
∏∏1 2
;
∏∏2 3
DialogManager
ππ 
.
ππ #
ShowErrorMessageAlert
ππ 3
(
ππ3 4

Properties
ππ4 >
.
ππ> ?
	Resources
ππ? H
.
ππH I%
dialogEndPointException
ππI `
)
ππ` a
;
ππa b
}
∫∫ 
catch
ªª 
(
ªª 
TimeoutException
ªª #
timeOutException
ªª$ 4
)
ªª4 5
{
ºº 
logger
ΩΩ 
.
ΩΩ 
LogWarn
ΩΩ 
(
ΩΩ 
timeOutException
ΩΩ /
)
ΩΩ/ 0
;
ΩΩ0 1
DialogManager
ææ 
.
ææ #
ShowErrorMessageAlert
ææ 3
(
ææ3 4

Properties
ææ4 >
.
ææ> ?
	Resources
ææ? H
.
ææH I$
dialogTimeOutException
ææI _
)
ææ_ `
;
ææ` a
}
øø 
catch
¿¿ 
(
¿¿ $
CommunicationException
¿¿ )$
communicationException
¿¿* @
)
¿¿@ A
{
¡¡ 
logger
¬¬ 
.
¬¬ 
LogFatal
¬¬ 
(
¬¬  $
communicationException
¬¬  6
)
¬¬6 7
;
¬¬7 8
DialogManager
√√ 
.
√√ #
ShowErrorMessageAlert
√√ 3
(
√√3 4

Properties
√√4 >
.
√√> ?
	Resources
√√? H
.
√√H I)
dialogComunicationException
√√I d
)
√√d e
;
√√e f
}
ƒƒ 
return
∆∆ 
isValid
∆∆ 
;
∆∆ 
}
«« 	
private
…… 
void
…… $
ShowNewPasswordSection
…… +
(
……+ ,
)
……, -
{
   	
lbl_ErrorMessage
ÀÀ 
.
ÀÀ 

Visibility
ÀÀ '
=
ÀÀ( )

Visibility
ÀÀ* 4
.
ÀÀ4 5
	Collapsed
ÀÀ5 >
;
ÀÀ> ?#
grd_VerificationPanel
ÃÃ !
.
ÃÃ! "

Visibility
ÃÃ" ,
=
ÃÃ- .

Visibility
ÃÃ/ 9
.
ÃÃ9 :
	Collapsed
ÃÃ: C
;
ÃÃC D
grd_EditionPanel
ÕÕ 
.
ÕÕ 

Visibility
ÕÕ '
=
ÕÕ( )

Visibility
ÕÕ* 4
.
ÕÕ4 5
Visible
ÕÕ5 <
;
ÕÕ< =
}
ŒŒ 	
private
–– 
void
–– %
BtnConfirmChanges_Click
–– ,
(
––, -
object
––- 3
sender
––4 :
,
––: ;
RoutedEventArgs
––< K
e
––L M
)
––M N
{
—— 	
	txt_Email
““ 
.
““ 
BorderBrush
““ !
=
““" #
Brushes
““$ +
.
““+ ,
White
““, 1
;
““1 2
brd_Password
”” 
.
”” 
BorderBrush
”” $
=
””% &
Brushes
””' .
.
””. /
Yellow
””/ 5
;
””5 6!
brd_ConfirmPassword
‘‘ 
.
‘‘  
BorderBrush
‘‘  +
=
‘‘, -
Brushes
‘‘. 5
.
‘‘5 6
Yellow
‘‘6 <
;
‘‘< =
if
÷÷ 
(
÷÷ 
ValidateFields
÷÷ 
(
÷÷ 
)
÷÷  
)
÷÷  !
{
◊◊ 
if
ÿÿ 
(
ÿÿ #
ValidateSamePasswords
ÿÿ )
(
ÿÿ) *
)
ÿÿ* +
)
ÿÿ+ ,
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ (
ValidateExistingCredential
⁄⁄ 2
(
⁄⁄2 3
)
⁄⁄3 4
)
⁄⁄4 5
{
€€ 
UpdateCredentials
‹‹ )
(
‹‹) *
)
‹‹* +
;
‹‹+ ,
}
›› 
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
DialogManager
·· !
.
··! "%
ShowWarningMessageAlert
··" 9
(
··9 :

Properties
··: D
.
··D E
	Resources
··E N
.
··N O'
dialogMissmatchesPassword
··O h
)
··h i
;
··i j
}
‚‚ 
}
„„ 
else
‰‰ 
{
ÂÂ 
DialogManager
ÊÊ 
.
ÊÊ #
ShowErrorMessageAlert
ÊÊ 3
(
ÊÊ3 4

Properties
ÊÊ4 >
.
ÊÊ> ?
	Resources
ÊÊ? H
.
ÊÊH I
dialogWrongData
ÊÊI X
)
ÊÊX Y
;
ÊÊY Z
}
ÁÁ 
}
ËË 	
private
ÍÍ 
bool
ÍÍ 
ValidateFields
ÍÍ #
(
ÍÍ# $
)
ÍÍ$ %
{
ÎÎ 	
bool
ÏÏ 
emailVerification
ÏÏ "
=
ÏÏ# $
	Validator
ÏÏ% .
.
ÏÏ. /
ValidateEmail
ÏÏ/ <
(
ÏÏ< =
	txt_Email
ÏÏ= F
.
ÏÏF G
Text
ÏÏG K
)
ÏÏK L
;
ÏÏL M
bool
ÌÌ !
passwordVerificaton
ÌÌ $
=
ÌÌ% &
	Validator
ÌÌ' 0
.
ÌÌ0 1
ValidatePassword
ÌÌ1 A
(
ÌÌA B
pwb_Password
ÌÌB N
.
ÌÌN O
Password
ÌÌO W
)
ÌÌW X
;
ÌÌX Y
bool
ÓÓ )
passwordConfirmVerification
ÓÓ ,
=
ÓÓ- .
	Validator
ÓÓ/ 8
.
ÓÓ8 9
ValidatePassword
ÓÓ9 I
(
ÓÓI J!
pwb_ConfirmPassword
ÓÓJ ]
.
ÓÓ] ^
Password
ÓÓ^ f
)
ÓÓf g
;
ÓÓg h
if
 
(
 
!
 
emailVerification
 "
)
" #
{
ÒÒ 
	txt_Email
ÚÚ 
.
ÚÚ 
BorderBrush
ÚÚ %
=
ÚÚ& '
Brushes
ÚÚ( /
.
ÚÚ/ 0
Red
ÚÚ0 3
;
ÚÚ3 4
}
ÛÛ 
if
ÙÙ 
(
ÙÙ 
!
ÙÙ !
passwordVerificaton
ÙÙ $
)
ÙÙ$ %
{
ıı 
brd_Password
ˆˆ 
.
ˆˆ 
BorderBrush
ˆˆ (
=
ˆˆ) *
Brushes
ˆˆ+ 2
.
ˆˆ2 3
Red
ˆˆ3 6
;
ˆˆ6 7
}
˜˜ 
if
¯¯ 
(
¯¯ 
!
¯¯ )
passwordConfirmVerification
¯¯ ,
)
¯¯, -
{
˘˘ !
brd_ConfirmPassword
˙˙ #
.
˙˙# $
BorderBrush
˙˙$ /
=
˙˙0 1
Brushes
˙˙2 9
.
˙˙9 :
Red
˙˙: =
;
˙˙= >
}
˚˚ 
return
˝˝ 
emailVerification
˝˝ $
&&
˝˝% '!
passwordVerificaton
˝˝( ;
&&
˝˝< >)
passwordConfirmVerification
˝˝? Z
;
˝˝Z [
}
˛˛ 	
private
ÄÄ 
bool
ÄÄ #
ValidateSamePasswords
ÄÄ *
(
ÄÄ* +
)
ÄÄ+ ,
{
ÅÅ 	
bool
ÇÇ 
samePasswords
ÇÇ 
=
ÇÇ  
false
ÇÇ! &
;
ÇÇ& '
if
ÑÑ 
(
ÑÑ !
pwb_ConfirmPassword
ÑÑ #
.
ÑÑ# $
Password
ÑÑ$ ,
==
ÑÑ- /
pwb_Password
ÑÑ0 <
.
ÑÑ< =
Password
ÑÑ= E
)
ÑÑE F
{
ÖÖ 
samePasswords
ÜÜ 
=
ÜÜ 
true
ÜÜ  $
;
ÜÜ$ %
}
áá 
return
àà 
samePasswords
àà  
;
àà  !
}
ââ 	
private
ãã 
bool
ãã (
ValidateExistingCredential
ãã /
(
ãã/ 0
)
ãã0 1
{
åå 	
bool
çç  
resultVerification
çç #
=
çç$ %
false
çç& +
;
çç+ ,
LoggerManager
éé 
logger
éé  
=
éé! "
new
éé# &
LoggerManager
éé' 4
(
éé4 5
this
éé5 9
.
éé9 :
GetType
éé: A
(
ééA B
)
ééB C
)
ééC D
;
ééD E
	HiveProxy
èè 
.
èè 
UserManagerClient
èè '
userManagerClient
èè( 9
=
èè: ;
new
èè< ?
	HiveProxy
èè@ I
.
èèI J
UserManagerClient
èèJ [
(
èè[ \
)
èè\ ]
;
èè] ^
try
ëë 
{
íí 
int
ìì +
resultVerificationCredentials
ìì 1
=
ìì2 3
userManagerClient
ìì4 E
.
ììE F
VerifyCredentials
ììF W
(
ììW X"
UserProfileSingleton
ììX l
.
ììl m
username
ììm u
,
ììu v
	txt_Emailììw Ä
.ììÄ Å
TextììÅ Ö
)ììÖ Ü
;ììÜ á
if
îî 
(
îî +
resultVerificationCredentials
îî 1
==
îî2 4
	Constants
îî5 >
.
îî> ?
DataMatches
îî? J
)
îîJ K
{
ïï 
DialogManager
ññ !
.
ññ! "#
ShowErrorMessageAlert
ññ" 7
(
ññ7 8

Properties
ññ8 B
.
ññB C
	Resources
ññC L
.
ññL M*
dialogEmailAlreadyRegistered
ññM i
)
ññi j
;
ññj k 
resultVerification
óó &
=
óó' (
false
óó) .
;
óó. /
}
òò 
else
ôô 
if
ôô 
(
ôô +
resultVerificationCredentials
ôô 6
==
ôô7 9
	Constants
ôô: C
.
ôôC D
NoDataMatches
ôôD Q
)
ôôQ R
{
öö  
resultVerification
õõ &
=
õõ' (
true
õõ) -
;
õõ- .
}
úú 
else
ùù 
{
ûû 
DialogManager
üü !
.
üü! "#
ShowErrorMessageAlert
üü" 7
(
üü7 8

Properties
üü8 B
.
üüB C
	Resources
üüC L
.
üüL M!
dialogDataBaseError
üüM `
)
üü` a
;
üüa b 
resultVerification
†† &
=
††' (
false
††) .
;
††. /
}
°° 
}
¢¢ 
catch
££ 
(
££ '
EndpointNotFoundException
££ ,
endPointException
££- >
)
££> ?
{
§§ 
logger
•• 
.
•• 
LogFatal
•• 
(
••  
endPointException
••  1
)
••1 2
;
••2 3
DialogManager
¶¶ 
.
¶¶ #
ShowErrorMessageAlert
¶¶ 3
(
¶¶3 4

Properties
¶¶4 >
.
¶¶> ?
	Resources
¶¶? H
.
¶¶H I%
dialogEndPointException
¶¶I `
)
¶¶` a
;
¶¶a b
}
ßß 
catch
®® 
(
®® 
TimeoutException
®® #
timeOutException
®®$ 4
)
®®4 5
{
©© 
logger
™™ 
.
™™ 
LogWarn
™™ 
(
™™ 
timeOutException
™™ /
)
™™/ 0
;
™™0 1
DialogManager
´´ 
.
´´ #
ShowErrorMessageAlert
´´ 3
(
´´3 4

Properties
´´4 >
.
´´> ?
	Resources
´´? H
.
´´H I$
dialogTimeOutException
´´I _
)
´´_ `
;
´´` a
}
¨¨ 
catch
≠≠ 
(
≠≠ $
CommunicationException
≠≠ )$
communicationException
≠≠* @
)
≠≠@ A
{
ÆÆ 
logger
ØØ 
.
ØØ 
LogFatal
ØØ 
(
ØØ  $
communicationException
ØØ  6
)
ØØ6 7
;
ØØ7 8
DialogManager
∞∞ 
.
∞∞ #
ShowErrorMessageAlert
∞∞ 3
(
∞∞3 4

Properties
∞∞4 >
.
∞∞> ?
	Resources
∞∞? H
.
∞∞H I)
dialogComunicationException
∞∞I d
)
∞∞d e
;
∞∞e f
}
±± 
return
≤≤  
resultVerification
≤≤ %
;
≤≤% &
}
≥≥ 	
private
µµ 
void
µµ 
UpdateCredentials
µµ &
(
µµ& '
)
µµ' (
{
∂∂ 	
LoggerManager
∑∑ 
logger
∑∑  
=
∑∑! "
new
∑∑# &
LoggerManager
∑∑' 4
(
∑∑4 5
this
∑∑5 9
.
∑∑9 :
GetType
∑∑: A
(
∑∑A B
)
∑∑B C
)
∑∑C D
;
∑∑D E
	HiveProxy
∏∏ 
.
∏∏ 
UserManagerClient
∏∏ '
userManagerClient
∏∏( 9
=
∏∏: ;
new
∏∏< ?
	HiveProxy
∏∏@ I
.
∏∏I J
UserManagerClient
∏∏J [
(
∏∏[ \
)
∏∏\ ]
;
∏∏] ^
try
∫∫ 
{
ªª 
AccessAccount
ºº 
oldAccesAccount
ºº -
=
ºº. /
new
ºº0 3
AccessAccount
ºº4 A
(
ººA B
)
ººB C
{
ΩΩ 
idAccesAccount
ææ "
=
ææ# $"
UserProfileSingleton
ææ% 9
.
ææ9 :
	idAccount
ææ: C
,
ææC D
email
øø 
=
øø "
UserProfileSingleton
øø 0
.
øø0 1
email
øø1 6
,
øø6 7
password
¿¿ 
=
¿¿ "
UserProfileSingleton
¿¿ 3
.
¿¿3 4
password
¿¿4 <
}
¡¡ 
;
¡¡ 
string
¬¬ 
passwordToEncrypt
¬¬ (
=
¬¬) *
pwb_Password
¬¬+ 7
.
¬¬7 8
Password
¬¬8 @
;
¬¬@ A
string
√√ 
passwordEncripted
√√ (
=
√√) *
Hasher
√√+ 1
.
√√1 2

hashToSHA2
√√2 <
(
√√< =
passwordToEncrypt
√√= N
)
√√N O
;
√√O P
AccessAccount
ƒƒ 
newAccesAccount
ƒƒ -
=
ƒƒ. /
new
ƒƒ0 3
AccessAccount
ƒƒ4 A
(
ƒƒA B
)
ƒƒB C
{
≈≈ 
idAccesAccount
∆∆ "
=
∆∆# $"
UserProfileSingleton
∆∆% 9
.
∆∆9 :
	idAccount
∆∆: C
,
∆∆C D
email
«« 
=
«« 
	txt_Email
«« %
.
««% &
Text
««& *
,
««* +
password
»» 
=
»» 
passwordEncripted
»» 0
}
…… 
;
…… 
int
   
updateResult
    
=
  ! "
userManagerClient
  # 4
.
  4 5$
UpdateLoginCredentials
  5 K
(
  K L
oldAccesAccount
  L [
,
  [ \
newAccesAccount
  ] l
)
  l m
;
  m n
if
ÀÀ 
(
ÀÀ 
updateResult
ÀÀ  
==
ÀÀ! #
	Constants
ÀÀ$ -
.
ÀÀ- .
SuccesOperation
ÀÀ. =
)
ÀÀ= >
{
ÃÃ 
DialogManager
ÕÕ !
.
ÕÕ! "%
ShowSuccessMessageAlert
ÕÕ" 9
(
ÕÕ9 :

Properties
ÕÕ: D
.
ÕÕD E
	Resources
ÕÕE N
.
ÕÕN O
dialogUpdatedData
ÕÕO `
)
ÕÕ` a
;
ÕÕa b"
UserProfileSingleton
ŒŒ (
.
ŒŒ( )
Instance
ŒŒ) 1
.
ŒŒ1 2
ResetSingleton
ŒŒ2 @
(
ŒŒ@ A
)
ŒŒA B
;
ŒŒB C
DisconnectPlayer
œœ $
(
œœ$ %
)
œœ% &
;
œœ& '
ReturnToLoginView
–– %
(
––% &
)
––& '
;
––' (
}
—— 
else
““ 
{
”” 
DialogManager
‘‘ !
.
‘‘! "#
ShowErrorMessageAlert
‘‘" 7
(
‘‘7 8

Properties
‘‘8 B
.
‘‘B C
	Resources
‘‘C L
.
‘‘L M!
dialogDataBaseError
‘‘M `
)
‘‘` a
;
‘‘a b
}
’’ 
}
÷÷ 
catch
◊◊ 
(
◊◊ '
EndpointNotFoundException
◊◊ ,
endPointException
◊◊- >
)
◊◊> ?
{
ÿÿ 
logger
ŸŸ 
.
ŸŸ 
LogFatal
ŸŸ 
(
ŸŸ  
endPointException
ŸŸ  1
)
ŸŸ1 2
;
ŸŸ2 3
DialogManager
⁄⁄ 
.
⁄⁄ #
ShowErrorMessageAlert
⁄⁄ 3
(
⁄⁄3 4

Properties
⁄⁄4 >
.
⁄⁄> ?
	Resources
⁄⁄? H
.
⁄⁄H I%
dialogEndPointException
⁄⁄I `
)
⁄⁄` a
;
⁄⁄a b
}
€€ 
catch
‹‹ 
(
‹‹ 
TimeoutException
‹‹ #
timeOutException
‹‹$ 4
)
‹‹4 5
{
›› 
logger
ﬁﬁ 
.
ﬁﬁ 
LogWarn
ﬁﬁ 
(
ﬁﬁ 
timeOutException
ﬁﬁ /
)
ﬁﬁ/ 0
;
ﬁﬁ0 1
DialogManager
ﬂﬂ 
.
ﬂﬂ #
ShowErrorMessageAlert
ﬂﬂ 3
(
ﬂﬂ3 4

Properties
ﬂﬂ4 >
.
ﬂﬂ> ?
	Resources
ﬂﬂ? H
.
ﬂﬂH I$
dialogTimeOutException
ﬂﬂI _
)
ﬂﬂ_ `
;
ﬂﬂ` a
}
‡‡ 
catch
·· 
(
·· $
CommunicationException
·· )$
communicationException
··* @
)
··@ A
{
‚‚ 
logger
„„ 
.
„„ 
LogFatal
„„ 
(
„„  $
communicationException
„„  6
)
„„6 7
;
„„7 8
DialogManager
‰‰ 
.
‰‰ #
ShowErrorMessageAlert
‰‰ 3
(
‰‰3 4

Properties
‰‰4 >
.
‰‰> ?
	Resources
‰‰? H
.
‰‰H I)
dialogComunicationException
‰‰I d
)
‰‰d e
;
‰‰e f
}
ÂÂ 
}
ÊÊ 	
private
ËË 
void
ËË 
DisconnectPlayer
ËË %
(
ËË% &
)
ËË& '
{
ÈÈ 	
LoggerManager
ÍÍ 
logger
ÍÍ  
=
ÍÍ! "
new
ÍÍ# &
LoggerManager
ÍÍ' 4
(
ÍÍ4 5
this
ÍÍ5 9
.
ÍÍ9 :
GetType
ÍÍ: A
(
ÍÍA B
)
ÍÍB C
)
ÍÍC D
;
ÍÍD E
	HiveProxy
ÎÎ 
.
ÎÎ &
UserSessionManagerClient
ÎÎ .&
userSessionManagerClient
ÎÎ/ G
=
ÎÎH I
new
ÎÎJ M&
UserSessionManagerClient
ÎÎN f
(
ÎÎf g
)
ÎÎg h
;
ÎÎh i
try
ÏÏ 
{
ÌÌ 
UserSession
ÓÓ 
userSession
ÓÓ '
=
ÓÓ( )
new
ÓÓ* -
UserSession
ÓÓ. 9
(
ÓÓ9 :
)
ÓÓ: ;
{
ÔÔ 
	idAccount
 
=
 "
UserProfileSingleton
  4
.
4 5
	idAccount
5 >
,
> ?
username
ÒÒ 
=
ÒÒ "
UserProfileSingleton
ÒÒ 3
.
ÒÒ3 4
username
ÒÒ4 <
,
ÒÒ< =
}
ÚÚ 
;
ÚÚ &
userSessionManagerClient
ÛÛ (
.
ÛÛ( )

Disconnect
ÛÛ) 3
(
ÛÛ3 4
userSession
ÛÛ4 ?
,
ÛÛ? @
false
ÛÛ@ E
)
ÛÛE F
;
ÛÛF G
}
ÙÙ 
catch
ıı 
(
ıı '
EndpointNotFoundException
ıı ,
endPointException
ıı- >
)
ıı> ?
{
ˆˆ 
logger
˜˜ 
.
˜˜ 
LogFatal
˜˜ 
(
˜˜  
endPointException
˜˜  1
)
˜˜1 2
;
˜˜2 3
DialogManager
¯¯ 
.
¯¯ #
ShowErrorMessageAlert
¯¯ 3
(
¯¯3 4

Properties
¯¯4 >
.
¯¯> ?
	Resources
¯¯? H
.
¯¯H I%
dialogEndPointException
¯¯I `
)
¯¯` a
;
¯¯a b
}
˘˘ 
catch
˙˙ 
(
˙˙ 
TimeoutException
˙˙ #
timeOutException
˙˙$ 4
)
˙˙4 5
{
˚˚ 
logger
¸¸ 
.
¸¸ 
LogWarn
¸¸ 
(
¸¸ 
timeOutException
¸¸ /
)
¸¸/ 0
;
¸¸0 1
DialogManager
˝˝ 
.
˝˝ #
ShowErrorMessageAlert
˝˝ 3
(
˝˝3 4

Properties
˝˝4 >
.
˝˝> ?
	Resources
˝˝? H
.
˝˝H I$
dialogTimeOutException
˝˝I _
)
˝˝_ `
;
˝˝` a
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ )$
communicationException
ˇˇ* @
)
ˇˇ@ A
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogFatal
ÅÅ 
(
ÅÅ  $
communicationException
ÅÅ  6
)
ÅÅ6 7
;
ÅÅ7 8
DialogManager
ÇÇ 
.
ÇÇ #
ShowErrorMessageAlert
ÇÇ 3
(
ÇÇ3 4

Properties
ÇÇ4 >
.
ÇÇ> ?
	Resources
ÇÇ? H
.
ÇÇH I)
dialogComunicationException
ÇÇI d
)
ÇÇd e
;
ÇÇe f
}
ÉÉ 
}
ÑÑ 	
private
ÜÜ 
void
ÜÜ !
BtnResendCode_Click
ÜÜ (
(
ÜÜ( )
object
ÜÜ) /
sender
ÜÜ0 6
,
ÜÜ6 7"
MouseButtonEventArgs
ÜÜ8 L
e
ÜÜM N
)
ÜÜN O
{
áá 	
LoggerManager
àà 
logger
àà  
=
àà! "
new
àà# &
LoggerManager
àà' 4
(
àà4 5
this
àà5 9
.
àà9 :
GetType
àà: A
(
ààA B
)
ààB C
)
ààC D
;
ààD E
	HiveProxy
ââ 
.
ââ ,
EmailVerificationManagerClient
ââ 4&
emailVerificationManager
ââ5 M
=
ââN O
new
ââP S
	HiveProxy
ââT ]
.
ââ] ^,
EmailVerificationManagerClient
ââ^ |
(
ââ| }
)
ââ} ~
;
ââ~ 
try
ãã 
{
åå 
int
çç 
resultEmailSend
çç #
=
çç$ %&
emailVerificationManager
çç& >
.
çç> ?#
SendVerificationEmail
çç? T
(
ççT U"
UserProfileSingleton
ççU i
.
ççi j
email
ççj o
)
çço p
;
ççp q
if
éé 
(
éé 
resultEmailSend
éé #
==
éé$ &
	Constants
éé' 0
.
éé0 1
SuccesOperation
éé1 @
)
éé@ A
{
èè 
DialogManager
êê !
.
êê! "%
ShowSuccessMessageAlert
êê" 9
(
êê9 :

Properties
êê: D
.
êêD E
	Resources
êêE N
.
êêN O,
dialogEmailVerificationMessage
êêO m
)
êêm n
;
êên o
}
ëë 
else
íí 
{
ìì 
DialogManager
îî !
.
îî! "#
ShowErrorMessageAlert
îî" 7
(
îî7 8

Properties
îî8 B
.
îîB C
	Resources
îîC L
.
îîL M$
dialogCouldntSendEmail
îîM c
)
îîc d
;
îîd e
}
ïï 
}
ññ 
catch
óó 
(
óó '
EndpointNotFoundException
óó ,
endPointException
óó- >
)
óó> ?
{
òò 
logger
ôô 
.
ôô 
LogFatal
ôô 
(
ôô  
endPointException
ôô  1
)
ôô1 2
;
ôô2 3
DialogManager
öö 
.
öö #
ShowErrorMessageAlert
öö 3
(
öö3 4

Properties
öö4 >
.
öö> ?
	Resources
öö? H
.
ööH I%
dialogEndPointException
ööI `
)
öö` a
;
ööa b
}
õõ 
catch
úú 
(
úú 
TimeoutException
úú #
timeOutException
úú$ 4
)
úú4 5
{
ùù 
logger
ûû 
.
ûû 
LogWarn
ûû 
(
ûû 
timeOutException
ûû /
)
ûû/ 0
;
ûû0 1
DialogManager
üü 
.
üü #
ShowErrorMessageAlert
üü 3
(
üü3 4

Properties
üü4 >
.
üü> ?
	Resources
üü? H
.
üüH I$
dialogTimeOutException
üüI _
)
üü_ `
;
üü` a
}
†† 
catch
°° 
(
°° $
CommunicationException
°° )$
communicationException
°°* @
)
°°@ A
{
¢¢ 
logger
££ 
.
££ 
LogFatal
££ 
(
££  $
communicationException
££  6
)
££6 7
;
££7 8
DialogManager
§§ 
.
§§ #
ShowErrorMessageAlert
§§ 3
(
§§3 4

Properties
§§4 >
.
§§> ?
	Resources
§§? H
.
§§H I)
dialogComunicationException
§§I d
)
§§d e
;
§§e f
}
•• 
}
¶¶ 	
private
©© 
void
©© #
BtnCancelChange_Click
©© *
(
©©* +
object
©©+ 1
sender
©©2 8
,
©©8 9
RoutedEventArgs
©©: I
e
©©J K
)
©©K L
{
™™ 	
MainMenu
´´ 
mainMenu
´´ 
=
´´ 
new
´´  #
MainMenu
´´$ ,
(
´´, -
)
´´- .
;
´´. /
this
¨¨ 
.
¨¨ 
NavigationService
¨¨ "
.
¨¨" #
Navigate
¨¨# +
(
¨¨+ ,
mainMenu
¨¨, 4
)
¨¨4 5
;
¨¨5 6
}
≠≠ 	
public
ØØ 
void
ØØ 
ReturnToLoginView
ØØ %
(
ØØ% &
)
ØØ& '
{
∞∞ 	
DisconnectPlayer
±± 
(
±± 
)
±± 
;
±± 
	LoginView
≤≤ 
	loginView
≤≤ 
=
≤≤  !
new
≤≤" %
	LoginView
≤≤& /
(
≤≤/ 0
)
≤≤0 1
;
≤≤1 2
this
≥≥ 
.
≥≥ 
NavigationService
≥≥ "
.
≥≥" #
Navigate
≥≥# +
(
≥≥+ ,
	loginView
≥≥, 5
)
≥≥5 6
;
≥≥6 7
}
¥¥ 	
private
∂∂ 
void
∂∂ 
Image_MouseDown
∂∂ $
(
∂∂$ %
object
∂∂% +
sender
∂∂, 2
,
∂∂2 3"
MouseButtonEventArgs
∂∂4 H
e
∂∂I J
)
∂∂J K
{
∑∑ 	
ReturnToLoginView
∏∏ 
(
∏∏ 
)
∏∏ 
;
∏∏  
}
ππ 	
private
ªª 
void
ªª &
TextBox_PreviewMouseDown
ªª -
(
ªª- .
object
ªª. 4
sender
ªª5 ;
,
ªª; <"
MouseButtonEventArgs
ªª= Q
e
ªªR S
)
ªªS T
{
ºº 	
e
ΩΩ 
.
ΩΩ 
Handled
ΩΩ 
=
ΩΩ 
true
ΩΩ 
;
ΩΩ 
}
ææ 	
}
øø 
}¿¿ Õ
lC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Settings.cs
	namespace 	
HiveGameWPFApp
 
. 

Properties #
{$ %
public		 

sealed		 
partial		 
class		 
Settings		  (
{		) *
public 
Settings 
( 
) 
{ 
} 	
private 
void '
SettingChangingEventHandler 0
(0 1
object1 7
sender8 >
,> ?
System@ F
.F G
ConfigurationG T
.T U$
SettingChangingEventArgsU m
en o
)o p
{q r
} 	
private 
void &
SettingsSavingEventHandler /
(/ 0
object0 6
sender7 =
,= >
System? E
.E F
ComponentModelF T
.T U
CancelEventArgsU d
ee f
)f g
{h i
} 	
} 
} Äp
sC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\Validator.cs
	namespace

 	
HiveGameWPFApp


 
.

 
Logic

 
{ 
public 

static 
class 
	Validator !
{ 
private 
static 
Regex 
_passwordRegex +
=, -
new. 1
Regex2 7
(7 8
$str	8 å
,
å ç
RegexOptions
ç ô
.
ô ö
None
ö û
,
û ü
TimeSpan
ü ß
.
ß ®
FromMilliseconds
® ∏
(
∏ π
$num
π Ω
)
Ω æ
)
æ ø
;
ø ¿
private 
static 
Regex 
_usernameRegex +
=, -
new. 1
Regex2 7
(7 8
$str8 P
,P Q
RegexOptionsQ ]
.] ^
None^ b
,b c
TimeSpand l
.l m
FromMillisecondsm }
(} ~
$num	~ Ç
)
Ç É
)
É Ñ
;
Ñ Ö
private 
static 
Regex 
_nicknameRegex +
=, -
new. 1
Regex2 7
(7 8
$str8 P
,P Q
RegexOptionsR ^
.^ _
None_ c
,c d
TimeSpane m
.m n
FromMillisecondsn ~
(~ 
$num	 É
)
É Ñ
)
Ñ Ö
;
Ö Ü
private 
static 
Regex 

_dateRegex '
=( )
new* -
Regex. 3
(3 4
$str4 k
,k l
RegexOptionsm y
.y z
Nonez ~
,~ 
TimeSpan
Ä à
.
à â
FromMilliseconds
â ô
(
ô ö
$num
ö û
)
û ü
)
ü †
;
† °
private 
static 
Regex  
_codeLobbyMatchRegex 1
=2 3
new4 7
Regex8 =
(= >
$str> K
,K L
RegexOptionsM Y
.Y Z
NoneZ ^
,^ _
TimeSpan` h
.h i
FromMillisecondsi y
(y z
$numz ~
)~ 
)	 Ä
;
Ä Å
private 
static 
Regex 
_stateRegex (
=) *
new+ .
Regex/ 4
(4 5
$str5 M
,M N
RegexOptionsO [
.[ \
None\ `
,` a
TimeSpanb j
.j k
FromMillisecondsk {
({ |
$num	| Ä
)
Ä Å
)
Å Ç
;
Ç É
private 
static 
Regex 

_textRegex '
=( )
new* -
Regex. 3
(3 4
$str4 L
,L M
RegexOptionsN Z
.Z [
None[ _
,_ `
TimeSpana i
.i j
FromMillisecondsj z
(z {
$num{ 
)	 Ä
)
Ä Å
;
Å Ç
private 
static 
Regex 
_emailRegex (
=) *
new+ .
Regex/ 4
(4 5
$str	5 †
,
† °
RegexOptions
° ≠
.
≠ Æ
None
Æ ≤
,
≤ ≥
TimeSpan
≥ ª
.
ª º
FromMilliseconds
º Ã
(
Ã Õ
$num
Õ —
)
— “
)
“ ”
;
” ‘
public 
static 
bool  
ValidateRegexPattern /
(/ 0
string0 6
data7 ;
,; <
Regex= B
regexC H
)H I
{ 	
bool 
isValid 
= 
false  
;  !
try 
{ 
isValid 
= 
regex 
.  
IsMatch  '
(' (
data( ,
), -
;- .
} 
catch 
( &
RegexMatchTimeoutException -
)- .
{   
isValid!! 
=!! 
false!! 
;!!  
}"" 
return## 
isValid## 
;## 
}$$ 	
public&& 
static&& 
bool&& 
ValidateDescription&& .
(&&. /
string&&/ 5
description&&6 A
)&&A B
{'' 	
bool(( 
isValid(( 
=(( 
false((  
;((  !
string)) 
cleanedDescription)) %
=))& '
Regex))( -
.))- .
Replace)). 5
())5 6
description))6 A
.))A B
Trim))B F
())F G
)))G H
,))H I
$str))J P
,))P Q
$str))R T
,))T U
RegexOptions))V b
.))b c
None))c g
,))g h
TimeSpan))i q
.))q r
FromMilliseconds	))r Ç
(
))Ç É
$num
))É Ü
)
))Ü á
)
))á à
;
))à â
if** 
(** 
!** 
string** 
.** 
IsNullOrEmpty** %
(**% &
cleanedDescription**& 8
)**8 9
&&**: < 
ValidateRegexPattern**= Q
(**Q R
cleanedDescription**R d
,**d e

_textRegex**e o
)**o p
)**p q
{++ 
isValid,, 
=,, 
true,, 
;,, 
}-- 
return.. 
isValid.. 
;.. 
}// 	
public11 
static11 
bool11 
ValidatePassword11 +
(11+ ,
string11, 2
password113 ;
)11; <
{22 	
bool33 
isValid33 
=33 
false33  
;33  !
string44 
cleanedPassword44 "
=44# $
Regex44% *
.44* +
Replace44+ 2
(442 3
password443 ;
.44; <
Trim44< @
(44@ A
)44A B
,44B C
$str44D J
,44J K
$str44L N
,44N O
RegexOptions44P \
.44\ ]
None44] a
,44a b
TimeSpan44c k
.44k l
FromMilliseconds44l |
(44| }
$num	44} Ä
)
44Ä Å
)
44Å Ç
;
44Ç É
if55 
(55 
!55 
string55 
.55 
IsNullOrWhiteSpace55 *
(55* +
cleanedPassword55+ :
)55: ;
&&55< > 
ValidateRegexPattern55? S
(55S T
cleanedPassword55T c
,55c d
_passwordRegex55e s
)55s t
)55t u
{66 
isValid77 
=77 
true77 
;77 
}88 
return99 
isValid99 
;99 
}:: 	
public<< 
static<< 
bool<< 
ValidateUsername<< +
(<<+ ,
string<<, 2
username<<3 ;
)<<; <
{== 	
bool>> 
isValid>> 
=>> 
false>>  
;>>  !
string?? 
cleanedUsername?? "
=??# $
Regex??% *
.??* +
Replace??+ 2
(??2 3
username??3 ;
.??; <
Trim??< @
(??@ A
)??A B
,??B C
$str??D J
,??J K
$str??L N
,??N O
RegexOptions??P \
.??\ ]
None??] a
,??a b
TimeSpan??c k
.??k l
FromMilliseconds??l |
(??| }
$num	??} Ä
)
??Ä Å
)
??Å Ç
;
??Ç É
if@@ 
(@@ 
!@@ 
string@@ 
.@@ 
IsNullOrWhiteSpace@@ *
(@@* +
cleanedUsername@@+ :
)@@: ;
&&@@< > 
ValidateRegexPattern@@? S
(@@S T
cleanedUsername@@T c
,@@c d
_usernameRegex@@e s
)@@s t
)@@t u
{AA 
isValidBB 
=BB 
trueBB 
;BB 
}CC 
returnDD 
isValidDD 
;DD 
}EE 	
publicGG 
staticGG 
boolGG 
ValidateEmailGG (
(GG( )
stringGG) /
emailGG0 5
)GG5 6
{HH 	
boolII 
isValidII 
=II 
falseII  
;II  !
stringJJ 
cleanedEmailJJ 
=JJ  !
RegexJJ" '
.JJ' (
ReplaceJJ( /
(JJ/ 0
emailJJ0 5
.JJ5 6
TrimJJ6 :
(JJ: ;
)JJ; <
,JJ< =
$strJJ> D
,JJD E
$strJJF H
,JJH I
RegexOptionsJJJ V
.JJV W
NoneJJW [
,JJ[ \
TimeSpanJJ] e
.JJe f
FromMillisecondsJJf v
(JJv w
$numJJw z
)JJz {
)JJ{ |
;JJ| }
ifKK 
(KK 
!KK 
stringKK 
.KK 
IsNullOrWhiteSpaceKK *
(KK* +
cleanedEmailKK+ 7
)KK7 8
&&KK8 :
cleanedEmailKK: F
.KKF G
LengthKKG M
<KKM N
$numKKN Q
&&KKQ S 
ValidateRegexPatternKKT h
(KKh i
cleanedEmailKKi u
,KKu v
_emailRegex	KKw Ç
)
KKÇ É
)
KKÉ Ñ
{LL 
isValidMM 
=MM 
trueMM 
;MM 
}NN 
returnOO 
isValidOO 
;OO 
}PP 	
publicRR 
staticRR 
boolRR 
ValidateNickNameRR +
(RR+ ,
stringRR, 2
nickNameRR3 ;
)RR; <
{SS 	
boolTT 
isValidTT 
=TT 
falseTT  
;TT  !
stringUU 
cleanedNickNameUU "
=UU# $
RegexUU% *
.UU* +
ReplaceUU+ 2
(UU2 3
nickNameUU3 ;
.UU; <
TrimUU< @
(UU@ A
)UUA B
,UUB C
$strUUD J
,UUJ K
$strUUL N
,UUN O
RegexOptionsUUP \
.UU\ ]
NoneUU] a
,UUa b
TimeSpanUUc k
.UUk l
FromMillisecondsUUl |
(UU| }
$num	UU} Ä
)
UUÄ Å
)
UUÅ Ç
;
UUÇ É
ifVV 
(VV 
!VV 
stringVV 
.VV 
IsNullOrWhiteSpaceVV )
(VV) *
cleanedNickNameVV* 9
)VV9 :
&&VV; = 
ValidateRegexPatternVV> R
(VVR S
cleanedNickNameVVS b
,VVb c
_nicknameRegexVVd r
)VVr s
)VVs t
{WW 
isValidXX 
=XX 
trueXX 
;XX 
}YY 
returnZZ 
isValidZZ 
;ZZ 
}[[ 	
public]] 
static]] 
bool]] 
ValidateDate]] '
(]]' (
string]]( .
date]]/ 3
)]]3 4
{^^ 	
bool__ 
isValid__ 
=__ 
false__  
;__  !
if`` 
(`` 
!`` 
string`` 
.`` 
IsNullOrWhiteSpace`` )
(``) *
date``* .
)``. /
&&``/ 1 
ValidateRegexPattern``2 F
(``F G
date``G K
,``K L

_dateRegex``M W
)``W X
)``X Y
{aa 
isValidbb 
=bb 
truebb 
;bb 
}cc 
returndd 
isValiddd 
;dd 
}ee 	
publicgg 
staticgg 
boolgg 
ValidateCodegg '
(gg' (
stringgg( .
	codeLobbygg/ 8
)gg8 9
{hh 	
boolii 
isValidii 
=ii 
falseii  
;ii  !
stringjj 
codeCleanedjj 
=jj  
Regexjj! &
.jj& '
Replacejj' .
(jj. /
	codeLobbyjj/ 8
.jj8 9
Trimjj9 =
(jj= >
)jj> ?
,jj? @
$strjjA G
,jjG H
$strjjI K
,jjK L
RegexOptionsjjM Y
.jjY Z
NonejjZ ^
,jj^ _
TimeSpanjj` h
.jjh i
FromMillisecondsjji y
(jjy z
$numjjz }
)jj} ~
)jj~ 
;	jj Ä
ifkk 
(kk 
!kk 
stringkk 
.kk 
IsNullOrWhiteSpacekk *
(kk* +
codeCleanedkk+ 6
)kk6 7
&&kk8 : 
ValidateRegexPatternkk; O
(kkO P
codeCleanedkkP [
,kk[ \ 
_codeLobbyMatchRegexkk] q
)kkq r
)kkr s
{ll 
isValidmm 
=mm 
truemm 
;mm 
}nn 
returnoo 
isValidoo 
;oo 
}pp 	
publicrr 
staticrr 
boolrr 
ValidateStaterr (
(rr( )
stringrr) /
staterr0 5
)rr5 6
{ss 	
booltt 
isValidtt 
=tt 
falsett  
;tt  !
stringuu 
stateCleaneduu 
=uu  !
Regexuu" '
.uu' (
Replaceuu( /
(uu/ 0
stateuu0 5
.uu5 6
Trimuu6 :
(uu: ;
)uu; <
,uu< =
$struu> D
,uuD E
$struuF H
,uuH I
RegexOptionsuuJ V
.uuV W
NoneuuW [
,uu[ \
TimeSpanuu] e
.uue f
FromMillisecondsuuf v
(uuv w
$numuuw z
)uuz {
)uu{ |
;uu| }
ifvv 
(vv 
!vv 
stringvv 
.vv 
IsNullOrWhiteSpacevv *
(vv* +
stateCleanedvv+ 7
)vv7 8
&&vv9 ; 
ValidateRegexPatternvv< P
(vvP Q
stateCleanedvvQ ]
,vv] ^
_stateRegexvv_ j
)vvj k
)vvk l
{ww 
isValidxx 
=xx 
truexx 
;xx 
}yy 
returnzz 
isValidzz 
;zz 
}{{ 	
}|| 
}}} –$
~C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\UserProfileSingleton.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{		 
public

 

class

  
UserProfileSingleton

 &
{ 
private 
static 
readonly  
UserProfileSingleton  4
_singletonInstance5 G
=H I
newJ M 
UserProfileSingletonN b
(b c
)c d
;d e
public 
static 
string 
username %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
static 
string 
password %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
static 
string 
email "
{# $
get& )
;) *
set+ .
;. /
}0 1
public 
static 
int 
	idAccount #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
int 
	idProfile #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
static 
string 
nickname %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
static 
string 

imageRoute '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
static 
DateTime 
createdDate *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
static 
int 
idAssociatedAccount -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
static 
string 
description (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
static  
UserProfileSingleton *
Instance+ 3
=>4 6
_singletonInstance7 I
;I J
public 
void 
CreateInstance "
(" #
Profile# *
profile+ 2
)2 3
{ 	
username 
= 
profile 
. 
username '
;' (
password 
= 
profile 
. 
password '
;' (
email 
= 
profile 
. 
email !
;! "
	idAccount   
=   
profile   
.    
	idAccount    )
;  ) *
	idProfile!! 
=!! 
profile!! 
.!!  
	idProfile!!  )
;!!) *
nickname"" 
="" 
profile"" 
."" 
nickname"" '
;""' (

imageRoute## 
=## 
profile##  
.##  !
	imagePath##! *
;##* +
createdDate$$ 
=$$ 
profile$$ !
.$$! "
createdDate$$" -
;$$- .
idAssociatedAccount%% 
=%%  !
profile%%" )
.%%) *
	idAccount%%* 3
;%%3 4
description&& 
=&& 
profile&& !
.&&! "
description&&" -
;&&- .
}'' 	
public)) 
void)) 
ResetSingleton)) "
())" #
)))# $
{** 	
username++ 
=++ 
null++ 
;++ 
password,, 
=,, 
null,, 
;,, 
email-- 
=-- 
null-- 
;-- 
	idAccount.. 
=.. 
$num.. 
;.. 
	idProfile// 
=// 
$num// 
;// 
nickname00 
=00 
null00 
;00 

imageRoute11 
=11 
null11 
;11 
createdDate22 
=22 
DateTime22 "
.22" #
MinValue22# +
;22+ ,
idAssociatedAccount33 
=33  !
$num33" #
;33# $
description44 
=44 
null44 
;44 
}55 	
}66 
}77 –
sC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\GamePiece.cs
	namespace		 	
HiveGameWPFApp		
 
.		 
Logic		 
{

 
public 

partial 
class 
	GamePiece "
{ 
public 
Piece 
Piece 
{ 
get  
;  !
set" %
;% &
}' (
public 
int 
PieceNumber 
{  
get" %
;% &
set' *
;* +
}, -
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Point 
Position 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

PlayerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
	GamePiece 
( 
Piece 
piece $
,$ %
string& ,
	imagePath- 6
,6 7
Point8 =
position> F
,F G
stringH N

playernameO Y
,Y Z
int[ ^
pieceNumber_ j
)j k
{ 	
Piece 
= 
piece 
; 
	ImagePath 
= 
	imagePath !
;! "
Position 
= 
position 
;  

PlayerName 
= 

playername #
;# $
this 
. 
PieceNumber 
= 
pieceNumber *
;* +
} 	
public 
	GamePiece 
( 
) 
{ 	
}   	
}"" 
}## ƒ
zC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\ProfileGenerator.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{ 
public		 

static		 
class		 
ProfileGenerator		 (
{

 
private 
static 
readonly 
Random  &
_random' .
=/ 0
new1 4
Random5 ;
(; <
)< =
;= >
public 
static 
string &
RandomDescriptionGenerator 7
(7 8
)8 9
{ 	
string 
[ 
] 
defaultDescriptions (
=) *
{+ ,
$str- B
,B C
$strC k
,k l
$str	l Å
+
Ç É
$str )
,) *
$str* O
,O P
$strP q
,q r
$str	r Ñ
+
Ñ Ö
$str 2
+2 3
$str3 [
}\ ]
;] ^
int 
randomIndex 
= 
_random %
.% &
Next& *
(* +
defaultDescriptions+ >
.> ?
Length? E
)E F
;F G
return 
defaultDescriptions &
[& '
randomIndex' 2
]2 3
;3 4
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{ 	
string 
[ 
] 
defaultAvatars #
=$ %
{& '
$str( E
,E F
$strG d
,d e
$str	f É
,
É Ñ
$str -
,- .
$str/ L
,L M
$strN k
}l m
;m n
int 
randomIndex 
= 
_random %
.% &
Next& *
(* +
defaultAvatars+ 9
.9 :
Length: @
)@ A
;A B
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
} 	
public   
static   
string   !
RandomChooserUsername   2
(  2 3
)  3 4
{!! 	
int## 
randomIndexNumber## !
=##" #
_random##$ +
.##+ ,
Next##, 0
(##0 1
$num##1 2
,##2 3
$num##3 :
)##: ;
;##; <
string$$ 
defaultUsername$$ "
=$$# $
$str$$% ,
+$$, -
randomIndexNumber$$- >
;$$> ?
return%% 
defaultUsername%% "
;%%" #
}&& 	
}'' 
}(( ¨
oC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\Piece.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{		 
public

 

abstract

 
class

 
Piece

 
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
Point 
Position 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

PlayerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
public 

class 
Queen 
: 
Piece 
{ 
public 
Queen 
( 
) 
{ 	
Name 
= 
$str 
; 

PlayerName 
= 
$str 
; 
} 	
} 
public 

class 
Spider 
: 
Piece 
{ 
public 
Spider 
( 
) 
{ 	
Name   
=   
$str   
;   

PlayerName!! 
=!! 
$str!! 
;!! 
}"" 	
}%% 
public&& 

class&& 
Beetle&& 
:&& 
Piece&& 
{'' 
public(( 
Beetle(( 
((( 
)(( 
{)) 	
Name** 
=** 
$str** 
;** 

PlayerName++ 
=++ 
$str++ 
;++ 
},, 	
}.. 
public// 

class// 
Ant// 
:// 
Piece// 
{00 
public11 
Ant11 
(11 
)11 
{22 	
Name33 
=33 
$str33 
;33 

PlayerName44 
=44 
$str44 
;44 
}55 	
}77 
public88 

class88 
Grasshopper88 
:88 
Piece88 $
{99 
public:: 
Grasshopper:: 
(:: 
):: 
{;; 	
Name== 
=== 
$str==  
;==  !

PlayerName>> 
=>> 
$str>> 
;>> 
}?? 	
}AA 
}CC ¶

xC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\MatchSingleton.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{ 
public		 

class		 
MatchSingleton		 
{

 
private 
static 
readonly 
MatchSingleton  .
_SingletonInstance/ A
=B C
newD G
MatchSingletonH V
(V W
)W X
;X Y
public 
static 
string 
	codeMatch &
{' (
get* -
;- .
set/ 2
;2 3
}4 5
public 
static 
MatchSingleton $
Instance% -
=>. 0
_SingletonInstance1 C
;C D
public 
void 
CreateInstance "
(" #
string# )
code* .
). /
{ 	
	codeMatch 
= 
code 
; 
} 	
public 
void 
ResetSingleton "
(" #
)# $
{ 	
	codeMatch 
= 
null 
; 
} 	
} 
} ö
wC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\LoggerManager.cs
	namespace		 	
HiveGameWPFApp		
 
.		 
Logic		 
{

 
public 

class 
LoggerManager 
{ 
public 
ILog 
Logger 
{ 
get  
;  !
set" %
;% &
}' (
public 
LoggerManager 
( 
Type !
type" &
)& '
{ 	
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
static 
ILog 
	GetLogger $
($ %
Type% )
type* .
). /
{ 	
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public 
void 
LogError 
( 
string #
message$ +
,+ ,
	Exception- 6
ex7 9
)9 :
{ 	
Logger   
.   
Error   
(   
message    
,    !
ex  " $
)  $ %
;  % &
}!! 	
public## 
void## 
LogError## 
(## 
	Exception## &
ex##' )
)##) *
{$$ 	
Logger%% 
.%% 
Error%% 
(%% 
ex%% 
)%% 
;%% 
}&& 	
public'' 
void'' 
LogFatal'' 
('' 
	Exception'' &
ex''' )
)'') *
{(( 	
Logger)) 
.)) 
Fatal)) 
()) 
ex)) 
))) 
;)) 
}** 	
public++ 
void++ 
LogWarn++ 
(++ 
	Exception++ %
ex++& (
)++( )
{,, 	
Logger-- 
.-- 
Warn-- 
(-- 
ex-- 
)-- 
;-- 
}.. 	
public00 
void00 
LogDebug00 
(00 
	Exception00 &
ex00' )
)00) *
{11 	
Logger22 
.22 
Debug22 
(22 
ex22 
)22 
;22 
}33 	
}44 
}55 ò
pC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\Hasher.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{		 
public

 

static

 
class

 
Hasher

 
{ 
public 
static 
string 

hashToSHA2 '
(' (
string( .

textToHash/ 9
)9 :
{ 	
StringBuilder 
stringHashBuilder +
=, -
new. 1
StringBuilder2 ?
(? @
)@ A
;A B
byte 
[ 
] 

inputBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7

textToHash7 A
)A B
;B C
using 
( 
SHA256 
sha256  
=! "
SHA256# )
.) *
Create* 0
(0 1
)1 2
)2 3
{ 
byte 
[ 
] 
	hashBytes  
=! "
sha256# )
.) *
ComputeHash* 5
(5 6

inputBytes6 @
)@ A
;A B
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes "
=# $
$num% &
;& '

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{ 
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
}!! 
}"" ÿ
wC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\DialogManager.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{ 
public 

static 
class 
DialogManager %
{ 
public 
static 
void !
ShowErrorMessageAlert 0
(0 1
string1 7
errorMessage8 D
)D E
{ 	

MessageBox		 
.		 
Show		 
(		 
errorMessage		 (
,		( )

Properties		* 4
.		4 5
	Resources		5 >
.		> ?
dialogTitleError		? O
,		O P
MessageBoxButton		Q a
.		a b
OK		b d
,		d e
MessageBoxImage		f u
.		u v
Error		v {
)		{ |
;		| }
}

 	
public 
static 
void #
ShowWarningMessageAlert 2
(2 3
string3 9
warningMessage: H
)H I
{ 	

MessageBox 
. 
Show 
( 
warningMessage *
,* +

Properties, 6
.6 7
	Resources7 @
.@ A
dialogTitleWarningA S
,S T
MessageBoxButtonU e
.e f
OKf h
,h i
MessageBoxImagej y
.y z
Warning	z Å
)
Å Ç
;
Ç É
} 	
public 
static 
void #
ShowSuccessMessageAlert 2
(2 3
string3 9
successMessage: H
)H I
{ 	

MessageBox 
. 
Show 
( 
successMessage *
,* +

Properties, 6
.6 7
	Resources7 @
.@ A
dialogTitleSuccesA R
,R S
MessageBoxButtonT d
.d e
OKe g
,g h
MessageBoxImagei x
.x y
Information	y Ñ
)
Ñ Ö
;
Ö Ü
} 	
public 
static 
bool (
ShowConfirmationMessageAlert 7
(7 8
string8 >
confirmMessage? M
)M N
{ 	
MessageBoxResult 
result #
=$ %

MessageBox& 0
.0 1
Show1 5
(5 6
confirmMessage6 D
,D E

PropertiesF P
.P Q
	ResourcesQ Z
.Z [#
dialogTitleConfirmation[ r
,r s
MessageBoxButton	t Ñ
.
Ñ Ö
OKCancel
Ö ç
,
ç é
MessageBoxImage
è û
.
û ü
Question
ü ß
)
ß ®
;
® ©
return 
result 
== 
MessageBoxResult -
.- .
OK. 0
;0 1
} 	
} 
} ¨
sC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\Constants.cs
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{ 
public		 

static		 
class		 
	Constants		 !
{

 
public 
const 
int 
ErrorOperation '
=( )
-* +
$num+ ,
;, -
public 
const 
int 
SuccesOperation (
=) *
$num+ ,
;, -
public 
const 
int 
NoDataMatches &
=' (
$num) *
;* +
public 
const 
int 
DataMatches $
=% &
$num' (
;( )
public 
const 
int 
DefaultGuestId '
=( )
$num* +
;+ ,
public 
const 
string 
DefaultImagePlayer .
=/ 0
$str1 4
;4 5
public 
const 
string 
DefaultImageGuest -
=. /
$str0 3
;3 4
private 
static 
bool 

_isInMatch &
=' (
false) .
;. /
public 
static 
bool 
	IsInMatch $
{ 	
get 
=> 

_isInMatch 
; 
set 
=> 

_isInMatch 
= 
value  %
;% &
} 	
}   
}!! 