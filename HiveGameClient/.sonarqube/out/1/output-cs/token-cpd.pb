�
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
]55) *�;
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
}uu �>
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
}dd �b
�C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\VerifyEmailAndUsername.xaml.cs
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
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
�� 

validation
�� 
;
�� 
}
�� 	
private
�� 
bool
�� 
ValidateFields
�� #
(
��# $
)
��$ %
{
�� 	
bool
�� 
validateUsername
�� !
=
��" #
	Validator
��$ -
.
��- .
ValidateUsername
��. >
(
��> ?
txtb_Username
��? L
.
��L M
Text
��M Q
)
��Q R
;
��R S
bool
�� 
validateEmail
�� 
=
��  
	Validator
��! *
.
��* +
ValidateEmail
��+ 8
(
��8 9

txtb_Email
��9 C
.
��C D
Text
��D H
)
��H I
;
��I J
if
�� 
(
�� 
!
�� 
validateUsername
��  
)
��  !
{
�� 
txtb_Username
�� 
.
�� 
BorderBrush
�� )
=
��* +
Brushes
��, 3
.
��3 4
Red
��4 7
;
��7 8
}
�� 
if
�� 
(
�� 
!
�� 
validateEmail
�� 
)
�� 
{
�� 

txtb_Email
�� 
.
�� 
BorderBrush
�� &
=
��' (
Brushes
��) 0
.
��0 1
Red
��1 4
;
��4 5
}
�� 
return
�� 
validateUsername
�� #
&&
��$ &
validateEmail
��' 4
;
��4 5
}
�� 	
}
�� 
}�� �t
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
	idAccount	88{ �
)
88� �
;
88� �
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
totalWonMatches	ppw �
)
pp� �
.
pp� �
ToList
pp� �
(
pp� �
)
pp� �
;
pp� �
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
indexLeaderBoardsSorted	rrj �
++
rr� �
)
rr� �
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
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
Image_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
GoToMainMenuView
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
GoToMainMenuView
�� %
(
��% &
)
��& '
{
�� 	
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
void
�� !
DataGrid_LoadingRow
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
DataGridRowEventArgs
��8 L
e
��M N
)
��N O
{
�� 	
e
�� 
.
�� 
Row
�� 
.
�� 
Header
�� 
=
�� 
(
�� 
e
�� 
.
�� 
Row
�� !
.
��! "
GetIndex
��" *
(
��* +
)
��+ ,
+
��- .
$num
��/ 0
)
��0 1
.
��1 2
ToString
��2 :
(
��: ;
)
��; <
;
��< =
}
�� 	
}
�� 
public
�� 

class
�� 
PlayerStatistic
��  
{
�� 
public
�� 
int
�� 
Rank
�� 
{
�� 
get
�� 
;
�� 
set
�� "
;
��" #
}
��$ %
public
�� 
string
�� 
ProfileImage
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
Name
�� 
{
�� 
get
��  
;
��  !
set
��" %
;
��% &
}
��' (
public
�� 
int
�� 
Wins
�� 
{
�� 
get
�� 
;
�� 
set
�� "
;
��" #
}
��$ %
public
�� 
int
�� 
Losses
�� 
{
�� 
get
�� 
;
��  
set
��! $
;
��$ %
}
��& '
public
�� 
int
�� 

TotalGames
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
}
�� 
}�� ��
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
�� 
=
�� 
DateTime
�� &
.
��& '
Now
��' *
,
��* +
description
�� 
=
�� 
ProfileGenerator
�� .
.
��. /(
RandomDescriptionGenerator
��/ I
(
��I J
)
��J K
,
��K L

reputation
�� 
=
�� 
$num
��  
}
�� 
;
�� 
return
�� 

newProfile
�� 
;
�� 
}
�� 	
public
�� 
bool
�� #
ValidateSamePasswords
�� )
(
��) *
)
��* +
{
�� 	
return
�� "
txtb_PasswordDisplay
�� '
.
��' (
Text
��( ,
==
��- /)
txtb_ConfirmPasswordDisplay
��0 K
.
��K L
Text
��L P
;
��P Q
}
�� 	
public
�� 
void
��  
RestartColorTxtBox
�� &
(
��& '
)
��' (
{
�� 	
txtb_Username
�� 
.
�� 
BorderBrush
�� %
=
��& '
Brushes
��( /
.
��/ 0
White
��0 5
;
��5 6

txtb_Email
�� 
.
�� 
BorderBrush
�� "
=
��# $
Brushes
��% ,
.
��, -
White
��- 2
;
��2 3
brd_Password
�� 
.
�� 
BorderBrush
�� $
=
��% &
Brushes
��' .
.
��. /
White
��/ 4
;
��4 5!
brd_PasswordConfirm
�� 
.
��  
BorderBrush
��  +
=
��, -
Brushes
��. 5
.
��5 6
White
��6 ;
;
��; <
}
�� 	
public
�� 
bool
�� 
VerifyField
�� 
(
��  
)
��  !
{
�� 	
bool
�� 
username
�� 
=
�� 
	Validator
�� %
.
��% &
ValidateUsername
��& 6
(
��6 7
txtb_Username
��7 D
.
��D E
Text
��E I
)
��I J
;
��J K
bool
�� 
email
�� 
=
�� 
	Validator
�� "
.
��" #
ValidateEmail
��# 0
(
��0 1

txtb_Email
��1 ;
.
��; <
Text
��< @
)
��@ A
;
��A B
bool
�� 
password
�� 
=
�� 
	Validator
�� %
.
��% &
ValidatePassword
��& 6
(
��6 7
pwb_Password
��7 C
.
��C D
Password
��D L
)
��L M
;
��M N
bool
�� 
confirmPassword
��  
=
��! "
	Validator
��# ,
.
��, -
ValidatePassword
��- =
(
��= >
pwb_Password
��> J
.
��J K
Password
��K S
)
��S T
;
��T U
if
�� 
(
�� 
!
�� 
username
�� 
)
�� 
txtb_Username
�� (
.
��( )
BorderBrush
��) 4
=
��5 6
Brushes
��7 >
.
��> ?
Red
��? B
;
��B C
if
�� 
(
�� 
!
�� 
email
�� 
)
�� 

txtb_Email
�� "
.
��" #
BorderBrush
��# .
=
��/ 0
Brushes
��1 8
.
��8 9
Red
��9 <
;
��< =
if
�� 
(
�� 
!
�� 
password
�� 
)
�� 
brd_Password
�� '
.
��' (
BorderBrush
��( 3
=
��4 5
Brushes
��6 =
.
��= >
Red
��> A
;
��A B
if
�� 
(
�� 
!
�� 
confirmPassword
��  
)
��  !!
brd_PasswordConfirm
��" 5
.
��5 6
BorderBrush
��6 A
=
��B C
Brushes
��D K
.
��K L
Red
��L O
;
��O P
return
�� 
username
�� 
&&
�� 
password
�� '
&&
��( *
email
��+ 0
&&
��1 3
confirmPassword
��4 C
;
��C D
}
�� 	
private
�� 
void
�� )
PwbPassword_PasswordChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
�� 	*
UpdatePasswordVisibilityIcon
�� (
(
��( )
pwb_Password
��) 5
,
��5 6&
tgbtn_PasswordVisibility
��7 O
)
��O P
;
��P Q+
UpdatePetImageBasedOnPassword
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
private
�� 
void
�� -
ConfirmPassword_PasswordChanged
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C
RoutedEventArgs
��D S
e
��T U
)
��U V
{
�� 	*
UpdatePasswordVisibilityIcon
�� (
(
��( )!
pwb_ConfirmPassword
��) <
,
��< =-
tgbtn_ConfirmPasswordVisibility
��> ]
)
��] ^
;
��^ _+
UpdatePetImageBasedOnPassword
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
private
�� 
void
�� -
BtnPasswordVisibility_MouseDown
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C"
MouseButtonEventArgs
��D X
e
��Y Z
)
��Z [
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
true
��% )
,
��) *

isPassword
��+ 5
:
��5 6
true
��7 ;
)
��; <
;
��< =
ChangePetImage
�� 
(
�� 
$str
�� G
)
��G H
;
��H I
}
�� 	
private
�� 
void
�� +
BtnPasswordVisibility_MouseUp
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
MouseButtonEventArgs
��B V
e
��W X
)
��X Y
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
false
��% *
,
��* +

isPassword
��, 6
:
��6 7
true
��8 <
)
��< =
;
��= >
}
�� 	
private
�� 
void
�� 4
&BtnConfirmPasswordVisibility_MouseDown
�� ;
(
��; <
object
��< B
sender
��C I
,
��I J"
MouseButtonEventArgs
��K _
e
��` a
)
��a b
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
true
��% )
,
��) *

isPassword
��+ 5
:
��5 6
false
��7 <
)
��< =
;
��= >
ChangePetImage
�� 
(
�� 
$str
�� G
)
��G H
;
��H I
}
�� 	
private
�� 
void
�� 2
$BtnConfirmPasswordVisibility_MouseUp
�� 9
(
��9 :
object
��: @
sender
��A G
,
��G H"
MouseButtonEventArgs
��I ]
e
��^ _
)
��_ `
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
false
��% *
,
��* +

isPassword
��, 6
:
��6 7
false
��8 =
)
��= >
;
��> ?
}
�� 	
private
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
PasswordBox
��2 =
passwordBox
��> I
,
��I J
ToggleButton
��K W
toggleButton
��X d
)
��d e
{
�� 	
toggleButton
�� 
.
�� 

Visibility
�� #
=
��$ %
!
��& '
string
��' -
.
��- .
IsNullOrEmpty
��. ;
(
��; <
passwordBox
��< G
.
��G H
Password
��H P
)
��P Q
?
��R S

Visibility
��T ^
.
��^ _
Visible
��_ f
:
��g h

Visibility
��i s
.
��s t
	Collapsed
��t }
;
��} ~
}
�� 	
private
�� 
void
�� &
TogglePasswordVisibility
�� -
(
��- .
bool
��. 2
	isVisible
��3 <
,
��< =
bool
��> B

isPassword
��C M
)
��M N
{
�� 	
if
�� 
(
�� 

isPassword
�� 
)
�� 
{
�� 
ToggleVisibility
��  
(
��  !
	isVisible
��! *
,
��* +
brd_Password
��, 8
,
��8 9!
brd_PasswordDisplay
��: M
,
��M N"
txtb_PasswordDisplay
��O c
,
��c d
pwb_Password
��e q
)
��q r
;
��r s
}
�� 
else
�� 
{
�� 
ToggleVisibility
��  
(
��  !
	isVisible
��! *
,
��* +!
pwb_ConfirmPassword
��, ?
,
��? @(
brd_PasswordDisplayConfirm
��A [
,
��[ \)
txtb_ConfirmPasswordDisplay
��] x
,
��x y"
pwb_ConfirmPassword��z �
)��� �
;��� �
}
�� 
}
�� 	
private
�� 
void
�� 
ToggleVisibility
�� %
(
��% &
bool
��& *
	isVisible
��+ 4
,
��4 5
	UIElement
��6 ?
passwordElement
��@ O
,
��O P
	UIElement
��Q Z
displayElement
��[ i
,
��i j
TextBox
��k r
displayTextBox��s �
,��� �
PasswordBox��� �
passwordBox��� �
)��� �
{
�� 	
passwordElement
�� 
.
�� 

Visibility
�� &
=
��' (
	isVisible
��) 2
?
��3 4

Visibility
��5 ?
.
��? @
	Collapsed
��@ I
:
��J K

Visibility
��L V
.
��V W
Visible
��W ^
;
��^ _
displayElement
�� 
.
�� 

Visibility
�� %
=
��& '
	isVisible
��( 1
?
��2 3

Visibility
��4 >
.
��> ?
Visible
��? F
:
��G H

Visibility
��I S
.
��S T
	Collapsed
��T ]
;
��] ^
if
�� 
(
�� 
	isVisible
�� 
)
�� 
displayTextBox
�� 
.
�� 
Text
�� #
=
��$ %
passwordBox
��& 1
.
��1 2
Password
��2 :
;
��: ;
else
�� 
passwordBox
�� 
.
�� 
Password
�� $
=
��% &
displayTextBox
��' 5
.
��5 6
Text
��6 :
;
��: ;
}
�� 	
private
�� 
void
�� +
UpdatePetImageBasedOnPassword
�� 2
(
��2 3
)
��3 4
{
�� 	
if
�� 
(
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� $
(
��$ %
pwb_Password
��% 1
.
��1 2
Password
��2 :
)
��: ;
&&
��< >
string
��? E
.
��E F
IsNullOrEmpty
��F S
(
��S T!
pwb_ConfirmPassword
��T g
.
��g h
Password
��h p
)
��p q
)
��q r
{
�� 
ChangePetImage
�� 
(
�� 
$str
�� ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 
ChangePetImage
�� 
(
�� 
$str
�� H
)
��H I
;
��I J
}
�� 
}
�� 	
private
�� 
void
�� 
ChangePetImage
�� #
(
��# $
string
��$ *
	imagePath
��+ 4
)
��4 5
{
�� 	
img_Pet
�� 
.
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
	imagePath
��5 >
,
��> ?
UriKind
��@ G
.
��G H
Relative
��H P
)
��P Q
)
��Q R
;
��R S
}
�� 	
}
�� 
}�� �_
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
�� 
txtb_Description
�� #
.
��# $
Text
��$ (
==
��) +"
UserProfileSingleton
��, @
.
��@ A
description
��A L
&&
��M O
txtb_Nickname
��P ]
.
��] ^
Text
��^ b
==
��c e"
UserProfileSingleton
��f z
.
��z {
nickname��{ �
&&��� �
imageRouteProfile
�� !
==
��" $"
UserProfileSingleton
��% 9
.
��9 :

imageRoute
��: D
;
��D E
}
�� 	
public
�� 
bool
�� 
ValidateFields
�� "
(
��" #
)
��# $
{
�� 	
bool
��  
nicknameValidation
�� #
=
��$ %
	Validator
��& /
.
��/ 0
ValidateNickName
��0 @
(
��@ A
txtb_Nickname
��A N
.
��N O
Text
��O S
)
��S T
;
��T U
bool
�� #
descriptionValidation
�� &
=
��' (
	Validator
��) 2
.
��2 3!
ValidateDescription
��3 F
(
��F G
txtb_Description
��G W
.
��W X
Text
��X \
)
��\ ]
;
��] ^
if
�� 
(
�� 
!
��  
nicknameValidation
�� #
)
��# $
{
�� 
txtb_Nickname
�� 
.
�� 
BorderBrush
�� )
=
��* +
Brushes
��, 3
.
��3 4
Red
��4 7
;
��7 8
}
�� 
if
�� 
(
�� 
!
�� #
descriptionValidation
�� &
)
��& '
{
�� 
txtb_Description
��  
.
��  !
BorderBrush
��! ,
=
��- .
Brushes
��/ 6
.
��6 7
Red
��7 :
;
��: ;
}
�� 
return
��  
nicknameValidation
�� %
&&
��& (#
descriptionValidation
��) >
;
��> ?
}
�� 	
public
�� 
void
�� 
RecolorFields
�� !
(
��! "
)
��" #
{
�� 	
txtb_Description
�� 
.
�� 
BorderBrush
�� (
=
��) *
Brushes
��+ 2
.
��2 3
White
��3 8
;
��8 9
txtb_Nickname
�� 
.
�� 
BorderBrush
�� %
=
��& '
Brushes
��( /
.
��/ 0
White
��0 5
;
��5 6
}
�� 	
}
�� 
}�� ��
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
�� 
userManager
�� (
=
��) *
new
��+ .
	HiveProxy
��/ 8
.
��8 9
UserManagerClient
��9 J
(
��J K
)
��K L
;
��L M
validationResult
��  
=
��! "
userManager
��# .
.
��. /'
VerifyPasswordCredentials
��/ H
(
��H I
username
��I Q
,
��Q R
hashedPassword
��S a
)
��a b
;
��b c
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
switch
�� 
(
�� 
validationResult
�� $
)
��$ %
{
�� 
case
�� 
-
�� 
$num
�� 
:
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
break
�� 
;
�� 
case
�� 
$num
�� 
:
�� !
obtainSingletonData
�� '
(
��' (
profile
��( /
)
��/ 0
;
��0 1
break
�� 
;
�� 
}
�� 
return
�� 
validationResult
�� #
;
��# $
}
�� 	
public
�� 
void
�� !
obtainSingletonData
�� '
(
��' (
Profile
��( /
profile
��0 7
)
��7 8
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
IUserManager
�� 
userManager
�� (
=
��) *
new
��+ .
UserManagerClient
��/ @
(
��@ A
)
��A B
;
��B C
string
�� 
hashedPassword
�� %
=
��& '
Hasher
��( .
.
��. /

hashToSHA2
��/ 9
(
��9 :
profile
��: A
.
��A B
password
��B J
)
��J K
;
��K L
Profile
�� 
userAccount
�� #
=
��$ %
userManager
��& 1
.
��1 2
GetUserProfile
��2 @
(
��@ A
profile
��A H
.
��H I
username
��I Q
,
��Q R
hashedPassword
��S a
)
��a b
;
��b c
if
�� 
(
�� 
userAccount
�� 
!=
��  "
null
��# '
)
��' (
{
�� "
UserProfileSingleton
�� (
.
��( )
Instance
��) 1
.
��1 2
CreateInstance
��2 @
(
��@ A
userAccount
��A L
)
��L M
;
��M N
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
int
�� "
GenerateGuestProfile
�� (
(
��( )
)
��) *
{
�� 	
int
�� 
creationResult
�� 
=
��  
	Constants
��! *
.
��* +
ErrorOperation
��+ 9
;
��9 :
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
UserSessionManagerClient
�� 2&
userSessionManagerClient
��3 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \&
UserSessionManagerClient
��\ t
(
��t u
)
��u v
;
��v w
string
�� 
randomUsername
�� %
=
��& '
ProfileGenerator
��( 8
.
��8 9#
RandomChooserUsername
��9 N
(
��N O
)
��O P
;
��P Q
UserSession
�� 
guestSession
�� (
=
��) *
new
��+ .
UserSession
��/ :
(
��: ;
)
��; <
{
�� 
username
�� 
=
�� 
randomUsername
�� -
,
��- .
	idAccount
�� 
=
�� 
	Constants
��  )
.
��) *
DefaultGuestId
��* 8
}
�� 
;
�� 
while
�� 
(
�� &
userSessionManagerClient
�� /
.
��/ 0 
VerifyConnectivity
��0 B
(
��B C
guestSession
��C O
)
��O P
)
��P Q
{
�� 
guestSession
��  
.
��  !
username
��! )
=
��* +
ProfileGenerator
��, <
.
��< =#
RandomChooserUsername
��= R
(
��R S
)
��S T
;
��T U
}
�� 
Profile
�� 
profileGuest
�� $
=
��% &
new
��' *
Profile
��+ 2
(
��2 3
)
��3 4
{
�� 
idAccesAccount
�� "
=
��# $
	Constants
��% .
.
��. /
DefaultGuestId
��/ =
,
��= >
	idProfile
�� 
=
�� 
	Constants
��  )
.
��) *
DefaultGuestId
��* 8
,
��8 9
username
�� 
=
�� 
randomUsername
�� -
,
��- .
nickname
�� 
=
�� 
randomUsername
�� -
,
��- .
description
�� 
=
��  !
ProfileGenerator
��" 2
.
��2 3(
RandomDescriptionGenerator
��3 M
(
��M N
)
��N O
,
��O P
	imagePath
�� 
=
�� 
ProfileGenerator
��  0
.
��0 1%
RandomChooserAvatarIcon
��1 H
(
��H I
)
��I J
,
��J K
createdDate
�� 
=
��  !
DateTime
��" *
.
��* +
Now
��+ .
,
��. /
}
�� 
;
�� "
UserProfileSingleton
�� $
.
��$ %
Instance
��% -
.
��- .
CreateInstance
��. <
(
��< =
profileGuest
��= I
)
��I J
;
��J K&
userSessionManagerClient
�� (
.
��( )
ConnectToGame
��) 6
(
��6 7
guestSession
��7 C
)
��C D
;
��D E
creationResult
�� 
=
��  
	Constants
��! *
.
��* +
SuccesOperation
��+ :
;
��: ;
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
�� 
creationResult
�� !
;
��! "
}
�� 	
private
�� 
void
�� 
BtnGuest_Click
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
�� 	
int
�� 
creationResult
�� 
=
��  "
GenerateGuestProfile
��! 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
creationResult
�� 
!=
��  
	Constants
��! *
.
��* +
ErrorOperation
��+ 9
)
��9 :
{
�� 
GameCodeView
�� 
gameCodeView
�� )
=
��* +
new
��, /
GameCodeView
��0 <
(
��< =
)
��= >
;
��> ?
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
gameCodeView
��0 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� 
BtnRegister_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
RegisterView
�� 
registerView
�� %
=
��& '
new
��( +
RegisterView
��, 8
(
��8 9
)
��9 :
;
��: ;
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
registerView
��, 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� &
BtnRecoverPassword_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
MouseButtonEventArgs
��= Q
e
��R S
)
��S T
{
�� 	$
VerifyEmailAndUsername
�� "$
verifyEmailAndUsername
��# 9
=
��: ;
new
��< ?$
VerifyEmailAndUsername
��@ V
(
��V W
)
��W X
;
��X Y
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,$
verifyEmailAndUsername
��, B
)
��B C
;
��C D
}
�� 	
private
�� 
void
�� -
BtnPasswordVisibility_MouseDown
�� 4
(
��4 5
object
��5 ;
sender
��< B
,
��B C"
MouseButtonEventArgs
��D X
e
��Y Z
)
��Z [
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
true
��% )
)
��) *
;
��* +
ChangePetImage
�� 
(
�� 
$str
�� G
)
��G H
;
��H I
}
�� 	
private
�� 
void
�� +
BtnPasswordVisibility_MouseUp
�� 2
(
��2 3
object
��3 9
sender
��: @
,
��@ A"
MouseButtonEventArgs
��B V
e
��W X
)
��X Y
{
�� 	&
TogglePasswordVisibility
�� $
(
��$ %
false
��% *
)
��* +
;
��+ ,+
UpdatePetImageBasedOnPassword
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 	
private
�� 
void
�� )
PwbPassword_PasswordChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?
RoutedEventArgs
��@ O
e
��P Q
)
��Q R
{
�� 	+
UpdatePetImageBasedOnPassword
�� )
(
��) *
)
��* +
;
��+ ,*
UpdatePasswordVisibilityIcon
�� (
(
��( )
)
��) *
;
��* +
}
�� 	
private
�� 
void
�� &
TogglePasswordVisibility
�� -
(
��- .
bool
��. 2
	isVisible
��3 <
)
��< =
{
�� 	
if
�� 
(
�� 
	isVisible
�� 
)
�� 
{
�� 
brd_Password
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
	Collapsed
��5 >
;
��> ?!
brd_PasswordDisplay
�� #
.
��# $

Visibility
��$ .
=
��/ 0

Visibility
��1 ;
.
��; <
Visible
��< C
;
��C D"
txtb_PasswordDisplay
�� $
.
��$ %
Text
��% )
=
��* +
pwb_Password
��, 8
.
��8 9
Password
��9 A
;
��A B
}
�� 
else
�� 
{
�� 
brd_Password
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
Visible
��5 <
;
��< =!
brd_PasswordDisplay
�� #
.
��# $

Visibility
��$ .
=
��/ 0

Visibility
��1 ;
.
��; <
	Collapsed
��< E
;
��E F
pwb_Password
�� 
.
�� 
Password
�� %
=
��& '"
txtb_PasswordDisplay
��( <
.
��< =
Text
��= A
;
��A B
}
�� 
}
�� 	
private
�� 
void
�� *
UpdatePasswordVisibilityIcon
�� 1
(
��1 2
)
��2 3
{
�� 	&
tgbtn_PasswordVisibility
�� $
.
��$ %

Visibility
��% /
=
��0 1
pwb_Password
��2 >
.
��> ?
Password
��? G
.
��G H
Length
��H N
>
��O P
$num
��Q R
?
�� 

Visibility
�� 
.
�� 
Visible
�� $
:
�� 

Visibility
�� 
.
�� 
	Collapsed
�� &
;
��& '
}
�� 	
private
�� 
void
�� +
UpdatePetImageBasedOnPassword
�� 2
(
��2 3
)
��3 4
{
�� 	
ChangePetImage
�� 
(
�� 
pwb_Password
�� '
.
��' (
Password
��( 0
.
��0 1
Length
��1 7
>
��8 9
$num
��: ;
?
�� 
$str
�� ;
:
�� 
$str
�� .
)
��. /
;
��/ 0
}
�� 	
private
�� 
void
�� 
ChangePetImage
�� #
(
��# $
string
��$ *
	imagePath
��+ 4
)
��4 5
{
�� 	
img_Pet
�� 
.
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
	imagePath
��5 >
,
��> ?
UriKind
��@ G
.
��G H
Relative
��H P
)
��P Q
)
��Q R
;
��R S
}
�� 	
private
�� 
void
�� !
DisplayMainMenuView
�� (
(
��( )
)
��) *
{
�� 	
MainMenu
�� 

mainWindow
�� 
=
��  !
new
��" %
MainMenu
��& .
(
��. /
)
��/ 0
;
��0 1
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,

mainWindow
��, 6
)
��6 7
;
��7 8
}
�� 	
}
�� 
}�� ��
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
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
BtnPlay_Click
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
RoutedEventArgs
��2 A
e
��B C
)
��C D
{
�� 	
btn_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
btn_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
Visible
��4 ;
;
��; <
img_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
Visible
��4 ;
;
��; <
img_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :!
btn_EditCredentials
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
	Collapsed
��8 A
;
��A B
btn_EditProfile
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
grd_Configuration
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
}
�� 	
private
�� 
void
��  
BtnMyAccount_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
�� 	!
btn_EditCredentials
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
Visible
��8 ?
;
��? @
btn_EditProfile
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
Visible
��4 ;
;
��; <
btn_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
	Collapsed
��2 ;
;
��; <
btn_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
img_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
img_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
	Collapsed
��2 ;
;
��; <
grd_Configuration
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
}
�� 	
private
�� 
void
�� !
ActivateMusic_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	
if
�� 
(
�� 
!
�� 
App
�� 
.
�� 
IsMusicPlaying
�� #
)
��# $
{
�� 
App
�� 
.
�� 
ToggleMusic
�� 
(
��  
)
��  !
;
��! "$
UpdateButtonVisibility
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
void
�� #
DeactivateMusic_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
if
�� 
(
�� 
App
�� 
.
�� 
IsMusicPlaying
�� "
)
��" #
{
�� 
App
�� 
.
�� 
ToggleMusic
�� 
(
��  
)
��  !
;
��! "$
UpdateButtonVisibility
�� &
(
��& '
)
��' (
;
��( )
}
�� 
}
�� 	
private
�� 
void
�� $
UpdateButtonVisibility
�� +
(
��+ ,
)
��, -
{
�� 	
if
�� 
(
�� 
App
�� 
.
�� 
IsMusicPlaying
�� "
)
��" #
{
�� 
img_SoundOn
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
img_SoundOf
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
Visible
��4 ;
;
��; <
}
�� 
else
�� 
{
�� 
img_SoundOn
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
Visible
��4 ;
;
��; <
img_SoundOf
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� 
BtnFriends_Click
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
FriendsListView
�� 
friendsListView
�� +
=
��, -
new
��. 1
FriendsListView
��2 A
(
��A B
)
��B C
;
��C D
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
friendsListView
��, ;
)
��; <
;
��< =
}
�� 	
private
�� 
void
�� &
BtnEditCredentials_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <
RoutedEventArgs
��= L
e
��M N
)
��N O
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� ,
EmailVerificationManagerClient
�� 4&
emailVerificationManager
��5 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^,
EmailVerificationManagerClient
��^ |
(
��| }
)
��} ~
;
��~ 
try
�� 
{
�� 
int
�� 
resultEmailSend
�� #
=
��$ %&
emailVerificationManager
��& >
.
��> ?#
SendVerificationEmail
��? T
(
��T U"
UserProfileSingleton
��U i
.
��i j
email
��j o
)
��o p
;
��p q
if
�� 
(
�� 
resultEmailSend
�� #
==
��$ &
	Constants
��' 0
.
��0 1
SuccesOperation
��1 @
)
��@ A
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O,
dialogEmailVerificationMessage
��O m
)
��m n
;
��n o!
EditCredentialsView
�� '!
editCredentialsView
��( ;
=
��< =
new
��> A!
EditCredentialsView
��B U
(
��U V
)
��V W
;
��W X
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4!
editCredentialsView
��4 G
)
��G H
;
��H I
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogCouldntSendEmail
��M c
)
��c d
;
��d e
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
CreateMatchLobby
�� %
(
��% &
)
��& '
{
�� 	
	HiveProxy
�� 
.
�� '
MatchCreatorManagerClient
�� /
matchCreator
��0 <
=
��= >
new
��? B
	HiveProxy
��C L
.
��L M'
MatchCreatorManagerClient
��M f
(
��f g
)
��g h
;
��h i
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
string
�� 
code
�� 
=
�� 
matchCreator
�� *
.
��* +
GenerateLobbyCode
��+ <
(
��< ="
UserProfileSingleton
��= Q
.
��Q R
email
��R W
)
��W X
;
��X Y
MatchCreator
�� 
matchCreatorUser
�� -
=
��. /
new
��0 3
MatchCreator
��4 @
(
��@ A
)
��A B
{
�� 
	codeMatch
�� 
=
�� 
code
��  $
,
��$ %
idCreatorAccount
�� $
=
��% &"
UserProfileSingleton
��' ;
.
��; <
	idAccount
��< E
,
��E F
	dateMatch
�� 
=
�� 
DateTime
��  (
.
��( )
Now
��) ,
,
��, -

stateMatch
�� 
=
��  
$str
��! (
}
�� 
;
�� 
int
�� 
resultInsertion
�� #
=
��$ %
matchCreator
��& 2
.
��2 3
CreateMatch
��3 >
(
��> ?
matchCreatorUser
��? O
)
��O P
;
��P Q
if
�� 
(
�� 
resultInsertion
�� #
==
��$ &
	Constants
��' 0
.
��0 1
SuccesOperation
��1 @
)
��@ A
{
�� 
MatchSingleton
�� "
.
��" #
Instance
��# +
.
��+ ,
CreateInstance
��, :
(
��: ;
code
��; ?
)
��? @
;
��@ A
	LobbyView
�� 
	lobbyView
�� '
=
��( )
new
��* -
	LobbyView
��. 7
(
��7 8
)
��8 9
;
��9 :
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4
	lobbyView
��4 =
)
��= >
;
��> ?
}
�� 
else
�� 
if
�� 
(
�� 
resultInsertion
�� (
==
��) +
	Constants
��, 5
.
��5 6
ErrorOperation
��6 D
)
��D E
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� "
BtnEditProfile_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
EditProfileView
�� 
editProfileView
�� +
=
��, -
new
��. 1
EditProfileView
��2 A
(
��A B
)
��B C
;
��C D
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
editProfileView
��, ;
)
��; <
;
��< =
}
�� 	
private
�� 
void
�� 
BtnSettings_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
grd_Configuration
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
Visible
��6 =
;
��= >
btn_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
	Collapsed
��2 ;
;
��; <
btn_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
img_CreateMatch
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
img_JoinMatch
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
	Collapsed
��2 ;
;
��; <!
btn_EditCredentials
�� 
.
��  

Visibility
��  *
=
��+ ,

Visibility
��- 7
.
��7 8
	Collapsed
��8 A
;
��A B
btn_EditProfile
�� 
.
�� 

Visibility
�� &
=
��' (

Visibility
��) 3
.
��3 4
	Collapsed
��4 =
;
��= >
}
�� 	
private
�� 
void
�� "
BtnCreateMatch_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
DialogManager
�� 
.
�� *
ShowConfirmationMessageAlert
�� :
(
��: ;

Properties
��; E
.
��E F
	Resources
��F O
.
��O P-
dialogConfirmationMatchCreation
��P o
)
��o p
)
��p q
{
�� 
CreateMatchLobby
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 	
private
�� 
void
��  
BtnJoinMatch_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
RoutedEventArgs
��7 F
e
��G H
)
��H I
{
�� 	
GameCodeView
�� 
gameCodeView
�� %
=
��& '
new
��( +
GameCodeView
��, 8
(
��8 9
)
��9 :
;
��: ;
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
gameCodeView
��, 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� !
BtnStatistics_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
RoutedEventArgs
��8 G
e
��H I
)
��I J
{
�� 	
StatisticsView
�� 
statisticsView
�� )
=
��* +
new
��, /
StatisticsView
��0 >
(
��> ?
)
��? @
;
��@ A
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
statisticsView
��, :
)
��: ;
;
��; <
}
�� 	
private
�� 
void
��  
SetLanguageButtons
�� '
(
��' (
)
��( )
{
�� 	
string
�� 
currentLanguage
�� "
=
��# $

Properties
��% /
.
��/ 0
Settings
��0 8
.
��8 9
Default
��9 @
.
��@ A
Language
��A I
;
��I J
if
�� 
(
�� 
currentLanguage
�� 
==
��  "
$str
��# *
)
��* +
{
�� 

img_Mexico
�� 
.
�� 
	IsEnabled
�� $
=
��% &
false
��' ,
;
��, -

img_Mexico
�� 
.
�� 

Visibility
�� %
=
��& '

Visibility
��( 2
.
��2 3
	Collapsed
��3 <
;
��< =
img_EU
�� 
.
�� 
	IsEnabled
��  
=
��! "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 

img_Mexico
�� 
.
�� 
	IsEnabled
�� $
=
��% &
true
��' +
;
��+ ,
img_EU
�� 
.
�� 
	IsEnabled
��  
=
��! "
false
��# (
;
��( )
img_EU
�� 
.
�� 

Visibility
�� !
=
��" #

Visibility
��$ .
.
��. /
	Collapsed
��/ 8
;
��8 9
}
�� 
}
�� 	
private
�� 
void
�� "
ChangeLanguage_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Image
�� 
image
��  %
)
��% &
{
�� 
string
�� 
newLanguage
�� "
=
��# $
image
��% *
.
��* +
Name
��+ /
==
��0 2
$str
��3 ?
?
��@ A
$str
��B I
:
��J K
$str
��L S
;
��S T
MessageBoxResult
��  
result
��! '
=
��( )

MessageBox
��* 4
.
��4 5
Show
��5 9
(
��9 :

Properties
�� 
.
�� 
	Resources
�� '
.
��' ()
dialogMessageLanguagechange
��( C
,
��C D

Properties
�� 
.
�� 
	Resources
�� '
.
��' ( 
lbl_LanguageChange
��( :
,
��: ;
MessageBoxButton
�� $
.
��$ %
YesNo
��% *
,
��* +
MessageBoxImage
�� #
.
��# $
Question
��$ ,
)
�� 
;
�� 
if
�� 
(
�� 
result
�� 
==
�� 
MessageBoxResult
�� .
.
��. /
Yes
��/ 2
)
��2 3
{
�� 
App
�� 
.
�� 
ChangeLanguage
�� &
(
��& '
newLanguage
��' 2
)
��2 3
;
��3 4
System
�� 
.
�� 
Diagnostics
�� &
.
��& '
Process
��' .
.
��. /
Start
��/ 4
(
��4 5
Application
��5 @
.
��@ A
ResourceAssembly
��A Q
.
��Q R
Location
��R Z
)
��Z [
;
��[ \
Application
�� 
.
��  
Current
��  '
.
��' (
Shutdown
��( 0
(
��0 1
)
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 	
}
�� 
}�� ��
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
,	55 �
(
55� �
$num
55� �
,
55� �
-
55� �
$num
55� �
)
55� �
,
55� �
(
55� �
$num
55� �
,
55� �
$num
55� �
)
55� �
,
55� �
(
55� �
$num
55� �
,
55� �
$num
55� �
)
55� �
,
55� �
(
55� �
-
55� �
$num
55� �
,
55� �
$num
55� �
)
55� �
,
55� �
(
55� �
-
55� �
$num
55� �
,
55� �
-
55� �
$num
55� �
)
55� �
}
55� �
;
55� �
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
66� �
$num
66� �
,
66� �
$num
66� �
)
66� �
,
66� �
(
66� �
$num
66� �
,
66� �
$num
66� �
)
66� �
,
66� �
(
66� �
$num
66� �
,
66� �
$num
66� �
)
66� �
,
66� �
(
66� �
-
66� �
$num
66� �
,
66� �
$num
66� �
)
66� �
,
66� �
(
66� �
-
66� �
$num
66� �
,
66� �
$num
66� �
)
66� �
}
66� �
;
66� �
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
Image	;;| �
>
;;� �
(
;;� �
)
;;� �
;
;;� �
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
)	FF �
,
FF� �
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
$num	GG~ �
)
GG� �
,
GG� �
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
$num	HH~ �
)
HH� �
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
)	TT �
,
TT� �
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
)	UU �
,
UU� �
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
$num	VV~ �
)
VV� �
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
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
LoadPlayerPieces
�� %
(
��% &

StackPanel
��& 0
playerPiecesPanel
��1 B
,
��B C
List
��D H
<
��H I
	GamePiece
��I R
>
��R S
pieces
��T Z
,
��Z [
string
��\ b
username
��c k
)
��k l
{
�� 	
for
�� 
(
�� 
int
�� 
indexPieces
��  
=
��! "
$num
��# $
;
��$ %
indexPieces
��& 1
<
��2 3
pieces
��4 :
.
��: ;
Count
��; @
;
��@ A
indexPieces
��B M
++
��M O
)
��O P
{
�� 
pieces
�� 
[
�� 
indexPieces
�� "
]
��" #
.
��# $

PlayerName
��$ .
=
��/ 0
username
��1 9
;
��9 :
pieces
�� 
[
�� 
indexPieces
�� "
]
��" #
.
��# $
Piece
��$ )
.
��) *

PlayerName
��* 4
=
��5 6
username
��7 ?
;
��? @
}
�� 
playerPiecesPanel
�� 
.
�� 
Children
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
pieces
��  &
.
��& '
Count
��' ,
;
��, -
i
��. /
++
��/ 1
)
��1 2
{
�� 
var
�� 
piece
�� 
=
�� 
pieces
�� "
[
��" #
i
��# $
]
��$ %
;
��% &
piece
�� 
.
�� 

PlayerName
��  
=
��! "
username
��# +
;
��+ ,
piece
�� 
.
�� 
Piece
�� 
.
�� 

PlayerName
�� &
=
��' (
username
��) 1
;
��1 2
var
�� 
image
�� 
=
�� 
new
�� 
Image
��  %
{
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
piece
��5 :
.
��: ;
	ImagePath
��; D
,
��D E
UriKind
��F M
.
��M N
Relative
��N V
)
��V W
)
��W X
,
��X Y
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Margin
�� 
=
�� 
new
��  
	Thickness
��! *
(
��* +
$num
��+ ,
,
��, -
$num
��. /
*
��0 1
$num
��2 4
,
��4 5
$num
��6 7
,
��7 8
$num
��9 :
)
��: ;
,
��; <
Tag
�� 
=
�� 
piece
�� 
,
��  
DataContext
�� 
=
��  !
piece
��" '
}
�� 
;
�� 
playerPiecesPanel
�� !
.
��! "
Children
��" *
.
��* +
Add
��+ .
(
��. /
image
��/ 4
)
��4 5
;
��5 6
image
�� 
.
�� 
	MouseDown
�� 
+=
��  "
Piece_MouseDown
��# 2
;
��2 3
}
�� 
}
�� 	
private
�� 
void
�� 
InitializeBoard
�� $
(
��$ %
)
��% &
{
�� 	
int
�� 
rows
�� 
=
�� 
$num
�� 
;
�� 
int
�� 
columns
�� 
=
�� 
$num
�� 
;
�� 
double
�� 
hexagonSize
�� 
=
��  
$num
��! #
;
��# $
double
�� 
xOffset
�� 
=
�� 
hexagonSize
�� (
*
��) *
Math
��+ /
.
��/ 0
Sqrt
��0 4
(
��4 5
$num
��5 6
)
��6 7
;
��7 8
double
�� 
yOffset
�� 
=
�� 
hexagonSize
�� (
*
��) *
$num
��+ .
;
��. /!
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Clear
��) .
(
��. /
)
��/ 0
;
��0 1
_cellDictionary
�� 
.
�� 
Clear
�� !
(
��! "
)
��" #
;
��# $
for
�� 
(
�� 
int
�� 
row
�� 
=
�� 
$num
�� 
;
�� 
row
�� !
<
��" #
rows
��$ (
;
��( )
row
��* -
++
��- /
)
��/ 0
{
�� 
for
�� 
(
�� 
int
�� 
col
�� 
=
�� 
$num
��  
;
��  !
col
��" %
<
��& '
columns
��( /
;
��/ 0
col
��1 4
++
��4 6
)
��6 7
{
�� 
var
�� 
hexagon
�� 
=
��  !
new
��" %
Polygon
��& -
{
�� 
Points
�� 
=
��  !
CreateHexagonPoints
��! 4
(
��4 5
hexagonSize
��5 @
)
��@ A
,
��A B
Tag
�� 
=
�� 
new
�� !
Point
��" '
(
��' (
row
��( +
,
��+ ,
col
��- 0
)
��0 1
,
��1 2
}
�� 
;
�� 
hexagon
�� 
.
�� 
	IsEnabled
�� %
=
��& '
false
��( -
;
��- .
double
�� 
x
�� 
=
�� 
col
�� "
*
��# $
xOffset
��% ,
;
��, -
double
�� 
y
�� 
=
�� 
row
�� "
*
��# $
yOffset
��% ,
;
��, -
if
�� 
(
�� 
row
�� 
%
�� 
$num
�� 
==
��  "
$num
��# $
)
��$ %
x
��& '
+=
��( *
xOffset
��+ 2
/
��3 4
$num
��5 6
;
��6 7
Canvas
�� 
.
�� 
SetLeft
�� "
(
��" #
hexagon
��# *
,
��* +
x
��, -
)
��- .
;
��. /
Canvas
�� 
.
�� 
SetTop
�� !
(
��! "
hexagon
��" )
,
��) *
y
��+ ,
)
��, -
;
��- .!
canva_GameBoardGrid
�� '
.
��' (
Children
��( 0
.
��0 1
Add
��1 4
(
��4 5
hexagon
��5 <
)
��< =
;
��= >
_cellDictionary
�� #
[
��# $
new
��$ '
Point
��( -
(
��- .
row
��. 1
,
��1 2
col
��3 6
)
��6 7
]
��7 8
=
��9 :
hexagon
��; B
;
��B C
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
Cell_MouseDown
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2"
MouseButtonEventArgs
��3 G
e
��H I
)
��I J
{
�� 	
if
�� 
(
�� 
_selectedPiece
�� 
!=
�� !
null
��" &
&&
��' )
sender
��* 0
is
��1 3
Polygon
��4 ;
cell
��< @
&&
��A C
cell
��D H
!=
��I K
null
��L P
)
��P Q
{
�� 
PlacePieceOnCell
��  
(
��  !
cell
��! %
)
��% &
;
��& '
}
�� 
e
�� 
.
�� 
Handled
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� %
PieceSelected_MouseDown
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;"
MouseButtonEventArgs
��< P
e
��Q R
)
��R S
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Image
�� 

imagePiece
��  *
)
��* +
{
�� 
	GamePiece
�� 
piece
�� 
=
��  !
(
��" #
	GamePiece
��# ,
)
��, -

imagePiece
��- 7
.
��7 8
Tag
��8 ;
;
��; <
if
�� 
(
�� 
_isBeetleMoved
�� "
)
��" #
{
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
��  .
=
��/ 0"
ObtainAdjacentPoints
��1 E
(
��E F
piece
��F K
.
��K L
Position
��L T
)
��T U
;
��U V
if
�� 
(
�� 
adjacentPoints
�� &
.
��& '
Contains
��' /
(
��/ 0
_selectedPiece
��0 >
.
��> ?
Position
��? G
)
��G H
)
��H I
{
�� #
PieceSelectedByBeetle
�� -
(
��- .

imagePiece
��. 8
,
��8 9
_selectedPiece
��: H
)
��H I
;
��I J
}
�� 
}
�� 
else
�� 
{
�� 
if
�� 
(
�� (
ValidateQueenPieceIsInGame
�� 2
(
��2 3
)
��3 4
)
��4 5
{
�� "
PieceOnBoardSelected
�� ,
(
��, -
piece
��- 2
)
��2 3
;
��3 4
}
�� 
else
�� 
{
�� 
ShowInfoMessage
�� '
(
��' (

Properties
��( 2
.
��2 3
	Resources
��3 <
.
��< =!
dialogFourFirstTurn
��= P
)
��P Q
;
��Q R
}
�� 
}
�� 
}
�� 
e
�� 
.
�� 
Handled
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
Piece_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
sender
�� 
is
�� 
Image
�� 

pieceImage
��  *
&&
��+ -

pieceImage
��. 8
.
��8 9
DataContext
��9 D
is
��E G
	GamePiece
��H Q
piece
��R W
&&
��X Z
piece
��[ `
.
��` a

PlayerName
��a k
==
��l n#
UserProfileSingleton��o �
.��� �
username��� �
)��� �
{
�� 
if
�� 
(
�� 
_numberOfTurn
�� !
==
��" $
$num
��% &
&&
��' )
!
��* +(
ValidateQueenPieceIsInGame
��+ E
(
��E F
)
��F G
&&
��H J
piece
��K P
.
��P Q
Piece
��Q V
.
��V W
Name
��W [
!=
��\ ^
_QueenPieceName
��_ n
&&
��o q
!
��r s
_isQueenInGame��s �
)��� �
{
�� "
HandleQueenNotInPlay
�� (
(
��( )
)
��) *
;
��* +
}
�� 
else
�� 
{
�� "
HandlePieceSelection
�� (
(
��( )
piece
��) .
)
��. /
;
��/ 0
}
�� 
}
�� 
e
�� 
.
�� 
Handled
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� "
HandleQueenNotInPlay
�� )
(
��) *
)
��* +
{
�� 	
ShowInfoMessage
�� 
(
�� 

Properties
�� &
.
��& '
	Resources
��' 0
.
��0 1$
dialogQueenIsNotInPlay
��1 G
)
��G H
;
��H I-
HighlightAvailableStartingCells
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 	
private
�� 
void
�� "
HandlePieceSelection
�� )
(
��) *
	GamePiece
��* 3
piece
��4 9
)
��9 :
{
�� 	
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
if
�� 
(
�� 
!
�� !
_isFirstPiecePlaced
�� $
)
��$ %
{
�� '
HandleFirstPiecePlacement
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� ,
HandleSubsequentPiecePlacement
�� .
(
��. /
piece
��/ 4
)
��4 5
;
��5 6
}
�� 
}
�� 	
private
�� 
void
�� '
HandleFirstPiecePlacement
�� .
(
��. /
)
��/ 0
{
�� 	
Point
�� 
centerPosition
��  
=
��! "
new
��# &
Point
��' ,
(
��, -
$num
��- .
,
��. /
$num
��0 1
)
��1 2
;
��2 3
if
�� 
(
�� 
_cellDictionary
�� 
.
��  
TryGetValue
��  +
(
��+ ,
centerPosition
��, :
,
��: ;
out
��< ?
Polygon
��@ G

centerCell
��H R
)
��R S
&&
��T V
!
��W X
_board
��X ^
.
��^ _
ContainsKey
��_ j
(
��j k
centerPosition
��k y
)
��y z
)
��z {
{
�� 2
$HighlightStartingFirstTurnStaterCell
�� 4
(
��4 5
centerPosition
��5 C
)
��C D
;
��D E
PlacePieceOnCell
��  
(
��  !
_lastPlacedCell
��! 0
)
��0 1
;
��1 2
}
�� 
else
�� 
{
�� 2
$HigligthStartingFirstTurnOponentCell
�� 4
(
��4 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
void
�� ,
HandleSubsequentPiecePlacement
�� 3
(
��3 4
	GamePiece
��4 =
piece
��> C
)
��C D
{
�� 	
Point
�� 

staterMove
�� 
=
�� 
new
�� "
Point
��# (
(
��( )
-
��) *
$num
��* +
,
��+ ,
-
��- .
$num
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
piece
�� 
.
�� 
Position
�� 
==
�� !

staterMove
��" ,
)
��, -
{
�� -
HighlightAvailableStartingCells
�� /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
}
�� 	
private
�� 
bool
�� (
ValidateQueenPieceIsInGame
�� /
(
��/ 0
)
��0 1
{
�� 	
var
�� 
piecesCaptured
�� 
=
��  (
_piecesCapturedByTheBeetle
��! ;
.
��; <
Select
��< B
(
��B C
entry
��C H
=>
��I K
entry
��L Q
.
��Q R
Value
��R W
.
��W X
Tag
��X [
as
��\ ^
	GamePiece
��_ h
)
��h i
.
��i j
ToList
��j p
(
��p q
)
��q r
;
��r s
bool
�� 
queenOnBoard
�� 
=
�� 
_board
��  &
.
��& '
Values
��' -
.
��- .
Any
��. 1
(
��1 2
piece
��2 7
=>
��8 :
piece
�� 
!=
�� 
null
�� 
&&
��  
piece
�� 
.
�� 
Piece
�� 
.
�� 
Name
��  
.
��  !
Equals
��! '
(
��' (
_QueenPieceName
��( 7
)
��7 8
&&
��9 ;
piece
�� 
.
�� 
Piece
�� 
.
�� 

PlayerName
�� &
==
��' )"
UserProfileSingleton
��* >
.
��> ?
username
��? G
)
�� 
;
�� 
bool
�� 
queenCaptured
�� 
=
��  
piecesCaptured
��! /
.
��/ 0
Exists
��0 6
(
��6 7
pieceCaptured
��7 D
=>
��E G
pieceCaptured
�� 
!=
��  
null
��! %
&&
��& (
pieceCaptured
�� 
.
�� 

PlayerName
�� (
==
��) +"
UserProfileSingleton
��, @
.
��@ A
username
��A I
&&
��J L
pieceCaptured
�� 
.
�� 
Piece
�� #
.
��# $
Name
��$ (
==
��) +
_QueenPieceName
��, ;
)
�� 
;
�� 
_isQueenInGame
�� 
=
�� 
queenOnBoard
�� )
||
��* ,
queenCaptured
��- :
;
��: ;
return
�� 
_isQueenInGame
�� !
;
��! "
}
�� 	
private
�� 
void
�� "
PieceOnBoardSelected
�� )
(
��) *
	GamePiece
��* 3
piece
��4 9
)
��9 :
{
�� 	
string
�� 
typeOfPiece
�� 
=
��  
piece
��! &
.
��& '
Piece
��' ,
.
��, -
Name
��- 1
;
��1 2
if
�� 
(
�� 1
#ValidateThatPieceCannotBreakTheHive
�� 3
(
��3 4
piece
��4 9
.
��9 :
Position
��: B
)
��B C
)
��C D
{
�� 
switch
�� 
(
�� 
typeOfPiece
�� #
)
��# $
{
�� 
case
�� 
_QueenPieceName
�� (
:
��( )
	MoveQueen
�� !
(
��! "
piece
��" '
)
��' (
;
��( )
break
�� 
;
�� 
case
�� 
$str
�� !
:
��! "

MoveSpider
�� "
(
��" #
piece
��# (
)
��( )
;
��) *
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
MoveAnt
�� 
(
��  
piece
��  %
)
��% &
;
��& '
break
�� 
;
�� 
case
�� 
$str
�� &
:
��& '
MoveGrasshopper
�� '
(
��' (
piece
��( -
)
��- .
;
��. /
break
�� 
;
�� 
case
�� 
BeetlePieceName
�� (
:
��( )

MoveBeetle
�� "
(
��" #
piece
��# (
)
��( )
;
��) *
break
�� 
;
�� 
default
�� 
:
�� 
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q*
dialogCouldntObtainPieceName
��Q m
)
��m n
;
��n o
break
�� 
;
�� 
}
�� 
}
�� 
else
�� 
{
�� 
ShowInfoMessage
�� 
(
��  

Properties
��  *
.
��* +
	Resources
��+ 4
.
��4 5"
dialogBrokeHiveAlert
��5 I
)
��I J
;
��J K
}
�� 
}
�� 	
public
�� 
void
�� 
ShowInfoMessage
�� #
(
��# $
string
��$ *
message
��+ 2
)
��2 3
{
�� 	"
txtBlock_InfoMessage
��  
.
��  !
Text
��! %
=
��& '
message
��( /
;
��/ 0"
txtBlock_InfoMessage
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A

Storyboard
�� 
infoAnimation
�� $
=
��% &
(
��' (

Storyboard
��( 2
)
��2 3
FindResource
��3 ?
(
��? @
$str
��@ ]
)
��] ^
;
��^ _
infoAnimation
�� 
.
�� 
	Completed
�� #
+=
��$ &
(
��' (
s
��( )
,
��) *
e
��+ ,
)
��, -
=>
��. 0
{
�� "
txtBlock_InfoMessage
�� $
.
��$ %

Visibility
��% /
=
��0 1

Visibility
��2 <
.
��< =
	Collapsed
��= F
;
��F G
}
�� 
;
�� 
infoAnimation
�� 
.
�� 
Begin
�� 
(
��  
)
��  !
;
��! "
}
�� 	
private
�� 
void
�� 
	MoveQueen
�� 
(
�� 
	GamePiece
�� (
piece
��) .
)
��. /
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
var
�� 
checkedPositions
��  
=
��! "
new
��# &
HashSet
��' .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
Point
�� 
queenPosition
�� 
=
��  !
piece
��" '
.
��' (
Position
��( 0
;
��0 1
var
�� 

queenPiece
�� 
=
�� 
_board
�� #
[
��# $
queenPosition
��$ 1
]
��1 2
;
��2 3
_board
�� 
.
�� 
Remove
�� 
(
�� 
queenPosition
�� '
)
��' (
;
��( )
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
piece
��6 ;
.
��; <
Position
��< D
)
��D E
;
��E F
foreach
�� 
(
�� 
var
�� 
offset
�� 
in
��  "
adjacentPoints
��# 1
)
��1 2
{
�� 
if
�� 
(
�� 
!
�� 
_board
�� 
.
�� 
ContainsKey
�� '
(
��' (
offset
��( .
)
��. /
&&
��0 2
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
offset
��0 6
,
��6 7
out
��8 ;
Polygon
��< C
cell
��D H
)
��H I
&&
��J L
!
�� 
checkedPositions
�� %
.
��% &
Contains
��& .
(
��. /
offset
��/ 5
)
��5 6
&&
��7 9
IsConnectedToHive
�� %
(
��% &
offset
��& ,
)
��, -
&&
��. 0
IsNotSurrounded
�� #
(
��# $
offset
��$ *
)
��* +
)
��+ ,
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Green
��( -
;
��- .
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
checkedPositions
�� $
.
��$ %
Add
��% (
(
��( )
offset
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
queenPosition
�� $
,
��$ %

queenPiece
��& 0
)
��0 1
;
��1 2
}
�� 	
private
�� 
void
�� 

MoveSpider
�� 
(
��  
	GamePiece
��  )
piece
��* /
)
��/ 0
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
_board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� 
.
��  
Position
��  (
)
��( )
;
��) *
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentToCurrent
�� )
=
��* +"
ObtainAdjacentPoints
��, @
(
��@ A
piece
��A F
.
��F G
Position
��G O
)
��O P
;
��P Q
List
�� 
<
�� 
Point
�� 
>
�� 
posibleMoves
�� $
=
��% &
ObtainSpiderMoves
��' 8
(
��8 9
piece
��9 >
.
��> ?
Position
��? G
)
��G H
.
�� 
Where
�� 
(
�� 
pos
�� 
=>
�� 
!
�� 
adjacentToCurrent
�� 0
.
��0 1
Contains
��1 9
(
��9 :
pos
��: =
)
��= >
)
��> ?
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
posiblePosition
�� (
in
��) +
posibleMoves
��, 8
)
��8 9
{
�� 
if
�� 
(
�� 
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
posiblePosition
��0 ?
,
��? @
out
��A D
Polygon
��E L
cell
��M Q
)
��Q R
)
��R S
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Green
��( -
;
��- .
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
}
�� 
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
piece
�� 
.
�� 
Position
�� %
,
��% &
piece
��' ,
)
��, -
;
��- .
}
�� 	
private
�� 
void
�� 

MoveBeetle
�� 
(
��  
	GamePiece
��  )
piece
��* /
)
��/ 0
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
_board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� 
.
��  
Position
��  (
)
��( )
;
��) *
bool
�� 
isOnAnotherPiece
�� !
=
��" #(
_piecesCapturedByTheBeetle
��$ >
.
��> ?
Any
��? B
(
��B C
	gamePiece
��C L
=>
��M O
	gamePiece
��P Y
.
��Y Z
Key
��Z ]
==
��^ `
(
��a b
piece
��b g
.
��g h
PieceNumber
��h s
,
��s t
piece
��u z
.
��z {

PlayerName��{ �
)��� �
)��� �
;��� �
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '
ObtainBeetleMoves
��( 9
(
��9 :
piece
��: ?
.
��? @
Position
��@ H
,
��H I
isOnAnotherPiece
��J Z
)
��Z [
;
��[ \
foreach
�� 
(
�� 
var
�� 
possiblePosition
�� )
in
��* ,
possibleMoves
��- :
)
��: ;
{
�� 
if
�� 
(
�� 
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
possiblePosition
��0 @
,
��@ A
out
��B E
Polygon
��F M
cell
��N R
)
��R S
&&
��T V
!
��W X
_board
��X ^
.
��^ _
ContainsKey
��_ j
(
��j k
possiblePosition
��k {
)
��{ |
)
��| }
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Green
��( -
;
��- .
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
}
�� 
else
�� 
if
�� 
(
�� 
_board
�� 
.
��  
ContainsKey
��  +
(
��+ ,
possiblePosition
��, <
)
��< =
)
��= >
{
�� 
List
�� 
<
�� 
Image
�� 
>
�� 
imagesOnBoard
��  -
=
��. /!
canva_GameBoardGrid
��0 C
.
��C D
Children
��D L
.
��L M
OfType
��M S
<
��S T
Image
��T Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
foreach
�� 
(
�� 
Image
�� "
imageOnBoard
��# /
in
��0 2
imagesOnBoard
��3 @
)
��@ A
{
�� 
	GamePiece
�� !
	gamePiece
��" +
=
��, -
(
��. /
	GamePiece
��/ 8
)
��8 9
imageOnBoard
��9 E
.
��E F
Tag
��F I
;
��I J
if
�� 
(
�� 
	gamePiece
�� %
.
��% &
Position
��& .
==
��/ 1
possiblePosition
��2 B
&&
��C E
	gamePiece
��F O
.
��O P

PlayerName
��P Z
!=
��[ ]"
UserProfileSingleton
��^ r
.
��r s
username
��s {
)
��{ |
{
�� 
cell
��  
.
��  !
Fill
��! %
=
��& '
Brushes
��( /
.
��/ 0
Green
��0 5
;
��5 6
imageOnBoard
�� (
.
��( )
	IsEnabled
��) 2
=
��3 4
true
��5 9
;
��9 :
imageOnBoard
�� (
.
��( )
	MouseDown
��) 2
+=
��3 5%
PieceSelected_MouseDown
��6 M
;
��M N
}
�� 
else
�� 
if
�� 
(
��  !
	gamePiece
��! *
.
��* +
Position
��+ 3
==
��4 6
possiblePosition
��7 G
&&
��H J
	gamePiece
��K T
.
��T U

PlayerName
��U _
==
��` b"
UserProfileSingleton
��c w
.
��w x
username��x �
)��� �
{
�� 
cell
��  
.
��  !
Fill
��! %
=
��& '
Brushes
��( /
.
��/ 0
Green
��0 5
;
��5 6
}
�� 
}
�� 
_isBeetleMoved
�� "
=
��# $
true
��% )
;
��) *
}
�� 
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
piece
�� 
.
�� 
Position
�� %
,
��% &
piece
��' ,
)
��, -
;
��- .
}
�� 	
private
�� 
void
�� 
MoveAnt
�� 
(
�� 
	GamePiece
�� &
piece
��' ,
)
��, -
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
_board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� 
.
��  
Position
��  (
)
��( )
;
��) *
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '
ObtainAntMoves
��( 6
(
��6 7
piece
��7 <
.
��< =
Position
��= E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
possiblePosition
�� )
in
��* ,
possibleMoves
��- :
)
��: ;
{
�� 
if
�� 
(
�� 
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
possiblePosition
��0 @
,
��@ A
out
��B E
Polygon
��F M
cell
��N R
)
��R S
)
��S T
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Green
��( -
;
��- .
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
}
�� 
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
piece
�� 
.
�� 
Position
�� %
,
��% &
piece
��' ,
)
��, -
;
��- .
}
�� 	
private
�� 
void
�� 
MoveGrasshopper
�� $
(
��$ %
	GamePiece
��% .
piece
��/ 4
)
��4 5
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
_selectedPiece
�� 
=
�� 
piece
�� "
;
��" #
_board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� 
.
��  
Position
��  (
)
��( )
;
��) *
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '$
ObtainGrassHopperMoves
��( >
(
��> ?
piece
��? D
.
��D E
Position
��E M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
possiblePosition
�� )
in
��* ,
possibleMoves
��- :
)
��: ;
{
�� 
if
�� 
(
�� 
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
possiblePosition
��0 @
,
��@ A
out
��B E
Polygon
��F M
cell
��N R
)
��R S
)
��S T
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Green
��( -
;
��- .
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
}
�� 
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
piece
�� 
.
�� 
Position
�� %
,
��% &
piece
��' ,
)
��, -
;
��- .
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
ObtainSpiderMoves
�� -
(
��- .
Point
��. 3
start
��4 9
)
��9 :
{
�� 	
var
�� 

validMoves
�� 
=
�� 
new
��  
List
��! %
<
��% &
Point
��& +
>
��+ ,
(
��, -
)
��- .
;
��. /
var
�� 
visitedPoints
�� 
=
�� 
new
��  #
HashSet
��$ +
<
��+ ,
Point
��, 1
>
��1 2
{
��3 4
start
��5 :
}
��; <
;
��< =
var
�� 
queue
�� 
=
�� 
InitializeQueue
�� '
(
��' (
start
��( -
)
��- .
;
��. /
while
�� 
(
�� 
queue
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
(
�� 
currentPosition
�� $
,
��$ %
previousPosition
��& 6
,
��6 7
currentSteps
��8 D
)
��D E
=
��F G
queue
��H M
.
��M N
Dequeue
��N U
(
��U V
)
��V W
;
��W X
if
�� 
(
�� 
currentSteps
��  
<
��! "
$num
��# $
)
��$ %
{
�� #
EnqueueAdjacentPoints
�� )
(
��) *
queue
��* /
,
��/ 0
visitedPoints
��1 >
,
��> ?
currentPosition
��@ O
,
��O P
currentSteps
��Q ]
)
��] ^
;
��^ _
}
�� 
else
�� 
if
�� 
(
�� 
currentSteps
�� %
==
��& (
$num
��) *
&&
��+ -
IsConnectedToHive
��. ?
(
��? @
currentPosition
��@ O
)
��O P
)
��P Q
{
�� 

validMoves
�� 
.
�� 
Add
�� "
(
��" #
currentPosition
��# 2
)
��2 3
;
��3 4
}
�� 
}
�� 
return
�� 

validMoves
�� 
;
�� 
}
�� 	
private
�� 
Queue
�� 
<
�� 
(
�� 
Point
�� 
position
�� %
,
��% &
Point
��' ,
previousPosition
��- =
,
��= >
int
��? B
steps
��C H
)
��H I
>
��I J
InitializeQueue
��K Z
(
��Z [
Point
��[ `
start
��a f
)
��f g
{
�� 	
var
�� 
queue
�� 
=
�� 
new
�� 
Queue
�� !
<
��! "
(
��" #
Point
��# (
position
��) 1
,
��1 2
Point
��3 8
previousPosition
��9 I
,
��I J
int
��K N
steps
��O T
)
��T U
>
��U V
(
��V W
)
��W X
;
��X Y
queue
�� 
.
�� 
Enqueue
�� 
(
�� 
(
�� 
start
��  
,
��  !
start
��" '
,
��' (
$num
��) *
)
��* +
)
��+ ,
;
��, -
return
�� 
queue
�� 
;
�� 
}
�� 	
private
�� 
void
�� #
EnqueueAdjacentPoints
�� *
(
��* +
Queue
�� 
<
�� 
(
�� 
Point
�� 
position
�� %
,
��% &
Point
��' ,
previousPosition
��- =
,
��= >
int
��? B
steps
��C H
)
��H I
>
��I J
queue
��K P
,
��P Q
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visitedPoints
�� ,
,
��, -
Point
�� 
currentPosition
�� %
,
��% &
int
�� 
currentSteps
��  
)
��  !
{
�� 	
var
�� 
adjacentPoints
�� "
=
��# $"
ObtainAdjacentPoints
��% 9
(
��9 :
currentPosition
��: I
)
��I J
;
��J K
foreach
�� 
(
�� 
var
�� 
adjacent
�� %
in
��& (
adjacentPoints
��) 7
.
��7 8
Where
��8 =
(
��= >
adj
��> A
=>
��B D
IsValidMove
��E P
(
��P Q
adj
��Q T
,
��T U
visitedPoints
��V c
,
��c d
currentPosition
��e t
)
��t u
)
��u v
)
��v w
{
�� 
visitedPoints
�� !
.
��! "
Add
��" %
(
��% &
adjacent
��& .
)
��. /
;
��/ 0
queue
�� 
.
�� 
Enqueue
�� !
(
��! "
(
��" #
adjacent
��# +
,
��+ ,
currentPosition
��- <
,
��< =
currentSteps
��> J
+
��K L
$num
��M N
)
��N O
)
��O P
;
��P Q
}
�� 
}
�� 	
private
�� 
bool
�� 
IsValidMove
��  
(
��  !
Point
��! &
adjacent
��' /
,
��/ 0
HashSet
��1 8
<
��8 9
Point
��9 >
>
��> ?
visitedPoints
��@ M
,
��M N
Point
��O T
currentPosition
��U d
)
��d e
{
�� 	
return
�� 
!
�� 
visitedPoints
�� !
.
��! "
Contains
��" *
(
��* +
adjacent
��+ 3
)
��3 4
&&
��5 7
!
�� 
_board
�� 
.
�� 
ContainsKey
�� &
(
��& '
adjacent
��' /
)
��/ 0
&&
��1 3$
IsContinouslyConnected
�� )
(
��) *
adjacent
��* 2
,
��2 3
currentPosition
��4 C
,
��C D
currentPosition
��E T
)
��T U
;
��U V
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
ObtainBeetleMoves
�� -
(
��- .
Point
��. 3
piecePosition
��4 A
,
��A B
bool
��C G
isOnAnotherPiece
��H X
)
��X Y
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentMoves
�� %
=
��& '"
ObtainAdjacentPoints
��( <
(
��< =
piecePosition
��= J
)
��J K
;
��K L
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
Point
��1 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
isOnAnotherPiece
��  
)
��  !
{
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
_selectedPiece
�� )
.
��) *
Position
��* 2
,
��2 3
_selectedPiece
��4 B
)
��B C
;
��C D
possibleMoves
�� 
.
�� 
AddRange
�� &
(
��& '
adjacentMoves
��' 4
.
��4 5
Where
��5 :
(
��: ;
adj
��; >
=>
��? A
IsConnectedToHive
��B S
(
��S T
adj
��T W
)
��W X
)
��X Y
)
��Y Z
;
��Z [
_board
�� 
.
�� 
Remove
�� 
(
�� 
_selectedPiece
�� ,
.
��, -
Position
��- 5
)
��5 6
;
��6 7
}
�� 
else
�� 
{
�� 
possibleMoves
�� 
.
�� 
AddRange
�� &
(
��& '
adjacentMoves
��' 4
.
��4 5
Where
��5 :
(
��: ;
adj
��; >
=>
��? A%
IsConnectedToHiveBeetle
��B Y
(
��Y Z
adj
��Z ]
)
��] ^
)
��^ _
)
��_ `
;
��` a
}
�� 
return
�� 
possibleMoves
��  
;
��  !
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
ObtainAntMoves
�� *
(
��* +
Point
��+ 0

piecePoint
��1 ;
)
��; <
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '
new
��( +
List
��, 0
<
��0 1
Point
��1 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visitedPoint
�� '
=
��( )
new
��* -
HashSet
��. 5
<
��5 6
Point
��6 ;
>
��; <
(
��< =
)
��= >
;
��> ?
Queue
�� 
<
�� 
Point
�� 
>
�� 
queue
�� 
=
��  
new
��! $
Queue
��% *
<
��* +
Point
��+ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
queue
�� 
.
�� 
Enqueue
�� 
(
�� 

piecePoint
�� $
)
��$ %
;
��% &
visitedPoint
�� 
.
�� 
Add
�� 
(
�� 

piecePoint
�� '
)
��' (
;
��( )
while
�� 
(
�� 
queue
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
currentPosition
�� #
=
��$ %
queue
��& +
.
��+ ,
Dequeue
��, 3
(
��3 4
)
��4 5
;
��5 6
var
�� 
adjacentPoints
�� "
=
��# $"
ObtainAdjacentPoints
��% 9
(
��9 :
currentPosition
��: I
)
��I J
;
��J K
foreach
�� 
(
�� 
var
�� 
adjacent
�� %
in
��& (
adjacentPoints
��) 7
)
��7 8
{
�� 
if
�� 
(
�� 
!
�� 
visitedPoint
�� %
.
��% &
Contains
��& .
(
��. /
adjacent
��/ 7
)
��7 8
&&
��9 ;
!
�� 
_board
�� 
.
��  
ContainsKey
��  +
(
��+ ,
adjacent
��, 4
)
��4 5
&&
��6 8
IsConnectedToHive
�� )
(
��) *
adjacent
��* 2
)
��2 3
&&
��4 6
IsNotSurrounded
�� '
(
��' (
adjacent
��( 0
)
��0 1
)
��1 2
{
�� 
possibleMoves
�� %
.
��% &
Add
��& )
(
��) *
adjacent
��* 2
)
��2 3
;
��3 4
visitedPoint
�� $
.
��$ %
Add
��% (
(
��( )
adjacent
��) 1
)
��1 2
;
��2 3
queue
�� 
.
�� 
Enqueue
�� %
(
��% &
adjacent
��& .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 
return
�� 
possibleMoves
��  
;
��  !
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� $
ObtainGrassHopperMoves
�� 2
(
��2 3
Point
��3 8
start
��9 >
)
��> ?
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 

validMoves
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Point
��. 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
var
�� 

directions
�� 
=
�� "
ObtainAdjacentPoints
�� 1
(
��1 2
start
��2 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
	direction
�� "
in
��# %

directions
��& 0
.
��0 1
Where
��1 6
(
��6 7
	direction
��7 @
=>
��A C
_board
��D J
.
��J K
ContainsKey
��K V
(
��V W
	direction
��W `
)
��` a
)
��a b
)
��b c
{
�� 
Point
�� 
currentPosition
�� %
=
��& '!
MoveInSameDirection
��( ;
(
��; <
	direction
��< E
,
��E F
start
��G L
)
��L M
;
��M N
Point
�� 
nextPosition
�� "
=
��# $!
MoveInSameDirection
��% 8
(
��8 9
currentPosition
��9 H
,
��H I
	direction
��J S
)
��S T
;
��T U
bool
�� 
notFoundPiece
�� "
=
��# $
false
��% *
;
��* +
while
�� 
(
�� 
!
�� 
notFoundPiece
�� %
)
��% &
{
�� 
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� *
(
��* +
currentPosition
��+ :
)
��: ;
)
��; <
{
�� 
Point
�� %
currentPositionAuxiliar
�� 5
=
��6 7
nextPosition
��8 D
;
��D E
nextPosition
�� $
=
��% &!
MoveInSameDirection
��' :
(
��: ;
currentPosition
��; J
,
��J K
nextPosition
��L X
)
��X Y
;
��Y Z
currentPosition
�� '
=
��( )%
currentPositionAuxiliar
��* A
;
��A B
}
�� 
else
�� 
if
�� 
(
�� 
!
�� 
_board
�� $
.
��$ %
ContainsKey
��% 0
(
��0 1
currentPosition
��1 @
)
��@ A
&&
��B D
IsConnectedToHive
��E V
(
��V W
currentPosition
��W f
)
��f g
)
��g h
{
�� 

validMoves
�� "
.
��" #
Add
��# &
(
��& '
currentPosition
��' 6
)
��6 7
;
��7 8
notFoundPiece
�� %
=
��& '
true
��( ,
;
��, -
}
�� 
}
�� 
}
�� 
return
�� 

validMoves
�� 
;
�� 
}
�� 	
private
�� 
Point
�� !
MoveInSameDirection
�� )
(
��) *
Point
��* /
current
��0 7
,
��7 8
Point
��9 >
start
��? D
)
��D E
{
�� 	
Point
�� 
pointToMove
�� 
=
�� 
new
��  #
Point
��$ )
(
��) *
$num
��* +
,
��+ ,
$num
��- .
)
��. /
;
��/ 0
double
�� 
dq
�� 
=
�� 
current
�� 
.
��  
X
��  !
-
��" #
start
��$ )
.
��) *
X
��* +
;
��+ ,
double
�� 
dr
�� 
=
�� 
current
�� 
.
��  
Y
��  !
-
��" #
start
��$ )
.
��) *
Y
��* +
;
��+ ,
double
�� 
epsilon
�� 
=
�� 
$num
�� #
;
��# $
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
start
�� 
.
�� 
X
��  
%
��! "
$num
��# $
-
��% &
$num
��' (
)
��( )
<
��* +
epsilon
��, 3
)
��3 4
{
�� 
int
�� 
index
�� 
=
�� !
_hexPairDirecctions
�� /
.
��/ 0
	FindIndex
��0 9
(
��9 :
dir
��: =
=>
��> @
dir
��A D
.
��D E
dirUp
��E J
==
��K M
dq
��N P
&&
��Q S
dir
��T W
.
��W X
dirDown
��X _
==
��` b
dr
��c e
)
��e f
;
��f g
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
(
�� 
double
�� 
dirU
��  
,
��  !
double
��" (
dirD
��) -
)
��- .
=
��/ 0 
_hexOddDirecctions
��1 C
[
��C D
index
��D I
]
��I J
;
��J K
pointToMove
�� 
=
��  !
new
��" %
Point
��& +
(
��+ ,
current
��, 3
.
��3 4
X
��4 5
+
��6 7
dirU
��8 <
,
��< =
current
��> E
.
��E F
Y
��F G
+
��H I
dirD
��J N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
{
�� 
int
�� 
index
�� 
=
��  
_hexOddDirecctions
�� .
.
��. /
	FindIndex
��/ 8
(
��8 9
dir
��9 <
=>
��= ?
dir
��@ C
.
��C D
dirUp
��D I
==
��J L
dq
��M O
&&
��P R
dir
��S V
.
��V W
dirDown
��W ^
==
��_ a
dr
��b d
)
��d e
;
��e f
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
(
�� 
double
�� 
dirU
��  
,
��  !
double
��" (
dirD
��) -
)
��- .
=
��/ 0!
_hexPairDirecctions
��1 D
[
��D E
index
��E J
]
��J K
;
��K L
pointToMove
�� 
=
��  !
new
��" %
Point
��& +
(
��+ ,
current
��, 3
.
��3 4
X
��4 5
+
��6 7
dirU
��8 <
,
��< =
current
��> E
.
��E F
Y
��F G
+
��H I
dirD
��J N
)
��N O
;
��O P
}
�� 
}
�� 
return
�� 
pointToMove
�� 
;
�� 
}
�� 	
private
�� 
string
�� '
GetIfItsFinalMatchResults
�� 0
(
��0 1
)
��1 2
{
�� 	
string
�� 
winnerResult
�� 
=
��  !
$str
��" *
;
��* +
	GamePiece
�� 
queenPlayerOne
�� $
=
��% &"
ObtainQueenOfPlayers
��' ;
(
��; <
_usernamePlayer1
��< L
)
��L M
;
��M N
	GamePiece
�� 
queenPlayerTwo
�� $
=
��% &"
ObtainQueenOfPlayers
��' ;
(
��; <
_usernamePlayer2
��< L
)
��L M
;
��M N
if
�� 
(
�� 
queenPlayerOne
�� 
==
�� !
null
��" &
)
��& '
{
�� 
queenPlayerOne
�� 
=
��  3
%ObtainQueenOfPlayersCapturedByABeetle
��! F
(
��F G
_usernamePlayer1
��G W
)
��W X
;
��X Y
}
�� 
if
�� 
(
�� 
queenPlayerTwo
�� 
==
�� !
null
��" &
)
��& '
{
�� 
queenPlayerTwo
�� 
=
��  3
%ObtainQueenOfPlayersCapturedByABeetle
��! F
(
��F G
_usernamePlayer2
��G W
)
��W X
;
��X Y
}
�� 
if
�� 
(
�� 
queenPlayerOne
�� 
!=
�� !
null
��" &
&&
��' )
queenPlayerTwo
��* 8
!=
��9 ;
null
��< @
)
��@ A
{
�� 
if
�� 
(
�� 
IsSourrounded
�� !
(
��! "
queenPlayerOne
��" 0
.
��0 1
Position
��1 9
)
��9 :
&&
��; =
IsSourrounded
��> K
(
��K L
queenPlayerTwo
��L Z
.
��Z [
Position
��[ c
)
��c d
)
��d e
{
�� 
winnerResult
��  
=
��! "
$str
��# )
;
��) *
}
�� 
else
�� 
if
�� 
(
�� 
IsSourrounded
�� &
(
��& '
queenPlayerOne
��' 5
.
��5 6
Position
��6 >
)
��> ?
)
��? @
{
�� 
winnerResult
��  
=
��! "
_usernamePlayer2
��# 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
IsSourrounded
�� &
(
��& '
queenPlayerTwo
��' 5
.
��5 6
Position
��6 >
)
��> ?
)
��? @
{
�� 
winnerResult
��  
=
��! "
_usernamePlayer1
��# 3
;
��3 4
}
�� 
}
�� 
return
�� 
winnerResult
�� 
;
��  
}
�� 	
private
�� 
bool
�� 
IsSourrounded
�� "
(
��" #
Point
��# (
positionPiece
��) 6
)
��6 7
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
�� &
=
��' ("
ObtainAdjacentPoints
��) =
(
��= >
positionPiece
��> K
)
��K L
;
��L M
int
�� +
numberOfColliderPointsExisted
�� -
=
��. /
adjacentPoints
��0 >
.
��> ?
Count
��? D
(
��D E
point
��E J
=>
��K M
_board
��N T
.
��T U
ContainsKey
��U `
(
��` a
point
��a f
)
��f g
)
��g h
;
��h i
return
�� +
numberOfColliderPointsExisted
�� 0
==
��1 3
$num
��4 5
;
��5 6
}
�� 	
private
�� 
	GamePiece
�� "
ObtainQueenOfPlayers
�� .
(
��. /
string
��/ 5
usernameOfPlayer
��6 F
)
��F G
{
�� 	
return
�� 
_board
�� 
.
�� 
Values
��  
.
��  !
FirstOrDefault
��! /
(
��/ 0
piece
��0 5
=>
��6 8
piece
��9 >
.
��> ?

PlayerName
��? I
==
��J L
usernameOfPlayer
��M ]
&&
��^ `
piece
��a f
.
��f g
PieceNumber
��g r
==
��s u
$num
��v w
)
��w x
;
��x y
}
�� 	
private
�� 
	GamePiece
�� 3
%ObtainQueenOfPlayersCapturedByABeetle
�� ?
(
��? @
string
��@ F
usernameOfPlayer
��G W
)
��W X
{
�� 	
return
�� (
_piecesCapturedByTheBeetle
�� -
.
��- .
Values
��. 4
.
��4 5
Select
��5 ;
(
��; <
image
��< A
=>
��B D
image
��E J
.
��J K
Tag
��K N
as
��O Q
	GamePiece
��R [
)
��[ \
.
��\ ]
FirstOrDefault
��] k
(
��k l
	gamePiece
��l u
=>
��v x
	gamePiece��y �
!=��� �
null��� �
&&��� �
	gamePiece��� �
.��� �
PieceNumber��� �
==��� �
$num��� �
&&��� �
	gamePiece��� �
.��� �

PlayerName��� �
==��� � 
usernameOfPlayer��� �
)��� �
;��� �
}
�� 	
private
�� 
void
�� .
 PlacePieceThatIsInGame_MouseDown
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D"
MouseButtonEventArgs
��E Y
e
��Z [
)
��[ \
{
�� 	
if
�� 
(
�� 
_selectedPiece
�� 
!=
�� !
null
��" &
&&
��' )
sender
��* 0
is
��1 3
Polygon
��4 ;
cell
��< @
&&
��A C
cell
��D H
!=
��I K
null
��L P
)
��P Q
{
�� 
Point
�� 
oldPosition
�� !
=
��" #
_selectedPiece
��$ 2
.
��2 3
Position
��3 ;
;
��; <
Image
�� 
imageOfPiece
�� "
=
��# $!
ObtainImageCreation
��% 8
(
��8 9
cell
��9 =
,
��= >
_selectedPiece
��? M
)
��M N
;
��N O
_selectedPiece
�� 
.
�� 
Position
�� '
=
��( )
(
��* +
Point
��+ 0
)
��0 1
cell
��1 5
.
��5 6
Tag
��6 9
;
��9 :
_selectedPiece
�� 
.
�� 
Piece
�� $
.
��$ %
Position
��% -
=
��. /
oldPosition
��0 ;
;
��; <
if
�� 
(
�� (
_piecesCapturedByTheBeetle
�� .
.
��. /
ContainsKey
��/ :
(
��: ;
(
��; <
_selectedPiece
��< J
.
��J K
PieceNumber
��K V
,
��V W
_selectedPiece
��X f
.
��f g

PlayerName
��g q
)
��q r
)
��r s
)
��s t
{
�� 
Image
�� '
pieceContainedByTheBeetle
�� 3
=
��4 5(
_piecesCapturedByTheBeetle
��6 P
[
��P Q
(
��Q R
_selectedPiece
��R `
.
��` a
PieceNumber
��a l
,
��l m
_selectedPiece
��n |
.
��| }

PlayerName��} �
)��� �
]��� �
;��� �-
UpdateOldAndNewPlaceInGameBoard
�� 3
(
��3 4
imageOfPiece
��4 @
,
��@ A
oldPosition
��B M
)
��M N
;
��N O>
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
�� D
(
��D E'
pieceContainedByTheBeetle
��E ^
,
��^ _
_selectedPiece
��` n
)
��n o
;
��o p
}
�� 
else
�� 
{
�� -
UpdateOldAndNewPlaceInGameBoard
�� 3
(
��3 4
imageOfPiece
��4 @
,
��@ A
oldPosition
��B M
)
��M N
;
��N O
}
�� /
!EliminateDuplicatedImagesIfExists
�� 1
(
��1 2
oldPosition
��2 =
)
��= >
;
��> ?'
SendPiecePositionToServer
�� )
(
��) *
_selectedPiece
��* 8
)
��8 9
;
��9 :
_winnerName
�� 
=
�� '
GetIfItsFinalMatchResults
�� 7
(
��7 8
)
��8 9
;
��9 :
if
�� 
(
�� 
_winnerName
�� 
!=
��  "
$str
��# +
)
��+ ,
{
�� +
SendFinishOfMatchNotification
�� 1
(
��1 2
_winnerName
��2 =
)
��= >
;
��> ?
}
�� 
_lastPlacedCell
�� 
=
��  !
cell
��" &
;
��& '
_selectedPiece
�� 
=
��  
null
��! %
;
��% &
ResetHighlights
�� 
(
��  
)
��  !
;
��! "
}
�� 
_isBeetleMoved
�� 
=
�� 
false
�� "
;
��" #
e
�� 
.
�� 
Handled
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
private
�� 
void
�� +
SendFinishOfMatchNotification
�� 2
(
��2 3
string
��3 9
result
��: @
)
��@ A
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
��  
_gameManagerClient
�� "
.
��" #
FinishOfTheMatch
��# 3
(
��3 4
MatchSingleton
��4 B
.
��B C
	codeMatch
��C L
,
��L M
result
��N T
)
��T U
;
��U V
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� /
!EliminateDuplicatedImagesIfExists
�� 6
(
��6 7
Point
��7 <
oldPosition
��= H
)
��H I
{
�� 	
if
�� 
(
�� 
!
�� 
_board
�� 
.
�� 
ContainsKey
�� #
(
��# $
oldPosition
��$ /
)
��/ 0
)
��0 1
{
�� 
var
�� 
imagesToRemove
�� "
=
��# $!
canva_GameBoardGrid
��% 8
.
��8 9
Children
��9 A
.
�� 
OfType
�� 
<
�� 
Image
�� !
>
��! "
(
��" #
)
��# $
.
�� 
Where
�� 
(
�� 
image
��  
=>
��! #
image
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
piece
��/ 4
&&
��5 7
piece
��8 =
.
��= >
Position
��> F
==
��G I
oldPosition
��J U
)
��U V
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
for
�� 
(
�� 
int
�� 
indexOfImage
�� %
=
��& '
$num
��( )
;
��) *
indexOfImage
��+ 7
<
��8 9
imagesToRemove
��: H
.
��H I
Count
��I N
;
��N O
indexOfImage
��P \
++
��\ ^
)
��^ _
{
�� 
Image
�� 
imageToQuit
�� %
=
��& '
imagesToRemove
��( 6
[
��6 7
indexOfImage
��7 C
]
��C D
;
��D E
List
�� 
<
�� 
	UIElement
�� "
>
��" #
childrenGrids
��$ 1
=
��2 3!
canva_GameBoardGrid
��4 G
.
��G H
Children
��H P
.
��P Q
OfType
��Q W
<
��W X
	UIElement
��X a
>
��a b
(
��b c
)
��c d
.
��d e
ToList
��e k
(
��k l
)
��l m
;
��m n
int
�� 
indexToRemove
�� %
=
��& '
childrenGrids
��( 5
.
��5 6
IndexOf
��6 =
(
��= >
imageToQuit
��> I
)
��I J
;
��J K
if
�� 
(
�� 
indexToRemove
�� %
!=
��& (
-
��) *
$num
��* +
)
��+ ,
{
�� !
canva_GameBoardGrid
�� +
.
��+ ,
Children
��, 4
.
��4 5
RemoveAt
��5 =
(
��= >
indexToRemove
��> K
)
��K L
;
��L M
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
Image
�� !
ObtainImageCreation
�� )
(
��) *
Polygon
��* 1
cell
��2 6
,
��6 7
	GamePiece
��8 A
piece
��B G
)
��G H
{
�� 	
Image
�� 

pieceImage
�� 
=
�� 
new
�� "
Image
��# (
{
�� 
Source
�� 
=
�� 
new
�� 
BitmapImage
�� (
(
��( )
new
��) ,
Uri
��- 0
(
��0 1
piece
��1 6
.
��6 7
	ImagePath
��7 @
,
��@ A
UriKind
��B I
.
��I J
Relative
��J R
)
��R S
)
��S T
,
��T U
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
�� 
Tag
�� 
=
�� 
piece
�� 
,
�� 
}
�� 
;
�� 
double
�� 
hexX
�� 
=
�� 
Canvas
��  
.
��  !
GetLeft
��! (
(
��( )
cell
��) -
)
��- .
;
��. /
double
�� 
hexY
�� 
=
�� 
Canvas
��  
.
��  !
GetTop
��! '
(
��' (
cell
��( ,
)
��, -
;
��- .
double
�� 
pieceX
�� 
=
�� 
hexX
��  
+
��! "
(
��# $
cell
��$ (
.
��( )
ActualWidth
��) 4
-
��5 6

pieceImage
��7 A
.
��A B
Width
��B G
)
��G H
/
��I J
$num
��K L
;
��L M
double
�� 
pieceY
�� 
=
�� 
hexY
��  
+
��! "
(
��# $
cell
��$ (
.
��( )
ActualHeight
��) 5
-
��6 7

pieceImage
��8 B
.
��B C
Height
��C I
)
��I J
/
��K L
$num
��M N
;
��N O
Canvas
�� 
.
�� 
SetLeft
�� 
(
�� 

pieceImage
�� %
,
��% &
pieceX
��' -
)
��- .
;
��. /
Canvas
�� 
.
�� 
SetTop
�� 
(
�� 

pieceImage
�� $
,
��$ %
pieceY
��& ,
)
��, -
;
��- .
return
�� 

pieceImage
�� 
;
�� 
}
�� 	
private
�� 
void
�� >
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
�� E
(
��E F
Image
��F K&
pieceCapturedByTheBeetle
��L d
,
��d e
	GamePiece
��f o
beetlePiece
��p {
)
��{ |
{
�� 	
	GamePiece
�� 
pieceToReturn
�� #
=
��$ %&
pieceCapturedByTheBeetle
��& >
.
��> ?
Tag
��? B
as
��C E
	GamePiece
��F O
;
��O P
if
�� 
(
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Contains
��- 5
(
��5 6&
pieceCapturedByTheBeetle
��6 N
)
��N O
)
��O P
{
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
��  -
=
��. /!
canva_GameBoardGrid
��0 C
.
��C D
Children
��D L
.
��L M
OfType
��M S
<
��S T
	UIElement
��T ]
>
��] ^
(
��^ _
)
��_ `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
int
�� 
indexToRemove
�� !
=
��" #
childrenGrids
��$ 1
.
��1 2
IndexOf
��2 9
(
��9 :&
pieceCapturedByTheBeetle
��: R
)
��R S
;
��S T!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -&
pieceCapturedByTheBeetle
��- E
)
��E F
;
��F G(
_piecesCapturedByTheBeetle
�� &
.
��& '
Remove
��' -
(
��- .
(
��. /
beetlePiece
��/ :
.
��: ;
PieceNumber
��; F
,
��F G
beetlePiece
��H S
.
��S T

PlayerName
��T ^
)
��^ _
)
��_ `
;
��` a
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
pieceToReturn
��# 0
.
��0 1
Position
��1 9
)
��9 :
)
��: ;
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
pieceToReturn
�� +
.
��+ ,
Position
��, 4
)
��4 5
;
��5 6
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
pieceToReturn
�� $
.
��$ %
Position
��% -
,
��- .
pieceToReturn
��/ <
)
��< =
;
��= >
}
�� 	
private
�� 
void
�� #
PieceSelectedByBeetle
�� *
(
��* +
Image
��+ 0

imagePiece
��1 ;
,
��; <
	GamePiece
��= F
beetlePiece
��G R
)
��R S
{
�� 	
	GamePiece
�� 
pieceToKeepSafe
�� %
=
��& '

imagePiece
��( 2
.
��2 3
Tag
��3 6
as
��7 9
	GamePiece
��: C
;
��C D
List
�� 
<
�� 
Image
�� 
>
�� 
imagesOfPieces
�� &
=
��' (!
canva_GameBoardGrid
��) <
.
��< =
Children
��= E
.
��E F
OfType
��F L
<
��L M
Image
��M R
>
��R S
(
��S T
)
��T U
.
��U V
ToList
��V \
(
��\ ]
)
��] ^
;
��^ _
Image
��  
imageWhereBeetleIs
�� $
=
��% &
new
��' *
Image
��+ 0
(
��0 1
)
��1 2
;
��2 3
foreach
�� 
(
�� 
var
�� 
imageOnBeetle
�� &
in
��' )
imagesOfPieces
��* 8
)
��8 9
{
�� 
	GamePiece
�� 
piece
�� 
=
��  !
imageOnBeetle
��" /
.
��/ 0
Tag
��0 3
as
��4 6
	GamePiece
��7 @
;
��@ A
if
�� 
(
�� 
piece
�� 
.
�� 
PieceNumber
�� %
==
��& (
beetlePiece
��) 4
.
��4 5
PieceNumber
��5 @
&&
��A C
piece
��D I
.
��I J

PlayerName
��J T
==
��U W
beetlePiece
��X c
.
��c d

PlayerName
��d n
)
��n o
{
��  
imageWhereBeetleIs
�� &
=
��' (
imageOnBeetle
��) 6
;
��6 7
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� (
_piecesCapturedByTheBeetle
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
(
��7 8
beetlePiece
��8 C
.
��C D
PieceNumber
��D O
,
��O P
beetlePiece
��Q \
.
��\ ]

PlayerName
��] g
)
��g h
)
��h i
)
��i j
{
�� 5
'RestoreOriginalPieceCapturedByTheBeetle
�� 7
(
��7 8 
imageWhereBeetleIs
��8 J
,
��J K
beetlePiece
��L W
)
��W X
;
��X Y
}
�� 
else
�� 
{
�� '
PieceToReplaceByTheBeetle
�� )
(
��) *
beetlePiece
��* 5
,
��5 6
pieceToKeepSafe
��7 F
,
��F G 
imageWhereBeetleIs
��H Z
)
��Z [
;
��[ \
}
�� (
_piecesCapturedByTheBeetle
�� &
.
��& '
Add
��' *
(
��* +
(
��+ ,
beetlePiece
��, 7
.
��7 8
PieceNumber
��8 C
,
��C D
beetlePiece
��E P
.
��P Q

PlayerName
��Q [
)
��[ \
,
��\ ]

imagePiece
��^ h
)
��h i
;
��i j
Point
�� 
oldPosition
�� 
=
�� 
beetlePiece
��  +
.
��+ ,
Position
��, 4
;
��4 5
Polygon
�� 
cell
�� 
=
�� 
_cellDictionary
�� *
[
��* +
pieceToKeepSafe
��+ :
.
��: ;
Position
��; C
]
��C D
;
��D E
beetlePiece
�� 
.
�� 
Position
��  
=
��! "
pieceToKeepSafe
��# 2
.
��2 3
Position
��3 ;
;
��; <
beetlePiece
�� 
.
�� 
Piece
�� 
.
�� 
Position
�� &
=
��' (
oldPosition
��) 4
;
��4 5)
UpdateGameboardGridByBeetle
�� '
(
��' (
cell
��( ,
,
��, -
beetlePiece
��. 9
)
��9 :
;
��: ;
_isBeetleMoved
�� 
=
�� 
false
�� "
;
��" #
}
�� 	
private
�� 
void
�� '
PieceToReplaceByTheBeetle
�� .
(
��. /
	GamePiece
��/ 8
beetlePiece
��9 D
,
��D E
	GamePiece
��F O
pieceToKeepSafe
��P _
,
��_ `
Image
��a f 
imageWhereBeetleIs
��g y
)
��y z
{
�� 	
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
�� )
=
��* +!
canva_GameBoardGrid
��, ?
.
��? @
Children
��@ H
.
��H I
OfType
��I O
<
��O P
	UIElement
��P Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
int
�� 
indexToRemove
�� 
=
�� 
childrenGrids
��  -
.
��- .
IndexOf
��. 5
(
��5 6 
imageWhereBeetleIs
��6 H
)
��H I
;
��I J
if
�� 
(
�� 
indexToRemove
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
pieceToKeepSafe
�� )
.
��) *
Position
��* 2
)
��2 3
;
��3 4
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
beetlePiece
��# .
.
��. /
Position
��/ 7
)
��7 8
&&
��9 ;
_board
��< B
[
��B C
beetlePiece
��C N
.
��N O
Position
��O W
]
��W X
==
��Y [
beetlePiece
��\ g
)
��g h
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
beetlePiece
�� )
.
��) *
Position
��* 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
void
�� 5
'RestoreOriginalPieceCapturedByTheBeetle
�� <
(
��< =
Image
��= B 
imageWhereBeetleIs
��C U
,
��U V
	GamePiece
��W `
beetlePiece
��a l
)
��l m
{
�� 	
Image
��  
originalPieceImage
�� $
=
��% &(
_piecesCapturedByTheBeetle
��' A
[
��A B
(
��B C
beetlePiece
��C N
.
��N O
PieceNumber
��O Z
,
��Z [
beetlePiece
��\ g
.
��g h

PlayerName
��h r
)
��r s
]
��s t
;
��t u
	GamePiece
�� 
originalPiece
�� #
=
��$ % 
originalPieceImage
��& 8
.
��8 9
Tag
��9 <
as
��= ?
	GamePiece
��@ I
;
��I J
_board
�� 
.
�� 
Remove
�� 
(
�� 
originalPiece
�� '
.
��' (
Position
��( 0
)
��0 1
;
��1 2
_board
�� 
.
�� 
Add
�� 
(
�� 
originalPiece
�� $
.
��$ %
Position
��% -
,
��- .
originalPiece
��/ <
)
��< =
;
��= >
if
�� 
(
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Contains
��- 5
(
��5 6 
imageWhereBeetleIs
��6 H
)
��H I
)
��I J
{
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrid
��  ,
=
��- .!
canva_GameBoardGrid
��/ B
.
��B C
Children
��C K
.
��K L
OfType
��L R
<
��R S
	UIElement
��S \
>
��\ ]
(
��] ^
)
��^ _
.
��_ `
ToList
��` f
(
��f g
)
��g h
;
��h i
int
�� !
indexToRemoveBeetle
�� '
=
��( )
childrenGrid
��* 6
.
��6 7
IndexOf
��7 >
(
��> ? 
imageWhereBeetleIs
��? Q
)
��Q R
;
��R S!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6!
indexToRemoveBeetle
��6 I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Contains
��- 5
(
��5 6 
originalPieceImage
��6 H
)
��H I
)
��I J
{
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� "
childrenGridNewPiece
��  4
=
��5 6!
canva_GameBoardGrid
��7 J
.
��J K
Children
��K S
.
��S T
OfType
��T Z
<
��Z [
	UIElement
��[ d
>
��d e
(
��e f
)
��f g
.
��g h
ToList
��h n
(
��n o
)
��o p
;
��p q
int
�� #
indexToRemoveNewPiece
�� )
=
��* +"
childrenGridNewPiece
��, @
.
��@ A
IndexOf
��A H
(
��H I 
originalPieceImage
��I [
)
��[ \
;
��\ ]!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6#
indexToRemoveNewPiece
��6 K
)
��K L
;
��L M
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, - 
originalPieceImage
��- ?
)
��? @
;
��@ A(
_piecesCapturedByTheBeetle
�� &
.
��& '
Remove
��' -
(
��- .
(
��. /
beetlePiece
��/ :
.
��: ;
PieceNumber
��; F
,
��F G
beetlePiece
��H S
.
��S T

PlayerName
��T ^
)
��^ _
)
��_ `
;
��` a
}
�� 	
private
�� 
void
�� )
UpdateGameboardGridByBeetle
�� 0
(
��0 1
Polygon
��1 8
cell
��9 =
,
��= >
	GamePiece
��? H
piece
��I N
)
��N O
{
�� 	
Image
�� 

pieceImage
�� 
=
�� !
ObtainImageCreation
�� 2
(
��2 3
cell
��3 7
,
��7 8
piece
��9 >
)
��> ?
;
��? @!
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -

pieceImage
��- 7
)
��7 8
;
��8 9
_board
�� 
[
�� 
piece
�� 
.
�� 
Position
�� !
]
��! "
=
��# $
piece
��% *
;
��* +'
SendPiecePositionToServer
�� %
(
��% &
piece
��& +
)
��+ ,
;
��, -
_lastPlacedCell
�� 
=
�� 
cell
�� "
;
��" #
_selectedPiece
�� 
=
�� 
null
�� !
;
��! "
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� -
UpdateOldAndNewPlaceInGameBoard
�� 4
(
��4 5
Image
��5 :

pieceImage
��; E
,
��E F
Point
��G L
oldPosition
��M X
)
��X Y
{
�� 	
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
oldPosition
��# .
)
��. /
)
��/ 0
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
oldPosition
�� )
)
��) *
;
��* +
}
�� 
var
�� #
imagesOnGameBoardGrid
�� %
=
��& '!
canva_GameBoardGrid
��( ;
.
��; <
Children
��< D
.
��D E
OfType
��E K
<
��K L
Image
��L Q
>
��Q R
(
��R S
)
��S T
.
��T U
ToList
��U [
(
��[ \
)
��\ ]
;
��] ^
	GamePiece
�� 
pieceToMove
�� !
=
��" #

pieceImage
��$ .
.
��. /
Tag
��/ 2
as
��3 5
	GamePiece
��6 ?
;
��? @
Image
�� 
imageToRemove
�� 
=
��  !
new
��" %
Image
��& +
(
��+ ,
)
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 
imageOnGrid
�� $
in
��% '#
imagesOnGameBoardGrid
��( =
)
��= >
{
�� 
	GamePiece
�� 
piece
�� 
=
��  !
imageOnGrid
��" -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
if
�� 
(
�� 
piece
�� 
.
�� 
Piece
�� 
.
��  
Position
��  (
==
��) +
oldPosition
��, 7
&&
��8 :
piece
��; @
.
��@ A
PieceNumber
��A L
==
��M O
pieceToMove
��P [
.
��[ \
PieceNumber
��\ g
&&
��h j
piece
��k p
.
��p q

PlayerName
��q {
==
��| ~
pieceToMove�� �
.��� �

PlayerName��� �
)��� �
{
�� 
imageToRemove
�� !
=
��" #
imageOnGrid
��$ /
;
��/ 0
break
�� 
;
�� 
}
�� 
}
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
�� )
=
��* +!
canva_GameBoardGrid
��, ?
.
��? @
Children
��@ H
.
��H I
OfType
��I O
<
��O P
	UIElement
��P Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
int
�� 
indexToRemove
�� 
=
�� 
childrenGrids
��  -
.
��- .
IndexOf
��. 5
(
��5 6
imageToRemove
��6 C
)
��C D
;
��D E
if
�� 
(
�� 
indexToRemove
�� 
!=
�� 
-
��  !
$num
��! "
)
��" #
{
��$ %!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -

pieceImage
��- 7
)
��7 8
;
��8 9
	GamePiece
�� 

pieceToAdd
��  
=
��! "

pieceImage
��# -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
_board
�� 
[
�� 

pieceToAdd
�� 
.
�� 
Position
�� &
]
��& '
=
��( )

pieceToAdd
��* 4
;
��4 5
}
�� 	
private
�� 
bool
�� 1
#ValidateThatPieceCannotBreakTheHive
�� 8
(
��8 9
Point
��9 >
positionPiece
��? L
)
��L M
{
�� 	
bool
�� 
validationResult
�� !
=
��" #
false
��$ )
;
��) *
	GamePiece
�� '
verifyIfPieceIsNotABeetle
�� /
=
��0 1
_board
��2 8
[
��8 9
positionPiece
��9 F
]
��F G
;
��G H
if
�� 
(
�� (
_piecesCapturedByTheBeetle
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
(
��7 8'
verifyIfPieceIsNotABeetle
��8 Q
.
��Q R
PieceNumber
��R ]
,
��] ^'
verifyIfPieceIsNotABeetle
��_ x
.
��x y

PlayerName��y �
)��� �
)��� �
)��� �
{
�� 
validationResult
��  
=
��! "
true
��# '
;
��' (
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 
positionPiece
�� !
!=
��" $
new
��% (
Point
��) .
(
��. /
-
��/ 0
$num
��0 1
,
��1 2
-
��3 4
$num
��4 5
)
��5 6
)
��6 7
{
�� 
var
�� 
piece
�� 
=
�� 
_board
��  &
[
��& '
positionPiece
��' 4
]
��4 5
;
��5 6
_board
�� 
.
�� 
Remove
�� !
(
��! "
positionPiece
��" /
)
��/ 0
;
��0 1
Point
�� 
start
�� 
=
��  !
_board
��" (
.
��( )
Keys
��) -
.
��- .
FirstOrDefault
��. <
(
��< =
)
��= >
;
��> ?
HashSet
�� 
<
�� 
Point
�� !
>
��! "
visited
��# *
=
��+ ,
new
��- 0
HashSet
��1 8
<
��8 9
Point
��9 >
>
��> ?
(
��? @
)
��@ A
;
��A B"
CheckConnectedPieces
�� (
(
��( )
start
��) .
,
��. /
visited
��0 7
)
��7 8
;
��8 9
if
�� 
(
�� 
visited
�� 
.
��  
Count
��  %
==
��& (
_board
��) /
.
��/ 0
Count
��0 5
)
��5 6
{
�� 
validationResult
�� (
=
��) *
true
��+ /
;
��/ 0
}
�� 
else
�� 
{
�� 
validationResult
�� (
=
��) *
false
��+ 0
;
��0 1
}
�� 
_board
�� 
.
�� 
Add
�� 
(
�� 
positionPiece
�� ,
,
��, -
piece
��. 3
)
��3 4
;
��4 5
}
�� 
}
�� 
return
�� 
validationResult
�� #
;
��# $
}
�� 	
private
�� 
void
�� "
CheckConnectedPieces
�� )
(
��) *
Point
��* /
start
��0 5
,
��5 6
HashSet
��7 >
<
��> ?
Point
��? D
>
��D E
visited
��F M
)
��M N
{
�� 	
Stack
�� 
<
�� 
Point
�� 
>
�� 
stack
�� 
=
��  
new
��! $
Stack
��% *
<
��* +
Point
��+ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
stack
�� 
.
�� 
Push
�� 
(
�� 
start
�� 
)
�� 
;
�� 
while
�� 
(
�� 
stack
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
Point
�� 
currentPoint
�� "
=
��# $
stack
��% *
.
��* +
Pop
��+ .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
!
�� 
visited
�� 
.
�� 
Contains
�� %
(
��% &
currentPoint
��& 2
)
��2 3
)
��3 4
{
�� 
visited
�� 
.
�� 
Add
�� 
(
��  
currentPoint
��  ,
)
��, -
;
��- .
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
��  .
=
��/ 0"
ObtainAdjacentPoints
��1 E
(
��E F
currentPoint
��F R
)
��R S
;
��S T
foreach
�� 
(
�� 
var
��  
adjacentCollider
��! 1
in
��2 4
adjacentPoints
��5 C
)
��C D
{
�� 
if
�� 
(
�� 
!
�� 
visited
�� $
.
��$ %
Contains
��% -
(
��- .
adjacentCollider
��. >
)
��> ?
&&
��@ B
_board
��C I
.
��I J
ContainsKey
��J U
(
��U V
adjacentCollider
��V f
)
��f g
)
��g h
{
�� 
stack
�� !
.
��! "
Push
��" &
(
��& '
adjacentCollider
��' 7
)
��7 8
;
��8 9
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 2
$HighlightStartingFirstTurnStaterCell
�� 9
(
��9 :
Point
��: ?
position
��@ H
)
��H I
{
�� 	
if
�� 
(
�� 
_cellDictionary
�� 
.
��  
TryGetValue
��  +
(
��+ ,
position
��, 4
,
��4 5
out
��6 9
Polygon
��: A
cell
��B F
)
��F G
)
��G H
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
�� #
.
��# $
Yellow
��$ *
;
��* +
_lastPlacedCell
�� 
=
��  !
cell
��" &
;
��& '
cell
�� 
.
�� 
	MouseDown
�� 
+=
�� !
Cell_MouseDown
��" 0
;
��0 1
}
�� 
}
�� 	
private
�� 
void
�� 2
$HigligthStartingFirstTurnOponentCell
�� 9
(
��9 :
)
��: ;
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
var
�� 
checkedPositions
��  
=
��! "
new
��# &
HashSet
��' .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
piecePosition
�� &
in
��' )
_board
��* 0
.
��0 1
Keys
��1 5
)
��5 6
{
�� 
if
�� 
(
�� 
_board
�� 
.
�� 
TryGetValue
�� &
(
��& '
piecePosition
��' 4
,
��4 5
out
��6 9
var
��: =!
currentStarterPiece
��> Q
)
��Q R
&&
��S U!
currentStarterPiece
��V i
!=
��j l
null
��m q
)
��q r
{
�� #
HighlightValidOffsets
�� )
(
��) *
piecePosition
��* 7
,
��7 8
checkedPositions
��9 I
)
��I J
;
��J K
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� #
HighlightValidOffsets
�� *
(
��* +
Point
��+ 0
piecePosition
��1 >
,
��> ?
HashSet
��@ G
<
��G H
Point
��H M
>
��M N
checkedPositions
��O _
)
��_ `
{
�� 	
foreach
�� 
(
�� 
var
�� 
offset
�� 
in
��  ""
ObtainAdjacentPoints
��# 7
(
��7 8
piecePosition
��8 E
)
��E F
)
��F G
{
�� 
if
�� 
(
�� 
!
�� 
_board
�� 
.
�� 
ContainsKey
�� '
(
��' (
offset
��( .
)
��. /
&&
��0 2
_cellDictionary
�� #
.
��# $
TryGetValue
��$ /
(
��/ 0
offset
��0 6
,
��6 7
out
��8 ;
var
��< ?
cell
��@ D
)
��D E
&&
��F H
!
�� 
checkedPositions
�� %
.
��% &
Contains
��& .
(
��. /
offset
��/ 5
)
��5 6
&&
��7 9+
ObtaintAdjacentColliderPoints
�� 1
(
��1 2
offset
��2 8
,
��8 9
piecePosition
��: G
)
��G H
.
��H I
Exists
��I O
(
��O P
adj
��P S
=>
��T V
_board
��W ]
.
��] ^
ContainsKey
��^ i
(
��i j
adj
��j m
)
��m n
)
��n o
)
��o p
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (

LightGreen
��( 2
;
��2 3
cell
�� 
.
�� 
	IsEnabled
�� "
=
��# $
true
��% )
;
��) *
cell
�� 
.
�� 
	MouseDown
�� "
+=
��# %
Cell_MouseDown
��& 4
;
��4 5
checkedPositions
�� $
.
��$ %
Add
��% (
(
��( )
offset
��) /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� -
HighlightAvailableStartingCells
�� 4
(
��4 5
)
��5 6
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
var
�� 
checkedPositions
��  
=
��! "
new
��# &
HashSet
��' .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
_numberOfTurn
�� 
==
��  
$num
��! "
&&
��# %
!
��& '(
ValidateQueenPieceIsInGame
��' A
(
��A B
)
��B C
)
��C D
{
�� 
_selectedPiece
�� 
=
��  
_numberOfPlayer
��! 0
==
��1 3
$num
��4 5
?
��6 7
_player1Pieces
��8 F
[
��F G
$num
��G H
]
��H I
:
��J K
_player2Pieces
��L Z
[
��Z [
$num
��[ \
]
��\ ]
;
��] ^
}
�� 
foreach
�� 
(
�� 
var
�� 
piecePosition
�� &
in
��' )
_board
��* 0
.
��0 1
Keys
��1 5
)
��5 6
{
�� 
if
�� 
(
�� 
_board
�� 
[
�� 
piecePosition
�� (
]
��( )
.
��) *

PlayerName
��* 4
==
��5 7"
UserProfileSingleton
��8 L
.
��L M
username
��M U
)
��U V
{
�� )
HighlightValidCellsForPiece
�� /
(
��/ 0
piecePosition
��0 =
,
��= >
checkedPositions
��? O
)
��O P
;
��P Q
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� )
HighlightValidCellsForPiece
�� 0
(
��0 1
Point
��1 6
piecePosition
��7 D
,
��D E
HashSet
��F M
<
��M N
Point
��N S
>
��S T
checkedPositions
��U e
)
��e f
{
�� 	
foreach
�� 
(
�� 
var
�� 
offset
�� 
in
��  ""
ObtainAdjacentPoints
��# 7
(
��7 8
piecePosition
��8 E
)
��E F
)
��F G
{
�� 
if
�� 
(
�� 
IsValidCell
�� 
(
��  
offset
��  &
,
��& '
checkedPositions
��( 8
,
��8 9
out
��: =
var
��> A
cell
��B F
)
��F G
)
��G H
{
�� 
bool
�� !
isConnectedToColony
�� ,
=
��- .!
IsConnectedToColony
��/ B
(
��B C
offset
��C I
)
��I J
;
��J K
bool
�� 
isNearEnemy
�� $
=
��% &
IsNearEnemy
��' 2
(
��2 3
offset
��3 9
)
��9 :
;
��: ;
if
�� 
(
�� !
isConnectedToColony
�� +
&&
��, .
!
��/ 0
isNearEnemy
��0 ;
)
��; <
{
�� 
cell
�� 
.
�� 
Fill
�� !
=
��" #
Brushes
��$ +
.
��+ ,

LightGreen
��, 6
;
��6 7
cell
�� 
.
�� 
	IsEnabled
�� &
=
��' (
true
��) -
;
��- .
cell
�� 
.
�� 
	MouseDown
�� &
+=
��' )
Cell_MouseDown
��* 8
;
��8 9
checkedPositions
�� (
.
��( )
Add
��) ,
(
��, -
offset
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� 
IsValidCell
��  
(
��  !
Point
��! &
offset
��' -
,
��- .
HashSet
��/ 6
<
��6 7
Point
��7 <
>
��< =
checkedPositions
��> N
,
��N O
out
��P S
Polygon
��T [
cell
��\ `
)
��` a
{
�� 	
cell
�� 
=
�� 
null
�� 
;
�� 
return
�� 
!
�� 
_board
�� 
.
�� 
ContainsKey
�� &
(
��& '
offset
��' -
)
��- .
&&
��/ 1
_cellDictionary
�� "
.
��" #
TryGetValue
��# .
(
��. /
offset
��/ 5
,
��5 6
out
��7 :
cell
��; ?
)
��? @
&&
��A C
!
�� 
checkedPositions
�� $
.
��$ %
Contains
��% -
(
��- .
offset
��. 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
bool
�� !
IsConnectedToColony
�� (
(
��( )
Point
��) .
offset
��/ 5
)
��5 6
{
�� 	
return
�� "
ObtainAdjacentPoints
�� '
(
��' (
offset
��( .
)
��. /
.
��/ 0
Exists
��0 6
(
��6 7
adj
��7 :
=>
��; =
_board
��> D
.
��D E
ContainsKey
��E P
(
��P Q
adj
��Q T
)
��T U
&&
��V X
_board
��Y _
[
��_ `
adj
��` c
]
��c d
.
��d e

PlayerName
��e o
==
��p r#
UserProfileSingleton��s �
.��� �
username��� �
)��� �
;��� �
}
�� 	
private
�� 
bool
�� 
IsNearEnemy
��  
(
��  !
Point
��! &
offset
��' -
)
��- .
{
�� 	
return
�� "
ObtainAdjacentPoints
�� '
(
��' (
offset
��( .
)
��. /
.
��/ 0
Exists
��0 6
(
��6 7
adj
��7 :
=>
��; =
_board
��> D
.
��D E
ContainsKey
��E P
(
��P Q
adj
��Q T
)
��T U
&&
��V X
_board
��Y _
[
��_ `
adj
��` c
]
��c d
.
��d e

PlayerName
��e o
!=
��p r#
UserProfileSingleton��s �
.��� �
username��� �
)��� �
;��� �
}
�� 	
private
�� 
bool
�� %
IsConnectedToHiveBeetle
�� ,
(
��, -
Point
��- 2
position
��3 ;
)
��; <
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
return
�� 
adjacentPoints
�� !
.
��! "
Exists
��" (
(
��( )
adj
��) ,
=>
��- /
_board
��0 6
.
��6 7
ContainsKey
��7 B
(
��B C
adj
��C F
)
��F G
)
��G H
;
��H I
}
�� 	
private
�� 
bool
�� $
IsContinouslyConnected
�� +
(
��+ ,
Point
��, 1
adjacent
��2 :
,
��: ;
Point
��< A
previousPosition
��B R
,
��R S
Point
��T Y
currentPosition
��Z i
)
��i j
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
adjacent
��6 >
)
��> ?
;
��? @
return
�� 
adjacentPoints
�� !
.
��! "
Exists
��" (
(
��( )
adj
��) ,
=>
��- /
_board
��0 6
.
��6 7
ContainsKey
��7 B
(
��B C
adj
��C F
)
��F G
&&
��H J"
ObtainAdjacentPoints
��0 D
(
��D E
adj
��E H
)
��H I
.
��I J
Contains
��J R
(
��R S
currentPosition
��S b
)
��b c
&&
��d f"
ObtainAdjacentPoints
��0 D
(
��D E
adj
��E H
)
��H I
.
��I J
Contains
��J R
(
��R S
previousPosition
��S c
)
��c d
)
��d e
;
��e f
}
�� 	
private
�� 
bool
�� 
IsNotSurrounded
�� $
(
��$ %
Point
��% *
position
��+ 3
)
��3 4
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
int
�� 
occupiedSides
�� 
=
�� 
adjacentPoints
��  .
.
��. /
Count
��/ 4
(
��4 5
adj
��5 8
=>
��9 ;
_board
��< B
.
��B C
ContainsKey
��C N
(
��N O
adj
��O R
)
��R S
)
��S T
;
��T U
return
�� 
occupiedSides
��  
!=
��! #
$num
��$ %
;
��% &
}
�� 	
private
�� 
bool
�� 
IsConnectedToHive
�� &
(
��& '
Point
��' ,
position
��- 5
)
��5 6
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
bool
�� !
isConnectedToColony
�� $
=
��% &
adjacentPoints
��' 5
.
��5 6
Exists
��6 <
(
��< =
adj
��= @
=>
��A C
_board
��D J
.
��J K
ContainsKey
��K V
(
��V W
adj
��W Z
)
��Z [
)
��[ \
;
��\ ]
return
�� !
isConnectedToColony
�� &
;
��& '
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� "
ObtainAdjacentPoints
�� 0
(
��0 1
Point
��1 6
piecePosition
��7 D
)
��D E
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
�� &
=
��' (
new
��) ,
List
��- 1
<
��1 2
Point
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
double
�� 
epsilon
�� 
=
�� 
$num
�� #
;
��# $
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
piecePosition
�� &
.
��& '
X
��' (
%
��) *
$num
��+ ,
-
��- .
$num
��/ 0
)
��0 1
<
��2 3
epsilon
��4 ;
)
��; <
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
-
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
-
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
-
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
+
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
-
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
+
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
+
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
+
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
}
�� 
return
�� 
adjacentPoints
�� !
;
��! "
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� +
ObtaintAdjacentColliderPoints
�� 9
(
��9 :
Point
��: ?
offset
��@ F
,
��F G
Point
��H M
piecePosition
��N [
)
��[ \
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
�� &
=
��' (
new
��) ,
List
��- 1
<
��1 2
Point
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
double
�� 
epsilon
�� 
=
�� 
$num
�� #
;
��# $
if
�� 
(
�� 
Math
�� 
.
�� 
Abs
�� 
(
�� 
piecePosition
�� &
.
��& '
X
��' (
%
��) *
$num
��+ ,
-
��- .
$num
��/ 0
)
��0 1
<
��2 3
epsilon
��4 ;
)
��; <
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
+
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
+
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
+
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
-
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
}
�� 
else
�� 
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
+
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
-
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
-
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
-
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
}
�� 
return
�� 
adjacentPoints
�� !
;
��! "
}
�� 	
private
�� 
PointCollection
�� !
CreateHexagonPoints
��  3
(
��3 4
double
��4 :
size
��; ?
)
��? @
{
�� 	
var
�� 
points
�� 
=
�� 
new
�� 
PointCollection
�� ,
(
��, -
)
��- .
;
��. /
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
��  !
;
��! "
i
��# $
++
��$ &
)
��& '
{
�� 
double
�� 
angle
�� 
=
�� 
(
��  
i
��  !
*
��" #
$num
��$ &
+
��' (
$num
��) +
)
��+ ,
*
��- .
Math
��/ 3
.
��3 4
PI
��4 6
/
��7 8
$num
��9 <
;
��< =
points
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
Point
�� $
(
��$ %
size
��% )
*
��* +
Math
��, 0
.
��0 1
Cos
��1 4
(
��4 5
angle
��5 :
)
��: ;
,
��; <
size
��= A
*
��B C
Math
��D H
.
��H I
Sin
��I L
(
��L M
angle
��M R
)
��R S
)
��S T
)
��T U
;
��U V
}
�� 
return
�� 
points
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
PlacePieceOnCell
�� %
(
��% &
Polygon
��& -
cell
��. 2
)
��2 3
{
�� 	
if
�� 
(
�� 
cell
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
foreach
�� 
(
�� 
var
�� 
polygon
�� $
in
��% '!
canva_GameBoardGrid
��( ;
.
��; <
Children
��< D
.
��D E
OfType
��E K
<
��K L
Polygon
��L S
>
��S T
(
��T U
)
��U V
)
��V W
{
�� 
polygon
�� 
.
�� 
	IsEnabled
�� %
=
��& '
false
��( -
;
��- .
}
�� 
_selectedPiece
�� 
.
�� 
Position
�� '
=
��( )
(
��* +
Point
��+ 0
)
��0 1
cell
��1 5
.
��5 6
Tag
��6 9
;
��9 :
Image
�� 

pieceImage
��  
=
��! "!
ObtainImageCreation
��# 6
(
��6 7
cell
��7 ;
,
��; <
_selectedPiece
��= K
)
��K L
;
��L M!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Add
��- 0
(
��0 1

pieceImage
��1 ;
)
��; <
;
��< =
_board
�� 
[
�� 
_selectedPiece
�� %
.
��% &
Position
��& .
]
��. /
=
��0 1
_selectedPiece
��2 @
;
��@ A#
RemovePieceFromPlayer
�� %
(
��% &
_selectedPiece
��& 4
)
��4 5
;
��5 6'
SendPiecePositionToServer
�� )
(
��) *
_selectedPiece
��* 8
)
��8 9
;
��9 :
_lastPlacedCell
�� 
=
��  !
cell
��" &
;
��& '!
_isFirstPiecePlaced
�� #
=
��$ %
true
��& *
;
��* +
_selectedPiece
�� 
=
��  
null
��! %
;
��% &
ResetHighlights
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 	
private
�� 
void
�� +
UnlockPlacesWhereThereIsPiece
�� 2
(
��2 3
)
��3 4
{
�� 	
foreach
�� 
(
�� 
var
�� 
pieceInBoard
�� %
in
��& (
_board
��) /
)
��/ 0
{
�� 
Point
�� 
placeToUnlock
�� #
=
��$ %
pieceInBoard
��& 2
.
��2 3
Key
��3 6
;
��6 7
if
�� 
(
�� 
_cellDictionary
�� #
.
��# $
ContainsKey
��$ /
(
��/ 0
placeToUnlock
��0 =
)
��= >
&&
��? A
pieceInBoard
��B N
.
��N O
Value
��O T
.
��T U

PlayerName
��U _
==
��` b"
UserProfileSingleton
��c w
.
��w x
username��x �
)��� �
{
�� 
_cellDictionary
�� #
[
��# $
placeToUnlock
��$ 1
]
��1 2
.
��2 3
	IsEnabled
��3 <
=
��= >
true
��? C
;
��C D
}
�	�	 
}
�	�	 
List
�	�	 
<
�	�	 
Image
�	�	 
>
�	�	 
imagesOnBoard
�	�	 %
=
�	�	& '!
canva_GameBoardGrid
�	�	( ;
.
�	�	; <
Children
�	�	< D
.
�	�	D E
OfType
�	�	E K
<
�	�	K L
Image
�	�	L Q
>
�	�	Q R
(
�	�	R S
)
�	�	S T
.
�	�	T U
ToList
�	�	U [
(
�	�	[ \
)
�	�	\ ]
;
�	�	] ^
foreach
�	�	 
(
�	�	 
Image
�	�	 
imageOnBoard
�	�	 &
in
�	�	' )
imagesOnBoard
�	�	* 7
)
�	�	7 8
{
�	�	 
	GamePiece
�	�	 
piece
�	�	 
=
�	�	  !
(
�	�	" #
	GamePiece
�	�	# ,
)
�	�	, -
imageOnBoard
�	�	- 9
.
�	�	9 :
Tag
�	�	: =
;
�	�	= >
if
�	�	 
(
�	�	 
piece
�	�	 
.
�	�	 

PlayerName
�	�	 $
==
�	�	% '"
UserProfileSingleton
�	�	( <
.
�	�	< =
username
�	�	= E
)
�	�	E F
{
�	�	 
imageOnBoard
�	�	  
.
�	�	  !
	IsEnabled
�	�	! *
=
�	�	+ ,
true
�	�	- 1
;
�	�	1 2
}
�	�	 
}
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 '
SendPiecePositionToServer
�	�	 .
(
�	�	. /
Logic
�	�	/ 4
.
�	�	4 5
	GamePiece
�	�	5 >
	gamePiece
�	�	? H
)
�	�	H I
{
�	�	 	
LoggerManager
�	�	 
logger
�	�	  
=
�	�	! "
new
�	�	# &
LoggerManager
�	�	' 4
(
�	�	4 5
this
�	�	5 9
.
�	�	9 :
GetType
�	�	: A
(
�	�	A B
)
�	�	B C
)
�	�	C D
;
�	�	D E
try
�	�	 
{
�	�	 
	HiveProxy
�	�	 
.
�	�	 
Piece
�	�	 

pieceMoved
�	�	  *
=
�	�	+ ,
new
�	�	- 0
	HiveProxy
�	�	1 :
.
�	�	: ;
Piece
�	�	; @
(
�	�	@ A
)
�	�	A B
{
�	�	 
name
�	�	 
=
�	�	 
	gamePiece
�	�	 $
.
�	�	$ %
Piece
�	�	% *
.
�	�	* +
Name
�	�	+ /
,
�	�	/ 0

playerName
�	�	 
=
�	�	  
	gamePiece
�	�	! *
.
�	�	* +
Piece
�	�	+ 0
.
�	�	0 1

PlayerName
�	�	1 ;
,
�	�	; <
position
�	�	 
=
�	�	 
	gamePiece
�	�	 (
.
�	�	( )
Piece
�	�	) .
.
�	�	. /
Position
�	�	/ 7
}
�	�	 
;
�	�	 
	HiveProxy
�	�	 
.
�	�	 
GamePice
�	�	 "
gamePieceMoved
�	�	# 1
=
�	�	2 3
new
�	�	4 7
	HiveProxy
�	�	8 A
.
�	�	A B
GamePice
�	�	B J
(
�	�	J K
)
�	�	K L
{
�	�	 

playerName
�	�	 
=
�	�	  
	gamePiece
�	�	! *
.
�	�	* +

PlayerName
�	�	+ 5
,
�	�	5 6
piece
�	�	 
=
�	�	 

pieceMoved
�	�	 &
,
�	�	& '
	imagePath
�	�	 
=
�	�	 
	gamePiece
�	�	  )
.
�	�	) *
	ImagePath
�	�	* 3
,
�	�	3 4
position
�	�	 
=
�	�	 
	gamePiece
�	�	 (
.
�	�	( )
Position
�	�	) 1
,
�	�	1 2
numberOfPiece
�	�	 !
=
�	�	" #
	gamePiece
�	�	$ -
.
�	�	- .
PieceNumber
�	�	. 9
,
�	�	9 :
}
�	�	 
;
�	�	 
UserSession
�	�	 
userSession
�	�	 '
=
�	�	( )
new
�	�	* -
UserSession
�	�	. 9
(
�	�	9 :
)
�	�	: ;
{
�	�	 
	idAccount
�	�	 
=
�	�	 "
UserProfileSingleton
�	�	  4
.
�	�	4 5
	idAccount
�	�	5 >
,
�	�	> ?
username
�	�	 
=
�	�	 "
UserProfileSingleton
�	�	 3
.
�	�	3 4
username
�	�	4 <
,
�	�	< =
	codeMatch
�	�	 
=
�	�	 
MatchSingleton
�	�	  .
.
�	�	. /
	codeMatch
�	�	/ 8
}
�	�	 
;
�	�	  
_gameManagerClient
�	�	 "
.
�	�	" #
	MovePiece
�	�	# ,
(
�	�	, -
gamePieceMoved
�	�	- ;
,
�	�	; <
userSession
�	�	= H
,
�	�	H I
userSession
�	�	J U
.
�	�	U V
	codeMatch
�	�	V _
)
�	�	_ `
;
�	�	` a 
_gameManagerClient
�	�	 "
.
�	�	" #
SetTurns
�	�	# +
(
�	�	+ ,
userSession
�	�	, 7
,
�	�	7 8
userSession
�	�	9 D
.
�	�	D E
	codeMatch
�	�	E N
)
�	�	N O
;
�	�	O P
}
�	�	 
catch
�	�	 
(
�	�	 '
EndpointNotFoundException
�	�	 ,
endPointException
�	�	- >
)
�	�	> ?
{
�	�	 
logger
�	�	 
.
�	�	 
LogFatal
�	�	 
(
�	�	  
endPointException
�	�	  1
)
�	�	1 2
;
�	�	2 3
DialogManager
�	�	 
.
�	�	 #
ShowErrorMessageAlert
�	�	 3
(
�	�	3 4

Properties
�	�	4 >
.
�	�	> ?
	Resources
�	�	? H
.
�	�	H I%
dialogEndPointException
�	�	I `
)
�	�	` a
;
�	�	a b
ReturnToLoginView
�	�	 !
(
�	�	! "
)
�	�	" #
;
�	�	# $
}
�	�	 
catch
�	�	 
(
�	�	 
TimeoutException
�	�	 #
timeOutException
�	�	$ 4
)
�	�	4 5
{
�	�	 
logger
�	�	 
.
�	�	 
LogWarn
�	�	 
(
�	�	 
timeOutException
�	�	 /
)
�	�	/ 0
;
�	�	0 1
DialogManager
�	�	 
.
�	�	 #
ShowErrorMessageAlert
�	�	 3
(
�	�	3 4

Properties
�	�	4 >
.
�	�	> ?
	Resources
�	�	? H
.
�	�	H I$
dialogTimeOutException
�	�	I _
)
�	�	_ `
;
�	�	` a
ReturnToLoginView
�	�	 !
(
�	�	! "
)
�	�	" #
;
�	�	# $
}
�	�	 
catch
�	�	 
(
�	�	 $
CommunicationException
�	�	 )$
communicationException
�	�	* @
)
�	�	@ A
{
�	�	 
logger
�	�	 
.
�	�	 
LogFatal
�	�	 
(
�	�	  $
communicationException
�	�	  6
)
�	�	6 7
;
�	�	7 8
DialogManager
�	�	 
.
�	�	 #
ShowErrorMessageAlert
�	�	 3
(
�	�	3 4

Properties
�	�	4 >
.
�	�	> ?
	Resources
�	�	? H
.
�	�	H I)
dialogComunicationException
�	�	I d
)
�	�	d e
;
�	�	e f
ReturnToLoginView
�	�	 !
(
�	�	! "
)
�	�	" #
;
�	�	# $
}
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 #
RemovePieceFromPlayer
�	�	 *
(
�	�	* +
	GamePiece
�	�	+ 4
piece
�	�	5 :
)
�	�	: ;
{
�	�	 	
if
�	�	 
(
�	�	 
_player1Pieces
�	�	 
.
�	�	 
Contains
�	�	 '
(
�	�	' (
piece
�	�	( -
)
�	�	- .
)
�	�	. /
{
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
child
�	�	 "
in
�	�	# %!
stckp_Player1Pieces
�	�	& 9
.
�	�	9 :
Children
�	�	: B
.
�	�	B C
OfType
�	�	C I
<
�	�	I J
Image
�	�	J O
>
�	�	O P
(
�	�	P Q
)
�	�	Q R
)
�	�	R S
{
�	�	 
if
�	�	 
(
�	�	 
child
�	�	 
.
�	�	 
Tag
�	�	 !
==
�	�	" $
piece
�	�	% *
)
�	�	* +
{
�	�	 !
stckp_Player1Pieces
�	�	 +
.
�	�	+ ,
Children
�	�	, 4
.
�	�	4 5
Remove
�	�	5 ;
(
�	�	; <
child
�	�	< A
)
�	�	A B
;
�	�	B C
break
�	�	 
;
�	�	 
}
�	�	 
}
�	�	 
}
�	�	 
else
�	�	 
if
�	�	 
(
�	�	 
_player2Pieces
�	�	 #
.
�	�	# $
Contains
�	�	$ ,
(
�	�	, -
piece
�	�	- 2
)
�	�	2 3
)
�	�	3 4
{
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
child
�	�	 "
in
�	�	# %!
stckp_Player2Pieces
�	�	& 9
.
�	�	9 :
Children
�	�	: B
.
�	�	B C
OfType
�	�	C I
<
�	�	I J
Image
�	�	J O
>
�	�	O P
(
�	�	P Q
)
�	�	Q R
)
�	�	R S
{
�	�	 
if
�	�	 
(
�	�	 
child
�	�	 
.
�	�	 
Tag
�	�	 !
==
�	�	" $
piece
�	�	% *
)
�	�	* +
{
�	�	 !
stckp_Player2Pieces
�	�	 +
.
�	�	+ ,
Children
�	�	, 4
.
�	�	4 5
Remove
�	�	5 ;
(
�	�	; <
child
�	�	< A
)
�	�	A B
;
�	�	B C
break
�	�	 
;
�	�	 
}
�	�	 
}
�	�	 
}
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 
ResetHighlights
�	�	 $
(
�	�	$ %
)
�	�	% &
{
�	�	 	
_isBeetleMoved
�	�	 
=
�	�	 
false
�	�	 "
;
�	�	" #
foreach
�	�	 
(
�	�	 
	UIElement
�	�	 
element
�	�	 &
in
�	�	' )!
canva_GameBoardGrid
�	�	* =
.
�	�	= >
Children
�	�	> F
)
�	�	F G
{
�	�	 
if
�	�	 
(
�	�	 
element
�	�	 
is
�	�	 
Polygon
�	�	 &
cell
�	�	' +
)
�	�	+ ,
{
�	�	 
cell
�	�	 
.
�	�	 
Fill
�	�	 
=
�	�	 
Brushes
�	�	  '
.
�	�	' (
Transparent
�	�	( 3
;
�	�	3 4
cell
�	�	 
.
�	�	 
	MouseDown
�	�	 "
-=
�	�	# %
Cell_MouseDown
�	�	& 4
;
�	�	4 5
cell
�	�	 
.
�	�	 
	MouseDown
�	�	 "
-=
�	�	# %.
 PlacePieceThatIsInGame_MouseDown
�	�	& F
;
�	�	F G
}
�	�	 
}
�	�	 
foreach
�	�	 
(
�	�	 
var
�	�	 
cell
�	�	 
in
�	�	  
_cellDictionary
�	�	! 0
)
�	�	0 1
{
�	�	 
cell
�	�	 
.
�	�	 
Value
�	�	 
.
�	�	 
	IsEnabled
�	�	 $
=
�	�	% &
false
�	�	' ,
;
�	�	, -
}
�	�	 
foreach
�	�	 
(
�	�	 
	UIElement
�	�	 
element
�	�	 &
in
�	�	' )!
canva_GameBoardGrid
�	�	* =
.
�	�	= >
Children
�	�	> F
)
�	�	F G
{
�	�	 
if
�	�	 
(
�	�	 
element
�	�	 
is
�	�	 
Image
�	�	 $
image
�	�	% *
&&
�	�	+ -
image
�	�	. 3
.
�	�	3 4
Tag
�	�	4 7
is
�	�	8 :
Logic
�	�	; @
.
�	�	@ A
	GamePiece
�	�	A J
	gamePiece
�	�	K T
&&
�	�	U W
	gamePiece
�	�	X a
.
�	�	a b

PlayerName
�	�	b l
!=
�	�	m o#
UserProfileSingleton�	�	p �
.�	�	� �
username�	�	� �
)�	�	� �
{
�	�	 
image
�	�	 
.
�	�	 
	IsEnabled
�	�	 #
=
�	�	$ %
false
�	�	& +
;
�	�	+ ,
image
�	�	 
.
�	�	 
	MouseDown
�	�	 #
-=
�	�	$ &%
PieceSelected_MouseDown
�	�	' >
;
�	�	> ?
}
�	�	 
}
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 
Image_MouseDown
�	�	 $
(
�	�	$ %
object
�	�	% +
sender
�	�	, 2
,
�	�	2 3"
MouseButtonEventArgs
�	�	4 H
e
�	�	I J
)
�	�	J K
{
�	�	 	
if
�	�	 
(
�	�	 
!
�	�	 
_IsMatchFinished
�	�	 !
)
�	�	! "
{
�	�	 
if
�	�	 
(
�	�	 
DialogManager
�	�	 !
.
�	�	! "*
ShowConfirmationMessageAlert
�	�	" >
(
�	�	> ?

Properties
�	�	? I
.
�	�	I J
	Resources
�	�	J S
.
�	�	S T1
#dialogManagerConfirmationLeaveMatch
�	�	T w
)
�	�	w x
)
�	�	x y
{
�	�	 
if
�	�	 
(
�	�	 "
UserProfileSingleton
�	�	 ,
.
�	�	, -
	idAccount
�	�	- 6
==
�	�	7 9
	Constants
�	�	: C
.
�	�	C D
DefaultGuestId
�	�	D R
)
�	�	R S
{
�	�	 #
DisconnectGuestPlayer
�	�	 -
(
�	�	- .
)
�	�	. /
;
�	�	/ 0
}
�	�	 
else
�	�	 
{
�	�	 $
DisconnectNormalPlayer
�	�	 .
(
�	�	. /
)
�	�	/ 0
;
�	�	0 1
}
�	�	 
}
�	�	 
}
�
�
 
else
�
�
 
{
�
�
 
	Constants
�
�
 
.
�
�
 
	IsInMatch
�
�
 #
=
�
�
$ %
false
�
�
& +
;
�
�
+ , 
LeaveFinishedMatch
�
�
 "
(
�
�
" #
)
�
�
# $
;
�
�
$ %
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
  
LeaveFinishedMatch
�
�
 '
(
�
�
' (
)
�
�
( )
{
�
�
 	
if
�
�
 
(
�
�
 "
UserProfileSingleton
�
�
 $
.
�
�
$ %
	idAccount
�
�
% .
!=
�
�
/ 1
	Constants
�
�
2 ;
.
�
�
; <
DefaultGuestId
�
�
< J
)
�
�
J K
{
�
�
 
LeavePlayer
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
else
�
�
 
{
�
�
 
LeaveGuestPlayer
�
�
  
(
�
�
  !
)
�
�
! "
;
�
�
" #
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
 
LeavePlayer
�
�
  
(
�
�
  !
)
�
�
! "
{
�
�
 	
LoggerManager
�
�
 
logger
�
�
  
=
�
�
! "
new
�
�
# &
LoggerManager
�
�
' 4
(
�
�
4 5
this
�
�
5 9
.
�
�
9 :
GetType
�
�
: A
(
�
�
A B
)
�
�
B C
)
�
�
C D
;
�
�
D E
try
�
�
 
{
�
�
 
UserSession
�
�
 
session
�
�
 #
=
�
�
$ %
new
�
�
& )
UserSession
�
�
* 5
(
�
�
5 6
)
�
�
6 7
{
�
�
 
	idAccount
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
  4
.
�
�
4 5
	idAccount
�
�
5 >
,
�
�
> ?
username
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
 3
.
�
�
3 4
username
�
�
4 <
,
�
�
< =
	codeMatch
�
�
 
=
�
�
 
MatchSingleton
�
�
  .
.
�
�
. /
	codeMatch
�
�
/ 8
,
�
�
8 9
}
�
�
 
;
�
�
  
_gameManagerClient
�
�
 "
.
�
�
" # 
LeaveMatchFinished
�
�
# 5
(
�
�
5 6
session
�
�
6 =
.
�
�
= >
	codeMatch
�
�
> G
,
�
�
G H
session
�
�
I P
)
�
�
P Q
;
�
�
Q R
GoToMainView
�
�
 
(
�
�
 
)
�
�
 
;
�
�
 
}
�
�
 
catch
�
�
 
(
�
�
 '
EndpointNotFoundException
�
�
 ,
endPointException
�
�
- >
)
�
�
> ?
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  
endPointException
�
�
  1
)
�
�
1 2
;
�
�
2 3
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I%
dialogEndPointException
�
�
I `
)
�
�
` a
;
�
�
a b
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
catch
�
�
 
(
�
�
 
TimeoutException
�
�
 #
timeOutException
�
�
$ 4
)
�
�
4 5
{
�
�
 
logger
�
�
 
.
�
�
 
LogWarn
�
�
 
(
�
�
 
timeOutException
�
�
 /
)
�
�
/ 0
;
�
�
0 1
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I$
dialogTimeOutException
�
�
I _
)
�
�
_ `
;
�
�
` a
}
�
�
 
catch
�
�
 
(
�
�
 $
CommunicationException
�
�
 )$
communicationException
�
�
* @
)
�
�
@ A
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  $
communicationException
�
�
  6
)
�
�
6 7
;
�
�
7 8
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I)
dialogComunicationException
�
�
I d
)
�
�
d e
;
�
�
e f
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
 
LeaveGuestPlayer
�
�
 %
(
�
�
% &
)
�
�
& '
{
�
�
 	
LoggerManager
�
�
 
logger
�
�
  
=
�
�
! "
new
�
�
# &
LoggerManager
�
�
' 4
(
�
�
4 5
this
�
�
5 9
.
�
�
9 :
GetType
�
�
: A
(
�
�
A B
)
�
�
B C
)
�
�
C D
;
�
�
D E
try
�
�
 
{
�
�
 
	HiveProxy
�
�
 
.
�
�
 &
UserSessionManagerClient
�
�
 2&
userSessionManagerClient
�
�
3 K
=
�
�
L M
new
�
�
N Q&
UserSessionManagerClient
�
�
R j
(
�
�
j k
)
�
�
k l
;
�
�
l m
UserSession
�
�
 
session
�
�
 #
=
�
�
$ %
new
�
�
& )
UserSession
�
�
* 5
(
�
�
5 6
)
�
�
6 7
{
�
�
 
	idAccount
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
  4
.
�
�
4 5
	idAccount
�
�
5 >
,
�
�
> ?
username
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
 3
.
�
�
3 4
username
�
�
4 <
,
�
�
< =
	codeMatch
�
�
 
=
�
�
 
MatchSingleton
�
�
  .
.
�
�
. /
	codeMatch
�
�
/ 8
,
�
�
8 9
}
�
�
 
;
�
�
  
_gameManagerClient
�
�
 "
.
�
�
" # 
LeaveMatchFinished
�
�
# 5
(
�
�
5 6
session
�
�
6 =
.
�
�
= >
	codeMatch
�
�
> G
,
�
�
G H
session
�
�
I P
)
�
�
P Q
;
�
�
Q R&
userSessionManagerClient
�
�
 (
.
�
�
( )

Disconnect
�
�
) 3
(
�
�
3 4
session
�
�
4 ;
,
�
�
; <
false
�
�
= B
)
�
�
B C
;
�
�
C D
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
catch
�
�
 
(
�
�
 '
EndpointNotFoundException
�
�
 ,
endPointException
�
�
- >
)
�
�
> ?
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  
endPointException
�
�
  1
)
�
�
1 2
;
�
�
2 3
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I%
dialogEndPointException
�
�
I `
)
�
�
` a
;
�
�
a b
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
catch
�
�
 
(
�
�
 
TimeoutException
�
�
 #
timeOutException
�
�
$ 4
)
�
�
4 5
{
�
�
 
logger
�
�
 
.
�
�
 
LogWarn
�
�
 
(
�
�
 
timeOutException
�
�
 /
)
�
�
/ 0
;
�
�
0 1
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I$
dialogTimeOutException
�
�
I _
)
�
�
_ `
;
�
�
` a
}
�
�
 
catch
�
�
 
(
�
�
 $
CommunicationException
�
�
 )$
communicationException
�
�
* @
)
�
�
@ A
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  $
communicationException
�
�
  6
)
�
�
6 7
;
�
�
7 8
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I)
dialogComunicationException
�
�
I d
)
�
�
d e
;
�
�
e f
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
 #
DisconnectGuestPlayer
�
�
 *
(
�
�
* +
)
�
�
+ ,
{
�
�
 	
LoggerManager
�
�
 
logger
�
�
  
=
�
�
! "
new
�
�
# &
LoggerManager
�
�
' 4
(
�
�
4 5
this
�
�
5 9
.
�
�
9 :
GetType
�
�
: A
(
�
�
A B
)
�
�
B C
)
�
�
C D
;
�
�
D E
try
�
�
 
{
�
�
 
	HiveProxy
�
�
 
.
�
�
 &
UserSessionManagerClient
�
�
 2&
userSessionManagerClient
�
�
3 K
=
�
�
L M
new
�
�
N Q&
UserSessionManagerClient
�
�
R j
(
�
�
j k
)
�
�
k l
;
�
�
l m
UserSession
�
�
 
session
�
�
 #
=
�
�
$ %
new
�
�
& )
UserSession
�
�
* 5
(
�
�
5 6
)
�
�
6 7
{
�
�
 
	idAccount
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
  4
.
�
�
4 5
	idAccount
�
�
5 >
,
�
�
> ?
username
�
�
 
=
�
�
 "
UserProfileSingleton
�
�
 3
.
�
�
3 4
username
�
�
4 <
,
�
�
< =
	codeMatch
�
�
 
=
�
�
 
MatchSingleton
�
�
  .
.
�
�
. /
	codeMatch
�
�
/ 8
,
�
�
8 9
}
�
�
 
;
�
�
  
_gameManagerClient
�
�
 "
.
�
�
" #
LeaveTheGame
�
�
# /
(
�
�
/ 0
session
�
�
0 7
,
�
�
7 8
session
�
�
9 @
.
�
�
@ A
	codeMatch
�
�
A J
)
�
�
J K
;
�
�
K L&
userSessionManagerClient
�
�
 (
.
�
�
( )

Disconnect
�
�
) 3
(
�
�
3 4
session
�
�
4 ;
,
�
�
; <
false
�
�
= B
)
�
�
B C
;
�
�
C D
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
catch
�
�
 
(
�
�
 '
EndpointNotFoundException
�
�
 ,
endPointException
�
�
- >
)
�
�
> ?
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  
endPointException
�
�
  1
)
�
�
1 2
;
�
�
2 3
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I%
dialogEndPointException
�
�
I `
)
�
�
` a
;
�
�
a b
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
catch
�
�
 
(
�
�
 
TimeoutException
�
�
 #
timeOutException
�
�
$ 4
)
�
�
4 5
{
�
�
 
logger
�
�
 
.
�
�
 
LogWarn
�
�
 
(
�
�
 
timeOutException
�
�
 /
)
�
�
/ 0
;
�
�
0 1
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I$
dialogTimeOutException
�
�
I _
)
�
�
_ `
;
�
�
` a
}
�
�
 
catch
�
�
 
(
�
�
 $
CommunicationException
�
�
 )$
communicationException
�
�
* @
)
�
�
@ A
{
�
�
 
logger
�
�
 
.
�
�
 
LogFatal
�
�
 
(
�
�
  $
communicationException
�
�
  6
)
�
�
6 7
;
�
�
7 8
DialogManager
�
�
 
.
�
�
 #
ShowErrorMessageAlert
�
�
 3
(
�
�
3 4

Properties
�
�
4 >
.
�
�
> ?
	Resources
�
�
? H
.
�
�
H I)
dialogComunicationException
�
�
I d
)
�
�
d e
;
�
�
e f
ReturnToLoginView
�
�
 !
(
�
�
! "
)
�
�
" #
;
�
�
# $
}
�
�
 
}
�
�
 	
private
�
�
 
void
�
�
 $
DisconnectNormalPlayer
�
�
 +
(
�
�
+ ,
)
�
�
, -
{
�
�
 	
LoggerManager
�
�
 
logger
�
�
  
=
�
�
! "
new
�
�
# &
LoggerManager
�
�
' 4
(
�
�
4 5
this
�
�
5 9
.
�
�
9 :
GetType
�
�
: A
(
�
�
A B
)
�
�
B C
)
�
�
C D
;
�
�
D E
try
�
�
 
{
�� 
	HiveProxy
�� 
.
�� 
UserManagerClient
�� +
userManagerClient
��, =
=
��> ?
new
��@ C
UserManagerClient
��D U
(
��U V
)
��V W
;
��W X
	HiveProxy
�� 
.
�� &
LeaderBoardManagerClient
�� 2&
leaderBoardManagerClient
��3 K
=
��L M
new
��N Q&
LeaderBoardManagerClient
��R j
(
��j k
)
��k l
;
��l m
int
��  
resultModification
�� &
=
��' (
userManagerClient
��) :
.
��: ;'
UpdateMinusUserReputation
��; T
(
��T U"
UserProfileSingleton
��U i
.
��i j
username
��j r
,
��r s
$num
��t w
)
��w x
;
��x y
if
�� 
(
��  
resultModification
�� &
==
��' )
	Constants
��* 3
.
��3 4
SuccesOperation
��4 C
)
��C D
{
�� &
leaderBoardManagerClient
�� ,
.
��, -2
$UpdateLoserResultToPlayerLeaderBoard
��- Q
(
��Q R"
UserProfileSingleton
��R f
.
��f g
	idAccount
��g p
)
��p q
;
��q r
UserSession
�� 
session
��  '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
	idAccount
�� !
=
��" #"
UserProfileSingleton
��$ 8
.
��8 9
	idAccount
��9 B
,
��B C
username
��  
=
��! ""
UserProfileSingleton
��# 7
.
��7 8
username
��8 @
,
��@ A
	codeMatch
�� !
=
��" #
MatchSingleton
��$ 2
.
��2 3
	codeMatch
��3 <
,
��< =
}
�� 
;
��  
_gameManagerClient
�� &
.
��& '
LeaveTheGame
��' 3
(
��3 4
session
��4 ;
,
��; <
session
��= D
.
��D E
	codeMatch
��E N
)
��N O
;
��O P
GoToMainView
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
if
�� 
(
��  
resultModification
�� +
==
��, .
	Constants
��/ 8
.
��8 9
ErrorOperation
��9 G
)
��G H
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� 
GoToMainView
�� !
(
��! "
)
��" #
{
�� 	
MatchSingleton
�� 
.
�� 
Instance
�� #
.
��# $
ResetSingleton
��$ 2
(
��2 3
)
��3 4
;
��4 5
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� #
ChargePlayerGameBoard
�� )
(
��) *

PlayerSide
��* 4
side
��5 9
)
��9 :
{
�� 	
if
�� 
(
�� 
side
�� 
.
�� 
	playerOne
�� 
)
�� 
{
�� 
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player1
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Bottom
��5 ;
)
��; <
;
��< =
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player2
��" /
,
��/ 0
Dock
��1 5
.
��5 6
Top
��6 9
)
��9 :
;
��: ;
img_ProfilePic1
�� 
.
��  
Source
��  &
=
��' (
new
��) ,
BitmapImage
��- 8
(
��8 9
new
��9 <
Uri
��= @
(
��@ A"
UserProfileSingleton
��A U
.
��U V

imageRoute
��V `
,
��` a
UriKind
��b i
.
��i j
Relative
��j r
)
��r s
)
��s t
;
��t u"
txtBlock_PlayerName1
�� $
.
��$ %
Text
��% )
=
��* +"
UserProfileSingleton
��, @
.
��@ A
username
��A I
;
��I J
stckp_Player2
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
_numberOfPlayer
�� 
=
��  !
$num
��" #
;
��# $
}
�� 
else
�� 
if
�� 
(
�� 
side
�� 
.
�� 
	playerTwo
�� #
)
��# $
{
�� 
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player2
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Bottom
��5 ;
)
��; <
;
��< =
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player1
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Top
��5 8
)
��8 9
;
��9 :
stckp_Player1
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
img_ProfilePic2
�� 
.
��  
Source
��  &
=
��' (
new
��) ,
BitmapImage
��- 8
(
��8 9
new
��9 <
Uri
��= @
(
��@ A"
UserProfileSingleton
��A U
.
��U V

imageRoute
��V `
,
��` a
UriKind
��b i
.
��i j
Relative
��j r
)
��r s
)
��s t
;
��t u"
txtBlock_PlayerName2
�� $
.
��$ %
Text
��% )
=
��* +"
UserProfileSingleton
��, @
.
��@ A
username
��A I
;
��I J
_numberOfPlayer
�� 
=
��  !
$num
��" #
;
��# $
}
�� 
	DockPanel
�� 
	dockPanel
�� 
=
��  !
(
��" #
	DockPanel
��# ,
)
��, -
this
��- 1
.
��1 2
Content
��2 9
;
��9 :
	dockPanel
�� 
.
�� 
UpdateLayout
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
public
�� 
void
�� 
ReceivePieceMoved
�� %
(
��% &
	HiveProxy
��& /
.
��/ 0
GamePice
��0 8
piece
��9 >
)
��> ?
{
�� 	"
_hasOtherPlayerMoved
��  
=
��! "
true
��# '
;
��' ("
StopTurnTimeoutTimer
��  
(
��  !
)
��! "
;
��" #
if
�� 
(
�� 
piece
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
Logic
�� 
.
�� 
Piece
�� 
pieceReceived
�� )
=
��* +%
CreateConcretePieceType
��, C
(
��C D
piece
��D I
)
��I J
;
��J K
Logic
�� 
.
�� 
	GamePiece
�� 
gamePieceReceived
��  1
=
��2 3
new
��4 7
Logic
��8 =
.
��= >
	GamePiece
��> G
(
��G H
)
��H I
{
�� 
Piece
�� 
=
�� 
pieceReceived
�� )
,
��) *

PlayerName
�� 
=
��  
piece
��! &
.
��& '

playerName
��' 1
,
��1 2
Position
�� 
=
�� 
piece
�� $
.
��$ %
position
��% -
,
��- .
	ImagePath
�� 
=
�� 
piece
��  %
.
��% &
	imagePath
��& /
,
��/ 0
PieceNumber
�� 
=
��  !
piece
��" '
.
��' (
numberOfPiece
��( 5
,
��5 6
}
�� 
;
�� 
gamePieceReceived
�� !
.
��! "
Piece
��" '
.
��' (
Position
��( 0
=
��1 2
piece
��3 8
.
��8 9
piece
��9 >
.
��> ?
position
��? G
;
��G H
	GamePiece
�� 

pieceToAdd
�� $
=
��% &
gamePieceReceived
��' 8
;
��8 9
Point
�� 
pointOfPieceToAdd
�� '
=
��( )
gamePieceReceived
��* ;
.
��; <
Position
��< D
;
��D E
Point
�� $
previousPositionPlaced
�� ,
=
��- .
gamePieceReceived
��/ @
.
��@ A
Piece
��A F
.
��F G
Position
��G O
;
��O P4
&RemovePieceReceiveFromPlayerStackPanel
�� 6
(
��6 7
gamePieceReceived
��7 H
)
��H I
;
��I J

pieceToAdd
�� 
.
�� 
Position
�� #
=
��$ %
pointOfPieceToAdd
��& 7
;
��7 8

pieceToAdd
�� 
.
�� 
Piece
��  
.
��  !
Position
��! )
=
��* +$
previousPositionPlaced
��, B
;
��B C(
UpdatePiecePositionOnBoard
�� *
(
��* +

pieceToAdd
��+ 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
static
�� 
Logic
�� 
.
�� 
Piece
�� "%
CreateConcretePieceType
��# :
(
��: ;
	HiveProxy
��; D
.
��D E
GamePice
��E M
piece
��N S
)
��S T
{
�� 	
Logic
�� 
.
�� 
Piece
�� 
pieceObtained
�� %
=
��& '
null
��( ,
;
��, -
string
�� 
typeOfPiece
�� 
=
��  
piece
��! &
.
��& '
piece
��' ,
.
��, -
name
��- 1
;
��1 2
switch
�� 
(
�� 
typeOfPiece
�� 
)
��  
{
�� 
case
�� 
_QueenPieceName
�� $
:
��$ %
pieceObtained
�� !
=
��" #
new
��$ '
Queen
��( -
(
��- .
)
��. /
;
��/ 0
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Spider
��( .
(
��. /
)
��/ 0
;
��0 1
break
�� 
;
�� 
case
�� 
BeetlePieceName
�� $
:
��$ %
pieceObtained
�� !
=
��" #
new
��$ '
Beetle
��( .
(
��. /
)
��/ 0
;
��0 1
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Ant
��( +
(
��+ ,
)
��, -
;
��- .
break
�� 
;
�� 
case
�� 
$str
�� "
:
��" #
pieceObtained
�� !
=
��" #
new
��$ '
Grasshopper
��( 3
(
��3 4
)
��4 5
;
��5 6
break
�� 
;
�� 
}
�� 
pieceObtained
�� 
.
�� 

PlayerName
�� $
=
��% &
piece
��' ,
.
��, -

playerName
��- 7
;
��7 8
return
�� 
pieceObtained
��  
;
��  !
}
�� 	
private
�� 
void
�� 4
&RemovePieceReceiveFromPlayerStackPanel
�� ;
(
��; <
	GamePiece
��< E
piece
��F K
)
��K L
{
�� 	
	GamePiece
�� 
pieceAuxiliar
�� #
=
��$ %
piece
��& +
;
��+ ,
pieceAuxiliar
�� 
.
�� 
Position
�� "
=
��# $
new
��% (
Point
��) .
(
��. /
-
��/ 0
$num
��0 1
,
��1 2
-
��3 4
$num
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
_player1Pieces
�� 
.
�� 
Contains
�� '
(
��' (
pieceAuxiliar
��( 5
)
��5 6
)
��6 7
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player1Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
tagPiece
��/ 7
&&
��8 :
tagPiece
��; C
.
��C D
PieceNumber
��D O
==
��P R
pieceAuxiliar
��S `
.
��` a
PieceNumber
��a l
&&
��m o
tagPiece
��p x
.
��x y

PlayerName��y �
==��� �
piece��� �
.��� �

PlayerName��� �
)��� �
{
�� !
stckp_Player1Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
_player2Pieces
�� #
.
��# $
Contains
��$ ,
(
��, -
pieceAuxiliar
��- :
)
��: ;
)
��; <
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player2Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
tagPiece
��/ 7
&&
��8 :
tagPiece
��; C
.
��C D
PieceNumber
��D O
==
��P R
pieceAuxiliar
��S `
.
��` a
PieceNumber
��a l
&&
��m o
tagPiece
��p x
.
��x y

PlayerName��y �
==��� �
piece��� �
.��� �

PlayerName��� �
)��� �
{
�� !
stckp_Player2Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� *
UpdateBeetleOnAPieceReceived
�� 1
(
��1 2
	GamePiece
��2 ;
piece
��< A
,
��A B
Image
��C H 
imageOfPieceToSafe
��I [
)
��[ \
{
�� 	
	GamePiece
�� 
pieceToKeepSafe
�� %
=
��& ' 
imageOfPieceToSafe
��( :
.
��: ;
Tag
��; >
as
��? A
	GamePiece
��B K
;
��K L
List
�� 
<
�� 
Image
�� 
>
�� 
imagesOfPieces
�� &
=
��' (!
canva_GameBoardGrid
��) <
.
��< =
Children
��= E
.
��E F
OfType
��F L
<
��L M
Image
��M R
>
��R S
(
��S T
)
��T U
.
��U V
ToList
��V \
(
��\ ]
)
��] ^
;
��^ _
Image
��  
imageWhereBeetleIs
�� $
=
��% &
new
��' *
Image
��+ 0
(
��0 1
)
��1 2
;
��2 3
foreach
�� 
(
�� 
var
�� 
imageOnBeetle
�� &
in
��' )
imagesOfPieces
��* 8
)
��8 9
{
�� 
	GamePiece
�� 
beetlePiece
�� %
=
��& '
imageOnBeetle
��( 5
.
��5 6
Tag
��6 9
as
��: <
	GamePiece
��= F
;
��F G
if
�� 
(
�� 
beetlePiece
�� 
.
��  
PieceNumber
��  +
==
��, .
piece
��/ 4
.
��4 5
PieceNumber
��5 @
&&
��A C
beetlePiece
��D O
.
��O P

PlayerName
��P Z
==
��[ ]
piece
��^ c
.
��c d

PlayerName
��d n
)
��n o
{
��  
imageWhereBeetleIs
�� &
=
��' (
imageOnBeetle
��) 6
;
��6 7
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� (
_piecesCapturedByTheBeetle
�� *
.
��* +
ContainsKey
��+ 6
(
��6 7
(
��7 8
piece
��8 =
.
��= >
PieceNumber
��> I
,
��I J
piece
��K P
.
��P Q

PlayerName
��Q [
)
��[ \
)
��\ ]
)
��] ^
{
�� =
/RestoreOriginalPieceCapturedByTheBeetleReceived
�� ?
(
��? @ 
imageWhereBeetleIs
��@ R
,
��R S
piece
��T Y
)
��Y Z
;
��Z [
}
�� 
else
�� 
{
�� /
!PieceToReplaceByTheBeetleReceived
�� 1
(
��1 2
piece
��2 7
,
��7 8
pieceToKeepSafe
��9 H
,
��H I 
imageWhereBeetleIs
��J \
)
��\ ]
;
��] ^
}
�� (
RemoveExistingPieceInBoard
�� &
(
��& '
piece
��' ,
)
��, -
;
��- .(
_piecesCapturedByTheBeetle
�� &
.
��& '
Add
��' *
(
��* +
(
��+ ,
piece
��, 1
.
��1 2
PieceNumber
��2 =
,
��= >
piece
��? D
.
��D E

PlayerName
��E O
)
��O P
,
��P Q 
imageOfPieceToSafe
��R d
)
��d e
;
��e f
Polygon
�� 
cellOfPieceToSafe
�� %
=
��& '
_cellDictionary
��( 7
[
��7 8
pieceToKeepSafe
��8 G
.
��G H
Position
��H P
]
��P Q
;
��Q R8
*UpdateGameboardOfBeetlePieceReceivedToGrid
�� 6
(
��6 7
cellOfPieceToSafe
��7 H
,
��H I
piece
��J O
)
��O P
;
��P Q
}
�� 	
private
�� 
void
�� =
/RestoreOriginalPieceCapturedByTheBeetleReceived
�� D
(
��D E
Image
��E J 
imageWhereBeetleIs
��K ]
,
��] ^
	GamePiece
��_ h
beetlePiece
��i t
)
��t u
{
�� 	
Image
��  
originalPieceImage
�� $
=
��% &(
_piecesCapturedByTheBeetle
��' A
[
��A B
(
��B C
beetlePiece
��C N
.
��N O
PieceNumber
��O Z
,
��Z [
beetlePiece
��\ g
.
��g h

PlayerName
��h r
)
��r s
]
��s t
;
��t u
	GamePiece
�� 
originalPiece
�� #
=
��$ % 
originalPieceImage
��& 8
.
��8 9
Tag
��9 <
as
��= ?
	GamePiece
��@ I
;
��I J
_board
�� 
.
�� 
Remove
�� 
(
�� 
originalPiece
�� '
.
��' (
Position
��( 0
)
��0 1
;
��1 2
_board
�� 
.
�� 
Add
�� 
(
�� 
originalPiece
�� $
.
��$ %
Position
��% -
,
��- .
originalPiece
��/ <
)
��< =
;
��= >
if
�� 
(
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Contains
��- 5
(
��5 6 
imageWhereBeetleIs
��6 H
)
��H I
)
��I J
{
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrid
��  ,
=
��- .!
canva_GameBoardGrid
��/ B
.
��B C
Children
��C K
.
��K L
OfType
��L R
<
��R S
	UIElement
��S \
>
��\ ]
(
��] ^
)
��^ _
.
��_ `
ToList
��` f
(
��f g
)
��g h
;
��h i
int
�� !
indexToRemoveBeetle
�� '
=
��( )
childrenGrid
��* 6
.
��6 7
IndexOf
��7 >
(
��> ? 
imageWhereBeetleIs
��? Q
)
��Q R
;
��R S!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6!
indexToRemoveBeetle
��6 I
)
��I J
;
��J K
}
�� 
if
�� 
(
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
Contains
��- 5
(
��5 6 
originalPieceImage
��6 H
)
��H I
)
��I J
{
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� "
childrenGridNewPiece
��  4
=
��5 6!
canva_GameBoardGrid
��7 J
.
��J K
Children
��K S
.
��S T
OfType
��T Z
<
��Z [
	UIElement
��[ d
>
��d e
(
��e f
)
��f g
.
��g h
ToList
��h n
(
��n o
)
��o p
;
��p q
int
�� #
indexToRemoveNewPiece
�� )
=
��* +"
childrenGridNewPiece
��, @
.
��@ A
IndexOf
��A H
(
��H I 
originalPieceImage
��I [
)
��[ \
;
��\ ]!
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6#
indexToRemoveNewPiece
��6 K
)
��K L
;
��L M
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, - 
originalPieceImage
��- ?
)
��? @
;
��@ A(
_piecesCapturedByTheBeetle
�� &
.
��& '
Remove
��' -
(
��- .
(
��. /
beetlePiece
��/ :
.
��: ;
PieceNumber
��; F
,
��F G
beetlePiece
��H S
.
��S T

PlayerName
��T ^
)
��^ _
)
��_ `
;
��` a
}
�� 	
private
�� 
void
�� /
!PieceToReplaceByTheBeetleReceived
�� 6
(
��6 7
	GamePiece
��7 @
beetlePiece
��A L
,
��L M
	GamePiece
��N W
pieceToKeepSafe
��X g
,
��g h
Image
��i n!
imageWhereBeetleIs��o �
)��� �
{
�� 	#
RemoveImageFromCanvas
�� !
(
��! " 
imageWhereBeetleIs
��" 4
)
��4 5
;
��5 6+
RemoveImageForPieceToKeepSafe
�� )
(
��) *
pieceToKeepSafe
��* 9
)
��9 :
;
��: ;
UpdateBoard
�� 
(
�� 
beetlePiece
�� #
,
��# $
pieceToKeepSafe
��% 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
void
�� #
RemoveImageFromCanvas
�� *
(
��* +
Image
��+ 0
imageToRemove
��1 >
)
��> ?
{
�� 	
var
�� 
childrenGrids
�� 
=
�� !
canva_GameBoardGrid
��  3
.
��3 4
Children
��4 <
.
��< =
OfType
��= C
<
��C D
	UIElement
��D M
>
��M N
(
��N O
)
��O P
.
��P Q
ToList
��Q W
(
��W X
)
��X Y
;
��Y Z
int
�� 
indexToRemove
�� 
=
�� 
childrenGrids
��  -
.
��- .
IndexOf
��. 5
(
��5 6
imageToRemove
��6 C
)
��C D
;
��D E
if
�� 
(
�� 
indexToRemove
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� 
}
�� 	
private
�� 
void
�� +
RemoveImageForPieceToKeepSafe
�� 2
(
��2 3
	GamePiece
��3 <
pieceToKeepSafe
��= L
)
��L M
{
�� 	
foreach
�� 
(
�� 
	UIElement
�� 
child
�� $
in
��% '!
canva_GameBoardGrid
��( ;
.
��; <
Children
��< D
)
��D E
{
�� 
if
�� 
(
�� 
child
�� 
is
�� 
Image
�� "
image
��# (
&&
��) +
image
��, 1
.
��1 2
Tag
��2 5
is
��6 8
	GamePiece
��9 B
piece
��C H
&&
��I K
IsMatchingPiece
��L [
(
��[ \
piece
��\ a
,
��a b
pieceToKeepSafe
��c r
)
��r s
)
��s t
{
�� !
canva_GameBoardGrid
�� '
.
��' (
Children
��( 0
.
��0 1
Remove
��1 7
(
��7 8
image
��8 =
)
��= >
;
��> ?
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
static
�� 
bool
�� 
IsMatchingPiece
�� +
(
��+ ,
	GamePiece
��, 5
piece
��6 ;
,
��; <
	GamePiece
��= F
pieceToKeepSafe
��G V
)
��V W
{
�� 	
return
�� 
piece
�� 
.
�� 
PieceNumber
�� $
==
��% '
pieceToKeepSafe
��( 7
.
��7 8
PieceNumber
��8 C
&&
��D F
piece
�� 
.
�� 

PlayerName
�� #
==
��$ &
pieceToKeepSafe
��' 6
.
��6 7

PlayerName
��7 A
&&
��B D
pieceToKeepSafe
�� "
.
��" #
Position
��# +
==
��, .
piece
��/ 4
.
��4 5
Position
��5 =
;
��= >
}
�� 	
private
�� 
void
�� 
UpdateBoard
��  
(
��  !
	GamePiece
��! *
beetlePiece
��+ 6
,
��6 7
	GamePiece
��8 A
pieceToKeepSafe
��B Q
)
��Q R
{
�� 	
_board
�� 
.
�� 
Remove
�� 
(
�� 
pieceToKeepSafe
�� )
.
��) *
Position
��* 2
)
��2 3
;
��3 4
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
beetlePiece
��# .
.
��. /
Position
��/ 7
)
��7 8
&&
��9 ;
_board
��< B
[
��B C
beetlePiece
��C N
.
��N O
Position
��O W
]
��W X
==
��Y [
beetlePiece
��\ g
)
��g h
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
beetlePiece
�� )
.
��) *
Position
��* 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
void
�� (
RemoveExistingPieceInBoard
�� /
(
��/ 0
	GamePiece
��0 9
piece
��: ?
)
��? @
{
�� 	
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
piece
��# (
.
��( )
Piece
��) .
.
��. /
Position
��/ 7
)
��7 8
&&
��9 ;
_board
��< B
[
��B C
piece
��C H
.
��H I
Piece
��I N
.
��N O
Position
��O W
]
��W X
.
��X Y
PieceNumber
��Y d
==
��e g
piece
��h m
.
��m n
PieceNumber
��n y
&&
��z |
_board��} �
[��� �
piece��� �
.��� �
Piece��� �
.��� �
Position��� �
]��� �
.��� �

PlayerName��� �
==��� �
piece��� �
.��� �

PlayerName��� �
)��� �
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� #
.
��# $
Piece
��$ )
.
��) *
Position
��* 2
)
��2 3
;
��3 4
}
�� 
}
�� 	
private
�� 
void
�� 8
*UpdateGameboardOfBeetlePieceReceivedToGrid
�� ?
(
��? @
Polygon
��@ G
cell
��H L
,
��L M
	GamePiece
��N W
piece
��X ]
)
��] ^
{
�� 	
Image
�� 

pieceImage
�� 
=
�� !
ObtainImageCreation
�� 2
(
��2 3
cell
��3 7
,
��7 8
piece
��9 >
)
��> ?
;
��? @!
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -

pieceImage
��- 7
)
��7 8
;
��8 9
_board
�� 
[
�� 
piece
�� 
.
�� 
Position
�� !
]
��! "
=
��# $
piece
��% *
;
��* +
_lastPlacedCell
�� 
=
�� 
cell
�� "
;
��" #
}
�� 	
private
�� 
Image
�� &
ObtainImageOfPieceToSafe
�� .
(
��. /
	GamePiece
��/ 8
piece
��9 >
)
��> ?
{
�� 	
Image
��  
imageOfPieceToSafe
�� $
=
��% &
new
��' *
Image
��+ 0
(
��0 1
)
��1 2
;
��2 3
var
�� 
listOfImages
�� 
=
�� !
canva_GameBoardGrid
�� 2
.
��2 3
Children
��3 ;
.
��; <
OfType
��< B
<
��B C
Image
��C H
>
��H I
(
��I J
)
��J K
.
��K L
ToList
��L R
(
��R S
)
��S T
;
��T U
foreach
�� 
(
�� 
var
�� 
imageOnGrid
�� #
in
��$ &
listOfImages
��' 3
)
��3 4
{
�� 
if
�� 
(
�� 
imageOnGrid
�� 
.
�� 
Tag
�� "
is
��# %
	GamePiece
��& /
	gamePiece
��0 9
&&
��: <
	gamePiece
��= F
.
��F G
Position
��G O
==
��P R
piece
��S X
.
��X Y
Position
��Y a
)
��a b
{
��  
imageOfPieceToSafe
�� &
=
��' (
imageOnGrid
��) 4
;
��4 5
}
�� 
}
�� 
return
��  
imageOfPieceToSafe
�� %
;
��% &
}
�� 	
private
�� 
void
�� 5
'UpdateOldAndNewPlaceInGameBoardReceived
�� <
(
��< =
Image
��= B

pieceImage
��C M
,
��M N
Point
��O T
oldPosition
��U `
)
��` a
{
�� 	
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
oldPosition
��# .
)
��. /
)
��/ 0
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
oldPosition
�� )
)
��) *
;
��* +
}
�� 
var
�� #
imagesOnGameBoardGrid
�� %
=
��& '!
canva_GameBoardGrid
��( ;
.
��; <
Children
��< D
.
��D E
OfType
��E K
<
��K L
Image
��L Q
>
��Q R
(
��R S
)
��S T
.
��T U
ToList
��U [
(
��[ \
)
��\ ]
;
��] ^
	GamePiece
�� 
pieceToMove
�� !
=
��" #

pieceImage
��$ .
.
��. /
Tag
��/ 2
as
��3 5
	GamePiece
��6 ?
;
��? @
Image
�� 
imageToRemove
�� 
=
��  !
new
��" %
Image
��& +
(
��+ ,
)
��, -
;
��- .
foreach
�� 
(
�� 
var
�� 
imageOnGrid
�� $
in
��% '#
imagesOnGameBoardGrid
��( =
)
��= >
{
�� 
	GamePiece
�� 
piece
�� 
=
��  !
imageOnGrid
��" -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
if
�� 
(
�� 
piece
�� 
.
�� 
Piece
�� 
.
��  
Position
��  (
==
��) +
oldPosition
��, 7
&&
��8 :
piece
��; @
.
��@ A
PieceNumber
��A L
==
��M O
pieceToMove
��P [
.
��[ \
PieceNumber
��\ g
&&
��h j
piece
��k p
.
��p q

PlayerName
��q {
==
��| ~
pieceToMove�� �
.��� �

PlayerName��� �
)��� �
{
�� 
imageToRemove
�� !
=
��" #
imageOnGrid
��$ /
;
��/ 0
break
�� 
;
�� 
}
�� 
}
�� 
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
�� )
=
��* +!
canva_GameBoardGrid
��, ?
.
��? @
Children
��@ H
.
��H I
OfType
��I O
<
��O P
	UIElement
��P Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
int
�� 
indexToRemove
�� 
=
�� 
childrenGrids
��  -
.
��- .
IndexOf
��. 5
(
��5 6
imageToRemove
��6 C
)
��C D
;
��D E
if
�� 
(
�� 
indexToRemove
�� 
!=
��  
-
��! "
$num
��" #
)
��# $
{
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -

pieceImage
��- 7
)
��7 8
;
��8 9
	GamePiece
�� 

pieceToAdd
��  
=
��! "

pieceImage
��# -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
_board
�� 
[
�� 

pieceToAdd
�� 
.
�� 
Position
�� &
]
��& '
=
��( )

pieceToAdd
��* 4
;
��4 5
}
�� 	
private
�� 
void
�� /
!VerifyIfBeetleIsOnAPieceToPlaceIt
�� 6
(
��6 7
	GamePiece
��7 @
piece
��A F
)
��F G
{
�� 	
Point
�� 
oldPosition
�� 
=
�� 
piece
��  %
.
��% &
Piece
��& +
.
��+ ,
Position
��, 4
;
��4 5
Polygon
�� 
cell
�� 
=
�� 
_cellDictionary
�� *
[
��* +
piece
��+ 0
.
��0 1
Position
��1 9
]
��9 :
;
��: ;
Image
�� 
imageOfPiece
�� 
=
��  !
ObtainImageCreation
��! 4
(
��4 5
cell
��5 9
,
��9 :
piece
��; @
)
��@ A
;
��A B
if
�� 
(
�� (
_piecesCapturedByTheBeetle
�� )
.
��) *
ContainsKey
��* 5
(
��5 6
(
��6 7
piece
��7 <
.
��< =
PieceNumber
��= H
,
��H I
piece
��J O
.
��O P

PlayerName
��P Z
)
��Z [
)
��[ \
)
��\ ]
{
��] ^
Image
�� '
pieceContainedByTheBeetle
�� /
=
��0 1(
_piecesCapturedByTheBeetle
��2 L
[
��L M
(
��M N
piece
��N S
.
��S T
PieceNumber
��T _
,
��_ `
piece
��` e
.
��e f

PlayerName
��f p
)
��p q
]
��q r
;
��r s5
'UpdateOldAndNewPlaceInGameBoardReceived
�� 7
(
��7 8
imageOfPiece
��8 D
,
��D E
oldPosition
��F Q
)
��Q R
;
��R S>
0ReturnOriginalPositionOfPieceCapturedByTheBeetle
�� @
(
��@ A'
pieceContainedByTheBeetle
��A Z
,
��Z [
piece
��\ a
)
��a b
;
��b c
}
�� 
else
�� 
{
�� 5
'UpdateOldAndNewPlaceInGameBoardReceived
�� 7
(
��7 8
imageOfPiece
��8 D
,
��D E
oldPosition
��E P
)
��P Q
;
��Q R
}
�� 
}
�� 	
private
�� 
void
�� (
UpdatePiecePositionOnBoard
�� /
(
��/ 0
	GamePiece
��0 9
piece
��: ?
)
��? @
{
�� 	
_cellDictionary
�� 
.
�� 
TryGetValue
�� '
(
��' (
piece
��( -
.
��- .
Position
��. 6
,
��6 7
out
��8 ;
var
��< ?
cell
��@ D
)
��D E
;
��E F
if
�� 
(
�� 
piece
�� 
.
�� 
Piece
�� 
.
�� 
Name
��  
==
��! #
BeetlePieceName
��$ 3
&&
��4 6
_board
��7 =
.
��= >
ContainsKey
��> I
(
��I J
piece
��J O
.
��O P
Position
��P X
)
��X Y
)
��Y Z
{
�� 
Image
��  
imageOfPieceToSafe
�� (
=
��) *&
ObtainImageOfPieceToSafe
��+ C
(
��C D
piece
��D I
)
��I J
;
��J K*
UpdateBeetleOnAPieceReceived
�� ,
(
��, -
piece
��- 2
,
��2 3 
imageOfPieceToSafe
��4 F
)
��F G
;
��G H
}
�� 
else
�� 
if
�� 
(
�� 
piece
�� 
.
�� 
Piece
�� 
.
��  
Name
��  $
==
��% '
BeetlePieceName
��( 7
&&
��8 :(
_piecesCapturedByTheBeetle
��; U
.
��U V
ContainsKey
��V a
(
��a b
(
��b c
piece
��c h
.
��h i
PieceNumber
��i t
,
��t u
piece
��v {
.
��{ |

PlayerName��| �
)��� �
)��� �
)��� �
{
�� /
!VerifyIfBeetleIsOnAPieceToPlaceIt
�� 1
(
��1 2
piece
��2 7
)
��7 8
;
��8 9
}
�� 
else
�� 
{
�� .
 PlacePieceReceivedOnCellToUpdate
�� 0
(
��0 1
cell
��1 5
,
��5 6
piece
��7 <
)
��< =
;
��= >
}
�� 
}
�� 	
private
�� 
void
�� .
 PlacePieceReceivedOnCellToUpdate
�� 5
(
��5 6
Polygon
��6 =
cell
��> B
,
��B C
	GamePiece
��D M
piece
��N S
)
��S T
{
�� 	
if
�� 
(
�� 
cell
�� 
!=
�� 
null
�� 
&&
�� 
piece
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
Point
�� 
oldPosition
�� !
=
��" #
piece
��$ )
.
��) *
Piece
��* /
.
��/ 0
Position
��0 8
;
��8 9
Image
�� 

pieceImage
��  
=
��! "!
ObtainImageCreation
��# 6
(
��6 7
cell
��7 ;
,
��; <
piece
��< A
)
��A B
;
��B C
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� &
(
��& '
piece
��' ,
.
��, -
Piece
��- 2
.
��2 3
Position
��3 ;
)
��; <
)
��< =
{
�� !
UpdateReceivedPiece
�� '
(
��' (

pieceImage
��( 2
,
��2 3
oldPosition
��4 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� !
canva_GameBoardGrid
�� '
.
��' (
Children
��( 0
.
��0 1
Add
��1 4
(
��4 5

pieceImage
��5 ?
)
��? @
;
��@ A
_board
�� 
[
�� 
piece
��  
.
��  !
Position
��! )
]
��) *
=
��+ ,
piece
��- 2
;
��2 3
_lastPlacedCell
�� #
=
��$ %
cell
��& *
;
��* +
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� !
UpdateReceivedPiece
�� (
(
��( )
Image
��) .

pieceImage
��/ 9
,
��9 :
Point
��; @
oldPosition
��A L
)
��L M
{
�� 	
if
�� 
(
�� 
_board
�� 
.
�� 
ContainsKey
�� "
(
��" #
oldPosition
��# .
)
��. /
)
��/ 0
{
�� 
_board
�� 
.
�� 
Remove
�� 
(
�� 
oldPosition
�� )
)
��) *
;
��* +
}
�� 
var
�� 
listOfElements
�� 
=
��  !
canva_GameBoardGrid
��! 4
.
��4 5
Children
��5 =
.
��= >
OfType
��> D
<
��D E
Image
��E J
>
��J K
(
��K L
)
��L M
.
��M N
ToList
��N T
(
��T U
)
��U V
;
��V W
	GamePiece
�� 
piece
�� 
=
�� 

pieceImage
�� (
.
��( )
Tag
��) ,
as
��- /
	GamePiece
��0 9
;
��9 :
Image
�� 
imageToQuite
�� 
=
��  
new
��! $
Image
��% *
(
��* +
)
��+ ,
;
��, -
foreach
�� 
(
�� 
var
�� 
element
��  
in
��! #
listOfElements
��$ 2
)
��2 3
{
�� 
	GamePiece
�� 
pieceToQuit
�� %
=
��& '
(
��( )
	GamePiece
��) 2
)
��2 3
element
��3 :
.
��: ;
Tag
��; >
;
��> ?
if
�� 
(
�� 
pieceToQuit
�� 
.
�� 
Position
�� '
==
��( *
oldPosition
��+ 6
&&
��7 9
pieceToQuit
��: E
.
��E F
PieceNumber
��F Q
==
��R T
piece
��U Z
.
��Z [
PieceNumber
��[ f
&&
��g i
pieceToQuit
��j u
.
��u v

PlayerName��v �
==��� �
piece��� �
.��� �

PlayerName��� �
)��� �
{
�� 
imageToQuite
��  
=
��! "
element
��# *
;
��* +
break
�� 
;
�� 
}
�� 
}
�� 7
)EliminateDuplicatedImagesIfExistsReceived
�� 5
(
��5 6
oldPosition
��6 A
)
��A B
;
��B C
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
�� )
=
��* +!
canva_GameBoardGrid
��, ?
.
��? @
Children
��@ H
.
��H I
OfType
��I O
<
��O P
	UIElement
��P Y
>
��Y Z
(
��Z [
)
��[ \
.
��\ ]
ToList
��] c
(
��c d
)
��d e
;
��e f
int
�� 
indexToRemove
�� 
=
�� 
childrenGrids
��  -
.
��- .
IndexOf
��. 5
(
��5 6
imageToQuite
��6 B
)
��B C
;
��C D
if
�� 
(
�� 
indexToRemove
�� 
!=
�� 
-
��  !
$num
��! "
)
��" #
{
�� !
canva_GameBoardGrid
�� #
.
��# $
Children
��$ ,
.
��, -
RemoveAt
��- 5
(
��5 6
indexToRemove
��6 C
)
��C D
;
��D E
}
�� !
canva_GameBoardGrid
�� 
.
��  
Children
��  (
.
��( )
Add
��) ,
(
��, -

pieceImage
��- 7
)
��7 8
;
��8 9
	GamePiece
�� 

pieceToAdd
��  
=
��! "

pieceImage
��# -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
_board
�� 
[
�� 

pieceToAdd
�� 
.
�� 
Position
�� &
]
��& '
=
��( )

pieceToAdd
��* 4
;
��4 5
}
�� 	
private
�� 
void
�� 7
)EliminateDuplicatedImagesIfExistsReceived
�� >
(
��> ?
Point
��? D
oldPosition
��E P
)
��P Q
{
�� 	
var
�� 
imagesToRemove
�� 
=
��  !
canva_GameBoardGrid
��! 4
.
��4 5
Children
��5 =
.
�� 
OfType
�� 
<
�� 
Image
�� 
>
�� 
(
�� 
)
��  
.
�� 
Where
�� 
(
�� 
image
�� 
=>
�� 
image
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
piece
��/ 4
&&
��5 7
piece
��8 =
.
��= >
Position
��> F
==
��G I
oldPosition
��J U
)
��U V
.
�� 
ToList
�� 
(
�� 
)
�� 
;
�� 
for
�� 
(
�� 
int
�� 
indexOfImage
�� !
=
��" #
$num
��$ %
;
��% &
indexOfImage
��' 3
<
��4 5
imagesToRemove
��6 D
.
��D E
Count
��E J
;
��J K
indexOfImage
��L X
++
��X Z
)
��Z [
{
�� 
Image
�� 
imageToQuit
�� !
=
��" #
imagesToRemove
��$ 2
[
��2 3
indexOfImage
��3 ?
]
��? @
;
��@ A
List
�� 
<
�� 
	UIElement
�� 
>
�� 
childrenGrids
��  -
=
��. /!
canva_GameBoardGrid
��0 C
.
��C D
Children
��D L
.
��L M
OfType
��M S
<
��S T
	UIElement
��T ]
>
��] ^
(
��^ _
)
��_ `
.
��` a
ToList
��a g
(
��g h
)
��h i
;
��i j
int
�� 
indexToRemove
�� !
=
��" #
childrenGrids
��$ 1
.
��1 2
IndexOf
��2 9
(
��9 :
imageToQuit
��: E
)
��E F
;
��F G
if
�� 
(
�� 
indexToRemove
�� !
!=
��" $
-
��% &
$num
��& '
)
��' (
{
�� !
canva_GameBoardGrid
�� '
.
��' (
Children
��( 0
.
��0 1
RemoveAt
��1 9
(
��9 :
indexToRemove
��: G
)
��G H
;
��H I
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
ReceiveTurns
��  
(
��  !
bool
��! %
isTurn
��& ,
)
��, -
{
�� 	
if
�� 
(
�� 
isTurn
�� 
)
�� 
{
�� "
StopTurnTimeoutTimer
�� $
(
��$ %
)
��% &
;
��& '!
txtBlock_PlayerName
�� #
.
��# $
Text
��$ (
=
��) *"
UserProfileSingleton
��+ ?
.
��? @
username
��@ H
;
��H I 
_isOtherPlayerTurn
�� "
=
��# $
false
��% *
;
��* +"
_hasOtherPlayerMoved
�� $
=
��% &
false
��' ,
;
��, -
if
�� 
(
�� 
_numberOfPlayer
�� #
==
��$ &
$num
��' (
)
��( )
{
�� 
stckp_Player1
�� !
.
��! "
	IsEnabled
��" +
=
��, -
true
��. 2
;
��2 3!
EnablePiecesOnBoard
�� '
(
��' (
)
��( )
;
��) *+
UnlockPlacesWhereThereIsPiece
�� 1
(
��1 2
)
��2 3
;
��3 4
}
�� 
else
�� 
{
�� 
stckp_Player2
�� !
.
��! "
	IsEnabled
��" +
=
��, -
true
��. 2
;
��2 3+
UnlockPlacesWhereThereIsPiece
�� 1
(
��1 2
)
��2 3
;
��3 4!
EnablePiecesOnBoard
�� '
(
��' (
)
��( )
;
��) *
}
�� 
_numberOfTurn
�� 
++
�� 
;
��  
}
�� 
else
�� 
{
�� #
StartTurnTimeoutTimer
�� %
(
��% &
)
��& '
;
��' (
for
�� 
(
�� 
int
�� 
indexUsersInMatch
�� *
=
��+ ,
$num
��- .
;
��. /
indexUsersInMatch
��0 A
<
��B C
_usersInGame
��D P
.
��P Q
Count
��Q V
;
��V W
indexUsersInMatch
��X i
++
��i k
)
��k l
{
�� 
if
�� 
(
�� 
_usersInGame
�� $
[
��$ %
indexUsersInMatch
��% 6
]
��6 7
.
��7 8
username
��8 @
!=
��A C"
UserProfileSingleton
��D X
.
��X Y
username
��Y a
)
��a b
{
�� !
txtBlock_PlayerName
�� +
.
��+ ,
Text
��, 0
=
��1 2
_usersInGame
��3 ?
[
��? @
indexUsersInMatch
��@ Q
]
��Q R
.
��R S
username
��S [
;
��[ \
}
�� 
}
��  
_isOtherPlayerTurn
�� "
=
��# $
true
��% )
;
��) *
if
�� 
(
�� 
_numberOfPlayer
�� #
==
��$ &
$num
��' (
)
��( )
{
�� 
stckp_Player1
�� !
.
��! "
	IsEnabled
��" +
=
��, -
false
��. 3
;
��3 4!
EnablePiecesOnBoard
�� '
(
��' (
)
��( )
;
��) *
}
�� 
else
�� 
{
�� 
stckp_Player2
�� !
.
��! "
	IsEnabled
��" +
=
��, -
false
��. 3
;
��3 4!
EnablePiecesOnBoard
�� '
(
��' (
)
��( )
;
��) *
}
�� "
DisablePiecesOnBoard
�� $
(
��$ %
)
��% &
;
��& '
}
�� 
}
�� 	
private
�� 
void
�� #
StartTurnTimeoutTimer
�� *
(
��* +
)
��+ ,
{
�� 	
_turnTimeoutTimer
�� 
=
�� 
new
��  #
TimersTimer
��$ /
(
��/ 0
$num
��0 5
)
��5 6
;
��6 7
_turnTimeoutTimer
�� 
.
�� 
Elapsed
�� %
+=
��& (
OnTurnTimeout
��) 6
;
��6 7
_turnTimeoutTimer
�� 
.
�� 
	AutoReset
�� '
=
��( )
false
��* /
;
��/ 0
_turnTimeoutTimer
�� 
.
�� 
Enabled
�� %
=
��& '
true
��( ,
;
��, -
}
�� 	
private
�� 
void
�� "
StopTurnTimeoutTimer
�� )
(
��) *
)
��* +
{
�� 	
if
�� 
(
�� 
_turnTimeoutTimer
�� !
!=
��" $
null
��% )
)
��) *
{
�� 
_turnTimeoutTimer
�� !
.
��! "
Stop
��" &
(
��& '
)
��' (
;
��( )
_turnTimeoutTimer
�� !
.
��! "
Dispose
��" )
(
��) *
)
��* +
;
��+ ,
_turnTimeoutTimer
�� !
=
��" #
null
��$ (
;
��( )
}
�� 
}
�� 	
private
�� 
void
�� 
OnTurnTimeout
�� "
(
��" #
object
��# )
sender
��* 0
,
��0 1
ElapsedEventArgs
��2 B
e
��C D
)
��D E
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
��  
_isOtherPlayerTurn
�� "
)
��" #
{
�� 
try
�� 
{
�� 
bool
�� 
isConnected
�� $
=
��% & 
_gameManagerClient
��' 9
.
��9 :
CheckConnection
��: I
(
��I J
_usersInGame
��J V
.
��V W
First
��W \
(
��\ ]
u
��] ^
=>
��_ a
u
��b c
.
��c d
username
��d l
!=
��m o#
UserProfileSingleton��p �
.��� �
username��� �
)��� �
.��� �
username��� �
)��� �
;��� �
if
�� 
(
�� 
!
�� 
isConnected
�� $
)
��$ %
{
�� !
NotifyDisconnection
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 
catch
�� 
(
�� 
TimeoutException
�� '
timeOutException
��( 8
)
��8 9
{
�� 
logger
�� 
.
�� 
LogWarn
�� "
(
��" #
timeOutException
��# 3
)
��3 4
;
��4 5!
NotifyDisconnection
�� '
(
��' (
)
��( )
;
��) *
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� !
NotifyDisconnection
�� (
(
��( )
)
��) *
{
�� 	

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I#
dialogErrorConnection
��I ^
)
��^ _
;
��_ `
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
EnablePiecesOnBoard
�� (
(
��( )
)
��) *
{
�� 	
foreach
�� 
(
�� 
	UIElement
�� 
element
�� &
in
��' )!
canva_GameBoardGrid
��* =
.
��= >
Children
��> F
)
��F G
{
�� 
if
�� 
(
�� 
element
�� 
is
�� 
Image
�� $
image
��% *
&&
��+ -
image
��. 3
.
��3 4
Tag
��4 7
is
��8 :
Logic
��; @
.
��@ A
	GamePiece
��A J
	gamePiece
��K T
&&
��U W
	gamePiece
��X a
.
��a b

PlayerName
��b l
==
��m o#
UserProfileSingleton��p �
.��� �
username��� �
)��� �
{
�� 
image
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
true
��& *
;
��* +
image
�� 
.
�� 
	MouseDown
�� #
+=
��$ &%
PieceSelected_MouseDown
��' >
;
��> ?
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
DisablePiecesOnBoard
�� )
(
��) *
)
��* +
{
�� 	
foreach
�� 
(
�� 
	UIElement
�� 
element
�� &
in
��' )!
canva_GameBoardGrid
��* =
.
��= >
Children
��> F
)
��F G
{
�� 
if
�� 
(
�� 
element
�� 
is
�� 
Image
�� $
image
��% *
&&
��+ -
image
��. 3
.
��3 4
Tag
��4 7
is
��8 :
Logic
��; @
.
��@ A
	GamePiece
��A J
)
��J K
{
�� 
image
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
false
��& +
;
��+ ,
image
�� 
.
�� 
	MouseDown
�� #
-=
��$ &%
PieceSelected_MouseDown
��' >
;
��> ?
}
�� 
}
�� 
}
�� 	
public
�� 
void
�� #
ReceivePlayersToMatch
�� )
(
��) *
UserSession
��* 5
[
��5 6
]
��6 7
userSession
��8 C
)
��C D
{
�� 	
_usersInGame
�� 
=
�� 
userSession
�� &
.
��& '
ToList
��' -
(
��- .
)
��. /
;
��/ 0
for
�� 
(
�� 
int
�� 
indexUsersInMatch
�� %
=
��& '
$num
��( )
;
��) *
indexUsersInMatch
��* ;
<
��< =
_usersInGame
��> J
.
��J K
Count
��K P
;
��P Q
indexUsersInMatch
��Q b
++
��b d
)
��d e
{
�� 
UserSession
�� 
user
��  
=
��! "
_usersInGame
��# /
[
��/ 0
indexUsersInMatch
��0 A
]
��A B
;
��B C
Profile
�� 
profileUser
�� #
=
��$ %
GetUserProfile
��& 4
(
��4 5
user
��5 9
)
��9 :
;
��: ;!
UpdatePlayerDisplay
�� #
(
��# $
user
��$ (
,
��( )
profileUser
��* 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
static
�� 
Profile
�� 
GetUserProfile
�� -
(
��- .
UserSession
��. 9
user
��: >
)
��> ?
{
�� 	
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
Profile
�� 
profileUser
�� 
=
��  !
userManagerClient
��" 3
.
��3 4&
GetUserProfileByUsername
��4 L
(
��L M
user
��M Q
.
��Q R
username
��R Z
)
��Z [
;
��[ \
if
�� 
(
�� 
profileUser
�� 
.
�� 
idAccesAccount
�� *
==
��+ -
	Constants
��. 7
.
��7 8
ErrorOperation
��8 F
||
��G I
user
��J N
.
��N O
	idAccount
��O X
==
��Y [
	Constants
��\ e
.
��e f
DefaultGuestId
��f t
)
��t u
{
�� 
profileUser
�� 
.
�� 
	imagePath
�� %
=
��& '
$str
��( E
;
��E F
}
�� 
return
�� 
profileUser
�� 
;
�� 
}
�� 	
private
�� 
void
�� !
UpdatePlayerDisplay
�� (
(
��( )
UserSession
��) 4
user
��5 9
,
��9 :
Profile
��; B
profileUser
��C N
)
��N O
{
�� 	
_usernamePlayer1
�� 
=
�� 
_usersInGame
�� +
[
��+ ,
$num
��, -
]
��- .
.
��. /
username
��/ 7
;
��7 8
if
�� 
(
�� $
IsPlayer1SlotAvailable
�� &
(
��& '
user
��' +
)
��+ ,
)
��, -
{
�� "
txtBlock_PlayerName1
�� $
.
��$ %
Text
��% )
=
��* +
user
��, 0
.
��0 1
username
��1 9
;
��9 :
img_ProfilePic1
�� 
.
��  
Source
��  &
=
��' (
new
��) ,
BitmapImage
��- 8
(
��8 9
new
��9 <
Uri
��= @
(
��@ A
profileUser
��A L
.
��L M
	imagePath
��M V
,
��V W
UriKind
��X _
.
��_ `
Relative
��` h
)
��h i
)
��i j
;
��j k
}
�� 
if
�� 
(
�� 
_usersInGame
�� 
.
�� 
Count
�� "
==
��# %
$num
��& '
)
��' (
{
�� 
_usernamePlayer2
��  
=
��! "
_usersInGame
��# /
[
��/ 0
$num
��0 1
]
��1 2
.
��2 3
username
��3 ;
;
��; <
if
�� 
(
�� $
IsPlayer2SlotAvailable
�� *
(
��* +
user
��+ /
)
��/ 0
)
��0 1
{
�� "
txtBlock_PlayerName2
�� (
.
��( )
Text
��) -
=
��. /
user
��0 4
.
��4 5
username
��5 =
;
��= >
img_ProfilePic2
�� #
.
��# $
Source
��$ *
=
��+ ,
new
��- 0
BitmapImage
��1 <
(
��< =
new
��= @
Uri
��A D
(
��D E
profileUser
��E P
.
��P Q
	imagePath
��Q Z
,
��Z [
UriKind
��\ c
.
��c d
Relative
��d l
)
��l m
)
��m n
;
��n o
}
�� 
}
�� 
LoadPlayerPieces
�� 
(
�� !
stckp_Player1Pieces
�� 0
,
��0 1
_player1Pieces
��2 @
,
��@ A
_usernamePlayer1
��B R
)
��R S
;
��S T
LoadPlayerPieces
�� 
(
�� !
stckp_Player2Pieces
�� 0
,
��0 1
_player2Pieces
��2 @
,
��@ A
_usernamePlayer2
��B R
)
��R S
;
��S T
}
�� 	
private
�� 
bool
�� $
IsPlayer1SlotAvailable
�� +
(
��+ ,
UserSession
��, 7
user
��8 <
)
��< =
{
�� 	
return
�� "
txtBlock_PlayerName1
�� '
.
��' (
Text
��( ,
==
��- /

Properties
��0 :
.
��: ;
	Resources
��; D
.
��D E
txtbl_Player1
��E R
&&
��S U"
txtBlock_PlayerName2
�� '
.
��' (
Text
��( ,
==
��- /"
UserProfileSingleton
��0 D
.
��D E
username
��E M
&&
��N P
!
�� 
user
�� 
.
�� 
username
�� !
.
��! "
Equals
��" (
(
��( )"
txtBlock_PlayerName2
��) =
.
��= >
Text
��> B
)
��B C
;
��C D
}
�� 	
private
�� 
bool
�� $
IsPlayer2SlotAvailable
�� +
(
��+ ,
UserSession
��, 7
user
��8 <
)
��< =
{
�� 	
return
�� "
txtBlock_PlayerName2
�� '
.
��' (
Text
��( ,
==
��- /

Properties
��0 :
.
��: ;
	Resources
��; D
.
��D E
txtbl_Player2
��E R
&&
��S U"
txtBlock_PlayerName1
�� '
.
��' (
Text
��( ,
==
��- /"
UserProfileSingleton
��0 D
.
��D E
username
��E M
&&
��N P
!
�� 
user
�� 
.
�� 
username
�� !
.
��! "
Equals
��" (
(
��( )"
txtBlock_PlayerName1
��) =
.
��= >
Text
��> B
)
��B C
;
��C D
}
�� 	
public
�� 
void
�� .
 ReceivePlayerHasLeftNotification
�� 4
(
��4 5
bool
��5 9!
doPlayerLeftTheGame
��: M
)
��M N
{
�� 	
if
�� 
(
�� !
doPlayerLeftTheGame
�� #
)
��# $
{
�� 
LoggerManager
�� 
logger
�� $
=
��% &
new
��' *
LoggerManager
��+ 8
(
��8 9
this
��9 =
.
��= >
GetType
��> E
(
��E F
)
��F G
)
��G H
;
��H I
bool
�� 
exceptionOccurred
�� &
=
��' (
false
��) .
;
��. /
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K'
dialogUserHasLeftTheMatch
��K d
)
��d e
;
��e f
try
�� 
{
�� 
UserSession
�� 
userSession
��  +
=
��, -
CreateUserSession
��. ?
(
��? @
)
��@ A
;
��A B
if
�� 
(
�� "
UserProfileSingleton
�� ,
.
��, -
	idAccount
��- 6
!=
��7 9
	Constants
��: C
.
��C D
DefaultGuestId
��D R
)
��R S
{
�� "
UpdateUserReputation
�� ,
(
��, -
userSession
��- 8
)
��8 9
;
��9 :
}
��  
_gameManagerClient
�� &
.
��& '
LeaveTheGame
��' 3
(
��3 4
userSession
��4 ?
,
��? @
userSession
��A L
.
��L M
	codeMatch
��M V
)
��V W
;
��W X
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0'
endpointNotFoundException
��1 J
)
��J K
{
�� 
HandleException
�� #
(
��# $'
endpointNotFoundException
��$ =
,
��= >
logger
��? E
)
��E F
;
��F G
exceptionOccurred
�� %
=
��& '
true
��( ,
;
��, -
}
�� 
catch
�� 
(
�� 
TimeoutException
�� &
timeoutException
��' 7
)
��7 8
{
�� 
HandleException
�� #
(
��# $
timeoutException
��$ 4
,
��4 5
logger
��6 <
)
��< =
;
��= >
exceptionOccurred
�� %
=
��& '
true
��( ,
;
��, -
}
�� 
catch
�� 
(
�� $
CommunicationException
�� ,$
communicationException
��- C
)
��C D
{
�� 
HandleException
�� #
(
��# $$
communicationException
��$ :
,
��: ;
logger
��< B
)
��B C
;
��C D
exceptionOccurred
�� %
=
��& '
true
��( ,
;
��, -
}
�� $
HandlePostLeaveActions
�� &
(
��& '
exceptionOccurred
��' 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� 
UserSession
�� 
CreateUserSession
�� -
(
��- .
)
��. /
{
�� 	
return
�� 
new
�� 
UserSession
�� "
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� /
.
��/ 0
username
��0 8
,
��8 9
	idAccount
�� 
=
�� "
UserProfileSingleton
�� 0
.
��0 1
	idAccount
��1 :
,
��: ;
	codeMatch
�� 
=
�� 
MatchSingleton
�� *
.
��* +
	codeMatch
��+ 4
}
�� 
;
�� 
}
�� 	
private
�� 
static
�� 
void
�� "
UpdateUserReputation
�� 0
(
��0 1
UserSession
��1 <
userSession
��= H
)
��H I
{
�� 	
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
UserManagerClient
��@ Q
(
��Q R
)
��R S
;
��S T
userManagerClient
�� 
.
�� &
UpdatePlusUserReputation
�� 6
(
��6 7
userSession
��7 B
.
��B C
username
��C K
,
��K L
$num
��M O
)
��O P
;
��P Q
}
�� 	
private
�� 
static
�� 
void
�� 
HandleException
�� +
(
��+ ,
	Exception
��, 5
	exception
��6 ?
,
��? @
LoggerManager
��A N
logger
��O U
)
��U V
{
�� 	
if
�� 
(
�� 
	exception
�� 
is
�� '
EndpointNotFoundException
�� 6
)
��6 7
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
else
�� 
if
�� 
(
�� 
	exception
�� 
is
�� !
TimeoutException
��" 2
)
��2 3
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
	exception
�� (
)
��( )
;
��) *
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
else
�� 
if
�� 
(
�� 
	exception
�� 
is
�� !$
CommunicationException
��" 8
)
��8 9
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
	exception
��  )
)
��) *
;
��* +
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� $
HandlePostLeaveActions
�� +
(
��+ ,
bool
��, 0
exceptionOccurred
��1 B
)
��B C
{
�� 	
if
�� 
(
�� 
exceptionOccurred
�� !
||
��" $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
==
��D F
	Constants
��G P
.
��P Q
DefaultGuestId
��Q _
)
��_ `
{
�� 
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
else
�� 
{
�� 
GoToMainView
�� 
(
�� 
)
�� 
;
�� 
}
�� 
}
�� 	
public
�� 
void
�� 
ReturnToLoginView
�� %
(
��% &
)
��& '
{
�� 	
MatchSingleton
�� 
.
�� 
Instance
�� #
.
��# $
ResetSingleton
��$ 2
(
��2 3
)
��3 4
;
��4 5"
UserProfileSingleton
��  
.
��  !
Instance
��! )
.
��) *
ResetSingleton
��* 8
(
��8 9
)
��9 :
;
��: ;
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
	loginView
��, 5
)
��5 6
;
��6 7
}
�� 	
public
�� 
void
�� %
ReceiveFinalMatchResult
�� +
(
��+ ,
string
��, 2
winner
��3 9
)
��9 :
{
�� 	)
LockGameBoardAndStackPanels
�� '
(
��' (
)
��( )
;
��) *
if
�� 
(
�� 
winner
�� 
==
�� 
$str
��  
)
��  !
{
��  
ShowVictoryMessage
�� "
(
��" #
$str
��# )
)
��) *
;
��* +
_IsMatchFinished
��  
=
��! "
true
��# '
;
��' (
if
�� 
(
�� "
UserProfileSingleton
�� '
.
��' (
	idAccount
��( 1
!=
��2 4
	Constants
��5 >
.
��> ?
DefaultGuestId
��? M
)
��M N
{
�� %
RegisterMatchDrawResult
�� +
(
��+ ,
)
��, -
;
��- .
}
�� 
}
�� 
else
�� 
{
��  
ShowVictoryMessage
�� "
(
��" #
winner
��# )
)
��) *
;
��* +
_IsMatchFinished
��  
=
��! "
true
��# '
;
��' (
if
�� 
(
�� "
UserProfileSingleton
�� (
.
��( )
	idAccount
��) 2
!=
��3 5
	Constants
��6 ?
.
��? @
DefaultGuestId
��@ N
)
��N O
{
�� !
RegisterMatchResult
�� '
(
��' (
winner
��( .
)
��. /
;
��/ 0
}
�� 
}
�� 
	Constants
�� 
.
�� 
	IsInMatch
�� 
=
��  !
false
��" '
;
��' (
}
�� 	
private
�� 
void
�� !
RegisterMatchResult
�� (
(
��( )
string
��) /
winner
��0 6
)
��6 7
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
LeaderBoardManagerClient
�� 2&
leaderBoardManagerClient
��3 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \&
LeaderBoardManagerClient
��\ t
(
��t u
)
��u v
;
��v w
	HiveProxy
�� 
.
�� '
MatchCreatorManagerClient
�� 3'
matchCreatorManagerClient
��4 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^'
MatchCreatorManagerClient
��^ w
(
��w x
)
��x y
;
��y z
int
�� 
updateResult
��  
=
��! "
$num
��# $
;
��$ %
if
�� 
(
�� 
winner
�� 
==
�� "
UserProfileSingleton
�� 2
.
��2 3
username
��3 ;
)
��; <
{
�� 
updateResult
��  
=
��! "&
leaderBoardManagerClient
��# ;
.
��; <3
%UpdateWinnerResultToPlayerLeaderBoard
��< a
(
��a b"
UserProfileSingleton
��b v
.
��v w
	idAccount��w �
)��� �
;��� �
}
�� 
else
�� 
{
�� 
updateResult
��  
=
��! "&
leaderBoardManagerClient
��# ;
.
��; <2
$UpdateLoserResultToPlayerLeaderBoard
��< `
(
��` a"
UserProfileSingleton
��a u
.
��u v
	idAccount
��v 
)�� �
;��� �
}
�� 
if
�� 
(
�� 
updateResult
��  
==
��! #
$num
��$ %
)
��% &
{
�� 
MatchCreator
��  
matchCreation
��! .
=
��/ 0
new
��1 4
MatchCreator
��5 A
(
��A B
)
��B C
{
�� 
idCreatorAccount
�� (
=
��) *"
UserProfileSingleton
��+ ?
.
��? @
	idAccount
��@ I
,
��I J
	codeMatch
�� !
=
��" #
MatchSingleton
��$ 2
.
��2 3
	codeMatch
��3 <
,
��< =

stateMatch
�� "
=
��# $
$str
��% /
}
�� 
;
�� '
matchCreatorManagerClient
�� -
.
��- .
UpdateMatchState
��. >
(
��> ?
matchCreation
��? L
)
��L M
;
��M N
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M(
dialogCouldntSaveMatchInfo
��M g
)
��g h
;
��h i
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� %
RegisterMatchDrawResult
�� ,
(
��, -
)
��- .
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
LeaderBoardManagerClient
�� 2&
leaderBoardManagerClient
��3 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \&
LeaderBoardManagerClient
��\ t
(
��t u
)
��u v
;
��v w
	HiveProxy
�� 
.
�� '
MatchCreatorManagerClient
�� 3'
matchCreatorManagerClient
��4 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^'
MatchCreatorManagerClient
��^ w
(
��w x
)
��x y
;
��y z
int
�� 
updateResult
��  
=
��! "&
leaderBoardManagerClient
��# ;
.
��; <1
#UpdateDrawResultToPlayerLeaderBoard
��< _
(
��_ `"
UserProfileSingleton
��` t
.
��t u
	idAccount
��u ~
)
��~ 
;�� �
if
�� 
(
�� 
updateResult
�� 
==
��  "
$num
��# $
)
��$ %
{
�� 
MatchCreator
��  
matchCreation
��! .
=
��/ 0
new
��1 4
MatchCreator
��5 A
(
��A B
)
��B C
{
�� 
idCreatorAccount
�� (
=
��) *"
UserProfileSingleton
��+ ?
.
��? @
	idAccount
��@ I
,
��I J
	codeMatch
�� !
=
��" #
MatchSingleton
��$ 2
.
��2 3
	codeMatch
��3 <
,
��< =

stateMatch
�� "
=
��# $
$str
��% /
}
�� 
;
�� '
matchCreatorManagerClient
�� -
.
��- .
UpdateMatchState
��. >
(
��> ?
matchCreation
��? L
)
��L M
;
��M N
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M(
dialogCouldntSaveMatchInfo
��M g
)
��g h
;
��h i
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
��  
ShowVictoryMessage
�� '
(
��' (
string
��( .
result
��/ 5
)
��5 6
{
�� 	
if
�� 
(
�� 
result
�� 
==
�� 
$str
��  
)
��  !
{
�� %
txtBlock_VictoryMessage
�� '
.
��' (
Text
��( ,
=
��- .

Properties
��/ 9
.
��9 :
	Resources
��: C
.
��C D
lbl_Draw
��D L
;
��L M
}
�� 
else
�� 
if
�� 
(
�� 
result
�� 
==
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
)
��< =
{
�� %
txtBlock_VictoryMessage
�� '
.
��' (
Text
��( ,
=
��- .

Properties
��/ 9
.
��9 :
	Resources
��: C
.
��C D

lbl_Winner
��D N
;
��N O
}
�� 
else
�� 
{
�� %
txtBlock_VictoryMessage
�� '
.
��' (
Text
��( ,
=
��- .

Properties
��/ 9
.
��9 :
	Resources
��: C
.
��C D

lbl_Defeat
��D N
;
��N O
}
��  
grd_VictoryOverlay
�� 
.
�� 

Visibility
�� )
=
��* +

Visibility
��, 6
.
��6 7
Visible
��7 >
;
��> ?

Storyboard
�� 
victoryStoryboard
�� (
=
��) *
(
��+ ,

Storyboard
��, 6
)
��6 7
FindResource
��7 C
(
��C D
$str
��D ]
)
��] ^
;
��^ _
victoryStoryboard
�� 
.
�� 
Begin
�� #
(
��# $
)
��$ %
;
��% &
}
�� 	
private
�� 
void
�� )
LockGameBoardAndStackPanels
�� 0
(
��0 1
)
��1 2
{
�� 	
stckp_Player1
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
false
��& +
;
��+ ,
stckp_Player2
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
false
��& +
;
��+ ,!
stckp_Player1Pieces
�� 
.
��  
	IsEnabled
��  )
=
��* +
false
��, 1
;
��1 2!
stckp_Player2Pieces
�� 
.
��  
	IsEnabled
��  )
=
��* +
false
��, 1
;
��1 2
foreach
�� 
(
�� 
	UIElement
�� 
element
�� %
in
��& (!
canva_GameBoardGrid
��) <
.
��< =
Children
��= E
)
��E F
{
�� 
if
�� 
(
�� 
element
�� 
is
�� 
Image
�� $
image
��% *
)
��* +
{
�� 
image
�� 
.
�� 
	IsEnabled
�� #
=
��$ %
false
��& +
;
��+ ,
}
�� 
}
�� 
}
�� 	
public
�� 
void
��  
PlayerDisconnected
�� &
(
��& '
string
��' -"
disconnectedUsername
��. B
)
��B C
{
�� 	

Dispatcher
�� 
.
�� 
Invoke
�� 
(
�� 
(
�� 
)
��  
=>
��! #
{
�� 
string
�� 
message
�� 
=
��  "
disconnectedUsername
��! 5
+
��6 7

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M"
dialogLostConnection
��M a
;
��a b
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4
message
��4 ;
)
��; <
;
��< =
if
�� 
(
�� "
UserProfileSingleton
�� (
.
��( )
	idAccount
��) 2
==
��3 5
	Constants
��6 ?
.
��? @
DefaultGuestId
��@ N
)
��N O
{
�� 
ReturnToLoginView
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
{
�� 
GoToMainView
��  
(
��  !
)
��! "
;
��" #
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 	
}
�� 
}�� ι
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
�� 
;
�� "
friendsManagerClient
�� $
.
��$ %#
JoinAsConnectedFriend
��% :
(
��: ;
session
��; B
)
��B C
;
��C D"
friendsManagerClient
�� $
.
��$ %
GetFriendsList
��% 3
(
��3 4
session
��4 ;
)
��; <
;
��< =
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
Image_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
if
�� 
(
�� 
DialogManager
�� 
.
�� *
ShowConfirmationMessageAlert
�� :
(
��: ;

Properties
��; E
.
��E F
	Resources
��F O
.
��O P%
dialogConfirmLeaveLobby
��P g
)
��g h
)
��h i
{
�� 
LoggerManager
�� 
logger
�� $
=
��% &
new
��' *
LoggerManager
��+ 8
(
��8 9
this
��9 =
.
��= >
GetType
��> E
(
��E F
)
��F G
)
��G H
;
��H I
UserSession
�� 
userSession
�� '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
	codeMatch
�� 
=
�� 
MatchSingleton
��  .
.
��. /
	codeMatch
��/ 8
}
�� 
;
�� 
try
�� 
{
�� 
bool
�� 
isKicked
�� !
=
��" #
false
��$ )
;
��) *
MatchSingleton
�� "
.
��" #
Instance
��# +
.
��+ ,
ResetSingleton
��, :
(
��: ;
)
��; <
;
��< =!
KickPlayerFromLobby
�� '
(
��' (
userSession
��( 3
,
��3 4
isKicked
��5 =
)
��= >
;
��> ?'
RedirectRespectivePlayers
�� -
(
��- .
isKicked
��. 6
)
��6 7
;
��7 8
matchLobbyCode
�� "
=
��# $
$str
��% (
;
��( )
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0
endPointException
��1 B
)
��B C
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $
endPointException
��$ 5
)
��5 6
;
��6 7
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� '
timeOutException
��( 8
)
��8 9
{
�� 
logger
�� 
.
�� 
LogWarn
�� "
(
��" #
timeOutException
��# 3
)
��3 4
;
��4 5
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -$
communicationException
��. D
)
��D E
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� !
KickPlayerFromLobby
�� (
(
��( )
UserSession
��) 4
session
��5 <
,
��< =
bool
��> B
isKicked
��C K
)
��K L
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
��  
lobbyManagerClient
�� "
.
��" #"
LeavePlayerFromLobby
��# 7
(
��7 8
session
��8 ?
,
��? @
matchLobbyCode
��A O
,
��O P
isKicked
��Q Y
)
��Y Z
;
��Z [
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
��  
LeaveUserGameLobby
�� '
(
��' (
)
��( )
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
Profile
�� 
guestToDisconnect
�� )
=
��* +
new
��, /
Profile
��0 7
(
��7 8
)
��8 9
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
}
�� 
;
�� 
int
�� *
profileDisconnectionFromChat
�� 0
=
��1 2
chatManager
��3 >
.
��> ?%
DisconectPlayerFromChat
��? V
(
��V W
guestToDisconnect
��W h
,
��h i
matchLobbyCode
��j x
)
��x y
;
��y z
if
�� 
(
�� *
profileDisconnectionFromChat
�� 0
==
��1 3
	Constants
��4 =
.
��= >
SuccesOperation
��> M
)
��M N
{
�� 
MainMenu
�� 
mainMenu
�� %
=
��& '
new
��( +
MainMenu
��, 4
(
��4 5
)
��5 6
;
��6 7
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4
mainMenu
��4 <
)
��< =
;
��= >
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O-
dialogCouldntLobbyDisconnection
��O n
)
��n o
;
��o p
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� !
LeaveGuestGameLobby
�� (
(
��( )
)
��) *
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
UserSessionManagerClient
�� 2&
userSessionManagerClient
��3 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \&
UserSessionManagerClient
��\ t
(
��t u
)
��u v
;
��v w
Profile
�� 
guestToDisconnect
�� )
=
��* +
new
��, /
Profile
��0 7
(
��7 8
)
��8 9
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
}
�� 
;
�� 
UserSession
�� 
userSession
�� '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
}
�� 
;
�� 
int
�� *
profileDisconnectionFromChat
�� 0
=
��1 2
chatManager
��3 >
.
��> ?%
DisconectPlayerFromChat
��? V
(
��V W
guestToDisconnect
��W h
,
��h i
matchLobbyCode
��j x
)
��x y
;
��y z
int
�� *
profileDisconnectionFromGame
�� 0
=
��1 2&
userSessionManagerClient
��3 K
.
��K L

Disconnect
��L V
(
��V W
userSession
��W b
,
��b c
false
��d i
)
��i j
;
��j k
if
�� 
(
�� *
profileDisconnectionFromChat
�� /
==
��0 2
	Constants
��3 <
.
��< =
SuccesOperation
��= L
&&
��M O*
profileDisconnectionFromGame
��P l
==
��m o
	Constants
��p y
.
��y z
SuccesOperation��z �
)��� �
{
�� "
UserProfileSingleton
�� (
.
��( )
Instance
��) 1
.
��1 2
ResetSingleton
��2 @
(
��@ A
)
��A B
;
��B C
	LoginView
�� 
	loginView
�� '
=
��( )
new
��* -
	LoginView
��. 7
(
��7 8
)
��8 9
;
��9 :
this
�� 
.
�� 
NavigationService
�� *
.
��* +
Navigate
��+ 3
(
��3 4
	loginView
��4 =
)
��= >
;
��> ?
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O/
!globalDialog_PartialDisconnection
��O p
)
��p q
;
��q r
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
public
�� 
void
�� 
ReceiveMessage
�� "
(
��" #
Message
��# *
[
��* +
]
��+ ,
messages
��- 5
)
��5 6
{
�� 	
ChatMessagesPanel
�� 
.
�� 
Children
�� &
.
��& '
Clear
��' ,
(
��, -
)
��- .
;
��. /
for
�� 
(
�� 
int
�� 
indexListMessage
�� %
=
��& '
$num
��( )
;
��) *
indexListMessage
��+ ;
<
��< =
messages
��> F
.
��F G
Length
��G M
;
��M N
indexListMessage
��O _
++
��_ a
)
��a b
{
�� 
if
�� 
(
�� 
messages
�� 
[
�� 
indexListMessage
�� -
]
��- .
.
��. /
username
��/ 7
.
��7 8
Equals
��8 >
(
��> ?
userProfile
��? J
.
��J K
username
��K S
)
��S T
)
��T U
{
�� 
string
�� 
messageReceived
�� *
=
��+ ,
$"
��- /
{
��/ 0
messages
��0 8
[
��8 9
indexListMessage
��9 I
]
��I J
.
��J K
username
��K S
}
��S T
$str
��T V
{
��V W
messages
��W _
[
��_ `
indexListMessage
��` p
]
��p q
.
��q r
text
��r v
}
��v w
$str
��w x
{
��x y
DateTime��y �
.��� �
Now��� �
.��� �
ToString��� �
(��� �
$str��� �
)��� �
}��� �
"��� �
;��� �
Border
�� 
messageContainer
�� +
=
��, -
new
��. 1
Border
��2 8
{
�� 

Background
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G
BorderThickness
�� '
=
��( )
new
��* -
	Thickness
��. 7
(
��7 8
$num
��8 9
)
��9 :
,
��: ;
Padding
�� 
=
��  !
new
��" %
	Thickness
��& /
(
��/ 0
$num
��0 2
)
��2 3
,
��3 4
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: ;
)
��; <
,
��< =!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Right
��B G
}
�� 
;
�� 
	TextBlock
�� 
messageBlock
�� *
=
��+ ,
new
��- 0
	TextBlock
��1 :
{
�� 
Text
�� 
=
�� 
messageReceived
�� .
,
��. /

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
Black
��@ E
)
��E F
,
��F G
FontSize
��  
=
��! "
$num
��# %
,
��% &

FontWeight
�� "
=
��# $
FontWeights
��% 0
.
��0 1
Bold
��1 5
,
��5 6
TextWrapping
�� $
=
��% &
TextWrapping
��' 3
.
��3 4
Wrap
��4 8
,
��8 9
MaxWidth
��  
=
��! "
$num
��# &
}
�� 
;
�� 
messageContainer
�� $
.
��$ %
Child
��% *
=
��+ ,
messageBlock
��- 9
;
��9 :
ChatMessagesPanel
�� %
.
��% &
Children
��& .
.
��. /
Add
��/ 2
(
��2 3
messageContainer
��3 C
)
��C D
;
��D E
}
�� 
else
�� 
{
�� 
string
�� 
messageReceived
�� *
=
��+ ,
$"
��- /
{
��/ 0
messages
��0 8
[
��8 9
indexListMessage
��9 I
]
��I J
.
��J K
username
��K S
}
��S T
$str
��T V
{
��V W
messages
��W _
[
��_ `
indexListMessage
��` p
]
��p q
.
��q r
text
��r v
}
��v w
$str
��w x
{
��x y
DateTime��y �
.��� �
Now��� �
.��� �
ToString��� �
(��� �
$str��� �
)��� �
}��� �
"��� �
;��� �
Border
�� 
messageContainer
�� +
=
��, -
new
��. 1
Border
��2 8
{
�� 

Background
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
White
��@ E
)
��E F
,
��F G
BorderThickness
�� '
=
��( )
new
��* -
	Thickness
��. 7
(
��7 8
$num
��8 9
)
��9 :
,
��: ;
Padding
�� 
=
��  !
new
��" %
	Thickness
��& /
(
��/ 0
$num
��0 2
)
��2 3
,
��3 4
Margin
�� 
=
��  
new
��! $
	Thickness
��% .
(
��. /
$num
��/ 1
,
��1 2
$num
��3 4
,
��4 5
$num
��6 8
,
��8 9
$num
��: ;
)
��; <
,
��< =!
HorizontalAlignment
�� +
=
��, -!
HorizontalAlignment
��. A
.
��A B
Left
��B F
}
�� 
;
�� 
	TextBlock
�� 
messageBlock
�� *
=
��+ ,
new
��- 0
	TextBlock
��1 :
{
�� 
Text
�� 
=
�� 
messageReceived
�� .
,
��. /

Foreground
�� "
=
��# $
new
��% (
SolidColorBrush
��) 8
(
��8 9
Colors
��9 ?
.
��? @
Black
��@ E
)
��E F
,
��F G
FontSize
��  
=
��! "
$num
��# %
,
��% &

FontWeight
�� "
=
��# $
FontWeights
��% 0
.
��0 1
Bold
��1 5
,
��5 6
TextWrapping
�� $
=
��% &
TextWrapping
��' 3
.
��3 4
Wrap
��4 8
,
��8 9
MaxWidth
��  
=
��! "
$num
��# &
}
�� 
;
�� 
messageContainer
�� $
.
��$ %
Child
��% *
=
��+ ,
messageBlock
��- 9
;
��9 :
ChatMessagesPanel
�� %
.
��% &
Children
��& .
.
��. /
Add
��/ 2
(
��2 3
messageContainer
��3 C
)
��C D
;
��D E
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� "
BtnSendMessage_Click
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
RoutedEventArgs
��9 H
e
��I J
)
��J K
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
string
�� 
message
�� 
=
�� 
txtb_MessageInput
�� .
.
��. /
Text
��/ 3
;
��3 4
if
�� 
(
�� 
!
�� 
string
�� 
.
�� 
IsNullOrEmpty
�� %
(
��% &
message
��& -
)
��- .
)
��. /
{
�� 
Message
�� 
messageToSend
�� %
=
��& '
new
��( +
Message
��, 3
(
��3 4
)
��4 5
{
�� 
username
�� 
=
�� 
userProfile
�� *
.
��* +
username
��+ 3
,
��3 4
text
�� 
=
�� 
message
�� "
}
�� 
;
�� 
try
�� 
{
�� 
chatManager
�� 
.
��  
SendMessages
��  ,
(
��, -
messageToSend
��- :
,
��: ;
matchLobbyCode
��; I
)
��I J
;
��J K
txtb_MessageInput
�� %
.
��% &
Clear
��& +
(
��+ ,
)
��, -
;
��- .
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0
endPointException
��1 B
)
��B C
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $
endPointException
��$ 5
)
��5 6
;
��6 7
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� '
timeOutException
��( 8
)
��8 9
{
�� 
logger
�� 
.
�� 
LogWarn
�� "
(
��" #
timeOutException
��# 3
)
��3 4
;
��4 5
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -$
communicationException
��. D
)
��D E
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
txtb_MessageInput
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) * 
txtBlock_CharCount
�� "
.
��" #
Text
��# '
=
��( )
$str
��* 1
;
��1 2
}
�� 
}
�� 	
private
�� 
void
�� #
BtnInviteFriend_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� *
EmailInvitationManagerClient
�� 2*
emailInvitationManagerClient
��3 O
=
��P Q
new
��R U
	HiveProxy
��V _
.
��_ `*
EmailInvitationManagerClient
��` |
(
��| }
)
��} ~
;
��~ 
try
�� 
{
�� 
Button
�� 
clickedButton
�� $
=
��% &
sender
��' -
as
��. 0
Button
��1 7
;
��7 8
Friend
�� 
friendToInvite
�� %
=
��& '
clickedButton
��( 5
.
��5 6
DataContext
��6 A
as
��B D
Friend
��E K
;
��K L
UserVerificator
�� 
userToInvite
��  ,
=
��- .
new
��/ 2
UserVerificator
��3 B
(
��B C
)
��C D
{
�� 
code
�� 
=
�� 
matchLobbyCode
�� )
,
��) *
email
�� 
=
�� 
friendToInvite
�� *
.
��* +
email
��+ 0
,
��0 1
}
�� 
;
�� 
int
�� 
resultInvitation
�� $
=
��% &*
emailInvitationManagerClient
��' C
.
��C D!
SendEmailInvitation
��D W
(
��W X
userToInvite
��X d
)
��d e
;
��e f
if
�� 
(
�� 
resultInvitation
�� #
==
��$ &
	Constants
��' 0
.
��0 1
SuccesOperation
��1 @
)
��@ A
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O'
dialogEmailInvitationSend
��O h
)
��h i
;
��i j
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogCouldntSendEmail
��M c
)
��c d
;
��d e
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� )
TxtMessageInput_TextChanged
�� 0
(
��0 1
object
��1 7
sender
��8 >
,
��> ?"
TextChangedEventArgs
��@ T
e
��U V
)
��V W
{
�� 	
int
�� 
currentLength
�� 
=
�� 
txtb_MessageInput
��  1
.
��1 2
Text
��2 6
.
��6 7
Length
��7 =
;
��= > 
txtBlock_CharCount
�� 
.
�� 
Text
�� #
=
��$ %
$"
��& (
{
��( )
currentLength
��) 6
}
��6 7
$str
��7 ;
"
��; <
;
��< =
if
�� 
(
�� 
currentLength
�� 
==
��  
$num
��! $
)
��$ %
{
�� 
txtb_MessageInput
�� !
.
��! "

IsReadOnly
��" ,
=
��- .
true
��/ 3
;
��3 4
}
�� 
else
�� 
{
�� 
txtb_MessageInput
�� !
.
��! "

IsReadOnly
��" ,
=
��- .
false
��/ 4
;
��4 5
}
�� 
}
�� 	
private
�� 
void
�� 
BtnSendOff_Click
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
UserSession
�� 

userToKick
�� "
=
��# $
usersInLobby
��% 1
[
��1 2
$num
��2 3
]
��3 4
;
��4 5
if
�� 
(
�� 
DialogManager
�� 
.
�� *
ShowConfirmationMessageAlert
�� :
(
��: ;

Properties
��; E
.
��E F
	Resources
��F O
.
��O P*
dialogConfirmationKickPlayer
��P l
)
��l m
)
��m n
{
�� 
LoggerManager
�� 
logger
�� $
=
��% &
new
��' *
LoggerManager
��+ 8
(
��8 9
this
��9 =
.
��= >
GetType
��> E
(
��E F
)
��F G
)
��G H
;
��H I
Profile
��  
userToKickFromChat
�� *
=
��+ ,
new
��- 0
Profile
��1 8
(
��8 9
)
��9 :
{
�� 
	idAccount
�� 
=
�� 

userToKick
��  *
.
��* +
	idAccount
��+ 4
,
��4 5
username
�� 
=
�� 

userToKick
�� )
.
��) *
username
��* 2
,
��2 3
}
�� 
;
�� 
try
�� 
{
�� 
bool
�� 
isKicked
�� !
=
��" #
true
��$ (
;
��( )
if
�� 
(
�� 

userToKick
�� "
.
��" #
	idAccount
��# ,
!=
��- /
	Constants
��0 9
.
��9 :
DefaultGuestId
��: H
)
��H I
{
�� 
MatchSingleton
�� &
.
��& '
Instance
��' /
.
��/ 0
ResetSingleton
��0 >
(
��> ?
)
��? @
;
��@ A!
KickPlayerFromLobby
�� +
(
��+ ,

userToKick
��, 6
,
��6 7
isKicked
��8 @
)
��@ A
;
��A B
chatManager
�� #
.
��# $%
DisconectPlayerFromChat
��$ ;
(
��; < 
userToKickFromChat
��< N
,
��N O
matchLobbyCode
��P ^
)
��^ _
;
��_ `
}
�� 
else
�� 
{
�� 
MatchSingleton
�� &
.
��& '
Instance
��' /
.
��/ 0
ResetSingleton
��0 >
(
��> ?
)
��? @
;
��@ A!
KickPlayerFromLobby
�� +
(
��+ ,

userToKick
��, 6
,
��6 7
isKicked
��8 @
)
��@ A
;
��A B&
UserSessionManagerClient
�� 0
.
��0 1

Disconnect
��1 ;
(
��; <

userToKick
��< F
,
��F G
false
��H M
)
��M N
;
��N O
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� 0
endPointException
��1 B
)
��B C
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $
endPointException
��$ 5
)
��5 6
;
��6 7
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M%
dialogEndPointException
��M d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� 
TimeoutException
�� '
timeOutException
��( 8
)
��8 9
{
�� 
logger
�� 
.
�� 
LogWarn
�� "
(
��" #
timeOutException
��# 3
)
��3 4
;
��4 5
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
catch
�� 
(
�� $
CommunicationException
�� -$
communicationException
��. D
)
��D E
{
�� 
logger
�� 
.
�� 
LogFatal
�� #
(
��# $$
communicationException
��$ :
)
��: ;
;
��; <
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M)
dialogComunicationException
��M h
)
��h i
;
��i j
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� ,
RefreshActiveFriendsList_Click
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B
RoutedEventArgs
��C R
e
��S T
)
��T U
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
UserSession
�� 
userSession
�� '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
}
�� 
;
�� "
friendsManagerClient
�� $
.
��$ %
GetFriendsList
��% 3
(
��3 4
userSession
��4 ?
)
��? @
;
��@ A
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
public
�� 
void
�� $
ObtainConnectedFriends
�� *
(
��* +
UserSession
��+ 6
[
��6 7
]
��7 8
connectedFriends
��9 I
)
��I J
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E#
lvw_ActiveFriendsList
�� !
.
��! "
Items
��" '
.
��' (
Clear
��( -
(
��- .
)
��. /
;
��/ 0
try
�� 
{
�� 
	HiveProxy
�� 
.
�� %
FriendshipManagerClient
�� 1%
friendshipManagerClient
��2 I
=
��J K
new
��L O
	HiveProxy
��P Y
.
��Y Z%
FriendshipManagerClient
��Z q
(
��q r
)
��r s
;
��s t
Profile
��  
userProfileRequest
�� *
=
��+ ,
new
��- 0
Profile
��1 8
(
��8 9
)
��9 :
{
�� 
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
}
�� 
;
�� 
Profile
�� 
[
�� 
]
�� 
friendsObtained
�� )
=
��* +%
friendshipManagerClient
��, C
.
��C D
GetAllFriends
��D Q
(
��Q R 
userProfileRequest
��R d
)
��d e
;
��e f
List
�� 
<
�� 
Friend
�� 
>
�� 
friends
�� $
=
��% &
new
��' *
List
��+ /
<
��/ 0
Friend
��0 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :!
UserSessionComparer
�� #
comparer
��$ ,
=
��- .
new
��/ 2!
UserSessionComparer
��3 F
(
��F G
)
��G H
;
��H I
for
�� 
(
�� 
int
�� 
friendsIndex
�� %
=
��& '
$num
��( )
;
��) *
friendsObtained
��+ :
.
��: ;
Length
��; A
>
��B C
friendsIndex
��D P
;
��P Q
friendsIndex
��R ^
++
��^ `
)
��` a
{
�� 
UserSession
�� 
friendSession
��  -
=
��. /
new
��0 3
UserSession
��4 ?
(
��? @
)
��@ A
{
�� 
username
��  
=
��! "
friendsObtained
��# 2
[
��2 3
friendsIndex
��3 ?
]
��? @
.
��@ A
username
��A I
,
��I J
	idAccount
�� !
=
��" #
friendsObtained
��$ 3
[
��3 4
friendsIndex
��4 @
]
��@ A
.
��A B
	idAccount
��B K
}
�� 
;
�� 
if
�� 
(
�� 
connectedFriends
�� (
.
��( )
Contains
��) 1
(
��1 2
friendSession
��2 ?
,
��? @
comparer
��@ H
)
��H I
)
��I J
{
�� 
Friend
�� 
ActiveFriend
�� +
=
��, -
new
��. 1
Friend
��2 8
(
��8 9
)
��9 :
{
�� 
	idAccount
�� %
=
��& '
friendsObtained
��( 7
[
��7 8
friendsIndex
��8 D
]
��D E
.
��E F
	idAccount
��F O
,
��O P
username
�� $
=
��% &
friendsObtained
��' 6
[
��6 7
friendsIndex
��7 C
]
��C D
.
��D E
username
��E M
,
��M N
nickname
�� $
=
��% &
friendsObtained
��' 6
[
��6 7
friendsIndex
��7 C
]
��C D
.
��D E
nickname
��E M
,
��M N
email
�� !
=
��" #
friendsObtained
��$ 3
[
��3 4
friendsIndex
��4 @
]
��@ A
.
��A B
email
��B G
,
��G H
	imagePath
�� %
=
��& '
friendsObtained
��( 7
[
��7 8
friendsIndex
��8 D
]
��D E
.
��E F
	imagePath
��F O
}
�� 
;
�� 
friends
�� 
.
��  
Add
��  #
(
��# $
ActiveFriend
��$ 0
)
��0 1
;
��1 2
}
�� 
}
�� 
Application
�� 
.
�� 
Current
�� #
.
��# $

Dispatcher
��$ .
.
��. /
Invoke
��/ 5
(
��5 6
(
��6 7
)
��7 8
=>
��9 ;
{
�� #
lvw_ActiveFriendsList
�� )
.
��) *
Items
��* /
.
��/ 0
Clear
��0 5
(
��5 6
)
��6 7
;
��7 8
for
�� 
(
�� 
int
�� 
indexFriends
�� (
=
��) *
$num
��+ ,
;
��, -
friends
��. 5
.
��5 6
Count
��6 ;
>
��< =
indexFriends
��> J
;
��J K
indexFriends
��L X
++
��X Z
)
��Z [
{
�� #
lvw_ActiveFriendsList
�� -
.
��- .
Items
��. 3
.
��3 4
Add
��4 7
(
��7 8
friends
��8 ?
[
��? @
indexFriends
��@ L
]
��L M
)
��M N
;
��N O
}
�� 
}
�� 
)
�� 
;
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
public
�� 
void
�� #
ReceivePlayersToLobby
�� )
(
��) *
UserSession
��* 5
[
��5 6
]
��6 7
user
��8 <
)
��< =
{
�� 	
usersInLobby
�� 
=
�� 
user
�� 
.
��  
ToList
��  &
(
��& '
)
��' (
;
��( )
if
�� 
(
�� 
user
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
	idAccount
�� !
==
��" $
-
��% &
$num
��& '
)
��' (
{
�� 
bool
�� 
isKicked
�� 
=
�� 
false
��  %
;
��% &
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 5
(
��5 6

Properties
��6 @
.
��@ A
	Resources
��A J
.
��J K
dialogHostHasLeft
��K \
)
��\ ]
;
��] ^'
RedirectRespectivePlayers
�� )
(
��) *
isKicked
��* 2
)
��2 3
;
��3 4
}
�� 
else
�� 
if
�� 
(
�� 
user
�� 
.
�� 
Length
��  
==
��! #
$num
��$ %
)
��% &
{
�� $
ChargeOnePlayerProfile
�� &
(
��& '
user
��' +
[
��+ ,
$num
��, -
]
��- .
)
��. /
;
��/ 0
}
�� 
else
�� 
if
�� 
(
�� 
user
�� 
.
�� 
Length
��  
==
��! #
$num
��$ %
)
��% &
{
�� %
ChargeTwoPlayersProfile
�� '
(
��' (
user
��( ,
)
��, -
;
��- .
}
�� 
}
�� 	
private
�� 
void
�� '
RedirectRespectivePlayers
�� .
(
��. /
bool
��/ 3
isKicked
��4 <
)
��< =
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
UserSession
�� 
userSession
�� #
=
��$ %
new
��& )
UserSession
��* 5
(
��5 6
)
��6 7
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� /
.
��/ 0
username
��0 8
,
��8 9
	idAccount
�� 
=
�� "
UserProfileSingleton
�� 0
.
��0 1
	idAccount
��1 :
}
�� 
;
�� 
try
�� 
{
�� 
if
�� 
(
�� "
UserProfileSingleton
�� (
.
��( )
	idAccount
��) 2
!=
��3 5
	Constants
��6 ?
.
��? @
DefaultGuestId
��@ N
)
��N O
{
�� 
MatchSingleton
�� "
.
��" #
Instance
��# +
.
��+ ,
ResetSingleton
��, :
(
��: ;
)
��; <
;
��< =!
KickPlayerFromLobby
�� '
(
��' (
userSession
��( 3
,
��3 4
isKicked
��5 =
)
��= >
;
��> ? 
LeaveUserGameLobby
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
{
�� 
MatchSingleton
�� "
.
��" #
Instance
��# +
.
��+ ,
ResetSingleton
��, :
(
��: ;
)
��; <
;
��< =!
KickPlayerFromLobby
�� '
(
��' (
userSession
��( 3
,
��3 4
isKicked
��5 =
)
��= >
;
��> ?!
LeaveGuestGameLobby
�� '
(
��' (
)
��( )
;
��) *
}
�� 
matchLobbyCode
�� 
=
��  
$str
��! $
;
��$ %
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� $
ChargeOnePlayerProfile
�� +
(
��+ ,
UserSession
��, 7
user
��8 <
)
��< =
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
try
�� 
{
�� 
Profile
�� 
profileUser
�� #
=
��$ %
userManagerClient
��& 7
.
��7 8&
GetUserProfileByUsername
��8 P
(
��P Q
user
��Q U
.
��U V
username
��V ^
)
��^ _
;
��_ `
txtb_HostName
�� 
.
�� 
Text
�� "
=
��# $
profileUser
��% 0
.
��0 1
nickname
��1 9
;
��9 :
img_AvatarHost
�� 
.
�� 
Source
�� %
=
��& '
new
��( +
BitmapImage
��, 7
(
��7 8
new
��8 ;
Uri
��< ?
(
��? @
profileUser
��@ K
.
��K L
	imagePath
��L U
,
��U V
UriKind
��W ^
.
��^ _
Relative
��_ g
)
��g h
)
��h i
;
��i j
	brd_Guest
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
	Collapsed
��2 ;
;
��; < 
ShowCreatorActions
�� "
(
��" #
)
��# $
;
��$ %
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� %
ChargeTwoPlayersProfile
�� ,
(
��, -
UserSession
��- 8
[
��8 9
]
��9 :
users
��; @
)
��@ A
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
try
�� 
{
�� 
Profile
�� 
profileUserHost
�� '
=
��( )
userManagerClient
��* ;
.
��; <&
GetUserProfileByUsername
��< T
(
��T U
users
��U Z
[
��Z [
$num
��[ \
]
��\ ]
.
��] ^
username
��^ f
)
��f g
;
��g h
txtb_HostName
�� 
.
�� 
Text
�� "
=
��# $
profileUserHost
��% 4
.
��4 5
nickname
��5 =
;
��= >
img_AvatarHost
�� 
.
�� 
Source
�� %
=
��& '
new
��( +
BitmapImage
��, 7
(
��7 8
new
��8 ;
Uri
��< ?
(
��? @
profileUserHost
��@ O
.
��O P
	imagePath
��P Y
,
��Y Z
UriKind
��[ b
.
��b c
Relative
��c k
)
��k l
)
��l m
;
��m n
if
�� 
(
�� 
users
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
	idAccount
�� &
==
��' )
	Constants
��* 3
.
��3 4
DefaultGuestId
��4 B
)
��B C
{
�� 
txtb_GuestName
�� "
.
��" #
Text
��# '
=
��( )
users
��* /
[
��/ 0
$num
��0 1
]
��1 2
.
��2 3
username
��3 ;
;
��; <
img_AvatarGuest
�� #
.
��# $
Source
��$ *
=
��+ ,
new
��- 0
BitmapImage
��1 <
(
��< =
new
��= @
Uri
��A D
(
��D E
$str
��E b
,
��b c
UriKind
��d k
.
��k l
Relative
��l t
)
��t u
)
��u v
;
��v w
}
�� 
else
�� 
{
�� 
Profile
�� 
profileUserGuest
�� ,
=
��- .
userManagerClient
��/ @
.
��@ A&
GetUserProfileByUsername
��A Y
(
��Y Z
users
��Z _
[
��_ `
$num
��` a
]
��a b
.
��b c
username
��c k
)
��k l
;
��l m
txtb_GuestName
�� "
.
��" #
Text
��# '
=
��( )
profileUserGuest
��* :
.
��: ;
nickname
��; C
;
��C D
img_AvatarGuest
�� #
.
��# $
Source
��$ *
=
��+ ,
new
��- 0
BitmapImage
��1 <
(
��< =
new
��= @
Uri
��A D
(
��D E
profileUserGuest
��E U
.
��U V
	imagePath
��V _
,
��_ `
UriKind
��a h
.
��h i
Relative
��i q
)
��q r
)
��r s
;
��s t
}
�� 
	brd_Guest
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
	GameMatch
�� 
gamer
�� 
=
��  !
new
��" %
	GameMatch
��& /
(
��/ 0
)
��0 1
{
�� 
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
code
�� 
=
�� 
matchLobbyCode
�� )
}
�� 
;
�� 
int
�� !
verificationCreator
�� '
=
��( ) 
lobbyManagerClient
��* <
.
��< =%
VerifyCreatorOfTheMatch
��= T
(
��T U
gamer
��U Z
)
��Z [
;
��[ \ 
ShowCorrectActions
�� "
(
��" #!
verificationCreator
��# 6
)
��6 7
;
��7 8
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
��  
ShowCorrectActions
�� '
(
��' (
int
��( + 
verificationResult
��, >
)
��> ?
{
�� 	
if
�� 
(
��  
verificationResult
�� !
==
��" $
$num
��% &
)
��& '
{
�� "
HideFullLobbyActions
�� $
(
��$ %
)
��% &
;
��& '
btn_SendOffPlayer
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
}
�� 
else
�� 
if
�� 
(
��  
verificationResult
�� '
==
��( *
$num
��+ ,
)
��, -
{
�� "
HideFullLobbyActions
�� $
(
��$ %
)
��% &
;
��& '
btn_SendOffPlayer
�� !
.
��! "

Visibility
��" ,
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A
	btn_Start
�� 
.
�� 

Visibility
�� $
=
��% &

Visibility
��' 1
.
��1 2
Visible
��2 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
��  
SearchFriend_Click
�� '
(
��' (
object
��( .
sender
��/ 5
,
��5 6
	EventArgs
��7 @
e
��A B
)
��B C
{
�� 	
txt_SearchFriend
�� 
.
�� 
BorderBrush
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Yellow
��3 9
;
��9 :
if
�� 
(
�� 
ValidateField
�� 
(
�� 
)
�� 
)
��  
{
�� 
List
�� 
<
�� 
Friend
�� 
>
�� 
friends
�� $
=
��% &#
lvw_ActiveFriendsList
��' <
.
��< =
Items
��= B
.
��B C
Cast
��C G
<
��G H
Friend
��H N
>
��N O
(
��O P
)
��P Q
.
��Q R
ToList
��R X
(
��X Y
)
��Y Z
;
��Z [
Friend
�� 
foundedFriend
�� $
=
��% &
new
��' *
Friend
��+ 1
(
��1 2
)
��2 3
;
��3 4
foundedFriend
�� 
.
�� 
username
�� &
=
��' (
$str
��) 5
;
��5 6
for
�� 
(
�� 
int
�� 
friendsIndex
�� $
=
��$ %
$num
��% &
;
��& '
friendsIndex
��( 4
<
��4 5
friends
��5 <
.
��< =
Count
��= B
;
��B C
friendsIndex
��D P
++
��P R
)
��R S
{
�� 
if
�� 
(
�� 
friends
�� 
[
�� 
friendsIndex
�� +
]
��+ ,
.
��, -
username
��- 5
==
��6 8
txt_SearchFriend
��9 I
.
��I J
Text
��J N
)
��N O
{
�� 
foundedFriend
�� $
=
��% &
friends
��' .
[
��. /
friendsIndex
��/ ;
]
��; <
;
��< =
}
�� 
}
�� 
if
�� 
(
�� 
foundedFriend
�� !
.
��! "
username
��" *
!=
��+ -
$str
��. :
)
��: ;
{
�� #
lvw_ActiveFriendsList
�� )
.
��) *
Items
��* /
.
��/ 0
Clear
��0 5
(
��5 6
)
��6 7
;
��7 8#
lvw_ActiveFriendsList
�� )
.
��) *
Items
��* /
.
��/ 0
Add
��0 3
(
��3 4
foundedFriend
��4 A
)
��A B
;
��B C
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O+
dialogMangerCouldntFindFriend
��O l
)
��l m
;
��m n
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogWrongData
��I X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
private
�� 
void
�� 
BtnStarGame_Click
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
��  
lobbyManagerClient
�� "
.
��" #

StartMatch
��# -
(
��- .
matchLobbyCode
��. <
)
��< =
;
��= >
MatchCreator
�� 
matchCreator
�� )
=
��* +
new
��, /
MatchCreator
��0 <
(
��< =
)
��= >
{
�� 
idCreatorAccount
�� $
=
��% &"
UserProfileSingleton
��' ;
.
��; <
	idAccount
��< E
,
��E F
	codeMatch
�� 
=
�� 
matchLobbyCode
��  .
,
��. /

stateMatch
�� 
=
��  
$str
��! *
}
�� 
;
�� '
MatchCreatorManagerClient
�� )'
matchCreatorManagerClient
��* C
=
��D E
new
��F I'
MatchCreatorManagerClient
��J c
(
��c d
)
��d e
;
��e f'
matchCreatorManagerClient
�� )
.
��) *
UpdateMatchState
��* :
(
��: ;
matchCreator
��; G
)
��G H
;
��H I
GameBoardView
�� 
gameBoardView
�� +
=
��, -
new
��. 1
GameBoardView
��2 ?
(
��? @
)
��@ A
;
��A B
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
gameBoardView
��0 =
)
��= >
;
��> ?
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
bool
�� 
ValidateField
�� "
(
��" #
)
��# $
{
�� 	
bool
��  
validationUserName
�� #
=
��$ %
	Validator
��& /
.
��/ 0
ValidateUsername
��0 @
(
��@ A
txt_SearchFriend
��A Q
.
��Q R
Text
��R V
)
��V W
;
��W X
if
�� 
(
�� 
!
��  
validationUserName
�� #
)
��# $
{
�� 
txt_SearchFriend
��  
.
��  !
BorderBrush
��! ,
=
��- .
Brushes
��/ 6
.
��6 7
Red
��7 :
;
��: ;
}
�� 
return
��  
validationUserName
�� %
;
��% &
}
�� 	
public
�� 
void
�� '
ReceiveKickedNotification
�� -
(
��- .
)
��. /
{
�� 	
DialogManager
�� 
.
�� %
ShowWarningMessageAlert
�� 1
(
��1 2

Properties
��2 <
.
��< =
	Resources
��= F
.
��F G!
dialogYouveBeenKick
��G Z
)
��Z [
;
��[ \
if
�� 
(
�� "
UserProfileSingleton
�� #
.
��# $
	idAccount
��$ -
==
��. 0
	Constants
��1 :
.
��: ;
DefaultGuestId
��; I
)
��I J
{
�� 
	LoginView
�� 
	loginView
�� #
=
��$ %
new
��& )
	LoginView
��* 3
(
��3 4
)
��4 5
;
��5 6
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
	loginView
��0 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
MainMenu
�� 
mainMenu
�� !
=
��" #
new
��$ '
MainMenu
��( 0
(
��0 1
)
��1 2
;
��2 3
this
�� 
.
�� 
NavigationService
�� &
.
��& '
Navigate
��' /
(
��/ 0
mainMenu
��0 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
public
�� 
void
�� +
ReceiveStartMatchNotification
�� 1
(
��1 2
)
��2 3
{
�� 	
GameBoardView
�� 
gameBoardView
�� '
=
��( )
new
��* -
GameBoardView
��. ;
(
��; <
)
��< =
;
��= >
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
gameBoardView
��, 9
)
��9 :
;
��: ;
}
�� 	
private
�� 
sealed
�� 
class
�� 
Friend
�� #
{
�� 	
public
�� 
int
�� 
	idAccount
��  
{
��! "
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
string
�� 
username
�� "
{
��# $
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
public
�� 
string
�� 
nickname
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
email
�� 
{
��  !
get
��" %
;
��% &
set
��' *
;
��* +
}
��, -
public
�� 
string
�� 
	imagePath
�� #
{
��$ %
get
��& )
;
��) *
set
��+ .
;
��. /
}
��0 1
}
�� 	
}
�� 
public
�� 

class
�� !
UserSessionComparer
�� $
:
��% &
IEqualityComparer
��' 8
<
��8 9
UserSession
��9 D
>
��D E
{
�� 
public
�� 
bool
�� 
Equals
�� 
(
�� 
UserSession
�� &
userSessionOne
��' 5
,
��5 6
UserSession
��7 B
userSessionTwo
��C Q
)
��Q R
{
�� 	
return
�� 
string
�� 
.
�� 
Equals
��  
(
��  !
userSessionOne
��! /
.
��/ 0
username
��0 8
,
��8 9
userSessionTwo
��: H
.
��H I
username
��I Q
,
��Q R
StringComparison
��S c
.
��c d
Ordinal
��d k
)
��k l
&&
��m o
userSessionOne
�� !
.
��! "
	idAccount
��" +
==
��, .
userSessionTwo
��/ =
.
��= >
	idAccount
��> G
&&
��H J
userSessionOne
��K Y
.
��Y Z
	codeMatch
��Z c
==
��d f
userSessionTwo
��g u
.
��u v
	codeMatch
��v 
;�� �
}
�� 	
public
�� 
int
�� 
GetHashCode
�� 
(
�� 
UserSession
�� *
userSession
��+ 6
)
��6 7
{
�� 	
int
�� 
hashUsername
�� 
=
�� 
userSession
�� *
.
��* +
username
��+ 3
?
��3 4
.
��4 5
GetHashCode
��5 @
(
��@ A
)
��A B
??
��C E
$num
��F G
;
��G H
int
�� 
hashIdAccount
�� 
=
�� 
userSession
��  +
.
��+ ,
	idAccount
��, 5
.
��5 6
GetHashCode
��6 A
(
��A B
)
��B C
;
��C D
int
�� 
hashCodeMatch
�� 
=
�� 
userSession
��  +
.
��+ ,
	codeMatch
��, 5
?
��5 6
.
��6 7
GetHashCode
��7 B
(
��B C
)
��C D
??
��E G
$num
��H I
;
��I J
return
�� 
hashUsername
�� 
^
��  !
hashIdAccount
��" /
^
��0 1
hashCodeMatch
��2 ?
;
��? @
}
�� 	
}
�� 
}�� ݍ
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
)	\\ �
;
\\� �
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
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
int
�� #
ValidateExistingLobby
�� )
(
��) *
string
��* 0
	codeLobby
��1 :
)
��: ;
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
int
�� 
validationResult
��  
=
��! "
	Constants
��# ,
.
��, -
ErrorOperation
��- ;
;
��; <
try
�� 
{
�� 
	HiveProxy
�� 
.
�� '
MatchCreatorManagerClient
�� 3'
matchCreatorManagerClient
��4 M
=
��N O
new
��P S'
MatchCreatorManagerClient
��T m
(
��m n
)
��n o
;
��o p
bool
�� &
validationExistingResult
�� -
=
��. /'
matchCreatorManagerClient
��0 I
.
��I J 
VerifyExistingCode
��J \
(
��\ ]
	codeLobby
��] f
)
��f g
;
��g h
if
�� 
(
�� &
validationExistingResult
�� ,
)
��, -
{
�� 
validationResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
DataMatches
��1 <
;
��< =
}
�� 
else
�� 
{
�� 
validationResult
�� $
=
��% &
	Constants
��' 0
.
��0 1
NoDataMatches
��1 >
;
��> ?
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
�� 
validationResult
�� #
;
��# $
}
�� 	
private
�� 
bool
�� 
ValidateField
�� "
(
��" #
)
��# $
{
�� 	
bool
�� 
validationResult
�� !
=
��" #
	Validator
��$ -
.
��- .
ValidateCode
��. :
(
��: ;
	txtb_Code
��; D
.
��D E
Text
��E I
)
��I J
;
��J K
if
�� 
(
�� 
!
�� 
validationResult
�� !
)
��! "
{
�� 
	txtb_Code
�� 
.
�� 
BorderBrush
�� %
=
��& '
Brushes
��( /
.
��/ 0
Red
��0 3
;
��3 4
}
�� 
return
�� 
validationResult
�� #
;
��# $
}
�� 	
private
�� 
void
�� ,
Txtb_Username_PreviewTextInput
�� 3
(
��3 4
object
��4 :
sender
��; A
,
��A B&
TextCompositionEventArgs
��C [
e
��\ ]
)
��] ^
{
�� 	
e
�� 
.
�� 
Handled
�� 
=
�� 
!
�� 
Regex
�� 
.
�� 
IsMatch
�� &
(
��& '
e
��' (
.
��( )
Text
��) -
,
��- .
$str
��/ 8
,
��8 9
RegexOptions
��: F
.
��F G
None
��G K
,
��K L
TimeSpan
��M U
.
��U V
FromMilliseconds
��V f
(
��f g
$num
��g j
)
��j k
)
��k l
;
��l m
}
�� 	
private
�� 
void
�� '
Txtb_Username_TextChanged
�� .
(
��. /
object
��/ 5
sender
��6 <
,
��< ="
TextChangedEventArgs
��> R
e
��S T
)
��T U
{
�� 	
var
�� 
textBox
�� 
=
�� 
sender
��  
as
��! #
TextBox
��$ +
;
��+ ,
if
�� 
(
�� 
textBox
�� 
==
�� 
null
�� 
)
��  
return
��! '
;
��' (
string
�� 
	cleanText
�� 
=
�� 
textBox
�� &
.
��& '
Text
��' +
.
��+ ,
Replace
��, 3
(
��3 4
$str
��4 7
,
��7 8
$str
��9 ;
)
��; <
;
��< =
if
�� 
(
�� 
	cleanText
�� 
.
�� 
Length
��  
>
��! "
$num
��# $
)
��$ %
{
�� 
	cleanText
�� 
=
�� 
	cleanText
�� %
.
��% &
	Substring
��& /
(
��/ 0
$num
��0 1
,
��1 2
$num
��3 4
)
��4 5
;
��5 6
}
�� 
string
�� 
formattedText
��  
=
��! "
string
��# )
.
��) *
Join
��* .
(
��. /
$str
��/ 5
,
��5 6
	cleanText
��7 @
.
��@ A
ToCharArray
��A L
(
��L M
)
��M N
)
��N O
;
��O P
if
�� 
(
�� 
textBox
�� 
.
�� 
Text
�� 
!=
�� 
formattedText
��  -
)
��- .
{
�� 
textBox
�� 
.
�� 
Text
�� 
=
�� 
formattedText
�� ,
;
��, -
textBox
�� 
.
�� 

CaretIndex
�� "
=
��# $
textBox
��% ,
.
��, -
Text
��- 1
.
��1 2
Length
��2 8
;
��8 9
}
�� 
}
�� 	
}
�� 
}�� ��
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
�� 
;
�� 
Profile
�� 
[
�� 
]
�� $
friendRequestsObtained
�� 0
=
��1 2(
friendRequestManagerClient
��3 M
.
��M N
GetFriendRequests
��N _
(
��_ `
userProfile
��` k
)
��k l
;
��l m
if
�� 
(
�� $
friendRequestsObtained
�� *
.
��* +
Length
��+ 1
==
��2 4
	Constants
��5 >
.
��> ?
NoDataMatches
��? L
)
��L M
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O#
dialogNoFriendRequest
��O d
)
��d e
;
��e f
}
�� 
else
�� 
if
�� 
(
�� $
friendRequestsObtained
�� /
[
��/ 0
$num
��0 1
]
��1 2
.
��2 3
	idProfile
��3 <
==
��= ?
	Constants
��@ I
.
��I J
ErrorOperation
��J X
)
��X Y
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
else
�� 
{
�� "
LoadUsersInformation
�� (
(
��( )$
friendRequestsObtained
��) ?
)
��? @
;
��@ A
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� "
LoadUsersInformation
�� )
(
��) *
Profile
��* 1
[
��1 2
]
��2 3
usersProfile
��4 @
)
��@ A
{
�� 	
for
�� 
(
�� 
int
�� 
indexUsersProfile
�� %
=
��& '
$num
��( )
;
��) *
indexUsersProfile
��, =
<
��> ?
usersProfile
��@ L
.
��L M
Length
��M S
;
��S T
indexUsersProfile
��U f
++
��f h
)
��h i
{
�� 
ProfileUser
�� 
profileUser
�� '
=
��( )
new
��* -
ProfileUser
��. 9
(
��9 :
)
��: ;
{
�� 
	idProfile
�� 
=
�� 
usersProfile
��  ,
[
��, -
indexUsersProfile
��- >
]
��> ?
.
��? @
	idProfile
��@ I
,
��I J
	idAccount
�� 
=
�� 
usersProfile
��  ,
[
��, -
indexUsersProfile
��- >
]
��> ?
.
��? @
idAccesAccount
��@ N
,
��N O
username
�� 
=
�� 
usersProfile
�� +
[
��+ ,
indexUsersProfile
��, =
]
��= >
.
��> ?
nickname
��? G
,
��G H
imageProfile
��  
=
��! "
usersProfile
��# /
[
��/ 0
indexUsersProfile
��0 A
]
��A B
.
��B C
	imagePath
��C L
,
��L M
}
�� 
;
��  
lvw_FriendRequests
�� "
.
��" #
Items
��# (
.
��( )
Add
��) ,
(
��, -
profileUser
��- 8
)
��8 9
;
��9 :
}
�� 
}
�� 	
private
�� 
void
�� 

SearchUser
�� 
(
��  
object
��  &
sender
��' -
,
��- .
RoutedEventArgs
��/ >
e
��? @
)
��@ A
{
�� 	
if
�� 
(
�� 
VerifyField
�� 
(
�� 
)
�� 
)
�� 
{
�� 
if
�� 
(
�� 
txtb_SearchFriend
�� %
.
��% &
Text
��& *
==
��+ -"
UserProfileSingleton
��. B
.
��B C
username
��C K
)
��K L
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O%
dialogCanNotAddYourself
��O f
)
��f g
;
��g h
}
�� 
else
�� 
{
�� #
LoadFriendToAddSearch
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogWrongData
��I X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
public
�� 
bool
�� 
VerifyField
�� 
(
��  
)
��  !
{
�� 	
lvw_FriendToAdd
�� 
.
�� 
Items
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
bool
�� 
usernameField
�� 
=
��  
	Validator
��! *
.
��* +
ValidateUsername
��+ ;
(
��; <
txtb_SearchFriend
��< M
.
��M N
Text
��N R
)
��R S
;
��S T
if
�� 
(
�� 
!
�� 
usernameField
�� 
)
�� 
{
�� 
txtb_SearchFriend
�� !
.
��! "
BorderBrush
��" -
=
��. /
Brushes
��0 7
.
��7 8
Red
��8 ;
;
��; <
}
�� 
return
�� 
usernameField
��  
;
��  !
}
�� 	
private
�� 
void
�� #
LoadFriendToAddSearch
�� *
(
��* +
)
��+ ,
{
�� 	
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
Profile
�� !
userProfileObtained
�� +
=
��, -
userManagerClient
��. ?
.
��? @&
GetUserProfileByUsername
��@ X
(
��X Y
txtb_SearchFriend
��Y j
.
��j k
Text
��k o
)
��o p
;
��p q
if
�� 
(
�� !
userProfileObtained
�� '
.
��' (
	idProfile
��( 1
>=
��2 4
$num
��5 6
)
��6 7
{
�� 
Profile
�� 
profileObtained
�� +
=
��, -
new
��. 1
Profile
��2 9
(
��9 :
)
��: ;
{
�� 
idAccesAccount
�� &
=
��' (!
userProfileObtained
��) <
.
��< =
idAccesAccount
��= K
}
�� 
;
�� 
int
�� .
 verificationFriendRequestExisted
�� 8
=
��9 :)
VerifyExistingFriendRequest
��; V
(
��V W
profileObtained
��W f
)
��f g
;
��g h
bool
�� 

areFriends
�� #
=
��$ %
false
��& +
;
��+ ,
if
�� 
(
�� .
 verificationFriendRequestExisted
�� 8
==
��9 ;
$num
��< =
)
��= >
{
�� 

areFriends
�� "
=
��# $
false
��% *
;
��* +!
LoadUserInformation
�� +
(
��+ ,!
userProfileObtained
��, ?
,
��? @

areFriends
��@ J
)
��J K
;
��K L
}
�� 
else
�� 
if
�� 
(
�� .
 verificationFriendRequestExisted
�� =
>=
��> @
$num
��A B
)
��B C
{
�� 

areFriends
�� "
=
��# $
true
��% )
;
��) *!
LoadUserInformation
�� +
(
��+ ,!
userProfileObtained
��, ?
,
��? @

areFriends
��A K
)
��K L
;
��L M
}
�� 
else
�� 
{
�� 
DialogManager
�� %
.
��% &#
ShowErrorMessageAlert
��& ;
(
��; <

Properties
��< F
.
��F G
	Resources
��G P
.
��P Q!
dialogDataBaseError
��Q d
)
��d e
;
��e f
}
�� 
}
�� 
else
�� 
if
�� 
(
�� !
userProfileObtained
�� ,
.
��, -
	idProfile
��- 6
==
��7 9
	Constants
��: C
.
��C D
NoDataMatches
��D Q
)
��Q R
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O#
dialogNoUsernameFound
��O d
)
��d e
;
��e f
}
�� 
else
�� 
if
�� 
(
�� !
userProfileObtained
�� ,
.
��, -
	idProfile
��- 6
==
��7 9
	Constants
��: C
.
��C D
ErrorOperation
��D R
)
��R S
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
int
�� )
VerifyExistingFriendRequest
�� /
(
��/ 0
Profile
��0 7
profileObtained
��8 G
)
��G H
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� (
FriendRequestManagerClient
�� 0(
friendRequestManagerClient
��1 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \(
FriendRequestManagerClient
��\ v
(
��v w
)
��w x
;
��x y
int
��  
verificationResult
�� "
=
��# $
	Constants
��% .
.
��. /
ErrorOperation
��/ =
;
��= >
try
�� 
{
�� 
Profile
�� 
searcherProfile
�� '
=
��( )
new
��* -
Profile
��. 5
(
��5 6
)
��6 7
{
�� 
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
}
�� 
;
��  
verificationResult
�� "
=
��# $(
friendRequestManagerClient
��% ?
.
��? @+
VerifyFriendRequestRegistered
��@ ]
(
��] ^
searcherProfile
��^ m
,
��m n
profileObtained
��o ~
)
��~ 
;�� �
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
private
�� 
void
�� !
AcceptFriendRequest
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7
	EventArgs
��8 A
e
��B C
)
��C D
{
�� 	
Button
�� 
clickedButton
��  
=
��! "
sender
��# )
as
��* ,
Button
��- 3
;
��3 4
ProfileUser
�� 
profileUser
�� #
=
��$ %
clickedButton
��& 3
.
��3 4
DataContext
��4 ?
as
��@ B
ProfileUser
��C N
;
��N O
if
�� 
(
�� 
profileUser
�� 
!=
�� 
null
�� #
)
��# $
{
�� %
SendAcceptFriendRequest
�� '
(
��' (
profileUser
��( 3
)
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I,
dialogErrorAtObtainingUserData
��I g
)
��g h
;
��h i
}
�� 
}
�� 	
private
�� 
void
�� "
DeclineFriendRequest
�� )
(
��) *
object
��* 0
sender
��1 7
,
��7 8
	EventArgs
��9 B
e
��C D
)
��D E
{
�� 	
Button
�� 
clickedButton
��  
=
��! "
sender
��# )
as
��* ,
Button
��- 3
;
��3 4
ProfileUser
�� 
profileUser
�� #
=
��$ %
clickedButton
��& 3
.
��3 4
DataContext
��4 ?
as
��@ B
ProfileUser
��C N
;
��N O
if
�� 
(
�� 
profileUser
�� 
!=
�� 
null
�� #
)
��# $
{
�� &
SendDeclineFriendRequest
�� (
(
��( )
profileUser
��) 4
)
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I,
dialogErrorAtObtainingUserData
��I g
)
��g h
;
��h i
}
�� 
}
�� 	
private
�� 
void
�� 
SendFriendRequest
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
Button
�� 
clickedButton
��  
=
��! "
sender
��# )
as
��* ,
Button
��- 3
;
��3 4
ProfileUser
�� 
profileUser
�� #
=
��$ %
clickedButton
��& 3
.
��3 4
DataContext
��4 ?
as
��@ B
ProfileUser
��C N
;
��N O
if
�� 
(
�� 
profileUser
�� 
!=
�� 
null
�� "
)
��" #
{
�� !
CreateFriendRequest
�� #
(
��# $
profileUser
��$ /
)
��/ 0
;
��0 1
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I,
dialogErrorAtObtainingUserData
��I g
)
��g h
;
��h i
}
�� 
}
�� 	
private
�� 
void
�� %
SendAcceptFriendRequest
�� ,
(
��, -
ProfileUser
��- 8
userToResponse
��9 G
)
��G H
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� (
FriendRequestManagerClient
�� 0(
friendRequestManagerClient
��1 K
=
��L M
new
��N Q(
FriendRequestManagerClient
��R l
(
��l m
)
��m n
;
��n o
Profile
�� 
	playerOne
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  "
UserProfileSingleton
��! 5
.
��5 6
	idAccount
��6 ?
}
�� 
;
�� 
Profile
�� 
	playerTwo
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  
userToResponse
��! /
.
��/ 0
	idAccount
��0 9
}
�� 
;
�� 
try
�� 
{
�� 
int
�� 
resultCreation
�� "
=
��# $(
friendRequestManagerClient
��% ?
.
��? @!
AcceptFriendRequest
��@ S
(
��S T
	playerOne
��T ]
,
��] ^
	playerTwo
��_ h
)
��h i
;
��i j
if
�� 
(
�� 
resultCreation
�� "
==
��# %
	Constants
��& /
.
��/ 0
SuccesOperation
��0 ?
)
��? @
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O'
dialogAcceptFriendRequest
��O h
)
��h i
;
��i j 
lvw_FriendRequests
�� &
.
��& '
Items
��' ,
.
��, -
Clear
��- 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
else
�� 
if
�� 
(
�� 
resultCreation
�� '
==
��( *
	Constants
��+ 4
.
��4 5
ErrorOperation
��5 C
)
��C D
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� &
SendDeclineFriendRequest
�� -
(
��- .
ProfileUser
��. 9
userToResponse
��: H
)
��H I
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� (
FriendRequestManagerClient
�� 0(
friendRequestManagerClient
��1 K
=
��L M
new
��N Q(
FriendRequestManagerClient
��R l
(
��l m
)
��m n
;
��n o
Profile
�� 
	playerOne
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  "
UserProfileSingleton
��! 5
.
��5 6
	idAccount
��6 ?
}
�� 
;
�� 
Profile
�� 
	playerTwo
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  
userToResponse
��! /
.
��/ 0
	idAccount
��0 9
}
�� 
;
�� 
try
�� 
{
�� 
int
�� 
resultCreation
�� "
=
��# $(
friendRequestManagerClient
��% ?
.
��? @"
DeclineFriendRequest
��@ T
(
��T U
	playerOne
��U ^
,
��^ _
	playerTwo
��` i
)
��i j
;
��j k
if
�� 
(
�� 
resultCreation
�� "
==
��# %
	Constants
��& /
.
��/ 0
SuccesOperation
��0 ?
)
��? @
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O)
dialogDeclinedFriendRequest
��O j
)
��j k
;
��k l 
lvw_FriendRequests
�� &
.
��& '
Items
��' ,
.
��, -
Clear
��- 2
(
��2 3
)
��3 4
;
��4 5
}
�� 
else
�� 
if
�� 
(
�� 
resultCreation
�� '
==
��( *
	Constants
��+ 4
.
��4 5
ErrorOperation
��5 C
)
��C D
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� !
CreateFriendRequest
�� (
(
��( )
ProfileUser
��) 4

userToSend
��5 ?
)
��? @
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� (
FriendRequestManagerClient
�� 0(
friendRequestManagerClient
��1 K
=
��L M
new
��N Q(
FriendRequestManagerClient
��R l
(
��l m
)
��m n
;
��n o
Profile
�� 
	playerOne
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  "
UserProfileSingleton
��! 5
.
��5 6
	idAccount
��6 ?
}
�� 
;
�� 
Profile
�� 
	playerTwo
�� 
=
�� 
new
��  #
Profile
��$ +
(
��+ ,
)
��, -
{
�� 
idAccesAccount
�� 
=
��  

userToSend
��! +
.
��+ ,
	idAccount
��, 5
}
�� 
;
�� 
try
�� 
{
�� 
int
�� 
resultCreation
�� "
=
��# $(
friendRequestManagerClient
��% ?
.
��? @!
CreateFriendRequest
��@ S
(
��S T
	playerOne
��T ]
,
��] ^
	playerTwo
��_ h
)
��h i
;
��i j
if
�� 
(
�� 
resultCreation
�� !
==
��" $
	Constants
��% .
.
��. /
SuccesOperation
��/ >
)
��> ?
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O'
dialogFriendRequestSended
��O h
)
��h i
;
��i j
lvw_FriendToAdd
�� #
.
��# $
Items
��$ )
.
��) *
Clear
��* /
(
��/ 0
)
��0 1
;
��1 2
}
�� 
else
�� 
if
�� 
(
�� 
resultCreation
�� &
==
��' )
	Constants
��* 3
.
��3 4
ErrorOperation
��4 B
)
��B C
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
DeleteFriendClick
�� &
(
��& '
object
��' -
sender
��. 4
,
��4 5
RoutedEventArgs
��6 E
e
��F G
)
��G H
{
�� 	
bool
�� 
	selection
�� 
=
�� 
DialogManager
�� *
.
��* +*
ShowConfirmationMessageAlert
��+ G
(
��G H

Properties
��H R
.
��R S
	Resources
��S \
.
��\ ]'
dialogConfirmFriendDelete
��] v
)
��v w
;
��w x
if
�� 
(
�� 
	selection
�� 
)
�� 
{
�� 
Button
�� 
clickedButton
�� $
=
��% &
sender
��' -
as
��. 0
Button
��1 7
;
��7 8
ProfileUser
�� 
profileUser
�� '
=
��( )
clickedButton
��* 7
.
��7 8
DataContext
��8 C
as
��D F
ProfileUser
��G R
;
��R S
if
�� 
(
�� 
profileUser
�� 
!=
��  "
null
��# '
)
��' (
{
�� '
SendEliminationFriendShip
�� -
(
��- .
profileUser
��. 9
)
��9 :
;
��: ;
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M,
dialogErrorAtObtainingUserData
��M k
)
��k l
;
��l m
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� '
SendEliminationFriendShip
�� .
(
��. /
ProfileUser
��/ :
profileUser
��; F
)
��F G
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� %
FriendshipManagerClient
�� -%
friendShipManagerClient
��. E
=
��F G
new
��H K%
FriendshipManagerClient
��L c
(
��c d
)
��d e
;
��e f
Profile
�� 
removingPlayer
�� "
=
��# $
new
��% (
Profile
��) 0
(
��0 1
)
��1 2
{
�� 
idAccesAccount
�� 
=
��  "
UserProfileSingleton
��! 5
.
��5 6
	idAccount
��6 ?
}
�� 
;
�� 
Profile
�� 
friendToRemove
�� "
=
��# $
new
��% (
Profile
��) 0
(
��0 1
)
��1 2
{
�� 
idAccesAccount
�� 
=
��  
profileUser
��! ,
.
��, -
	idAccount
��- 6
}
�� 
;
�� 
try
�� 
{
�� 
int
�� 
resultCreation
�� "
=
��# $%
friendShipManagerClient
��% <
.
��< =
DeleteFriend
��= I
(
��I J
removingPlayer
��J X
,
��X Y
friendToRemove
��Z h
)
��h i
;
��i j
if
�� 
(
�� 
resultCreation
�� "
==
��# %
	Constants
��& /
.
��/ 0
SuccesOperation
��0 ?
)
��? @
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O!
dialogFriendDeleted
��O b
)
��b c
;
��c d
LoadFriendships
�� #
(
��# $
)
��$ %
;
��% &
}
�� 
else
�� 
if
�� 
(
�� 
resultCreation
�� '
==
��( *
	Constants
��+ 4
.
��4 5
ErrorOperation
��5 C
)
��C D
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
public
�� 
void
�� !
LoadUserInformation
�� '
(
��' (
Profile
��( /
profile
��0 7
,
��7 8
bool
��9 =

areFriends
��> H
)
��H I
{
�� 	
ProfileUser
�� 
profileUser
�� #
=
��$ %
new
��& )
ProfileUser
��* 5
(
��5 6
)
��6 7
{
�� 
	idProfile
�� 
=
�� 
profile
�� #
.
��# $
	idProfile
��$ -
,
��- .
	idAccount
�� 
=
�� 
profile
�� #
.
��# $
idAccesAccount
��$ 2
,
��2 3
username
�� 
=
�� 
profile
�� "
.
��" #
username
��# +
,
��+ ,
imageProfile
�� 
=
�� 
profile
�� &
.
��& '
	imagePath
��' 0
,
��0 1

areFriends
�� 
=
�� 

areFriends
�� '
}
�� 
;
�� 
lvw_FriendToAdd
�� 
.
�� 
Items
�� !
.
��! "
Add
��" %
(
��% &
profileUser
��& 1
)
��1 2
;
��2 3
}
�� 	
private
�� 
sealed
�� 
class
�� 
ProfileUser
�� (
{
�� 	
public
�� 
int
�� 
	idProfile
��  
{
��! "
get
��$ '
;
��' (
set
��) ,
;
��, -
}
��. /
public
�� 
int
�� 
	idAccount
��  
{
��! "
get
��# &
;
��& '
set
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
username
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
public
�� 
string
�� 
imageProfile
�� &
{
��' (
get
��) ,
;
��, -
set
��. 1
;
��1 2
}
��3 4
public
�� 
bool
�� 
state
�� 
{
�� 
get
��  #
;
��# $
set
��% (
;
��( )
}
��* +
public
�� 
bool
�� 

areFriends
�� "
{
��# $
get
��% (
;
��( )
set
��* -
;
��- .
}
��/ 0
}
�� 	
private
�� 
void
�� 
BtnFriends_Click
�� %
(
��% &
object
��& ,
sender
��- 3
,
��3 4
RoutedEventArgs
��5 D
e
��E F
)
��F G
{
�� 	
stckp_GameFriends
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
Visible
��6 =
;
��= >"
stckp_FriendRequests
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C
stck_AddNewFriend
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @
LoadFriendships
�� 
(
�� 
)
�� 
;
�� 
}
�� 	
private
�� 
void
�� %
BtnFriendRequests_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	
stckp_GameFriends
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @"
stckp_FriendRequests
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A
stck_AddNewFriend
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @ 
LoadFriendRequests
�� 
(
�� 
)
��  
;
��  !
}
�� 	
private
�� 
void
�� 
BtnAdd_Click
�� !
(
��! "
object
��" (
sender
��) /
,
��/ 0
RoutedEventArgs
��1 @
e
��A B
)
��B C
{
�� 	
stckp_GameFriends
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
	Collapsed
��6 ?
;
��? @"
stckp_FriendRequests
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
	Collapsed
��9 B
;
��B C
stck_AddNewFriend
�� 
.
�� 

Visibility
�� (
=
��) *

Visibility
��+ 5
.
��5 6
Visible
��6 =
;
��= >
}
�� 	
private
�� 
void
�� 
Image_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
private
�� 
void
�� 
ReturnMainMenu
�� #
(
��# $
object
��$ *
sender
��+ 1
,
��1 2
RoutedEventArgs
��3 B
e
��C D
)
��D E
{
�� 	
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� $
ObtainConnectedFriends
�� *
(
��* +
string
��+ 1
[
��1 2
]
��2 3
connectedFriends
��4 D
)
��D E
{
�� 	"
ObservableCollection
��  
<
��  !
ProfileUser
��! ,
>
��, -
usersRefreshed
��. <
=
��= >
new
��? B"
ObservableCollection
��C W
<
��W X
ProfileUser
��X c
>
��c d
(
��d e
)
��e f
;
��f g
for
�� 
(
�� 
int
�� 
indexListView
�� "
=
��# $
$num
��% &
;
��& '
indexListView
��( 5
<
��6 7
lvw_FriendsList
��8 G
.
��G H
Items
��H M
.
��M N
Count
��N S
;
��S T
indexListView
��U b
++
��b d
)
��d e
{
�� 
ProfileUser
�� 
profile
�� #
=
��$ %
lvw_FriendsList
��& 5
.
��5 6
Items
��6 ;
[
��; <
indexListView
��< I
]
��I J
as
��K M
ProfileUser
��N Y
;
��Y Z
if
�� 
(
�� 
profile
�� 
!=
�� 
null
�� "
)
��" #
{
�� 
profile
�� 
.
�� 
state
�� !
=
��" #
connectedFriends
��$ 4
.
��4 5
Contains
��5 =
(
��= >
profile
��> E
.
��E F
username
��F N
)
��N O
;
��O P
}
�� 
usersRefreshed
�� 
.
�� 
Add
�� "
(
��" #
profile
��# *
)
��* +
;
��+ ,
}
�� 
lvw_FriendsList
�� 
.
�� 
Items
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
lvw_FriendsList
�� 
.
�� 
ItemsSource
�� '
=
��( )
usersRefreshed
��* 8
;
��8 9
}
�� 	
}
�� 
}�� ��
�C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\EditCredentialsView.xaml.cs
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
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleThree
�� )
.
��) *
Child
��* /
)
��/ 0
.
��0 1
Focus
��1 6
(
��6 7
)
��7 8
;
��8 9
else
�� 
if
�� 
(
�� 
currentTextBox
�� #
==
��$ &
(
��' (
TextBox
��( /
)
��/ 0
brd_BubbleThree
��0 ?
.
��? @
Child
��@ E
)
��E F
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleTwo
�� '
.
��' (
Child
��( -
)
��- .
.
��. /
Focus
��/ 4
(
��4 5
)
��5 6
;
��6 7
else
�� 
if
�� 
(
�� 
currentTextBox
�� #
==
��$ &
(
��' (
TextBox
��( /
)
��/ 0
brd_BubbleTwo
��0 =
.
��= >
Child
��> C
)
��C D
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleOne
�� '
.
��' (
Child
��( -
)
��- .
.
��. /
Focus
��/ 4
(
��4 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
bool
��  
AllTextBoxesFilled
�� '
(
��' (
)
��( )
{
�� 	
return
�� 
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleOne
�� *
.
��* +
Child
��+ 0
)
��0 1
.
��1 2
Text
��2 6
.
��6 7
Length
��7 =
>
��> ?
$num
��@ A
&&
��B D
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleTwo
�� *
.
��* +
Child
��+ 0
)
��0 1
.
��1 2
Text
��2 6
.
��6 7
Length
��7 =
>
��> ?
$num
��@ A
&&
��B D
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleThree
�� ,
.
��, -
Child
��- 2
)
��2 3
.
��3 4
Text
��4 8
.
��8 9
Length
��9 ?
>
��@ A
$num
��B C
&&
��D F
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleFour
�� +
.
��+ ,
Child
��, 1
)
��1 2
.
��2 3
Text
��3 7
.
��7 8
Length
��8 >
>
��? @
$num
��A B
&&
��C E
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleFive
�� +
.
��+ ,
Child
��, 1
)
��1 2
.
��2 3
Text
��3 7
.
��7 8
Length
��8 >
>
��? @
$num
��A B
&&
��C E
(
�� 
(
�� 
TextBox
�� 
)
�� 
brd_BubbleSix
�� *
.
��* +
Child
��+ 0
)
��0 1
.
��1 2
Text
��2 6
.
��6 7
Length
��7 =
>
��> ?
$num
��@ A
;
��A B
}
�� 	
private
�� 
void
�� 
ValidateCode
�� !
(
��! "
)
��" #
{
�� 	
string
�� 
enteredCode
�� 
=
��  
GetEnteredCode
��! /
(
��/ 0
)
��0 1
;
��1 2
if
�� 
(
�� 
IsValidCode
�� 
(
�� 
enteredCode
�� '
)
��' (
)
��( )
{
�� $
ShowNewPasswordSection
�� &
(
��& '
)
��' (
;
��( )
}
�� 
else
�� 
{
�� 
lbl_ErrorMessage
��  
.
��  !

Visibility
��! +
=
��, -

Visibility
��. 8
.
��8 9
Visible
��9 @
;
��@ A
}
�� 
}
�� 	
private
�� 
string
�� 
GetEnteredCode
�� %
(
��% &
)
��& '
{
�� 	
return
�� 
$"
�� 
{
�� 
(
�� 
(
�� 
TextBox
�� 
)
��  
brd_BubbleOne
��  -
.
��- .
Child
��. 3
)
��3 4
.
��4 5
Text
��5 9
}
��9 :
{
��: ;
(
��; <
(
��< =
TextBox
��= D
)
��D E
brd_BubbleTwo
��E R
.
��R S
Child
��S X
)
��X Y
.
��Y Z
Text
��Z ^
}
��^ _
"
��_ `
+
��a b
$"
�� 
{
�� 
(
�� 
(
�� 
TextBox
�� 
)
��  
brd_BubbleThree
��  /
.
��/ 0
Child
��0 5
)
��5 6
.
��6 7
Text
��7 ;
}
��; <
{
��< =
(
��= >
(
��> ?
TextBox
��? F
)
��F G
brd_BubbleFour
��G U
.
��U V
Child
��V [
)
��[ \
.
��\ ]
Text
��] a
}
��a b
"
��b c
+
��d e
$"
�� 
{
�� 
(
�� 
(
�� 
TextBox
�� 
)
��  
brd_BubbleFive
��  .
.
��. /
Child
��/ 4
)
��4 5
.
��5 6
Text
��6 :
}
��: ;
{
��; <
(
��< =
(
��= >
TextBox
��> E
)
��E F
brd_BubbleSix
��F S
.
��S T
Child
��T Y
)
��Y Z
.
��Z [
Text
��[ _
}
��_ `
"
��` a
;
��a b
}
�� 	
private
�� 
bool
�� 
IsValidCode
��  
(
��  !
string
��! '
code
��( ,
)
��, -
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� ,
EmailVerificationManagerClient
�� 4&
emailVerificationManager
��5 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^,
EmailVerificationManagerClient
��^ |
(
��| }
)
��} ~
;
��~ 
bool
�� 
isValid
�� 
=
�� 
false
��  
;
��  !
try
�� 
{
�� 
UserVerificator
�� 
verificationUser
��  0
=
��1 2
new
��3 6
UserVerificator
��7 F
(
��F G
)
��G H
;
��H I
verificationUser
��  
.
��  !
email
��! &
=
��' ("
UserProfileSingleton
��) =
.
��= >
email
��> C
;
��C D
verificationUser
��  
.
��  !
code
��! %
=
��& '
code
��( ,
;
��, -
isValid
�� 
=
�� &
emailVerificationManager
�� 2
.
��2 3$
VerifyCodeVerification
��3 I
(
��I J
verificationUser
��J Z
)
��Z [
;
��[ \
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
�� 
isValid
�� 
;
�� 
}
�� 	
private
�� 
void
�� $
ShowNewPasswordSection
�� +
(
��+ ,
)
��, -
{
�� 	
lbl_ErrorMessage
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
	Collapsed
��5 >
;
��> ?#
grd_VerificationPanel
�� !
.
��! "

Visibility
��" ,
=
��- .

Visibility
��/ 9
.
��9 :
	Collapsed
��: C
;
��C D
grd_EditionPanel
�� 
.
�� 

Visibility
�� '
=
��( )

Visibility
��* 4
.
��4 5
Visible
��5 <
;
��< =
}
�� 	
private
�� 
void
�� %
BtnConfirmChanges_Click
�� ,
(
��, -
object
��- 3
sender
��4 :
,
��: ;
RoutedEventArgs
��< K
e
��L M
)
��M N
{
�� 	
	txt_Email
�� 
.
�� 
BorderBrush
�� !
=
��" #
Brushes
��$ +
.
��+ ,
White
��, 1
;
��1 2
brd_Password
�� 
.
�� 
BorderBrush
�� $
=
��% &
Brushes
��' .
.
��. /
Yellow
��/ 5
;
��5 6!
brd_ConfirmPassword
�� 
.
��  
BorderBrush
��  +
=
��, -
Brushes
��. 5
.
��5 6
Yellow
��6 <
;
��< =
if
�� 
(
�� 
ValidateFields
�� 
(
�� 
)
��  
)
��  !
{
�� 
if
�� 
(
�� #
ValidateSamePasswords
�� )
(
��) *
)
��* +
)
��+ ,
{
�� 
if
�� 
(
�� (
ValidateExistingCredential
�� 2
(
��2 3
)
��3 4
)
��4 5
{
�� 
UpdateCredentials
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "%
ShowWarningMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O'
dialogMissmatchesPassword
��O h
)
��h i
;
��i j
}
�� 
}
�� 
else
�� 
{
�� 
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I
dialogWrongData
��I X
)
��X Y
;
��Y Z
}
�� 
}
�� 	
private
�� 
bool
�� 
ValidateFields
�� #
(
��# $
)
��$ %
{
�� 	
bool
�� 
emailVerification
�� "
=
��# $
	Validator
��% .
.
��. /
ValidateEmail
��/ <
(
��< =
	txt_Email
��= F
.
��F G
Text
��G K
)
��K L
;
��L M
bool
�� !
passwordVerificaton
�� $
=
��% &
	Validator
��' 0
.
��0 1
ValidatePassword
��1 A
(
��A B
pwb_Password
��B N
.
��N O
Password
��O W
)
��W X
;
��X Y
bool
�� )
passwordConfirmVerification
�� ,
=
��- .
	Validator
��/ 8
.
��8 9
ValidatePassword
��9 I
(
��I J!
pwb_ConfirmPassword
��J ]
.
��] ^
Password
��^ f
)
��f g
;
��g h
if
�� 
(
�� 
!
�� 
emailVerification
�� "
)
��" #
{
�� 
	txt_Email
�� 
.
�� 
BorderBrush
�� %
=
��& '
Brushes
��( /
.
��/ 0
Red
��0 3
;
��3 4
}
�� 
if
�� 
(
�� 
!
�� !
passwordVerificaton
�� $
)
��$ %
{
�� 
brd_Password
�� 
.
�� 
BorderBrush
�� (
=
��) *
Brushes
��+ 2
.
��2 3
Red
��3 6
;
��6 7
}
�� 
if
�� 
(
�� 
!
�� )
passwordConfirmVerification
�� ,
)
��, -
{
�� !
brd_ConfirmPassword
�� #
.
��# $
BorderBrush
��$ /
=
��0 1
Brushes
��2 9
.
��9 :
Red
��: =
;
��= >
}
�� 
return
�� 
emailVerification
�� $
&&
��% '!
passwordVerificaton
��( ;
&&
��< >)
passwordConfirmVerification
��? Z
;
��Z [
}
�� 	
private
�� 
bool
�� #
ValidateSamePasswords
�� *
(
��* +
)
��+ ,
{
�� 	
bool
�� 
samePasswords
�� 
=
��  
false
��! &
;
��& '
if
�� 
(
�� !
pwb_ConfirmPassword
�� #
.
��# $
Password
��$ ,
==
��- /
pwb_Password
��0 <
.
��< =
Password
��= E
)
��E F
{
�� 
samePasswords
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
return
�� 
samePasswords
��  
;
��  !
}
�� 	
private
�� 
bool
�� (
ValidateExistingCredential
�� /
(
��/ 0
)
��0 1
{
�� 	
bool
��  
resultVerification
�� #
=
��$ %
false
��& +
;
��+ ,
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
try
�� 
{
�� 
int
�� +
resultVerificationCredentials
�� 1
=
��2 3
userManagerClient
��4 E
.
��E F
VerifyCredentials
��F W
(
��W X"
UserProfileSingleton
��X l
.
��l m
username
��m u
,
��u v
	txt_Email��w �
.��� �
Text��� �
)��� �
;��� �
if
�� 
(
�� +
resultVerificationCredentials
�� 1
==
��2 4
	Constants
��5 >
.
��> ?
DataMatches
��? J
)
��J K
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M*
dialogEmailAlreadyRegistered
��M i
)
��i j
;
��j k 
resultVerification
�� &
=
��' (
false
��) .
;
��. /
}
�� 
else
�� 
if
�� 
(
�� +
resultVerificationCredentials
�� 6
==
��7 9
	Constants
��: C
.
��C D
NoDataMatches
��D Q
)
��Q R
{
��  
resultVerification
�� &
=
��' (
true
��) -
;
��- .
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b 
resultVerification
�� &
=
��' (
false
��) .
;
��. /
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
return
��  
resultVerification
�� %
;
��% &
}
�� 	
private
�� 
void
�� 
UpdateCredentials
�� &
(
��& '
)
��' (
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� 
UserManagerClient
�� '
userManagerClient
��( 9
=
��: ;
new
��< ?
	HiveProxy
��@ I
.
��I J
UserManagerClient
��J [
(
��[ \
)
��\ ]
;
��] ^
try
�� 
{
�� 
AccessAccount
�� 
oldAccesAccount
�� -
=
��. /
new
��0 3
AccessAccount
��4 A
(
��A B
)
��B C
{
�� 
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
,
��C D
email
�� 
=
�� "
UserProfileSingleton
�� 0
.
��0 1
email
��1 6
,
��6 7
password
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
password
��4 <
}
�� 
;
�� 
string
�� 
passwordToEncrypt
�� (
=
��) *
pwb_Password
��+ 7
.
��7 8
Password
��8 @
;
��@ A
string
�� 
passwordEncripted
�� (
=
��) *
Hasher
��+ 1
.
��1 2

hashToSHA2
��2 <
(
��< =
passwordToEncrypt
��= N
)
��N O
;
��O P
AccessAccount
�� 
newAccesAccount
�� -
=
��. /
new
��0 3
AccessAccount
��4 A
(
��A B
)
��B C
{
�� 
idAccesAccount
�� "
=
��# $"
UserProfileSingleton
��% 9
.
��9 :
	idAccount
��: C
,
��C D
email
�� 
=
�� 
	txt_Email
�� %
.
��% &
Text
��& *
,
��* +
password
�� 
=
�� 
passwordEncripted
�� 0
}
�� 
;
�� 
int
�� 
updateResult
��  
=
��! "
userManagerClient
��# 4
.
��4 5$
UpdateLoginCredentials
��5 K
(
��K L
oldAccesAccount
��L [
,
��[ \
newAccesAccount
��] l
)
��l m
;
��m n
if
�� 
(
�� 
updateResult
��  
==
��! #
	Constants
��$ -
.
��- .
SuccesOperation
��. =
)
��= >
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O
dialogUpdatedData
��O `
)
��` a
;
��a b"
UserProfileSingleton
�� (
.
��( )
Instance
��) 1
.
��1 2
ResetSingleton
��2 @
(
��@ A
)
��A B
;
��B C
DisconnectPlayer
�� $
(
��$ %
)
��% &
;
��& '
ReturnToLoginView
�� %
(
��% &
)
��& '
;
��' (
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� 
DisconnectPlayer
�� %
(
��% &
)
��& '
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� &
UserSessionManagerClient
�� .&
userSessionManagerClient
��/ G
=
��H I
new
��J M&
UserSessionManagerClient
��N f
(
��f g
)
��g h
;
��h i
try
�� 
{
�� 
UserSession
�� 
userSession
�� '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
}
�� 
;
�� &
userSessionManagerClient
�� (
.
��( )

Disconnect
��) 3
(
��3 4
userSession
��4 ?
,
��? @
false
��@ E
)
��E F
;
��F G
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� !
BtnResendCode_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
MouseButtonEventArgs
��8 L
e
��M N
)
��N O
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
	HiveProxy
�� 
.
�� ,
EmailVerificationManagerClient
�� 4&
emailVerificationManager
��5 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^,
EmailVerificationManagerClient
��^ |
(
��| }
)
��} ~
;
��~ 
try
�� 
{
�� 
int
�� 
resultEmailSend
�� #
=
��$ %&
emailVerificationManager
��& >
.
��> ?#
SendVerificationEmail
��? T
(
��T U"
UserProfileSingleton
��U i
.
��i j
email
��j o
)
��o p
;
��p q
if
�� 
(
�� 
resultEmailSend
�� #
==
��$ &
	Constants
��' 0
.
��0 1
SuccesOperation
��1 @
)
��@ A
{
�� 
DialogManager
�� !
.
��! "%
ShowSuccessMessageAlert
��" 9
(
��9 :

Properties
��: D
.
��D E
	Resources
��E N
.
��N O,
dialogEmailVerificationMessage
��O m
)
��m n
;
��n o
}
�� 
else
�� 
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M$
dialogCouldntSendEmail
��M c
)
��c d
;
��d e
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogWarn
�� 
(
�� 
timeOutException
�� /
)
��/ 0
;
��0 1
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogFatal
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
}
�� 	
private
�� 
void
�� #
BtnCancelChange_Click
�� *
(
��* +
object
��+ 1
sender
��2 8
,
��8 9
RoutedEventArgs
��: I
e
��J K
)
��K L
{
�� 	
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� 
ReturnToLoginView
�� %
(
��% &
)
��& '
{
�� 	
DisconnectPlayer
�� 
(
�� 
)
�� 
;
�� 
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
	loginView
��, 5
)
��5 6
;
��6 7
}
�� 	
private
�� 
void
�� 
Image_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
ReturnToLoginView
�� 
(
�� 
)
�� 
;
��  
}
�� 	
private
�� 
void
�� &
TextBox_PreviewMouseDown
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
MouseButtonEventArgs
��= Q
e
��R S
)
��S T
{
�� 	
e
�� 
.
�� 
Handled
�� 
=
�� 
true
�� 
;
�� 
}
�� 	
}
�� 
}�� �
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
} �p
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
$str	8 �
,
� �
RegexOptions
� �
.
� �
None
� �
,
� �
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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
$num	~ �
)
� �
)
� �
;
� �
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
$num	 �
)
� �
)
� �
;
� �
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
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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
)	 �
;
� �
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
$num	| �
)
� �
)
� �
;
� �
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
)	 �
)
� �
;
� �
private 
static 
Regex 
_emailRegex (
=) *
new+ .
Regex/ 4
(4 5
$str	5 �
,
� �
RegexOptions
� �
.
� �
None
� �
,
� �
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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
FromMilliseconds	))r �
(
))� �
$num
))� �
)
))� �
)
))� �
;
))� �
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
$num	44} �
)
44� �
)
44� �
;
44� �
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
$num	??} �
)
??� �
)
??� �
;
??� �
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
_emailRegex	KKw �
)
KK� �
)
KK� �
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
$num	UU} �
)
UU� �
)
UU� �
;
UU� �
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
;	jj �
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
}}} �$
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
}77 �
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
}## �
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
$str	l �
+
� �
$str )
,) *
$str* O
,O P
$strP q
,q r
$str	r �
+
� �
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
$str	f �
,
� �
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
}(( �
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
}CC �

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
} �
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
}55 �
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
}"" �
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
Warning	z �
)
� �
;
� �
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
Information	y �
)
� �
;
� �
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
MessageBoxButton	t �
.
� �
OKCancel
� �
,
� �
MessageBoxImage
� �
.
� �
Question
� �
)
� �
;
� �
return 
result 
== 
MessageBoxResult -
.- .
OK. 0
;0 1
} 	
} 
} �
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