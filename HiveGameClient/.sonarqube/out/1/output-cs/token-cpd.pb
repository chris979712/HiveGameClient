¬
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
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
["" 
assembly"" 	
:""	 

	ThemeInfo"" 
("" &
ResourceDictionaryLocation## 
.## 
None## #
,### $&
ResourceDictionaryLocation&& 
.&& 
SourceAssembly&& -
))) 
])) 
[33 
assembly33 	
:33	 

AssemblyVersion33 
(33 
$str33 $
)33$ %
]33% &
[44 
assembly44 	
:44	 

AssemblyFileVersion44 
(44 
$str44 (
)44( )
]44) *¶?
sC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\MainWindow.xaml.cs
	namespace 	
HiveGameWPFApp
 
{ 
public 

partial 
class 

MainWindow #
:$ %
Window& ,
{ 
public 

MainWindow 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
this 
. 
Closing 
+= 
MainWindowClosing -
;- .
}   	
private"" 
void"" !
IntroVideo_MediaEnded"" *
(""* +
object""+ 1
sender""2 8
,""8 9
RoutedEventArgs"": I
e""J K
)""K L
{## 	
NavigationFrame%% 
.%% 
Navigate%% $
(%%$ %
new%%% (
Views%%) .
.%%. /
	LoginView%%/ 8
(%%8 9
)%%9 :
)%%: ;
;%%; <
}'' 	
private)) 
void)) &
NavigationFrame_Navigating)) /
())/ 0
object))0 6
sender))7 =
,))= >%
NavigatingCancelEventArgs))? X
e))Y Z
)))Z [
{** 	
var++ 
fadeOutAnimation++  
=++! "
new++# &
DoubleAnimation++' 6
(++6 7
$num++7 8
,++8 9
$num++: ;
,++; <
TimeSpan++= E
.++E F
FromSeconds++F Q
(++Q R
$num++R U
)++U V
)++V W
;++W X
NavigationFrame,, 
.,, 
BeginAnimation,, *
(,,* +
Frame,,+ 0
.,,0 1
OpacityProperty,,1 @
,,,@ A
fadeOutAnimation,,B R
),,R S
;,,S T
}-- 	
private// 
void// %
NavigationFrame_Navigated// .
(//. /
object/// 5
sender//6 <
,//< =
NavigationEventArgs//> Q
e//R S
)//S T
{00 	
var11 
fadeInAnimation11 
=11  !
new11" %
DoubleAnimation11& 5
(115 6
$num116 7
,117 8
$num119 :
,11: ;
TimeSpan11< D
.11D E
FromSeconds11E P
(11P Q
$num11Q T
)11T U
)11U V
;11V W
NavigationFrame22 
.22 
BeginAnimation22 *
(22* +
Frame22+ 0
.220 1
OpacityProperty221 @
,22@ A
fadeInAnimation22B Q
)22Q R
;22R S
string33 
pageName33 
=33 
e33 
.33  
Content33  '
.33' (
GetType33( /
(33/ 0
)330 1
.331 2
Name332 6
;336 7
}44 	
private66 
void66 
MainWindowClosing66 &
(66& '
object66' -
sender66. 4
,664 5
System666 <
.66< =
ComponentModel66= K
.66K L
CancelEventArgs66L [
e66\ ]
)66] ^
{77 	
LoggerManager88 
logger88  
=88! "
new88# &
LoggerManager88' 4
(884 5
this885 9
.889 :
GetType88: A
(88A B
)88B C
)88C D
;88D E
try99 
{:: $
UserSessionManagerClient;; (
sessionManager;;) 7
=;;8 9
new;;: =$
UserSessionManagerClient;;> V
(;;V W
);;W X
;;;X Y
UserSession<< 
session<< #
=<<$ %%
VerifyExistingUserSession<<& ?
(<<? @
)<<@ A
;<<A B
if== 
(== 
	Constants== 
.== 
	isInMatch== '
)==' (
{>> 
sessionManager?? "
.??" #

Disconnect??# -
(??- .
session??. 5
,??5 6
true??6 :
)??: ;
;??; <
}@@ 
elseAA 
{BB 
sessionManagerCC "
.CC" #

DisconnectCC# -
(CC- .
sessionCC. 5
,CC5 6
falseCC6 ;
)CC; <
;CC< =
}DD 
}EE 
catchFF 
(FF %
EndpointNotFoundExceptionFF ,
endPointExceptionFF- >
)FF> ?
{GG 
loggerHH 
.HH 
LogErrorHH 
(HH  
endPointExceptionHH  1
)HH1 2
;HH2 3
DialogManagerII 
.II !
ShowErrorMessageAlertII 3
(II3 4

PropertiesII4 >
.II> ?
	ResourcesII? H
.IIH I#
dialogEndPointExceptionIII `
)II` a
;IIa b
}JJ 
catchKK 
(KK 
TimeoutExceptionKK #
timeOutExceptionKK$ 4
)KK4 5
{LL 
loggerMM 
.MM 
LogErrorMM 
(MM  
timeOutExceptionMM  0
)MM0 1
;MM1 2
DialogManagerNN 
.NN !
ShowErrorMessageAlertNN 3
(NN3 4

PropertiesNN4 >
.NN> ?
	ResourcesNN? H
.NNH I'
dialogComunicationExceptionNNI d
)NNd e
;NNe f
}OO 
catchPP 
(PP "
CommunicationExceptionPP )"
communicationExceptionPP* @
)PP@ A
{QQ 
loggerRR 
.RR 
LogErrorRR 
(RR  "
communicationExceptionRR  6
)RR6 7
;RR7 8
DialogManagerSS 
.SS !
ShowErrorMessageAlertSS 3
(SS3 4

PropertiesSS4 >
.SS> ?
	ResourcesSS? H
.SSH I"
dialogTimeOutExceptionSSI _
)SS_ `
;SS` a
}TT 
}VV 	
privateXX 
UserSessionXX %
VerifyExistingUserSessionXX 5
(XX5 6
)XX6 7
{YY 	
intZZ 
	idAccountZZ 
;ZZ 
string[[ 
username[[ 
;[[ 
string\\ 
	codematch\\ 
;\\ 
UserSession]] 
sessionPlayer]] %
=]]& '
new]]( +
UserSession]], 7
(]]7 8
)]]8 9
;]]9 :
if^^ 
(^^  
UserProfileSingleton^^ #
.^^# $
	idAccount^^$ -
==^^. 0
$num^^1 2
)^^2 3
{__ 
	idAccount`` 
=`` 
$num`` 
;`` 
usernameaa 
=aa 
$straa .
;aa. /
	codematchbb 
=bb 
$strbb $
;bb$ %
}cc 
elsedd 
{ee 
	idAccountff 
=ff  
UserProfileSingletonff 0
.ff0 1
	idAccountff1 :
;ff: ;
usernamegg 
=gg  
UserProfileSingletongg /
.gg/ 0
usernamegg0 8
;gg8 9
ifhh 
(hh 
MatchSingletonhh !
.hh! "
	codeMatchhh" +
==hh, .
nullhh/ 3
)hh3 4
{ii 
	codematchjj 
=jj 
$strjj  (
;jj( )
}kk 
elsell 
{mm 
	codematchnn 
=nn 
MatchSingletonnn  .
.nn. /
	codeMatchnn/ 8
;nn8 9
}oo 
}pp 
sessionPlayerqq 
.qq 
	codeMatchqq #
=qq$ %
	codematchqq& /
;qq/ 0
sessionPlayerrr 
.rr 
usernamerr "
=rr# $
usernamerr% -
;rr- .
sessionPlayerss 
.ss 
	idAccountss #
=ss$ %
	idAccountss& /
;ss/ 0
returntt 
sessionPlayertt  
;tt  !
}uu 	
privateww 
voidww 
Window_Loadedww "
(ww" #
objectww# )
senderww* 0
,ww0 1
RoutedEventArgsww2 A
ewwB C
)wwC D
{xx 	
}zz 	
}{{ 
}|| í
lC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\App.xaml.cs
	namespace

 	
HiveGameWPFApp


 
{ 
public 

partial 
class 
App 
: 
Application *
{ 
public 
static 
MediaPlayer !
MediaPlayer" -
=. /
new0 3
MediaPlayer4 ?
(? @
)@ A
;A B
private 
static 
string 
currentMusicPath .
=/ 0
string1 7
.7 8
Empty8 =
;= >
private 
static 
bool 
isMusicPlaying *
=+ ,
true- 1
;1 2
public 
static 
void 
	PlayMusic $
($ %
string% +
	musicPath, 5
)5 6
{ 	
if 
( 
currentMusicPath  
==! #
	musicPath$ -
)- .
return/ 5
;5 6
MediaPlayer 
. 
Stop 
( 
) 
; 
MediaPlayer 
. 
Open 
( 
new  
Uri! $
($ %
	musicPath% .
,. /
UriKind0 7
.7 8
RelativeOrAbsolute8 J
)J K
)K L
;L M
MediaPlayer 
. 

MediaEnded "
-=# %"
MediaPlayer_MediaEnded& <
;< =
MediaPlayer 
. 

MediaEnded "
+=# %"
MediaPlayer_MediaEnded& <
;< =
MediaPlayer 
. 
Play 
( 
) 
; 
currentMusicPath 
= 
	musicPath (
;( )
MediaPlayer 
. 
Volume 
=  
$num! %
;% &
isMusicPlaying 
= 
true !
;! "
} 	
private 
static 
void "
MediaPlayer_MediaEnded 2
(2 3
object3 9
sender: @
,@ A
	EventArgsB K
eL M
)M N
{   	
MediaPlayer!! 
.!! 
Position!!  
=!!! "
TimeSpan!!# +
.!!+ ,
Zero!!, 0
;!!0 1
MediaPlayer"" 
."" 
Play"" 
("" 
)"" 
;"" 
}## 	
public%% 
static%% 
void%% 
ToggleMusic%% &
(%%& '
)%%' (
{&& 	
if'' 
('' 
isMusicPlaying'' 
)'' 
{(( 
MediaPlayer)) 
.)) 
Pause)) !
())! "
)))" #
;))# $
isMusicPlaying** 
=**  
false**! &
;**& '
}++ 
else,, 
{-- 
MediaPlayer.. 
... 
Play..  
(..  !
)..! "
;.." #
isMusicPlaying// 
=//  
true//! %
;//% &
}00 
}11 	
public33 
static33 
bool33 
IsMusicPlaying33 )
=>33* ,
isMusicPlaying33- ;
;33; <
}44 
}55 ìb
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
.@@5 6
ERROR_OPERATION@@6 E
)@@E F
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
.HH5 6
SUCCES_OPERATIONHH6 F
)HHF G
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
LogErrorVV 
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
.[[ 
LogError[[ 
([[  
timeOutException[[  0
)[[0 1
;[[1 2
DialogManager\\ 
.\\ !
ShowErrorMessageAlert\\ 3
(\\3 4

Properties\\4 >
.\\> ?
	Resources\\? H
.\\H I'
dialogComunicationException\\I d
)\\d e
;\\e f
}]] 
catch^^ 
(^^ "
CommunicationException^^ )"
communicationException^^* @
)^^@ A
{__ 
logger`` 
.`` 
LogError`` 
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
.aaH I"
dialogTimeOutExceptionaaI _
)aa_ `
;aa` a
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
.mm0 1
DATA_MATCHESmm1 =
)mm= >
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
.qq5 6
NO_DATA_MATCHESqq6 E
)qqE F
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
.uu5 6
ERROR_OPERATIONuu6 E
)uuE F
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
LogError|| 
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
ÅÅ 
LogError
ÅÅ 
(
ÅÅ  
timeOutException
ÅÅ  0
)
ÅÅ0 1
;
ÅÅ1 2
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
ÇÇH I)
dialogComunicationException
ÇÇI d
)
ÇÇd e
;
ÇÇe f
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
LogError
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
ááH I$
dialogTimeOutException
ááI _
)
áá_ `
;
áá` a
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
}õõ Ú¶
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
ReturnToLogin<< %
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
LogErrordd 
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
.ii 
LogErrorii 
(ii  
timeOutExceptionii  0
)ii0 1
;ii1 2
DialogManagerjj 
.jj !
ShowErrorMessageAlertjj 3
(jj3 4

Propertiesjj4 >
.jj> ?
	Resourcesjj? H
.jjH I'
dialogComunicationExceptionjjI d
)jjd e
;jje f
}kk 
catchll 
(ll "
CommunicationExceptionll )"
communicationExceptionll* @
)ll@ A
{mm 
loggernn 
.nn 
LogErrornn 
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

hashToSHA1ww+ 5
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
ŒŒ 
brd_Password
œœ 
.
œœ 

Visibility
œœ '
=
œœ( )
	isVisible
œœ* 3
?
œœ4 5

Visibility
œœ6 @
.
œœ@ A
	Collapsed
œœA J
:
œœK L

Visibility
œœM W
.
œœW X
Visible
œœX _
;
œœ_ `!
brd_PasswordDisplay
–– #
.
––# $

Visibility
––$ .
=
––/ 0
	isVisible
––1 :
?
––; <

Visibility
––= G
.
––G H
Visible
––H O
:
––P Q

Visibility
––R \
.
––\ ]
	Collapsed
––] f
;
––f g
if
““ 
(
““ 
	isVisible
““ 
)
““ "
txtb_PasswordDisplay
““ 3
.
““3 4
Text
““4 8
=
““9 :
pwb_Password
““; G
.
““G H
Password
““H P
;
““P Q
else
”” 
pwb_Password
”” !
.
””! "
Password
””" *
=
””+ ,"
txtb_PasswordDisplay
””- A
.
””A B
Text
””B F
;
””F G
}
‘‘ 
else
’’ 
{
÷÷ !
pwb_ConfirmPassword
◊◊ #
.
◊◊# $

Visibility
◊◊$ .
=
◊◊/ 0
	isVisible
◊◊1 :
?
◊◊; <

Visibility
◊◊= G
.
◊◊G H
	Collapsed
◊◊H Q
:
◊◊R S

Visibility
◊◊T ^
.
◊◊^ _
Visible
◊◊_ f
;
◊◊f g(
brd_PasswordDisplayConfirm
ÿÿ *
.
ÿÿ* +

Visibility
ÿÿ+ 5
=
ÿÿ6 7
	isVisible
ÿÿ8 A
?
ÿÿB C

Visibility
ÿÿD N
.
ÿÿN O
Visible
ÿÿO V
:
ÿÿW X

Visibility
ÿÿY c
.
ÿÿc d
	Collapsed
ÿÿd m
;
ÿÿm n
if
⁄⁄ 
(
⁄⁄ 
	isVisible
⁄⁄ 
)
⁄⁄ )
txtb_ConfirmPasswordDisplay
⁄⁄ :
.
⁄⁄: ;
Text
⁄⁄; ?
=
⁄⁄@ A!
pwb_ConfirmPassword
⁄⁄B U
.
⁄⁄U V
Password
⁄⁄V ^
;
⁄⁄^ _
else
€€ !
pwb_ConfirmPassword
€€ (
.
€€( )
Password
€€) 1
=
€€2 3)
txtb_ConfirmPasswordDisplay
€€4 O
.
€€O P
Text
€€P T
;
€€T U
}
‹‹ 
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ +
UpdatePetImageBasedOnPassword
ﬂﬂ 2
(
ﬂﬂ2 3
)
ﬂﬂ3 4
{
‡‡ 	
if
·· 
(
·· 
string
·· 
.
·· 
IsNullOrEmpty
·· $
(
··$ %
pwb_Password
··% 1
.
··1 2
Password
··2 :
)
··: ;
&&
··< >
string
··? E
.
··E F
IsNullOrEmpty
··F S
(
··S T!
pwb_ConfirmPassword
··T g
.
··g h
Password
··h p
)
··p q
)
··q r
{
‚‚ 
ChangePetImage
„„ 
(
„„ 
$str
„„ ;
)
„„; <
;
„„< =
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
ChangePetImage
ÁÁ 
(
ÁÁ 
$str
ÁÁ H
)
ÁÁH I
;
ÁÁI J
}
ËË 
}
ÈÈ 	
private
ÎÎ 
void
ÎÎ 
ChangePetImage
ÎÎ #
(
ÎÎ# $
string
ÎÎ$ *
	imagePath
ÎÎ+ 4
)
ÎÎ4 5
{
ÏÏ 	
img_Pet
ÌÌ 
.
ÌÌ 
Source
ÌÌ 
=
ÌÌ 
new
ÌÌ  
BitmapImage
ÌÌ! ,
(
ÌÌ, -
new
ÌÌ- 0
Uri
ÌÌ1 4
(
ÌÌ4 5
	imagePath
ÌÌ5 >
,
ÌÌ> ?
UriKind
ÌÌ@ G
.
ÌÌG H
Relative
ÌÌH P
)
ÌÌP Q
)
ÌÌQ R
;
ÌÌR S
}
ÓÓ 	
public
 
void
 
ReturnToLogin
 !
(
! "
)
" #
{
ÒÒ 	
	LoginView
ÚÚ 
	loginView
ÚÚ 
=
ÚÚ  !
new
ÚÚ" %
	LoginView
ÚÚ& /
(
ÚÚ/ 0
)
ÚÚ0 1
;
ÚÚ1 2
this
ÛÛ 
.
ÛÛ 
NavigationService
ÛÛ "
.
ÛÛ" #
Navigate
ÛÛ# +
(
ÛÛ+ ,
	loginView
ÛÛ, 5
)
ÛÛ5 6
;
ÛÛ6 7
}
ÙÙ 	
}
ıı 
}ˆˆ æﬁ
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
MediaPlayer 
mediaPlayer '
;' (
private 
VideoDrawing 
videoDrawing )
;) *
private 
DrawingBrush 
drawingBrush )
;) *
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
;) *
App   
.   
	PlayMusic   
(   
$str   .
)  . /
;  / 0"
UpdateButtonVisibility!! "
(!!" #
)!!# $
;!!$ %
btn_EditCredentials## 
.##  

Visibility##  *
=##+ ,

Visibility##- 7
.##7 8
	Collapsed##8 A
;##A B
btn_EditProfile$$ 
.$$ 

Visibility$$ &
=$$' (

Visibility$$) 3
.$$3 4
	Collapsed$$4 =
;$$= >
lbl_Username%% 
.%% 
Content%%  
=%%! " 
UserProfileSingleton%%# 7
.%%7 8
username%%8 @
;%%@ A
img_ProfilePic&& 
.&& 
Source&& !
=&&" #
new&&$ '
BitmapImage&&( 3
(&&3 4
new&&4 7
Uri&&8 ;
(&&; < 
UserProfileSingleton&&< P
.&&P Q

imageRoute&&Q [
,&&[ \
UriKind&&] d
.&&d e
Relative&&e m
)&&m n
)&&n o
;&&o p
}'' 	
private)) 
void)) 
MainMenu_Loaded)) $
())$ %
object))% +
sender)), 2
,))2 3
RoutedEventArgs))4 C
e))D E
)))E F
{** 	
mediaPlayer++ 
=++ 
new++ 
MediaPlayer++ )
(++) *
)++* +
;+++ ,
mediaPlayer,, 
.,, 
Open,, 
(,, 
new,,  
Uri,,! $
(,,$ %
$str,,% R
),,R S
),,S T
;,,T U
mediaPlayer.. 
... 

MediaEnded.. "
+=..# %#
MediaElement_MediaEnded..& =
;..= >
videoDrawing// 
=// 
new// 
VideoDrawing// +
{00 
Rect11 
=11 
new11 
Rect11 
(11  
$num11  !
,11! "
$num11# $
,11$ %
videoCanvas11& 1
.111 2
Width112 7
,117 8
videoCanvas119 D
.11D E
Height11E K
)11K L
,11L M
Player22 
=22 
mediaPlayer22 $
}33 
;33 
drawingBrush55 
=55 
new55 
DrawingBrush55 +
(55+ ,
videoDrawing55, 8
)558 9
;559 :
videoCanvas66 
.66 

Background66 "
=66# $
drawingBrush66% 1
;661 2
mediaPlayer88 
.88 
Play88 
(88 
)88 
;88 
}99 	
private;; 
void;; 
MainMenu_Unloaded;; &
(;;& '
object;;' -
sender;;. 4
,;;4 5
RoutedEventArgs;;6 E
e;;F G
);;G H
{<< 	
if== 
(== 
mediaPlayer== 
!=== 
null== #
)==# $
{>> 
mediaPlayer?? 
.?? 

MediaEnded?? &
+=??' )#
MediaElement_MediaEnded??* A
;??A B
mediaPlayer@@ 
.@@ 
Stop@@  
(@@  !
)@@! "
;@@" #
mediaPlayerAA 
.AA 
CloseAA !
(AA! "
)AA" #
;AA# $
mediaPlayerBB 
=BB 
nullBB "
;BB" #
}CC 
}DD 	
privateFF 
voidFF #
MediaElement_MediaEndedFF ,
(FF, -
objectFF- 3
senderFF4 :
,FF: ;
	EventArgsFF< E
eFFF G
)FFG H
{GG 	
ifHH 
(HH 
mediaPlayerHH 
!=HH 
nullHH #
)HH# $
{II 
mediaPlayerJJ 
.JJ 
PositionJJ $
=JJ% &
TimeSpanJJ' /
.JJ/ 0
ZeroJJ0 4
;JJ4 5
mediaPlayerKK 
.KK 
PlayKK  
(KK  !
)KK! "
;KK" #
}LL 
}MM 	
privateOO 
voidOO 
Image_MouseDownOO $
(OO$ %
objectOO% +
senderOO, 2
,OO2 3 
MouseButtonEventArgsOO4 H
eOOI J
)OOJ K
{PP 	
boolQQ 
resultConfirmationQQ #
=QQ$ %
DialogManagerQQ& 3
.QQ3 4(
ShowConfirmationMessageAlertQQ4 P
(QQP Q

PropertiesQQQ [
.QQ[ \
	ResourcesQQ\ e
.QQe f
dialogExitMainMenuQQf x
)QQx y
;QQy z
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
;RRD E
ifSS 
(SS 
resultConfirmationSS "
)SS" #
{TT 
tryUU 
{VV 
	HiveProxyWW 
.WW $
UserSessionManagerClientWW 6$
userSessionManagerClientWW7 O
=WWP Q
newWWR U
	HiveProxyWWV _
.WW_ `$
UserSessionManagerClientWW` x
(WWx y
)WWy z
;WWz {
UserSessionXX 
userSessionXX  +
=XX, -
newXX. 1
UserSessionXX2 =
(XX= >
)XX> ?
{YY 
usernameZZ  
=ZZ! " 
UserProfileSingletonZZ# 7
.ZZ7 8
usernameZZ8 @
,ZZ@ A
	idAccount[[ !
=[[" # 
UserProfileSingleton[[$ 8
.[[8 9
	idAccount[[9 B
}\\ 
;\\ 
int]] 
disconnectionResult]] +
=]], -$
userSessionManagerClient]]. F
.]]F G

Disconnect]]G Q
(]]Q R
userSession]]R ]
,]]] ^
false]]_ d
)]]d e
;]]e f
if^^ 
(^^ 
disconnectionResult^^ *
==^^+ -
	Constants^^. 7
.^^7 8
SUCCES_OPERATION^^8 H
)^^H I
{__  
UserProfileSingleton`` ,
.``, -
Instance``- 5
.``5 6
ResetSingleton``6 D
(``D E
)``E F
;``F G
	LoginViewaa !
loginaa" '
=aa( )
newaa* -
	LoginViewaa. 7
(aa7 8
)aa8 9
;aa9 :
thisbb 
.bb 
NavigationServicebb .
.bb. /
Navigatebb/ 7
(bb7 8
loginbb8 =
)bb= >
;bb> ?
}cc 
elsedd 
ifdd 
(dd 
disconnectionResultdd /
==dd0 2
	Constantsdd3 <
.dd< =
NO_DATA_MATCHESdd= L
)ddL M
{ee 
DialogManagerff %
.ff% &#
ShowWarningMessageAlertff& =
(ff= >

Propertiesff> H
.ffH I
	ResourcesffI R
.ffR S(
dialogCouldntFindUserSessionffS o
)ffo p
;ffp q
}gg 
elsehh 
{ii 
DialogManagerjj %
.jj% &!
ShowErrorMessageAlertjj& ;
(jj; <

Propertiesjj< F
.jjF G
	ResourcesjjG P
.jjP Q&
dialogErrorInDisconnectionjjQ k
)jjk l
;jjl m
}kk 
}ll 
catchmm 
(mm %
EndpointNotFoundExceptionmm 0
endPointExceptionmm1 B
)mmB C
{nn 
loggeroo 
.oo 
LogErroroo #
(oo# $
endPointExceptionoo$ 5
)oo5 6
;oo6 7
DialogManagerpp !
.pp! "!
ShowErrorMessageAlertpp" 7
(pp7 8

Propertiespp8 B
.ppB C
	ResourcesppC L
.ppL M#
dialogEndPointExceptionppM d
)ppd e
;ppe f
}qq 
catchrr 
(rr 
TimeoutExceptionrr '
timeOutExceptionrr( 8
)rr8 9
{ss 
loggertt 
.tt 
LogErrortt #
(tt# $
timeOutExceptiontt$ 4
)tt4 5
;tt5 6
DialogManageruu !
.uu! "!
ShowErrorMessageAlertuu" 7
(uu7 8

Propertiesuu8 B
.uuB C
	ResourcesuuC L
.uuL M'
dialogComunicationExceptionuuM h
)uuh i
;uui j
}vv 
catchww 
(ww "
CommunicationExceptionww -"
communicationExceptionww. D
)wwD E
{xx 
loggeryy 
.yy 
LogErroryy #
(yy# $"
communicationExceptionyy$ :
)yy: ;
;yy; <
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
}{{ 
}|| 
}}} 	
private 
void 
BtnPlay_Click "
(" #
object# )
sender* 0
,0 1
RoutedEventArgs2 A
eB C
)C D
{
ÄÄ 	
btn_JoinMatch
ÅÅ 
.
ÅÅ 

Visibility
ÅÅ $
=
ÅÅ% &

Visibility
ÅÅ' 1
.
ÅÅ1 2
Visible
ÅÅ2 9
;
ÅÅ9 :
btn_CreateMatch
ÇÇ 
.
ÇÇ 

Visibility
ÇÇ &
=
ÇÇ' (

Visibility
ÇÇ) 3
.
ÇÇ3 4
Visible
ÇÇ4 ;
;
ÇÇ; <
img_CreateMatch
ÉÉ 
.
ÉÉ 

Visibility
ÉÉ &
=
ÉÉ' (

Visibility
ÉÉ) 3
.
ÉÉ3 4
Visible
ÉÉ4 ;
;
ÉÉ; <
img_JoinMatch
ÑÑ 
.
ÑÑ 

Visibility
ÑÑ $
=
ÑÑ% &

Visibility
ÑÑ' 1
.
ÑÑ1 2
Visible
ÑÑ2 9
;
ÑÑ9 :!
btn_EditCredentials
ÖÖ 
.
ÖÖ  

Visibility
ÖÖ  *
=
ÖÖ+ ,

Visibility
ÖÖ- 7
.
ÖÖ7 8
	Collapsed
ÖÖ8 A
;
ÖÖA B
btn_EditProfile
ÜÜ 
.
ÜÜ 

Visibility
ÜÜ &
=
ÜÜ' (

Visibility
ÜÜ) 3
.
ÜÜ3 4
	Collapsed
ÜÜ4 =
;
ÜÜ= >
grd_Configuration
áá 
.
áá 

Visibility
áá (
=
áá) *

Visibility
áá+ 5
.
áá5 6
	Collapsed
áá6 ?
;
áá? @
}
àà 	
private
ää 
void
ää  
BtnMyAccount_Click
ää '
(
ää' (
object
ää( .
sender
ää/ 5
,
ää5 6
RoutedEventArgs
ää7 F
e
ääG H
)
ääH I
{
ãã 	!
btn_EditCredentials
åå 
.
åå  

Visibility
åå  *
=
åå+ ,

Visibility
åå- 7
.
åå7 8
Visible
åå8 ?
;
åå? @
btn_EditProfile
çç 
.
çç 

Visibility
çç &
=
çç' (

Visibility
çç) 3
.
çç3 4
Visible
çç4 ;
;
çç; <
btn_JoinMatch
éé 
.
éé 

Visibility
éé $
=
éé% &

Visibility
éé' 1
.
éé1 2
	Collapsed
éé2 ;
;
éé; <
btn_CreateMatch
èè 
.
èè 

Visibility
èè &
=
èè' (

Visibility
èè) 3
.
èè3 4
	Collapsed
èè4 =
;
èè= >
img_CreateMatch
êê 
.
êê 

Visibility
êê &
=
êê' (

Visibility
êê) 3
.
êê3 4
	Collapsed
êê4 =
;
êê= >
img_JoinMatch
ëë 
.
ëë 

Visibility
ëë $
=
ëë% &

Visibility
ëë' 1
.
ëë1 2
	Collapsed
ëë2 ;
;
ëë; <
grd_Configuration
íí 
.
íí 

Visibility
íí (
=
íí) *

Visibility
íí+ 5
.
íí5 6
	Collapsed
íí6 ?
;
íí? @
}
ìì 	
private
ïï 
void
ïï !
ActivateMusic_Click
ïï (
(
ïï( )
object
ïï) /
sender
ïï0 6
,
ïï6 7
RoutedEventArgs
ïï8 G
e
ïïH I
)
ïïI J
{
ññ 	
if
óó 
(
óó 
!
óó 
App
óó 
.
óó 
IsMusicPlaying
óó #
)
óó# $
{
òò 
App
ôô 
.
ôô 
ToggleMusic
ôô 
(
ôô  
)
ôô  !
;
ôô! "$
UpdateButtonVisibility
öö &
(
öö& '
)
öö' (
;
öö( )
}
õõ 
}
ùù 	
private
üü 
void
üü #
DeactivateMusic_Click
üü *
(
üü* +
object
üü+ 1
sender
üü2 8
,
üü8 9
RoutedEventArgs
üü: I
e
üüJ K
)
üüK L
{
†† 	
if
°° 
(
°° 
App
°° 
.
°° 
IsMusicPlaying
°° "
)
°°" #
{
¢¢ 
App
££ 
.
££ 
ToggleMusic
££ 
(
££  
)
££  !
;
££! "$
UpdateButtonVisibility
§§ &
(
§§& '
)
§§' (
;
§§( )
}
•• 
}
¶¶ 	
private
®® 
void
®® $
UpdateButtonVisibility
®® +
(
®®+ ,
)
®®, -
{
©© 	
if
™™ 
(
™™ 
App
™™ 
.
™™ 
IsMusicPlaying
™™ "
)
™™" #
{
´´ 
img_SoundOn
¨¨ 
.
¨¨ 

Visibility
¨¨ &
=
¨¨' (

Visibility
¨¨) 3
.
¨¨3 4
	Collapsed
¨¨4 =
;
¨¨= >
img_SoundOf
≠≠ 
.
≠≠ 

Visibility
≠≠ &
=
≠≠' (

Visibility
≠≠) 3
.
≠≠3 4
Visible
≠≠4 ;
;
≠≠; <
}
ÆÆ 
else
ØØ 
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
±±3 4
Visible
±±4 ;
;
±±; <
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
≤≤3 4
	Collapsed
≤≤4 =
;
≤≤= >
}
≥≥ 
}
¥¥ 	
private
∂∂ 
void
∂∂ 
BtnFriends_Click
∂∂ %
(
∂∂% &
object
∂∂& ,
sender
∂∂- 3
,
∂∂3 4
RoutedEventArgs
∂∂5 D
e
∂∂E F
)
∂∂F G
{
∑∑ 	
FriendsListView
∏∏ 
friendsListView
∏∏ +
=
∏∏, -
new
∏∏. 1
FriendsListView
∏∏2 A
(
∏∏A B
)
∏∏B C
;
∏∏C D
this
ππ 
.
ππ 
NavigationService
ππ "
.
ππ" #
Navigate
ππ# +
(
ππ+ ,
friendsListView
ππ, ;
)
ππ; <
;
ππ< =
}
∫∫ 	
private
ºº 
void
ºº &
BtnEditCredentials_Click
ºº -
(
ºº- .
object
ºº. 4
sender
ºº5 ;
,
ºº; <
RoutedEventArgs
ºº= L
e
ººM N
)
ººN O
{
ΩΩ 	
LoggerManager
ææ 
logger
ææ  
=
ææ! "
new
ææ# &
LoggerManager
ææ' 4
(
ææ4 5
this
ææ5 9
.
ææ9 :
GetType
ææ: A
(
ææA B
)
ææB C
)
ææC D
;
ææD E
	HiveProxy
øø 
.
øø ,
EmailVerificationManagerClient
øø 4&
emailVerificationManager
øø5 M
=
øøN O
new
øøP S
	HiveProxy
øøT ]
.
øø] ^,
EmailVerificationManagerClient
øø^ |
(
øø| }
)
øø} ~
;
øø~ 
try
¡¡ 
{
¬¬ 
int
√√ 
resultEmailSend
√√ #
=
√√$ %&
emailVerificationManager
√√& >
.
√√> ?#
SendVerificationEmail
√√? T
(
√√T U"
UserProfileSingleton
√√U i
.
√√i j
email
√√j o
)
√√o p
;
√√p q
if
ƒƒ 
(
ƒƒ 
resultEmailSend
ƒƒ #
==
ƒƒ$ &
	Constants
ƒƒ' 0
.
ƒƒ0 1
SUCCES_OPERATION
ƒƒ1 A
)
ƒƒA B
{
≈≈ 
DialogManager
∆∆ !
.
∆∆! "%
ShowSuccessMessageAlert
∆∆" 9
(
∆∆9 :

Properties
∆∆: D
.
∆∆D E
	Resources
∆∆E N
.
∆∆N O,
dialogEmailVerificationMessage
∆∆O m
)
∆∆m n
;
∆∆n o!
EditCredentialsView
«« '!
editCredentialsView
««( ;
=
««< =
new
««> A!
EditCredentialsView
««B U
(
««U V
)
««V W
;
««W X
this
»» 
.
»» 
NavigationService
»» *
.
»»* +
Navigate
»»+ 3
(
»»3 4!
editCredentialsView
»»4 G
)
»»G H
;
»»H I
}
…… 
else
   
{
ÀÀ 
DialogManager
ÃÃ !
.
ÃÃ! "#
ShowErrorMessageAlert
ÃÃ" 7
(
ÃÃ7 8

Properties
ÃÃ8 B
.
ÃÃB C
	Resources
ÃÃC L
.
ÃÃL M$
dialogCouldntSendEmail
ÃÃM c
)
ÃÃc d
;
ÃÃd e
}
ÕÕ 
}
ŒŒ 
catch
œœ 
(
œœ '
EndpointNotFoundException
œœ ,
endPointException
œœ- >
)
œœ> ?
{
–– 
logger
—— 
.
—— 
LogError
—— 
(
——  
endPointException
——  1
)
——1 2
;
——2 3
DialogManager
““ 
.
““ #
ShowErrorMessageAlert
““ 3
(
““3 4

Properties
““4 >
.
““> ?
	Resources
““? H
.
““H I%
dialogEndPointException
““I `
)
““` a
;
““a b
}
”” 
catch
‘‘ 
(
‘‘ 
TimeoutException
‘‘ #
timeOutException
‘‘$ 4
)
‘‘4 5
{
’’ 
logger
÷÷ 
.
÷÷ 
LogError
÷÷ 
(
÷÷  
timeOutException
÷÷  0
)
÷÷0 1
;
÷÷1 2
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
◊◊H I)
dialogComunicationException
◊◊I d
)
◊◊d e
;
◊◊e f
}
ÿÿ 
catch
ŸŸ 
(
ŸŸ $
CommunicationException
ŸŸ )$
communicationException
ŸŸ* @
)
ŸŸ@ A
{
⁄⁄ 
logger
€€ 
.
€€ 
LogError
€€ 
(
€€  $
communicationException
€€  6
)
€€6 7
;
€€7 8
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
›› 
}
ﬁﬁ 	
private
‡‡ 
void
‡‡ 
CreateMatchLobby
‡‡ %
(
‡‡% &
)
‡‡& '
{
·· 	
	HiveProxy
‚‚ 
.
‚‚ '
MatchCreatorManagerClient
‚‚ /
matchCreator
‚‚0 <
=
‚‚= >
new
‚‚? B
	HiveProxy
‚‚C L
.
‚‚L M'
MatchCreatorManagerClient
‚‚M f
(
‚‚f g
)
‚‚g h
;
‚‚h i
LoggerManager
„„ 
logger
„„  
=
„„! "
new
„„# &
LoggerManager
„„' 4
(
„„4 5
this
„„5 9
.
„„9 :
GetType
„„: A
(
„„A B
)
„„B C
)
„„C D
;
„„D E
try
‰‰ 
{
ÂÂ 
string
ÊÊ 
code
ÊÊ 
=
ÊÊ 
matchCreator
ÊÊ *
.
ÊÊ* +
GenerateLobbyCode
ÊÊ+ <
(
ÊÊ< ="
UserProfileSingleton
ÊÊ= Q
.
ÊÊQ R
email
ÊÊR W
)
ÊÊW X
;
ÊÊX Y
MatchCreator
ÁÁ 
matchCreatorUser
ÁÁ -
=
ÁÁ. /
new
ÁÁ0 3
MatchCreator
ÁÁ4 @
(
ÁÁ@ A
)
ÁÁA B
{
ËË 
	codeMatch
ÈÈ 
=
ÈÈ 
code
ÈÈ  $
,
ÈÈ$ %
idCreatorAccount
ÍÍ $
=
ÍÍ% &"
UserProfileSingleton
ÍÍ' ;
.
ÍÍ; <
	idAccount
ÍÍ< E
,
ÍÍE F
	dateMatch
ÎÎ 
=
ÎÎ 
DateTime
ÎÎ  (
.
ÎÎ( )
Now
ÎÎ) ,
,
ÎÎ, -

stateMatch
ÏÏ 
=
ÏÏ  
$str
ÏÏ! (
}
ÌÌ 
;
ÌÌ 
int
ÓÓ 
resultInsertion
ÓÓ #
=
ÓÓ$ %
matchCreator
ÓÓ& 2
.
ÓÓ2 3
CreateMatch
ÓÓ3 >
(
ÓÓ> ?
matchCreatorUser
ÓÓ? O
)
ÓÓO P
;
ÓÓP Q
if
ÔÔ 
(
ÔÔ 
resultInsertion
ÔÔ #
==
ÔÔ$ &
	Constants
ÔÔ' 0
.
ÔÔ0 1
SUCCES_OPERATION
ÔÔ1 A
)
ÔÔA B
{
 
MatchSingleton
ÒÒ "
.
ÒÒ" #
Instance
ÒÒ# +
.
ÒÒ+ ,
CreateInstance
ÒÒ, :
(
ÒÒ: ;
code
ÒÒ; ?
)
ÒÒ? @
;
ÒÒ@ A
	LobbyView
ÚÚ 
	lobbyView
ÚÚ '
=
ÚÚ( )
new
ÚÚ* -
	LobbyView
ÚÚ. 7
(
ÚÚ7 8
)
ÚÚ8 9
;
ÚÚ9 :
this
ÛÛ 
.
ÛÛ 
NavigationService
ÛÛ *
.
ÛÛ* +
Navigate
ÛÛ+ 3
(
ÛÛ3 4
	lobbyView
ÛÛ4 =
)
ÛÛ= >
;
ÛÛ> ?
}
ÙÙ 
else
ıı 
if
ıı 
(
ıı 
resultInsertion
ıı (
==
ıı) +
	Constants
ıı, 5
.
ıı5 6
ERROR_OPERATION
ıı6 E
)
ııE F
{
ˆˆ 
DialogManager
˜˜ !
.
˜˜! "#
ShowErrorMessageAlert
˜˜" 7
(
˜˜7 8

Properties
˜˜8 B
.
˜˜B C
	Resources
˜˜C L
.
˜˜L M!
dialogDataBaseError
˜˜M `
)
˜˜` a
;
˜˜a b
}
¯¯ 
}
˘˘ 
catch
˙˙ 
(
˙˙ '
EndpointNotFoundException
˙˙ ,
endPointException
˙˙- >
)
˙˙> ?
{
˚˚ 
logger
¸¸ 
.
¸¸ 
LogError
¸¸ 
(
¸¸  
endPointException
¸¸  1
)
¸¸1 2
;
¸¸2 3
DialogManager
˝˝ 
.
˝˝ #
ShowErrorMessageAlert
˝˝ 3
(
˝˝3 4

Properties
˝˝4 >
.
˝˝> ?
	Resources
˝˝? H
.
˝˝H I%
dialogEndPointException
˝˝I `
)
˝˝` a
;
˝˝a b
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
TimeoutException
ˇˇ #
timeOutException
ˇˇ$ 4
)
ˇˇ4 5
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogError
ÅÅ 
(
ÅÅ  
timeOutException
ÅÅ  0
)
ÅÅ0 1
;
ÅÅ1 2
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
ÇÇH I)
dialogComunicationException
ÇÇI d
)
ÇÇd e
;
ÇÇe f
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ )$
communicationException
ÑÑ* @
)
ÑÑ@ A
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  $
communicationException
ÜÜ  6
)
ÜÜ6 7
;
ÜÜ7 8
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
àà 
}
ââ 	
private
ãã 
void
ãã "
BtnEditProfile_Click
ãã )
(
ãã) *
object
ãã* 0
sender
ãã1 7
,
ãã7 8
RoutedEventArgs
ãã9 H
e
ããI J
)
ããJ K
{
åå 	
EditProfileView
çç 
editProfileView
çç +
=
çç, -
new
çç. 1
EditProfileView
çç2 A
(
ççA B
)
ççB C
;
ççC D
this
éé 
.
éé 
NavigationService
éé "
.
éé" #
Navigate
éé# +
(
éé+ ,
editProfileView
éé, ;
)
éé; <
;
éé< =
}
èè 	
private
ëë 
void
ëë 
BtnSettings_Click
ëë &
(
ëë& '
object
ëë' -
sender
ëë. 4
,
ëë4 5
RoutedEventArgs
ëë6 E
e
ëëF G
)
ëëG H
{
íí 	
grd_Configuration
ìì 
.
ìì 

Visibility
ìì (
=
ìì) *

Visibility
ìì+ 5
.
ìì5 6
Visible
ìì6 =
;
ìì= >
btn_JoinMatch
îî 
.
îî 

Visibility
îî $
=
îî% &

Visibility
îî' 1
.
îî1 2
	Collapsed
îî2 ;
;
îî; <
btn_CreateMatch
ïï 
.
ïï 

Visibility
ïï &
=
ïï' (

Visibility
ïï) 3
.
ïï3 4
	Collapsed
ïï4 =
;
ïï= >
img_CreateMatch
ññ 
.
ññ 

Visibility
ññ &
=
ññ' (

Visibility
ññ) 3
.
ññ3 4
	Collapsed
ññ4 =
;
ññ= >
img_JoinMatch
óó 
.
óó 

Visibility
óó $
=
óó% &

Visibility
óó' 1
.
óó1 2
	Collapsed
óó2 ;
;
óó; <!
btn_EditCredentials
òò 
.
òò  

Visibility
òò  *
=
òò+ ,

Visibility
òò- 7
.
òò7 8
	Collapsed
òò8 A
;
òòA B
btn_EditProfile
ôô 
.
ôô 

Visibility
ôô &
=
ôô' (

Visibility
ôô) 3
.
ôô3 4
	Collapsed
ôô4 =
;
ôô= >
}
öö 	
private
úú 
void
úú "
BtnCreateMatch_Click
úú )
(
úú) *
object
úú* 0
sender
úú1 7
,
úú7 8
RoutedEventArgs
úú9 H
e
úúI J
)
úúJ K
{
ùù 	
if
ûû 
(
ûû 
DialogManager
ûû 
.
ûû *
ShowConfirmationMessageAlert
ûû :
(
ûû: ;

Properties
ûû; E
.
ûûE F
	Resources
ûûF O
.
ûûO P-
dialogConfirmationMatchCreation
ûûP o
)
ûûo p
)
ûûp q
{
üü 
CreateMatchLobby
††  
(
††  !
)
††! "
;
††" #
}
°° 
}
¢¢ 	
private
§§ 
void
§§  
BtnJoinMatch_Click
§§ '
(
§§' (
object
§§( .
sender
§§/ 5
,
§§5 6
RoutedEventArgs
§§7 F
e
§§G H
)
§§H I
{
•• 	
GameCodeView
¶¶ 
gameCodeView
¶¶ %
=
¶¶& '
new
¶¶( +
GameCodeView
¶¶, 8
(
¶¶8 9
)
¶¶9 :
;
¶¶: ;
this
ßß 
.
ßß 
NavigationService
ßß "
.
ßß" #
Navigate
ßß# +
(
ßß+ ,
gameCodeView
ßß, 8
)
ßß8 9
;
ßß9 :
}
®® 	
private
™™ 
void
™™ !
BtnStatistics_Click
™™ (
(
™™( )
object
™™) /
sender
™™0 6
,
™™6 7
RoutedEventArgs
™™8 G
e
™™H I
)
™™I J
{
´´ 	
StatisticsView
¨¨ 
statisticsView
¨¨ )
=
¨¨* +
new
¨¨, /
StatisticsView
¨¨0 >
(
¨¨> ?
)
¨¨? @
;
¨¨@ A
this
≠≠ 
.
≠≠ 
NavigationService
≠≠ "
.
≠≠" #
Navigate
≠≠# +
(
≠≠+ ,
statisticsView
≠≠, :
)
≠≠: ;
;
≠≠; <
}
ÆÆ 	
}
±± 
}≤≤ Ùt
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
})) 	
private++ 
void++ '
BtnPersonalStatistics_Click++ 0
(++0 1
object++1 7
sender++8 >
,++> ?
RoutedEventArgs++@ O
e++P Q
)++Q R
{,, 	$
stckp_PersonalStatistics-- $
.--$ %

Visibility--% /
=--0 1

Visibility--2 <
.--< =
Visible--= D
;--D E!
stckp_WorldStatistics.. !
...! "

Visibility.." ,
=..- .

Visibility../ 9
...9 :
	Collapsed..: C
;..C D"
GetPersonalLeaderBoard// "
(//" #
)//# $
;//$ %
}11 	
private33 
void33 "
GetPersonalLeaderBoard33 +
(33+ ,
)33, -
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
;55D E
	HiveProxy66 
.66 $
LeaderBoardManagerClient66 .$
leaderBoardManagerClient66/ G
=66H I
new66J M
	HiveProxy66N W
.66W X$
LeaderBoardManagerClient66X p
(66p q
)66q r
;66r s
try77 
{88 
LeaderBoardPlayer99 !
leaderBoardPlayer99" 3
=994 5$
leaderBoardManagerClient996 N
.99N O"
GetPersonalLeaderBoard99O e
(99e f 
UserProfileSingleton99f z
.99z {
	idAccount	99{ Ñ
)
99Ñ Ö
;
99Ö Ü
if:: 
(:: 
leaderBoardPlayer:: $
.::$ %
	idAccount::% .
==::/ 1
	Constants::2 ;
.::; <
NO_DATA_MATCHES::< K
)::K L
{;; 
DialogManager<< !
.<<! "!
ShowErrorMessageAlert<<" 7
(<<7 8

Properties<<8 B
.<<B C
	Resources<<C L
.<<L M'
dialogNoPersonalLeaderboard<<M h
)<<h i
;<<i j
}== 
else>> 
if>> 
(>> 
leaderBoardPlayer>> )
.>>) *
	idAccount>>* 3
==>>4 6
	Constants>>7 @
.>>@ A
ERROR_OPERATION>>A P
)>>P Q
{?? 
DialogManager@@ !
.@@! "!
ShowErrorMessageAlert@@" 7
(@@7 8

Properties@@8 B
.@@B C
	Resources@@C L
.@@L M
dialogDataBaseError@@M `
)@@` a
;@@a b
}AA 
elseBB 
{CC "
PersonalStatisticsDataDD *
=DD+ ,
newDD- 0 
ObservableCollectionDD1 E
<DDE F
PlayerStatisticDDF U
>DDU V
{EE 
newFF 
PlayerStatisticFF +
{GG 
ProfileImageHH (
=HH) * 
UserProfileSingletonHH+ ?
.HH? @

imageRouteHH@ J
,HHJ K
NameII  
=II! "
leaderBoardPlayerII# 4
.II4 5
usernameII5 =
,II= >
WinsJJ  
=JJ! "
leaderBoardPlayerJJ# 4
.JJ4 5
totalWonMatchesJJ5 D
,JJD E
LossesKK "
=KK# $
leaderBoardPlayerKK% 6
.KK6 7
totalLostMatchesKK7 G
,KKG H

TotalGamesLL &
=LL' (
leaderBoardPlayerLL) :
.LL: ;
totalMatchesLL; G
}MM 
}NN 
;NN !
dg_PersonalStatisticsOO )
.OO) *
ItemsSourceOO* 5
=OO6 7"
PersonalStatisticsDataOO8 N
;OON O
}PP 
}QQ 
catchRR 
(RR %
EndpointNotFoundExceptionRR ,
endPointExceptionRR- >
)RR> ?
{SS 
loggerTT 
.TT 
LogErrorTT 
(TT  
endPointExceptionTT  1
)TT1 2
;TT2 3
DialogManagerUU 
.UU !
ShowErrorMessageAlertUU 3
(UU3 4

PropertiesUU4 >
.UU> ?
	ResourcesUU? H
.UUH I#
dialogEndPointExceptionUUI `
)UU` a
;UUa b
}VV 
catchWW 
(WW 
TimeoutExceptionWW #
timeOutExceptionWW$ 4
)WW4 5
{XX 
loggerYY 
.YY 
LogErrorYY 
(YY  
timeOutExceptionYY  0
)YY0 1
;YY1 2
DialogManagerZZ 
.ZZ !
ShowErrorMessageAlertZZ 3
(ZZ3 4

PropertiesZZ4 >
.ZZ> ?
	ResourcesZZ? H
.ZZH I'
dialogComunicationExceptionZZI d
)ZZd e
;ZZe f
}[[ 
catch\\ 
(\\ "
CommunicationException\\ )"
communicationException\\* @
)\\@ A
{]] 
logger^^ 
.^^ 
LogError^^ 
(^^  "
communicationException^^  6
)^^6 7
;^^7 8
DialogManager__ 
.__ !
ShowErrorMessageAlert__ 3
(__3 4

Properties__4 >
.__> ?
	Resources__? H
.__H I"
dialogTimeOutException__I _
)___ `
;__` a
}`` 
}aa 	
privatecc 
voidcc $
BtnWorldStatistics_Clickcc -
(cc- .
objectcc. 4
sendercc5 ;
,cc; <
RoutedEventArgscc= L
eccM N
)ccN O
{dd 	$
stckp_PersonalStatisticsee $
.ee$ %

Visibilityee% /
=ee0 1

Visibilityee2 <
.ee< =
	Collapsedee= F
;eeF G!
stckp_WorldStatisticsff !
.ff! "

Visibilityff" ,
=ff- .

Visibilityff/ 9
.ff9 :
Visibleff: A
;ffA B!
GetGlobalLeaderboardsgg !
(gg! "
)gg" #
;gg# $
}hh 	
privatejj 
voidjj !
GetGlobalLeaderboardsjj *
(jj* +
)jj+ ,
{kk 	
LoggerManagerll 
loggerll  
=ll! "
newll# &
LoggerManagerll' 4
(ll4 5
thisll5 9
.ll9 :
GetTypell: A
(llA B
)llB C
)llC D
;llD E
	HiveProxymm 
.mm $
LeaderBoardManagerClientmm .$
leaderBoardManagerClientmm/ G
=mmH I
newmmJ M
	HiveProxymmN W
.mmW X$
LeaderBoardManagerClientmmX p
(mmp q
)mmq r
;mmr s
trynn 
{oo 
LeaderBoardPlayerpp !
[pp! "
]pp" #
leaderBoardspp$ 0
=pp1 2$
leaderBoardManagerClientpp3 K
.ppK L%
GetAllPlayersLeaderboardsppL e
(ppe f
)ppf g
;ppg h
Listqq 
<qq 
LeaderBoardPlayerqq &
>qq& '
leaderBoardsSortedqq( :
=qq; <
leaderBoardsqq= I
.qqI J
OrderByDescendingqqJ [
(qq[ \
leaderboardqq\ g
=>qqh j
leaderboardqqk v
.qqv w
totalWonMatches	qqw Ü
)
qqÜ á
.
qqá à
ToList
qqà é
(
qqé è
)
qqè ê
;
qqê ë
Listrr 
<rr 
PlayerStatisticrr $
>rr$ %
playerStatisticListrr& 9
=rr: ;
newrr< ?
Listrr@ D
<rrD E
PlayerStatisticrrE T
>rrT U
(rrU V
)rrV W
;rrW X
forss 
(ss 
intss #
indexLeaderBoardsSortedss 0
=ss1 2
$numss3 4
;ss4 5#
indexLeaderBoardsSortedss6 M
<ssN O
leaderBoardsSortedssP b
.ssb c
Countssc h
;ssh i$
indexLeaderBoardsSorted	ssj Å
++
ssÅ É
)
ssÉ Ñ
{tt 
PlayerStatisticuu #
playerStatisticuu$ 3
=uu4 5
newuu6 9
PlayerStatisticuu: I
(uuI J
)uuJ K
{vv 
Nameww 
=ww 
leaderBoardsSortedww 1
[ww1 2#
indexLeaderBoardsSortedww2 I
]wwI J
.wwJ K
usernamewwK S
,wwS T
ProfileImagexx $
=xx% &
leaderBoardsSortedxx' 9
[xx9 :#
indexLeaderBoardsSortedxx: Q
]xxQ R
.xxR S
imageProfilexxS _
,xx_ `

TotalGamesyy "
=yy# $
leaderBoardsSortedyy% 7
[yy7 8#
indexLeaderBoardsSortedyy8 O
]yyO P
.yyP Q
totalMatchesyyQ ]
,yy] ^
Losseszz 
=zz  
leaderBoardsSortedzz! 3
[zz3 4#
indexLeaderBoardsSortedzz4 K
]zzK L
.zzL M
totalLostMatcheszzM ]
,zz] ^
Wins{{ 
={{ 
leaderBoardsSorted{{ 1
[{{1 2#
indexLeaderBoardsSorted{{2 I
]{{I J
.{{J K
totalWonMatches{{K Z
,{{Z [
Rank|| 
=|| #
indexLeaderBoardsSorted|| 6
+||7 8
$num||9 :
}}} 
;}} 
playerStatisticList~~ '
.~~' (
Add~~( +
(~~+ ,
playerStatistic~~, ;
)~~; <
;~~< =
}  
dg_WorldStatistics
ÄÄ "
.
ÄÄ" #
ItemsSource
ÄÄ# .
=
ÄÄ/ 0!
playerStatisticList
ÄÄ1 D
;
ÄÄD E
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ ,
endPointException
ÇÇ- >
)
ÇÇ> ?
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogError
ÑÑ 
(
ÑÑ  
endPointException
ÑÑ  1
)
ÑÑ1 2
;
ÑÑ2 3
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I%
dialogEndPointException
ÖÖI `
)
ÖÖ` a
;
ÖÖa b
}
ÜÜ 
catch
áá 
(
áá 
TimeoutException
áá #
timeOutException
áá$ 4
)
áá4 5
{
àà 
logger
ââ 
.
ââ 
LogError
ââ 
(
ââ  
timeOutException
ââ  0
)
ââ0 1
;
ââ1 2
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I)
dialogComunicationException
ääI d
)
ääd e
;
ääe f
}
ãã 
catch
åå 
(
åå $
CommunicationException
åå )$
communicationException
åå* @
)
åå@ A
{
çç 
logger
éé 
.
éé 
LogError
éé 
(
éé  $
communicationException
éé  6
)
éé6 7
;
éé7 8
DialogManager
èè 
.
èè #
ShowErrorMessageAlert
èè 3
(
èè3 4

Properties
èè4 >
.
èè> ?
	Resources
èè? H
.
èèH I$
dialogTimeOutException
èèI _
)
èè_ `
;
èè` a
}
êê 
}
ëë 	
private
ìì 
void
ìì 
Image_MouseDown
ìì $
(
ìì$ %
object
ìì% +
sender
ìì, 2
,
ìì2 3"
MouseButtonEventArgs
ìì4 H
e
ììI J
)
ììJ K
{
îî 	
GoToMainMenuView
ïï 
(
ïï 
)
ïï 
;
ïï 
}
ññ 	
private
òò 
void
òò 
GoToMainMenuView
òò %
(
òò% &
)
òò& '
{
ôô 	
MainMenu
öö 
mainMenu
öö 
=
öö 
new
öö  #
MainMenu
öö$ ,
(
öö, -
)
öö- .
;
öö. /
this
õõ 
.
õõ 
NavigationService
õõ "
.
õõ" #
Navigate
õõ# +
(
õõ+ ,
mainMenu
õõ, 4
)
õõ4 5
;
õõ5 6
}
úú 	
private
ùù 
void
ùù !
DataGrid_LoadingRow
ùù (
(
ùù( )
object
ùù) /
sender
ùù0 6
,
ùù6 7"
DataGridRowEventArgs
ùù8 L
e
ùùM N
)
ùùN O
{
ûû 	
e
†† 
.
†† 
Row
†† 
.
†† 
Header
†† 
=
†† 
(
†† 
e
†† 
.
†† 
Row
†† !
.
††! "
GetIndex
††" *
(
††* +
)
††+ ,
+
††- .
$num
††/ 0
)
††0 1
.
††1 2
ToString
††2 :
(
††: ;
)
††; <
;
††< =
}
°° 	
}
££ 
public
•• 

class
•• 
PlayerStatistic
••  
{
¶¶ 
public
ßß 
int
ßß 
Rank
ßß 
{
ßß 
get
ßß 
;
ßß 
set
ßß "
;
ßß" #
}
ßß$ %
public
®® 
string
®® 
ProfileImage
®® "
{
®®# $
get
®®% (
;
®®( )
set
®®* -
;
®®- .
}
®®/ 0
public
©© 
string
©© 
Name
©© 
{
©© 
get
©©  
;
©©  !
set
©©" %
;
©©% &
}
©©' (
public
™™ 
int
™™ 
Wins
™™ 
{
™™ 
get
™™ 
;
™™ 
set
™™ "
;
™™" #
}
™™$ %
public
´´ 
int
´´ 
Losses
´´ 
{
´´ 
get
´´ 
;
´´  
set
´´! $
;
´´$ %
}
´´& '
public
¨¨ 
int
¨¨ 

TotalGames
¨¨ 
{
¨¨ 
get
¨¨  #
;
¨¨# $
set
¨¨% (
;
¨¨( )
}
¨¨* +
}
≠≠ 
}ØØ ∏«	
|C:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\GameBoardView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
GameBoardView &
:' (
Page) -
,- . 
IGameManagerCallback/ C
{ 
private 
GameManagerClient !
gameManagerClient" 3
;3 4
private 
	GamePiece 
selectedPiece '
;' (
private 
Polygon 
lastPlacedCell &
;& '
private   

Dictionary   
<   
Point    
,    !
Polygon  " )
>  ) *
cellDictionary  + 9
=  : ;
new  < ?

Dictionary  @ J
<  J K
Point  K P
,  P Q
Polygon  R Y
>  Y Z
(  Z [
)  [ \
;  \ ]
private!! 

Dictionary!! 
<!! 
Point!!  
,!!  !
Logic!!" '
.!!' (
	GamePiece!!( 1
>!!1 2
board!!3 8
=!!9 :
new!!; >

Dictionary!!? I
<!!I J
Point!!J O
,!!O P
Logic!!Q V
.!!V W
	GamePiece!!W `
>!!` a
(!!a b
)!!b c
;!!c d
private"" 
List"" 
<"" 
UserSession""  
>""  !
usersInGame""" -
;""- .
private## 
int## 
numberOfPlayer## "
=### $
$num##% &
;##& '
private$$ 
int$$ 
numberOfTurn$$  
=$$! "
$num$$# $
;$$$ %
private%% 
string%% 
usernamePlayer1%% &
=%%' (
$str%%) +
;%%+ ,
private&& 
string&& 
usernamePlayer2&& &
=&&' (
$str&&) +
;&&+ ,
private'' 
bool'' 
isFirstPiecePlaced'' '
=''( )
false''* /
;''/ 0
private(( 
static(( 
readonly(( 
List((  $
<(($ %
(((% &
double((& ,
dirUp((- 2
,((2 3
double((4 :
dirDown((; B
)((B C
>((C D
HexPairDirecctions((E W
=((X Y
new((Z ]
List((^ b
<((b c
(((c d
double((d j
,((j k
double((k q
)((q r
>((r s
{((s t
(((t u
$num((u v
,((v w
-((w x
$num((x y
)((y z
,((z {
((({ |
$num((| }
,((} ~
-((~ 
$num	(( Ä
)
((Ä Å
,
((Å Ç
(
((Ç É
$num
((É Ñ
,
((Ñ Ö
$num
((Ö Ü
)
((Ü á
,
((á à
(
((à â
$num
((â ä
,
((ä ã
$num
((ã å
)
((å ç
,
((ç é
(
((é è
-
((è ê
$num
((ê ë
,
((ë í
$num
((í ì
)
((ì î
,
((î ï
(
((ï ñ
-
((ñ ó
$num
((ó ò
,
((ò ô
-
((ô ö
$num
((ö õ
)
((õ ú
}
((ú ù
;
((ù û
private)) 
static)) 
readonly)) 
List))  $
<))$ %
())% &
double))& ,
dirUp))- 2
,))2 3
double))4 :
dirDown)); B
)))B C
>))C D
HexOddDirecctions))E V
=))W X
new))Y \
List))] a
<))a b
())b c
double))c i
,))i j
double))k q
)))q r
>))r s
{))t u
())v w
$num))w x
,))x y
-))y z
$num))z {
))){ |
,))| }
())} ~
$num))~ 
,	)) Ä
$num
))Ä Å
)
))Å Ç
,
))Ç É
(
))É Ñ
$num
))Ñ Ö
,
))Ö Ü
$num
))Ü á
)
))á à
,
))à â
(
))â ä
$num
))ä ã
,
))ã å
$num
))å ç
)
))ç é
,
))é è
(
))è ê
-
))ê ë
$num
))ë í
,
))í ì
$num
))ì î
)
))î ï
,
))ï ñ
(
))ñ ó
-
))ó ò
$num
))ò ô
,
))ô ö
$num
))ö õ
)
))õ ú
}
))ú ù
;
))ù û
private,, 
List,, 
<,, 
	GamePiece,, 
>,, 
player1Pieces,,  -
=,,. /
new,,0 3
List,,4 8
<,,8 9
	GamePiece,,9 B
>,,B C
{-- 
new.. 
	GamePiece.. 
(.. 
new.. !
Queen.." '
(..' (
)..( )
,..) *
$str..+ Q
,..Q R
new..S V
Point..W \
(..\ ]
-..] ^
$num..^ _
,.._ `
-..a b
$num..b c
)..c d
,..d e
$str..e n
,..n o
$num..o p
)..p q
,..q r
new// 
	GamePiece// 
(// 
new// !
Spider//" (
(//( )
)//) *
,//* +
$str//, S
,//S T
new//U X
Point//Y ^
(//^ _
-//_ `
$num//` a
,//a b
-//c d
$num//d e
)//e f
,//f g
$str//g p
,//p q
$num//q r
)//r s
,//s t
new00 
	GamePiece00 
(00 
new00 !
Spider00" (
(00( )
)00) *
,00* +
$str00, S
,00S T
new00U X
Point00Y ^
(00^ _
-00_ `
$num00` a
,00a b
-00c d
$num00d e
)00e f
,00f g
$str00g p
,00p q
$num00q r
)00r s
,00s t
new11 
	GamePiece11 
(11 
new11 !
Beetle11" (
(11) *
)11* +
,11+ ,
$str11- T
,11T U
new11V Y
Point11Z _
(11_ `
-11` a
$num11a b
,11b c
-11d e
$num11e f
)11f g
,11g h
$str11h q
,11q r
$num11r s
)11s t
,11t u
new22 
	GamePiece22 
(22 
new22 !
Beetle22" (
(22) *
)22* +
,22+ ,
$str22- T
,22T U
new22V Y
Point22Z _
(22_ `
-22` a
$num22a b
,22b c
-22d e
$num22e f
)22f g
,22g h
$str22h q
,22q r
$num22r s
)22s t
,22t u
new33 
	GamePiece33 
(33 
new33 !
Ant33" %
(33' (
)33( )
,33) *
$str33+ O
,33O P
new33Q T
Point33U Z
(33Z [
-33[ \
$num33\ ]
,33] ^
-33_ `
$num33` a
)33a b
,33b c
$str33d m
,33m n
$num33n o
)33o p
,33p q
new44 
	GamePiece44 
(44 
new44 !
Ant44" %
(44' (
)44( )
,44) *
$str44+ O
,44O P
new44Q T
Point44U Z
(44Z [
-44[ \
$num44\ ]
,44] ^
-44_ `
$num44` a
)44a b
,44b c
$str44d m
,44m n
$num44n o
)44o p
,44p q
new55 
	GamePiece55 
(55 
new55 !
Ant55" %
(55' (
)55( )
,55) *
$str55+ O
,55O P
new55Q T
Point55U Z
(55Z [
-55[ \
$num55\ ]
,55] ^
-55_ `
$num55` a
)55a b
,55b c
$str55d m
,55m n
$num55n o
)55o p
,55p q
new66 
	GamePiece66 
(66 
new66 !
Grasshopper66" -
(66/ 0
)660 1
,661 2
$str663 _
,66_ `
new66a d
Point66e j
(66j k
-66k l
$num66l m
,66m n
-66o p
$num66p q
)66q r
,66r s
$str66s |
,66| }
$num66} ~
)66~ 
,	66 Ä
new77 
	GamePiece77 
(77 
new77 !
Grasshopper77" -
(77/ 0
)770 1
,771 2
$str773 _
,77_ `
new77a d
Point77e j
(77j k
-77k l
$num77l m
,77m n
-77o p
$num77p q
)77q r
,77r s
$str77s |
,77| }
$num77} 
)	77 Ä
,
77Ä Å
new88 
	GamePiece88 
(88 
new88 !
Grasshopper88" -
(88/ 0
)880 1
,881 2
$str883 _
,88_ `
new88a d
Point88e j
(88j k
-88k l
$num88l m
,88m n
-88o p
$num88p q
)88q r
,88r s
$str88s |
,88| }
$num88} 
)	88 Ä
}99 
;99 
private;; 
List;; 
<;; 
	GamePiece;; 
>;; 
player2Pieces;;  -
=;;. /
new;;0 3
List;;4 8
<;;8 9
	GamePiece;;9 B
>;;B C
{<< 
new== 
	GamePiece== 
(== 
new== !
Queen==" '
(==' (
)==( )
,==) *
$str==+ Q
,==Q R
new==S V
Point==W \
(==\ ]
-==] ^
$num==^ _
,==_ `
-==a b
$num==b c
)==c d
,==d e
$str==f o
,==o p
$num==p q
)==q r
,==r s
new>> 
	GamePiece>> 
(>> 
new>> !
Spider>>" (
(>>( )
)>>) *
,>>* +
$str>>, S
,>>S T
new>>U X
Point>>Y ^
(>>^ _
->>_ `
$num>>` a
,>>a b
->>c d
$num>>d e
)>>e f
,>>f g
$str>>g p
,>>p q
$num>>q r
)>>r s
,>>s t
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
,??f g
$str??g p
,??p q
$num??q r
)??r s
,??s t
new@@ 
	GamePiece@@ 
(@@ 
new@@ !
Beetle@@" (
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
,@@f g
$str@@g p
,@@p q
$num@@q r
)@@r s
,@@s t
newAA 
	GamePieceAA 
(AA 
newAA !
BeetleAA" (
(AA( )
)AA) *
,AA* +
$strAA, S
,AAS T
newAAU X
PointAAY ^
(AA^ _
-AA_ `
$numAA` a
,AAa b
-AAc d
$numAAd e
)AAe f
,AAf g
$strAAg p
,AAp q
$numAAq r
)AAr s
,AAs t
newBB 
	GamePieceBB 
(BB 
newBB !
AntBB" %
(BB% &
)BB& '
,BB' (
$strBB) M
,BBM N
newBBO R
PointBBS X
(BBX Y
-BBY Z
$numBBZ [
,BB[ \
-BB] ^
$numBB^ _
)BB_ `
,BB` a
$strBBb k
,BBk l
$numBBl m
)BBm n
,BBn o
newCC 
	GamePieceCC 
(CC 
newCC !
AntCC" %
(CC% &
)CC& '
,CC' (
$strCC) M
,CCM N
newCCO R
PointCCS X
(CCX Y
-CCY Z
$numCCZ [
,CC[ \
-CC] ^
$numCC^ _
)CC_ `
,CC` a
$strCCb k
,CCk l
$numCCl m
)CCm n
,CCn o
newDD 
	GamePieceDD 
(DD 
newDD !
AntDD" %
(DD% &
)DD& '
,DD' (
$strDD) M
,DDM N
newDDO R
PointDDS X
(DDX Y
-DDY Z
$numDDZ [
,DD[ \
-DD] ^
$numDD^ _
)DD_ `
,DD` a
$strDDb k
,DDk l
$numDDl m
)DDm n
,DDn o
newEE 
	GamePieceEE 
(EE 
newEE !
GrasshopperEE" -
(EE. /
)EE/ 0
,EE0 1
$strEE2 ^
,EE^ _
newEE` c
PointEEd i
(EEi j
-EEj k
$numEEk l
,EEl m
-EEn o
$numEEo p
)EEp q
,EEq r
$strEEs |
,EE| }
$numEE} ~
)EE~ 
,	EE Ä
newFF 
	GamePieceFF 
(FF 
newFF !
GrasshopperFF" -
(FF. /
)FF/ 0
,FF0 1
$strFF2 ^
,FF^ _
newFF` c
PointFFd i
(FFi j
-FFj k
$numFFk l
,FFl m
-FFn o
$numFFo p
)FFp q
,FFq r
$strFFs |
,FF| }
$numFF} 
)	FF Ä
,
FFÄ Å
newGG 
	GamePieceGG 
(GG 
newGG !
GrasshopperGG" -
(GG. /
)GG/ 0
,GG0 1
$strGG2 ^
,GG^ _
newGG` c
PointGGd i
(GGi j
-GGj k
$numGGk l
,GGl m
-GGn o
$numGGo p
)GGp q
,GGq r
$strGGs |
,GG| }
$numGG} 
)	GG Ä
}HH 
;HH 
publicJJ 
GameBoardViewJJ 
(JJ 
)JJ 
{KK 	
gameManagerClientLL 
=LL 
newLL  #
GameManagerClientLL$ 5
(LL5 6
newLL6 9
InstanceContextLL: I
(LLI J
thisLLJ N
)LLN O
)LLO P
;LLP Q
InitializeComponentMM 
(MM  
)MM  !
;MM! "
InitializeBoardNN 
(NN 
)NN 
;NN 
ConnectToGameBoardOO 
(OO 
)OO  
;OO  !
	ConstantsPP 
.PP 
	isInMatchPP 
=PP  !
truePP" &
;PP& '
numberOfTurnQQ 
=QQ 
$numQQ 
;QQ 
}RR 	
privateTT 
voidTT 
ConnectToGameBoardTT '
(TT' (
)TT( )
{UU 	
LoggerManagerVV 
loggerVV  
=VV! "
newVV# &
LoggerManagerVV' 4
(VV4 5
thisVV5 9
.VV9 :
GetTypeVV: A
(VVA B
)VVB C
)VVC D
;VVD E
tryWW 
{XX 
UserSessionYY 
userSessionYY '
=YY( )
newYY* -
UserSessionYY. 9
(YY9 :
)YY: ;
{ZZ 
username[[ 
=[[  
UserProfileSingleton[[ 3
.[[3 4
username[[4 <
,[[< =
	idAccount\\ 
=\\  
UserProfileSingleton\\  4
.\\4 5
	idAccount\\5 >
,\\> ?
	codeMatch]] 
=]] 
MatchSingleton]]  .
.]]. /
	codeMatch]]/ 8
}^^ 
;^^ 
gameManagerClient__ !
.__! "
ConnectToGameBoard__" 4
(__4 5
userSession__5 @
,__@ A
userSession__B M
.__M N
	codeMatch__N W
)__W X
;__X Y
}`` 
catchaa 
(aa %
EndpointNotFoundExceptionaa ,
endPointExceptionaa- >
)aa> ?
{bb 
loggercc 
.cc 
LogErrorcc 
(cc  
endPointExceptioncc  1
)cc1 2
;cc2 3
DialogManagerdd 
.dd !
ShowErrorMessageAlertdd 3
(dd3 4

Propertiesdd4 >
.dd> ?
	Resourcesdd? H
.ddH I#
dialogEndPointExceptionddI `
)dd` a
;dda b
}ee 
catchff 
(ff 
TimeoutExceptionff #
timeOutExceptionff$ 4
)ff4 5
{gg 
loggerhh 
.hh 
LogErrorhh 
(hh  
timeOutExceptionhh  0
)hh0 1
;hh1 2
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I'
dialogComunicationExceptioniiI d
)iid e
;iie f
}jj 
catchkk 
(kk "
CommunicationExceptionkk )"
communicationExceptionkk* @
)kk@ A
{ll 
loggermm 
.mm 
LogErrormm 
(mm  "
communicationExceptionmm  6
)mm6 7
;mm7 8
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
}oo 
}pp 	
privatess 
voidss 
LoadPlayerPiecesss %
(ss% &

StackPanelss& 0
playerPiecesPanelss1 B
,ssB C
ListssD H
<ssH I
	GamePiecessI R
>ssR S
piecesssT Z
,ssZ [
stringss\ b
usernamessc k
)ssk l
{tt 	
foruu 
(uu 
intuu 
indexPiecesuu  
=uu! "
$numuu# $
;uu$ %
indexPiecesuu& 1
<uu2 3
piecesuu4 :
.uu: ;
Countuu; @
;uu@ A
indexPiecesuuB M
++uuM O
)uuO P
{vv 
piecesww 
[ww 
indexPiecesww "
]ww" #
.ww# $

playerNameww$ .
=ww/ 0
usernameww1 9
;ww9 :
piecesxx 
[xx 
indexPiecesxx "
]xx" #
.xx# $
Piecexx$ )
.xx) *

playerNamexx* 4
=xx5 6
usernamexx7 ?
;xx? @
}yy 
playerPiecesPanelzz 
.zz 
Childrenzz &
.zz& '
Clearzz' ,
(zz, -
)zz- .
;zz. /
for{{ 
({{ 
int{{ 
i{{ 
={{ 
$num{{ 
;{{ 
i{{ 
<{{ 
pieces{{  &
.{{& '
Count{{' ,
;{{, -
i{{. /
++{{/ 1
){{1 2
{|| 
var}} 
piece}} 
=}} 
pieces}} "
[}}" #
i}}# $
]}}$ %
;}}% &
piece~~ 
.~~ 

playerName~~  
=~~! "
username~~# +
;~~+ ,
piece 
. 
Piece 
. 

playerName &
=' (
username) 1
;1 2
var
ÄÄ 
image
ÄÄ 
=
ÄÄ 
new
ÄÄ 
Image
ÄÄ  %
{
ÅÅ 
Source
ÇÇ 
=
ÇÇ 
new
ÇÇ  
BitmapImage
ÇÇ! ,
(
ÇÇ, -
new
ÇÇ- 0
Uri
ÇÇ1 4
(
ÇÇ4 5
piece
ÇÇ5 :
.
ÇÇ: ;
	ImagePath
ÇÇ; D
,
ÇÇD E
UriKind
ÇÇF M
.
ÇÇM N
Relative
ÇÇN V
)
ÇÇV W
)
ÇÇW X
,
ÇÇX Y
Width
ÉÉ 
=
ÉÉ 
$num
ÉÉ 
,
ÉÉ 
Height
ÑÑ 
=
ÑÑ 
$num
ÑÑ 
,
ÑÑ  
Margin
ÖÖ 
=
ÖÖ 
new
ÖÖ  
	Thickness
ÖÖ! *
(
ÖÖ* +
$num
ÖÖ+ ,
,
ÖÖ, -
$num
ÖÖ. /
*
ÖÖ0 1
$num
ÖÖ2 4
,
ÖÖ4 5
$num
ÖÖ6 7
,
ÖÖ7 8
$num
ÖÖ9 :
)
ÖÖ: ;
,
ÖÖ; <
Tag
ÜÜ 
=
ÜÜ 
piece
ÜÜ 
,
ÜÜ  
DataContext
áá 
=
áá  !
piece
áá" '
}
àà 
;
àà 
playerPiecesPanel
ââ !
.
ââ! "
Children
ââ" *
.
ââ* +
Add
ââ+ .
(
ââ. /
image
ââ/ 4
)
ââ4 5
;
ââ5 6
image
ää 
.
ää 
	MouseDown
ää 
+=
ää  "
Piece_MouseDown
ää# 2
;
ää2 3
}
ãã 
}
åå 	
private
éé 
void
éé 
InitializeBoard
éé $
(
éé$ %
)
éé% &
{
èè 	
int
êê 
rows
êê 
=
êê 
$num
êê 
;
êê 
int
ëë 
columns
ëë 
=
ëë 
$num
ëë 
;
ëë 
double
íí 
hexagonSize
íí 
=
íí  
$num
íí! #
;
íí# $
double
ìì 
xOffset
ìì 
=
ìì 
hexagonSize
ìì (
*
ìì) *
Math
ìì+ /
.
ìì/ 0
Sqrt
ìì0 4
(
ìì4 5
$num
ìì5 6
)
ìì6 7
;
ìì7 8
double
îî 
yOffset
îî 
=
îî 
hexagonSize
îî (
*
îî) *
$num
îî+ .
;
îî. /
GameBoardGrid
ïï 
.
ïï 
Children
ïï "
.
ïï" #
Clear
ïï# (
(
ïï( )
)
ïï) *
;
ïï* +
cellDictionary
ññ 
.
ññ 
Clear
ññ  
(
ññ  !
)
ññ! "
;
ññ" #
for
óó 
(
óó 
int
óó 
row
óó 
=
óó 
$num
óó 
;
óó 
row
óó !
<
óó" #
rows
óó$ (
;
óó( )
row
óó* -
++
óó- /
)
óó/ 0
{
òò 
for
ôô 
(
ôô 
int
ôô 
col
ôô 
=
ôô 
$num
ôô  
;
ôô  !
col
ôô" %
<
ôô& '
columns
ôô( /
;
ôô/ 0
col
ôô1 4
++
ôô4 6
)
ôô6 7
{
öö 
var
õõ 
hexagon
õõ 
=
õõ  !
new
õõ" %
Polygon
õõ& -
{
úú 
Points
ùù 
=
ùù  !
CreateHexagonPoints
ùù! 4
(
ùù4 5
hexagonSize
ùù5 @
)
ùù@ A
,
ùùA B
Tag
ûû 
=
ûû 
new
ûû !
Point
ûû" '
(
ûû' (
row
ûû( +
,
ûû+ ,
col
ûû- 0
)
ûû0 1
,
ûû1 2
}
üü 
;
üü 
hexagon
†† 
.
†† 
	IsEnabled
†† %
=
††& '
false
††( -
;
††- .
double
°° 
x
°° 
=
°° 
col
°° "
*
°°# $
xOffset
°°% ,
;
°°, -
double
¢¢ 
y
¢¢ 
=
¢¢ 
row
¢¢ "
*
¢¢# $
yOffset
¢¢% ,
;
¢¢, -
if
££ 
(
££ 
row
££ 
%
££ 
$num
££ 
==
££  "
$num
££# $
)
££$ %
x
££& '
+=
££( *
xOffset
££+ 2
/
££3 4
$num
££5 6
;
££6 7
Canvas
§§ 
.
§§ 
SetLeft
§§ "
(
§§" #
hexagon
§§# *
,
§§* +
x
§§, -
)
§§- .
;
§§. /
Canvas
•• 
.
•• 
SetTop
•• !
(
••! "
hexagon
••" )
,
••) *
y
••+ ,
)
••, -
;
••- .
GameBoardGrid
¶¶ !
.
¶¶! "
Children
¶¶" *
.
¶¶* +
Add
¶¶+ .
(
¶¶. /
hexagon
¶¶/ 6
)
¶¶6 7
;
¶¶7 8
cellDictionary
ßß "
[
ßß" #
new
ßß# &
Point
ßß' ,
(
ßß, -
row
ßß- 0
,
ßß0 1
col
ßß2 5
)
ßß5 6
]
ßß6 7
=
ßß8 9
hexagon
ßß: A
;
ßßA B
}
®® 
}
©© 
}
™™ 	
private
¨¨ 
void
¨¨ 
Cell_MouseDown
¨¨ #
(
¨¨# $
object
¨¨$ *
sender
¨¨+ 1
,
¨¨1 2"
MouseButtonEventArgs
¨¨3 G
e
¨¨H I
)
¨¨I J
{
≠≠ 	
if
ÆÆ 
(
ÆÆ 
selectedPiece
ÆÆ 
!=
ÆÆ  
null
ÆÆ! %
&&
ÆÆ& (
sender
ÆÆ) /
is
ÆÆ0 2
Polygon
ÆÆ3 :
cell
ÆÆ; ?
&&
ÆÆ@ B
cell
ÆÆC G
!=
ÆÆH J
null
ÆÆK O
)
ÆÆO P
{
ØØ 
PlacePieceOnCell
∞∞  
(
∞∞  !
cell
∞∞! %
)
∞∞% &
;
∞∞& '
}
±± 
}
≤≤ 	
private
¥¥ 
void
¥¥ %
PieceSelected_MouseDown
¥¥ ,
(
¥¥, -
object
¥¥- 3
sender
¥¥4 :
,
¥¥: ;"
MouseButtonEventArgs
¥¥< P
e
¥¥Q R
)
¥¥R S
{
µµ 	
if
∂∂ 
(
∂∂ (
ValidateQueenPieceIsInGame
∂∂ *
(
∂∂* +
)
∂∂+ ,
)
∂∂, -
{
∑∑ 
if
∏∏ 
(
∏∏ 
sender
∏∏ 
is
∏∏ 
Image
∏∏ #

imagePiece
∏∏$ .
)
∏∏. /
{
ππ 
	GamePiece
∫∫ 
piece
∫∫ #
=
∫∫$ %
(
∫∫& '
	GamePiece
∫∫' 0
)
∫∫0 1

imagePiece
∫∫1 ;
.
∫∫; <
Tag
∫∫< ?
;
∫∫? @"
PieceOnBoardSelected
ªª (
(
ªª( )
piece
ªª) .
)
ªª. /
;
ªª/ 0
}
ºº 
}
ΩΩ 
else
ææ 
{
øø 
DialogManager
¿¿ 
.
¿¿ #
ShowErrorMessageAlert
¿¿ 3
(
¿¿3 4
$str
¿¿4 s
)
¿¿s t
;
¿¿t u
}
¡¡ 
e
¬¬ 
.
¬¬ 
Handled
¬¬ 
=
¬¬ 
true
¬¬ 
;
¬¬ 
}
ƒƒ 	
private
∆∆ 
void
∆∆ 
Piece_MouseDown
∆∆ $
(
∆∆$ %
object
∆∆% +
sender
∆∆, 2
,
∆∆2 3"
MouseButtonEventArgs
∆∆4 H
e
∆∆I J
)
∆∆J K
{
«« 	
if
»» 
(
»» 
sender
»» 
is
»» 
Image
»» 

pieceImage
»»  *
&&
»»+ -

pieceImage
»». 8
.
»»8 9
DataContext
»»9 D
is
»»E G
	GamePiece
»»H Q
piece
»»R W
&&
»»X Z
piece
»»[ `
.
»»` a

playerName
»»a k
==
»»l n#
UserProfileSingleton»»o É
.»»É Ñ
username»»Ñ å
)»»å ç
{
…… 
if
   
(
   
numberOfTurn
    
==
  ! #
$num
  $ %
&&
  & (
!
  ) *(
ValidateQueenPieceIsInGame
  * D
(
  D E
)
  E F
&&
  G I
piece
  J O
.
  O P
Piece
  P U
.
  U V
Name
  V Z
!=
  [ ]
$str
  ^ e
)
  e f
{
ÀÀ 
DialogManager
ÃÃ !
.
ÃÃ! "#
ShowErrorMessageAlert
ÃÃ" 7
(
ÃÃ7 8

Properties
ÃÃ8 B
.
ÃÃB C
	Resources
ÃÃC L
.
ÃÃL M$
dialogQueenIsNotInPlay
ÃÃM c
)
ÃÃc d
;
ÃÃd e-
HighlightAvailableStartingCells
ÕÕ 3
(
ÕÕ3 4
)
ÕÕ4 5
;
ÕÕ5 6
}
ŒŒ 
else
œœ 
{
–– 
selectedPiece
—— !
=
——" #
piece
——$ )
;
——) *
if
”” 
(
”” 
!
””  
isFirstPiecePlaced
”” +
)
””+ ,
{
‘‘ 
if
’’ 
(
’’ 
cellDictionary
’’ *
.
’’* +
TryGetValue
’’+ 6
(
’’6 7
new
’’7 :
Point
’’; @
(
’’@ A
$num
’’A B
,
’’B C
$num
’’D E
)
’’E F
,
’’F G
out
’’H K
Polygon
’’L S

centerCell
’’T ^
)
’’^ _
&&
’’` b
!
’’c d
board
’’d i
.
’’i j
ContainsKey
’’j u
(
’’u v
new
’’v y
Point
’’z 
(’’ Ä
$num’’Ä Å
,’’Å Ç
$num’’É Ñ
)’’Ñ Ö
)’’Ö Ü
)’’Ü á
{
÷÷ 2
$HighlightStartingFirstTurnStaterCell
◊◊ @
(
◊◊@ A
new
◊◊A D
Point
◊◊E J
(
◊◊J K
$num
◊◊K L
,
◊◊L M
$num
◊◊N O
)
◊◊O P
)
◊◊P Q
;
◊◊Q R
PlacePieceOnCell
ÿÿ ,
(
ÿÿ, -
lastPlacedCell
ÿÿ- ;
)
ÿÿ; <
;
ÿÿ< =
}
ŸŸ 
else
⁄⁄ 
{
€€ 2
$HigligthStartingFirstTurnOponentCell
‹‹ @
(
‹‹@ A
new
‹‹A D
Point
‹‹E J
(
‹‹J K
$num
‹‹K L
,
‹‹L M
$num
‹‹N O
)
‹‹O P
)
‹‹P Q
;
‹‹Q R
}
›› 
}
ﬁﬁ 
else
ﬂﬂ 
{
‡‡ 
Point
·· 

staterMove
·· (
=
··) *
new
··+ .
Point
··/ 4
(
··4 5
-
··5 6
$num
··6 7
,
··7 8
-
··9 :
$num
··: ;
)
··; <
;
··< =
if
‚‚ 
(
‚‚ 
selectedPiece
‚‚ )
.
‚‚) *
Position
‚‚* 2
==
‚‚3 5

staterMove
‚‚6 @
)
‚‚@ A
{
„„ -
HighlightAvailableStartingCells
‰‰ ;
(
‰‰; <
)
‰‰< =
;
‰‰= >
}
ÂÂ 
}
ÊÊ 
}
ÁÁ 
}
ËË 
}
ÈÈ 	
private
ÎÎ 
bool
ÎÎ (
ValidateQueenPieceIsInGame
ÎÎ /
(
ÎÎ/ 0
)
ÎÎ0 1
{
ÏÏ 	
return
ÌÌ 
board
ÌÌ 
.
ÌÌ 
Values
ÌÌ 
.
ÌÌ  
Any
ÌÌ  #
(
ÌÌ# $
piece
ÌÌ$ )
=>
ÌÌ* ,
piece
ÌÌ- 2
!=
ÌÌ3 5
null
ÌÌ6 :
&&
ÌÌ; =
piece
ÌÌ> C
.
ÌÌC D
Piece
ÌÌD I
.
ÌÌI J
Name
ÌÌJ N
.
ÌÌN O
Equals
ÌÌO U
(
ÌÌU V
$str
ÌÌV ]
)
ÌÌ] ^
&&
ÌÌ_ a
piece
ÌÌb g
.
ÌÌg h
Piece
ÌÌh m
.
ÌÌm n

playerName
ÌÌn x
==
ÌÌy {#
UserProfileSingletonÌÌ| ê
.ÌÌê ë
usernameÌÌë ô
)ÌÌô ö
;ÌÌö õ
}
ÓÓ 	
private
 
void
 "
PieceOnBoardSelected
 )
(
) *
	GamePiece
* 3
piece
4 9
)
9 :
{
ÒÒ 	
string
ÚÚ 
typeOfPiece
ÚÚ 
=
ÚÚ  
piece
ÚÚ! &
.
ÚÚ& '
Piece
ÚÚ' ,
.
ÚÚ, -
Name
ÚÚ- 1
;
ÚÚ1 2
if
ÛÛ 
(
ÛÛ 1
#ValidateThatPieceCannotBreakTheHive
ÛÛ 3
(
ÛÛ3 4
piece
ÛÛ4 9
.
ÛÛ9 :
Position
ÛÛ: B
)
ÛÛB C
)
ÛÛC D
{
ÙÙ 
switch
ıı 
(
ıı 
typeOfPiece
ıı #
)
ıı# $
{
ˆˆ 
case
˜˜ 
$str
˜˜  
:
˜˜  !
	MoveQueen
¯¯ !
(
¯¯! "
piece
¯¯" '
)
¯¯' (
;
¯¯( )
break
˘˘ 
;
˘˘ 
case
˙˙ 
$str
˙˙ !
:
˙˙! "

MoveSpider
˚˚ "
(
˚˚" #
piece
˚˚# (
)
˚˚( )
;
˚˚) *
break
¸¸ 
;
¸¸ 
case
˝˝ 
$str
˝˝ 
:
˝˝ 
MoveAnt
˛˛ 
(
˛˛  
piece
˛˛  %
)
˛˛% &
;
˛˛& '
break
ˇˇ 
;
ˇˇ 
case
ÄÄ 
$str
ÄÄ &
:
ÄÄ& '
MoveGrasshopper
ÅÅ '
(
ÅÅ' (
piece
ÅÅ( -
)
ÅÅ- .
;
ÅÅ. /
break
ÇÇ 
;
ÇÇ 
default
ÉÉ 
:
ÉÉ 
DialogManager
ÑÑ %
.
ÑÑ% &#
ShowErrorMessageAlert
ÑÑ& ;
(
ÑÑ; <

Properties
ÑÑ< F
.
ÑÑF G
	Resources
ÑÑG P
.
ÑÑP Q*
dialogCouldntObtainPieceName
ÑÑQ m
)
ÑÑm n
;
ÑÑn o
break
ÖÖ 
;
ÖÖ 
}
ÜÜ 
}
áá 
else
àà 
{
ââ 
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I"
dialogBrokeHiveAlert
ääI ]
)
ää] ^
;
ää^ _
}
ãã 
}
çç 	
private
èè 
void
èè 
	MoveQueen
èè 
(
èè 
	GamePiece
èè (
piece
èè) .
)
èè. /
{
êê 	
ResetHighlights
ëë 
(
ëë 
)
ëë 
;
ëë 
selectedPiece
íí 
=
íí 
piece
íí !
;
íí! "
var
ìì 
checkedPositions
ìì  
=
ìì! "
new
ìì# &
HashSet
ìì' .
<
ìì. /
Point
ìì/ 4
>
ìì4 5
(
ìì5 6
)
ìì6 7
;
ìì7 8
Point
îî 
queenPosition
îî 
=
îî  !
piece
îî" '
.
îî' (
Position
îî( 0
;
îî0 1
var
ïï 

queenPiece
ïï 
=
ïï 
board
ïï "
[
ïï" #
queenPosition
ïï# 0
]
ïï0 1
;
ïï1 2
board
ññ 
.
ññ 
Remove
ññ 
(
ññ 
queenPosition
ññ &
)
ññ& '
;
ññ' (
var
óó 
adjacentPoints
óó 
=
óó  "
ObtainAdjacentPoints
óó! 5
(
óó5 6
piece
óó6 ;
.
óó; <
Position
óó< D
)
óóD E
;
óóE F
foreach
òò 
(
òò 
var
òò 
offset
òò 
in
òò  "
adjacentPoints
òò# 1
)
òò1 2
{
ôô 
if
öö 
(
öö 
!
öö 
board
öö 
.
öö 
ContainsKey
öö &
(
öö& '
offset
öö' -
)
öö- .
&&
öö/ 1
cellDictionary
öö2 @
.
öö@ A
TryGetValue
ööA L
(
ööL M
offset
ööM S
,
ööS T
out
ööU X
Polygon
ööY `
cell
ööa e
)
ööe f
&&
öög i
!
ööj k
checkedPositions
öök {
.
öö{ |
Containsöö| Ñ
(ööÑ Ö
offsetööÖ ã
)ööã å
)ööå ç
{
õõ 
if
úú 
(
úú 
IsConnectedToHive
úú )
(
úú) *
offset
úú* 0
)
úú0 1
&&
úú2 4
IsNotSurrounded
úú5 D
(
úúD E
offset
úúE K
)
úúK L
)
úúL M
{
ùù 
cell
ûû 
.
ûû 
Fill
ûû !
=
ûû" #
Brushes
ûû$ +
.
ûû+ ,

LightGreen
ûû, 6
;
ûû6 7
cell
üü 
.
üü 
	IsEnabled
üü &
=
üü' (
true
üü) -
;
üü- .
cell
†† 
.
†† 
	MouseDown
†† &
+=
††' ).
 PlacePieceThatIsInGame_MouseDown
††* J
;
††J K
checkedPositions
°° (
.
°°( )
Add
°°) ,
(
°°, -
offset
°°- 3
)
°°3 4
;
°°4 5
}
¢¢ 
}
££ 
}
§§ 
board
•• 
.
•• 
Add
•• 
(
•• 
queenPosition
•• #
,
••# $

queenPiece
••% /
)
••/ 0
;
••0 1
}
¶¶ 	
private
®® 
void
®® 

MoveSpider
®® 
(
®®  
	GamePiece
®®  )
piece
®®* /
)
®®/ 0
{
©© 	
ResetHighlights
™™ 
(
™™ 
)
™™ 
;
™™ 
selectedPiece
´´ 
=
´´ 
piece
´´ !
;
´´! "
List
¨¨ 
<
¨¨ 
Point
¨¨ 
>
¨¨ 
adjacentToCurrent
¨¨ )
=
¨¨* +"
ObtainAdjacentPoints
¨¨, @
(
¨¨@ A
piece
¨¨A F
.
¨¨F G
Position
¨¨G O
)
¨¨O P
;
¨¨P Q
List
≠≠ 
<
≠≠ 
Point
≠≠ 
>
≠≠ 
posibleMoves
≠≠ $
=
≠≠% &
ObtainSpiderMoves
≠≠' 8
(
≠≠8 9
piece
≠≠9 >
.
≠≠> ?
Position
≠≠? G
)
≠≠G H
.
ÆÆ 
Where
ÆÆ 
(
ÆÆ 
pos
ÆÆ 
=>
ÆÆ 
!
ÆÆ 
adjacentToCurrent
ÆÆ 0
.
ÆÆ0 1
Contains
ÆÆ1 9
(
ÆÆ9 :
pos
ÆÆ: =
)
ÆÆ= >
)
ÆÆ> ?
.
ØØ 
ToList
ØØ 
(
ØØ 
)
ØØ 
;
ØØ 
foreach
∞∞ 
(
∞∞ 
var
∞∞ 
posiblePosition
∞∞ (
in
∞∞) +
posibleMoves
∞∞, 8
)
∞∞8 9
{
±± 
if
≤≤ 
(
≤≤ 
cellDictionary
≤≤ !
.
≤≤! "
TryGetValue
≤≤" -
(
≤≤- .
posiblePosition
≤≤. =
,
≤≤= >
out
≤≤? B
Polygon
≤≤C J
cell
≤≤K O
)
≤≤O P
)
≤≤P Q
{
≥≥ 
cell
¥¥ 
.
¥¥ 
Fill
¥¥ 
=
¥¥ 
Brushes
¥¥  '
.
¥¥' (
Green
¥¥( -
;
¥¥- .
cell
µµ 
.
µµ 
	IsEnabled
µµ "
=
µµ# $
true
µµ% )
;
µµ) *
cell
∂∂ 
.
∂∂ 
	MouseDown
∂∂ "
+=
∂∂" $.
 PlacePieceThatIsInGame_MouseDown
∂∂% E
;
∂∂E F
}
∑∑ 
}
∏∏ 
}
ππ 	
private
ªª 
void
ªª 

MoveBeetle
ªª 
(
ªª  
	GamePiece
ªª  )
piece
ªª* /
)
ªª/ 0
{
ºº 	
}
øø 	
private
¡¡ 
void
¡¡ 
MoveAnt
¡¡ 
(
¡¡ 
	GamePiece
¡¡ &
piece
¡¡' ,
)
¡¡, -
{
¬¬ 	
ResetHighlights
√√ 
(
√√ 
)
√√ 
;
√√ 
selectedPiece
ƒƒ 
=
ƒƒ 
piece
ƒƒ !
;
ƒƒ! "
board
≈≈ 
.
≈≈ 
Remove
≈≈ 
(
≈≈ 
piece
≈≈ 
.
≈≈ 
Position
≈≈ '
)
≈≈' (
;
≈≈( )
List
∆∆ 
<
∆∆ 
Point
∆∆ 
>
∆∆ 
possibleMoves
∆∆ %
=
∆∆& '
ObtainAntMoves
∆∆( 6
(
∆∆6 7
piece
∆∆7 <
.
∆∆< =
Position
∆∆= E
)
∆∆E F
;
∆∆F G
foreach
«« 
(
«« 
var
«« 
possiblePosition
«« (
in
««) +
possibleMoves
««, 9
)
««9 :
{
»» 
if
…… 
(
…… 
cellDictionary
…… !
.
……! "
TryGetValue
……" -
(
……- .
possiblePosition
……. >
,
……> ?
out
……@ C
Polygon
……D K
cell
……L P
)
……P Q
)
……Q R
{
   
cell
ÀÀ 
.
ÀÀ 
Fill
ÀÀ 
=
ÀÀ 
Brushes
ÀÀ &
.
ÀÀ& '
Green
ÀÀ' ,
;
ÀÀ, -
cell
ÃÃ 
.
ÃÃ 
	IsEnabled
ÃÃ "
=
ÃÃ# $
true
ÃÃ% )
;
ÃÃ) *
cell
ÕÕ 
.
ÕÕ 
	MouseDown
ÕÕ "
+=
ÕÕ# %.
 PlacePieceThatIsInGame_MouseDown
ÕÕ& F
;
ÕÕF G
}
ŒŒ 
}
œœ 
board
–– 
.
–– 
Add
–– 
(
–– 
piece
–– 
.
–– 
Position
–– $
,
––$ %
piece
––& +
)
––+ ,
;
––, -
}
—— 	
private
”” 
void
”” 
MoveGrasshopper
”” $
(
””$ %
	GamePiece
””% .
piece
””/ 4
)
””4 5
{
‘‘ 	
ResetHighlights
’’ 
(
’’ 
)
’’ 
;
’’ 
selectedPiece
÷÷ 
=
÷÷ 
piece
÷÷ !
;
÷÷! "
List
◊◊ 
<
◊◊ 
Point
◊◊ 
>
◊◊ 
possibleMoves
◊◊ %
=
◊◊& '$
ObtainGrassHopperMoves
◊◊( >
(
◊◊> ?
piece
◊◊? D
.
◊◊D E
Position
◊◊E M
)
◊◊M N
;
◊◊N O
foreach
ÿÿ 
(
ÿÿ 
var
ÿÿ 
possiblePosition
ÿÿ )
in
ÿÿ* ,
possibleMoves
ÿÿ- :
)
ÿÿ: ;
{
ŸŸ 
if
⁄⁄ 
(
⁄⁄ 
cellDictionary
⁄⁄ "
.
⁄⁄" #
TryGetValue
⁄⁄# .
(
⁄⁄. /
possiblePosition
⁄⁄/ ?
,
⁄⁄? @
out
⁄⁄A D
Polygon
⁄⁄E L
cell
⁄⁄M Q
)
⁄⁄Q R
)
⁄⁄R S
{
€€ 
cell
‹‹ 
.
‹‹ 
Fill
‹‹ 
=
‹‹ 
Brushes
‹‹  '
.
‹‹' (
Green
‹‹( -
;
‹‹- .
cell
›› 
.
›› 
	IsEnabled
›› "
=
››# $
true
››% )
;
››) *
cell
ﬁﬁ 
.
ﬁﬁ 
	MouseDown
ﬁﬁ "
+=
ﬁﬁ# %.
 PlacePieceThatIsInGame_MouseDown
ﬁﬁ& F
;
ﬁﬁF G
}
ﬂﬂ 
}
‡‡ 
}
·· 	
private
„„ 
List
„„ 
<
„„ 
Point
„„ 
>
„„ 
ObtainSpiderMoves
„„ -
(
„„- .
Point
„„. 3
start
„„4 9
)
„„9 :
{
‰‰ 	
Queue
ÂÂ 
<
ÂÂ 
(
ÂÂ 
Point
ÂÂ 
position
ÂÂ !
,
ÂÂ! "
Point
ÂÂ# (
previousPosition
ÂÂ) 9
,
ÂÂ9 :
int
ÂÂ; >
steps
ÂÂ? D
)
ÂÂD E
>
ÂÂE F
queue
ÂÂG L
=
ÂÂM N
new
ÂÂO R
Queue
ÂÂS X
<
ÂÂX Y
(
ÂÂY Z
Point
ÂÂZ _
position
ÂÂ` h
,
ÂÂh i
Point
ÂÂj o
previousPositionÂÂp Ä
,ÂÂÄ Å
intÂÂÇ Ö
stepsÂÂÜ ã
)ÂÂã å
>ÂÂå ç
(ÂÂé è
)ÂÂè ê
;ÂÂê ë
HashSet
ÊÊ 
<
ÊÊ 
Point
ÊÊ 
>
ÊÊ 
visitedPoint
ÊÊ '
=
ÊÊ( )
new
ÊÊ* -
HashSet
ÊÊ. 5
<
ÊÊ5 6
Point
ÊÊ6 ;
>
ÊÊ; <
(
ÊÊ< =
)
ÊÊ= >
;
ÊÊ> ?
List
ÁÁ 
<
ÁÁ 
Point
ÁÁ 
>
ÁÁ 

validMoves
ÁÁ "
=
ÁÁ# $
new
ÁÁ% (
List
ÁÁ) -
<
ÁÁ- .
Point
ÁÁ. 3
>
ÁÁ3 4
(
ÁÁ4 5
)
ÁÁ5 6
;
ÁÁ6 7
queue
ËË 
.
ËË 
Enqueue
ËË 
(
ËË 
(
ËË 
start
ËË  
,
ËË  !
start
ËË" '
,
ËË' (
$num
ËË) *
)
ËË* +
)
ËË+ ,
;
ËË, -
visitedPoint
ÈÈ 
.
ÈÈ 
Add
ÈÈ 
(
ÈÈ 
start
ÈÈ "
)
ÈÈ" #
;
ÈÈ# $
while
ÍÍ 
(
ÍÍ 
queue
ÍÍ 
.
ÍÍ 
Count
ÍÍ 
>
ÍÍ  
$num
ÍÍ! "
)
ÍÍ" #
{
ÎÎ 
var
ÏÏ 
(
ÏÏ 
currentPosition
ÏÏ $
,
ÏÏ$ %
previousPosition
ÏÏ& 6
,
ÏÏ6 7
currentSteps
ÏÏ8 D
)
ÏÏD E
=
ÏÏF G
queue
ÏÏH M
.
ÏÏM N
Dequeue
ÏÏN U
(
ÏÏV W
)
ÏÏW X
;
ÏÏX Y
if
ÌÌ 
(
ÌÌ 
currentSteps
ÌÌ 
<
ÌÌ  !
$num
ÌÌ" #
)
ÌÌ# $
{
ÓÓ 
var
ÔÔ 
adjacentPoints
ÔÔ &
=
ÔÔ' ("
ObtainAdjacentPoints
ÔÔ) =
(
ÔÔ= >
currentPosition
ÔÔ> M
)
ÔÔM N
;
ÔÔN O
foreach
 
(
 
var
 
adjacent
  (
in
) +
adjacentPoints
, :
)
: ;
{
ÒÒ 
if
ÚÚ 
(
ÚÚ 
!
ÚÚ 
visitedPoint
ÚÚ (
.
ÚÚ( )
Contains
ÚÚ) 1
(
ÚÚ1 2
adjacent
ÚÚ2 :
)
ÚÚ: ;
&&
ÚÚ< >
!
ÚÚ? @
board
ÚÚ@ E
.
ÚÚE F
ContainsKey
ÚÚF Q
(
ÚÚQ R
adjacent
ÚÚR Z
)
ÚÚZ [
)
ÚÚ[ \
{
ÛÛ 
if
ÙÙ 
(
ÙÙ  $
IsContinouslyConnected
ÙÙ  6
(
ÙÙ6 7
adjacent
ÙÙ7 ?
,
ÙÙ? @
currentPosition
ÙÙ@ O
,
ÙÙO P
currentPosition
ÙÙP _
)
ÙÙ_ `
)
ÙÙ` a
{
ıı 
visitedPoint
ˆˆ  ,
.
ˆˆ, -
Add
ˆˆ- 0
(
ˆˆ0 1
adjacent
ˆˆ1 9
)
ˆˆ9 :
;
ˆˆ: ;
queue
˜˜  %
.
˜˜% &
Enqueue
˜˜& -
(
˜˜- .
(
˜˜. /
adjacent
˜˜/ 7
,
˜˜7 8
currentPosition
˜˜8 G
,
˜˜H I
currentSteps
˜˜I U
+
˜˜V W
$num
˜˜X Y
)
˜˜Y Z
)
˜˜Z [
;
˜˜[ \
}
¯¯ 
}
˘˘ 
}
˙˙ 
}
˚˚ 
else
¸¸ 
if
¸¸ 
(
¸¸ 
currentSteps
¸¸ $
==
¸¸% '
$num
¸¸( )
&&
¸¸* ,
IsConnectedToHive
¸¸- >
(
¸¸> ?
currentPosition
¸¸? N
)
¸¸N O
)
¸¸O P
{
˝˝ 

validMoves
˛˛ 
.
˛˛ 
Add
˛˛ "
(
˛˛" #
currentPosition
˛˛# 2
)
˛˛2 3
;
˛˛3 4
}
ˇˇ 
}
ÄÄ 
return
ÅÅ 

validMoves
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
private
ÑÑ 
List
ÑÑ 
<
ÑÑ 
Point
ÑÑ 
>
ÑÑ 
ObtainAntMoves
ÑÑ *
(
ÑÑ* +
Point
ÑÑ+ 0

piecePoint
ÑÑ1 ;
)
ÑÑ; <
{
ÖÖ 	
List
ÜÜ 
<
ÜÜ 
Point
ÜÜ 
>
ÜÜ 
possibleMoves
ÜÜ %
=
ÜÜ& '
new
ÜÜ( +
List
ÜÜ, 0
<
ÜÜ0 1
Point
ÜÜ1 6
>
ÜÜ6 7
(
ÜÜ7 8
)
ÜÜ8 9
;
ÜÜ9 :
HashSet
áá 
<
áá 
Point
áá 
>
áá 
visitedPoint
áá '
=
áá( )
new
áá* -
HashSet
áá. 5
<
áá5 6
Point
áá6 ;
>
áá; <
(
áá< =
)
áá= >
;
áá> ?
Queue
àà 
<
àà 
Point
àà 
>
àà 
queue
àà 
=
àà  
new
àà! $
Queue
àà% *
<
àà* +
Point
àà+ 0
>
àà0 1
(
àà1 2
)
àà2 3
;
àà3 4
queue
ââ 
.
ââ 
Enqueue
ââ 
(
ââ 

piecePoint
ââ $
)
ââ$ %
;
ââ% &
visitedPoint
ää 
.
ää 
Add
ää 
(
ää 

piecePoint
ää '
)
ää' (
;
ää( )
while
ãã 
(
ãã 
queue
ãã 
.
ãã 
Count
ãã 
>
ãã  
$num
ãã! "
)
ãã" #
{
åå 
var
çç 
currentPosition
çç #
=
çç$ %
queue
çç& +
.
çç+ ,
Dequeue
çç, 3
(
çç3 4
)
çç4 5
;
çç5 6
var
éé 
adjacentPoints
éé "
=
éé# $"
ObtainAdjacentPoints
éé% 9
(
éé9 :
currentPosition
éé: I
)
ééI J
;
ééJ K
foreach
èè 
(
èè 
var
èè 
adjacent
èè $
in
èè% '
adjacentPoints
èè( 6
)
èè6 7
{
êê 
if
ëë 
(
ëë 
!
ëë 
visitedPoint
ëë $
.
ëë$ %
Contains
ëë% -
(
ëë- .
adjacent
ëë. 6
)
ëë6 7
&&
ëë7 9
!
íí 
board
íí 
.
íí 
ContainsKey
íí *
(
íí* +
adjacent
íí+ 3
)
íí3 4
&&
íí4 6
IsConnectedToHive
ìì )
(
ìì) *
adjacent
ìì* 2
)
ìì2 3
&&
ìì3 5
IsNotSurrounded
îî '
(
îî' (
adjacent
îî( 0
)
îî0 1
)
îî1 2
{
ïï 
possibleMoves
ññ %
.
ññ% &
Add
ññ& )
(
ññ) *
adjacent
ññ* 2
)
ññ2 3
;
ññ3 4
visitedPoint
óó $
.
óó$ %
Add
óó% (
(
óó( )
adjacent
óó) 1
)
óó1 2
;
óó2 3
queue
òò 
.
òò 
Enqueue
òò %
(
òò% &
adjacent
òò& .
)
òò. /
;
òò/ 0
}
ôô 
}
öö 
}
õõ 
return
úú 
possibleMoves
úú  
;
úú  !
}
ùù 	
private
üü 
List
üü 
<
üü 
Point
üü 
>
üü $
ObtainGrassHopperMoves
üü 2
(
üü2 3
Point
üü3 8
start
üü9 >
)
üü> ?
{
†† 	
List
°° 
<
°° 
Point
°° 
>
°° 

validMoves
°° "
=
°°# $
new
°°% (
List
°°) -
<
°°- .
Point
°°. 3
>
°°3 4
(
°°4 5
)
°°5 6
;
°°6 7
var
¢¢ 

directions
¢¢ 
=
¢¢ "
ObtainAdjacentPoints
¢¢ 1
(
¢¢1 2
start
¢¢2 7
)
¢¢7 8
;
¢¢8 9
foreach
££ 
(
££ 
var
££ 
	direction
££ !
in
££" $

directions
££% /
)
££/ 0
{
§§ 
if
•• 
(
•• 
board
•• 
.
•• 
ContainsKey
•• %
(
••% &
	direction
••& /
)
••/ 0
)
••0 1
{
¶¶ 
Point
ßß 
currentPosition
ßß )
=
ßß* +!
MoveInSameDirection
ßß, ?
(
ßß? @
	direction
ßß@ I
,
ßßI J
start
ßßK P
)
ßßP Q
;
ßßQ R
Point
®® 
nextPosition
®® &
=
®®' (!
MoveInSameDirection
®®) <
(
®®< =
currentPosition
®®= L
,
®®L M
	direction
®®N W
)
®®W X
;
®®X Y
bool
©© 
NotfoundPiece
©© &
=
©©' (
false
©©) .
;
©©. /
while
™™ 
(
™™ 
!
™™ 
NotfoundPiece
™™ )
)
™™) *
{
´´ 
if
¨¨ 
(
¨¨ 
board
¨¨ !
.
¨¨! "
ContainsKey
¨¨" -
(
¨¨- .
currentPosition
¨¨. =
)
¨¨= >
)
¨¨> ?
{
≠≠ 
NotfoundPiece
ÆÆ )
=
ÆÆ* +
false
ÆÆ, 1
;
ÆÆ1 2
Point
ØØ !%
currentPositionAuxiliar
ØØ" 9
=
ØØ: ;
nextPosition
ØØ< H
;
ØØH I
nextPosition
∞∞ (
=
∞∞) *!
MoveInSameDirection
∞∞+ >
(
∞∞> ?
currentPosition
∞∞? N
,
∞∞N O
nextPosition
∞∞P \
)
∞∞\ ]
;
∞∞] ^
currentPosition
±± +
=
±±, -%
currentPositionAuxiliar
±±. E
;
±±E F
}
≤≤ 
else
≥≥ 
if
≥≥ 
(
≥≥  !
!
≥≥! "
board
≥≥" '
.
≥≥' (
ContainsKey
≥≥( 3
(
≥≥3 4
currentPosition
≥≥4 C
)
≥≥C D
&&
≥≥E G
IsConnectedToHive
≥≥H Y
(
≥≥Y Z
currentPosition
≥≥Z i
)
≥≥i j
)
≥≥j k
{
¥¥ 

validMoves
µµ &
.
µµ& '
Add
µµ' *
(
µµ* +
currentPosition
µµ+ :
)
µµ: ;
;
µµ; <
NotfoundPiece
∂∂ )
=
∂∂* +
true
∂∂, 0
;
∂∂0 1
}
∑∑ 
}
∏∏ 
}
ππ 
}
∫∫ 
return
ªª 

validMoves
ªª 
;
ªª 
}
ºº 	
private
ææ 
Point
ææ !
MoveInSameDirection
ææ )
(
ææ) *
Point
ææ* /
current
ææ0 7
,
ææ7 8
Point
ææ9 >
start
ææ? D
)
ææD E
{
øø 	
Point
¿¿ 
pointToMove
¿¿ 
=
¿¿ 
new
¿¿  #
Point
¿¿$ )
(
¿¿) *
$num
¿¿* +
,
¿¿+ ,
$num
¿¿- .
)
¿¿. /
;
¿¿/ 0
double
¡¡ 
dq
¡¡ 
=
¡¡ 
current
¡¡ 
.
¡¡  
X
¡¡  !
-
¡¡" #
start
¡¡$ )
.
¡¡) *
X
¡¡* +
;
¡¡+ ,
double
¬¬ 
dr
¬¬ 
=
¬¬ 
current
¬¬ 
.
¬¬  
Y
¬¬  !
-
¬¬" #
start
¬¬$ )
.
¬¬) *
Y
¬¬* +
;
¬¬+ ,
if
√√ 
(
√√ 
start
√√ 
.
√√ 
X
√√ 
%
√√ 
$num
√√ 
==
√√ 
$num
√√  
)
√√  !
{
ƒƒ 
int
≈≈ 
index
≈≈ 
=
≈≈  
HexPairDirecctions
≈≈ .
.
≈≈. /
	FindIndex
≈≈/ 8
(
≈≈8 9
dir
≈≈9 <
=>
≈≈= ?
dir
≈≈@ C
.
≈≈C D
dirUp
≈≈D I
==
≈≈J L
dq
≈≈M O
&&
≈≈P R
dir
≈≈S V
.
≈≈V W
dirDown
≈≈W ^
==
≈≈_ a
dr
≈≈b d
)
≈≈d e
;
≈≈e f
if
∆∆ 
(
∆∆ 
index
∆∆ 
!=
∆∆ 
-
∆∆ 
$num
∆∆ 
)
∆∆  
{
«« 
(
»» 
double
»» 
dirU
»»  
,
»»  !
double
»»" (
dirD
»») -
)
»»- .
=
»»/ 0
HexOddDirecctions
»»1 B
[
»»B C
index
»»C H
]
»»H I
;
»»I J
pointToMove
…… 
=
……  !
new
……" %
Point
……& +
(
……+ ,
current
……, 3
.
……3 4
X
……4 5
+
……6 7
dirU
……8 <
,
……< =
current
……> E
.
……E F
Y
……F G
+
……H I
dirD
……J N
)
……N O
;
……O P
}
   
}
ÀÀ 
else
ÃÃ 
{
ÕÕ 
int
ŒŒ 
index
ŒŒ 
=
ŒŒ 
HexOddDirecctions
ŒŒ -
.
ŒŒ- .
	FindIndex
ŒŒ. 7
(
ŒŒ7 8
dir
ŒŒ8 ;
=>
ŒŒ< >
dir
ŒŒ? B
.
ŒŒB C
dirUp
ŒŒC H
==
ŒŒI K
dq
ŒŒL N
&&
ŒŒO Q
dir
ŒŒR U
.
ŒŒU V
dirDown
ŒŒV ]
==
ŒŒ^ `
dr
ŒŒa c
)
ŒŒc d
;
ŒŒd e
if
œœ 
(
œœ 
index
œœ 
!=
œœ 
-
œœ 
$num
œœ 
)
œœ  
{
–– 
(
—— 
double
—— 
dirU
——  
,
——  !
double
——" (
dirD
——) -
)
——- .
=
——/ 0 
HexPairDirecctions
——1 C
[
——C D
index
——D I
]
——I J
;
——J K
pointToMove
““ 
=
““  !
new
““" %
Point
““& +
(
““+ ,
current
““, 3
.
““3 4
X
““4 5
+
““6 7
dirU
““8 <
,
““< =
current
““> E
.
““E F
Y
““F G
+
““H I
dirD
““J N
)
““N O
;
““O P
}
”” 
}
‘‘ 
return
’’ 
pointToMove
’’ 
;
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ .
 PlacePieceThatIsInGame_MouseDown
ÿÿ 5
(
ÿÿ5 6
object
ÿÿ6 <
sender
ÿÿ= C
,
ÿÿC D"
MouseButtonEventArgs
ÿÿE Y
e
ÿÿZ [
)
ÿÿ[ \
{
ŸŸ 	
if
⁄⁄ 
(
⁄⁄ 
selectedPiece
⁄⁄ 
!=
⁄⁄  
null
⁄⁄! %
&&
⁄⁄& (
sender
⁄⁄) /
is
⁄⁄0 2
Polygon
⁄⁄3 :
cell
⁄⁄; ?
&&
⁄⁄@ B
cell
⁄⁄C G
!=
⁄⁄H J
null
⁄⁄K O
)
⁄⁄O P
{
€€ 
Point
‹‹ 
oldPosition
‹‹ !
=
‹‹" #
selectedPiece
‹‹$ 1
.
‹‹1 2
Position
‹‹2 :
;
‹‹: ;
selectedPiece
›› 
.
›› 
Position
›› &
=
››' (
(
››) *
Point
››* /
)
››/ 0
cell
››0 4
.
››4 5
Tag
››5 8
;
››8 9
selectedPiece
ﬁﬁ 
.
ﬁﬁ 
Piece
ﬁﬁ #
.
ﬁﬁ# $
Position
ﬁﬁ$ ,
=
ﬁﬁ- .
oldPosition
ﬁﬁ/ :
;
ﬁﬁ: ;
var
ﬂﬂ 

pieceImage
ﬂﬂ 
=
ﬂﬂ  
new
ﬂﬂ! $
Image
ﬂﬂ% *
{
‡‡ 
Source
·· 
=
·· 
new
··  
BitmapImage
··! ,
(
··, -
new
··- 0
Uri
··1 4
(
··4 5
selectedPiece
··5 B
.
··B C
	ImagePath
··C L
,
··L M
UriKind
··N U
.
··U V
Relative
··V ^
)
··^ _
)
··_ `
,
··` a
Width
‚‚ 
=
‚‚ 
$num
‚‚ 
,
‚‚ 
Height
„„ 
=
„„ 
$num
„„ 
,
„„  
Tag
‰‰ 
=
‰‰ 
selectedPiece
‰‰ '
,
‰‰' (
}
ÂÂ 
;
ÂÂ 
double
ÊÊ 
hexX
ÊÊ 
=
ÊÊ 
Canvas
ÊÊ $
.
ÊÊ$ %
GetLeft
ÊÊ% ,
(
ÊÊ, -
cell
ÊÊ- 1
)
ÊÊ1 2
;
ÊÊ2 3
double
ÁÁ 
hexY
ÁÁ 
=
ÁÁ 
Canvas
ÁÁ $
.
ÁÁ$ %
GetTop
ÁÁ% +
(
ÁÁ+ ,
cell
ÁÁ, 0
)
ÁÁ0 1
;
ÁÁ1 2
double
ËË 
pieceX
ËË 
=
ËË 
hexX
ËË  $
+
ËË% &
(
ËË' (
cell
ËË( ,
.
ËË, -
ActualWidth
ËË- 8
-
ËË9 :

pieceImage
ËË; E
.
ËËE F
Width
ËËF K
)
ËËK L
/
ËËM N
$num
ËËO P
;
ËËP Q
double
ÈÈ 
pieceY
ÈÈ 
=
ÈÈ 
hexY
ÈÈ  $
+
ÈÈ% &
(
ÈÈ' (
cell
ÈÈ( ,
.
ÈÈ, -
ActualHeight
ÈÈ- 9
-
ÈÈ: ;

pieceImage
ÈÈ< F
.
ÈÈF G
Height
ÈÈG M
)
ÈÈM N
/
ÈÈO P
$num
ÈÈQ R
;
ÈÈR S
Canvas
ÍÍ 
.
ÍÍ 
SetLeft
ÍÍ 
(
ÍÍ 

pieceImage
ÍÍ )
,
ÍÍ) *
pieceX
ÍÍ+ 1
)
ÍÍ1 2
;
ÍÍ2 3
Canvas
ÎÎ 
.
ÎÎ 
SetTop
ÎÎ 
(
ÎÎ 

pieceImage
ÎÎ (
,
ÎÎ( )
pieceY
ÎÎ* 0
)
ÎÎ0 1
;
ÎÎ1 2-
UpdateOldAndNewPlaceInGameBoard
ÏÏ /
(
ÏÏ/ 0

pieceImage
ÏÏ0 :
,
ÏÏ: ;
oldPosition
ÏÏ< G
)
ÏÏG H
;
ÏÏH I'
SendPiecePositionToServer
ÌÌ )
(
ÌÌ) *
selectedPiece
ÌÌ* 7
)
ÌÌ7 8
;
ÌÌ8 9
lastPlacedCell
ÓÓ 
=
ÓÓ  
cell
ÓÓ! %
;
ÓÓ% &
selectedPiece
ÔÔ 
=
ÔÔ 
null
ÔÔ  $
;
ÔÔ$ %
ResetHighlights
 
(
  
)
  !
;
! "
}
ÒÒ 
}
ÚÚ 	
private
ÙÙ 
void
ÙÙ -
UpdateOldAndNewPlaceInGameBoard
ÙÙ 4
(
ÙÙ4 5
Image
ÙÙ5 :

pieceImage
ÙÙ; E
,
ÙÙE F
Point
ÙÙG L
oldPosition
ÙÙM X
)
ÙÙX Y
{
ıı 	
if
ˆˆ 
(
ˆˆ 
board
ˆˆ 
.
ˆˆ 
ContainsKey
ˆˆ !
(
ˆˆ! "
oldPosition
ˆˆ" -
)
ˆˆ- .
)
ˆˆ. /
{
˜˜ 
board
¯¯ 
.
¯¯ 
Remove
¯¯ 
(
¯¯ 
oldPosition
¯¯ (
)
¯¯( )
;
¯¯) *
}
˘˘ 
var
˙˙ 
imageToRemove
˙˙ 
=
˙˙ 
GameBoardGrid
˙˙  -
.
˙˙- .
Children
˙˙. 6
.
˙˙6 7
OfType
˙˙7 =
<
˙˙= >
Image
˙˙> C
>
˙˙C D
(
˙˙D E
)
˙˙E F
.
˙˙F G
Where
˚˚ 
(
˚˚ 
img
˚˚ 
=>
˚˚ 
img
˚˚  
.
˚˚  !
Tag
˚˚! $
is
˚˚% '
	GamePiece
˚˚( 1
	gamePiece
˚˚2 ;
&&
˚˚< >
	gamePiece
˚˚? H
.
˚˚H I
Piece
˚˚I N
.
˚˚N O
Position
˚˚O W
==
˚˚X Z
oldPosition
˚˚[ f
)
˚˚f g
.
˚˚g h
ToList
˚˚h n
(
˚˚n o
)
˚˚o p
;
˚˚p q
foreach
¸¸ 
(
¸¸ 
var
¸¸ 
pieceToQuit
¸¸ #
in
¸¸$ &
imageToRemove
¸¸' 4
)
¸¸4 5
{
˝˝ 
GameBoardGrid
˛˛ 
.
˛˛ 
Children
˛˛ &
.
˛˛& '
Remove
˛˛' -
(
˛˛- .
pieceToQuit
˛˛. 9
)
˛˛9 :
;
˛˛: ;
}
ˇˇ 
GameBoardGrid
ÄÄ 
.
ÄÄ 
Children
ÄÄ "
.
ÄÄ" #
Add
ÄÄ# &
(
ÄÄ& '

pieceImage
ÄÄ' 1
)
ÄÄ1 2
;
ÄÄ2 3
	GamePiece
ÅÅ 

pieceToAdd
ÅÅ  
=
ÅÅ! "

pieceImage
ÅÅ# -
.
ÅÅ- .
Tag
ÅÅ. 1
as
ÅÅ2 4
	GamePiece
ÅÅ5 >
;
ÅÅ> ?
board
ÇÇ 
[
ÇÇ 

pieceToAdd
ÇÇ 
.
ÇÇ 
Position
ÇÇ %
]
ÇÇ% &
=
ÇÇ' (

pieceToAdd
ÇÇ) 3
;
ÇÇ3 4
}
ÉÉ 	
private
ÖÖ 
bool
ÖÖ 1
#ValidateThatPieceCannotBreakTheHive
ÖÖ 8
(
ÖÖ8 9
Point
ÖÖ9 >
positionPiece
ÖÖ? L
)
ÖÖL M
{
ÜÜ 	
bool
áá 
validationResult
áá !
=
áá" #
false
áá$ )
;
áá) *
if
àà 
(
àà 
positionPiece
àà 
!=
àà 
new
àà !
Point
àà" '
(
àà' (
-
àà( )
$num
àà) *
,
àà* +
-
àà, -
$num
àà- .
)
àà. /
)
àà/ 0
{
ââ 
var
ää 
piece
ää 
=
ää 
board
ää !
[
ää! "
positionPiece
ää" /
]
ää/ 0
;
ää0 1
board
ãã 
.
ãã 
Remove
ãã 
(
ãã 
positionPiece
ãã *
)
ãã* +
;
ãã+ ,
Point
åå 
start
åå 
=
åå 
board
åå #
.
åå# $
Keys
åå$ (
.
åå( )
FirstOrDefault
åå) 7
(
åå7 8
)
åå8 9
;
åå9 :
HashSet
çç 
<
çç 
Point
çç 
>
çç 
visited
çç &
=
çç' (
new
çç) ,
HashSet
çç- 4
<
çç4 5
Point
çç5 :
>
çç: ;
(
çç; <
)
çç< =
;
çç= >"
CheckConnectedPieces
éé $
(
éé$ %
start
éé% *
,
éé* +
visited
éé, 3
)
éé3 4
;
éé4 5
if
èè 
(
èè 
visited
èè 
.
èè 
Count
èè !
==
èè" $
board
èè% *
.
èè* +
Count
èè+ 0
)
èè0 1
{
êê 
validationResult
ëë $
=
ëë% &
true
ëë' +
;
ëë+ ,
}
íí 
else
ìì 
{
îî 
validationResult
ïï $
=
ïï% &
false
ïï' ,
;
ïï, -
}
ññ 
board
óó 
.
óó 
Add
óó 
(
óó 
positionPiece
óó '
,
óó' (
piece
óó) .
)
óó. /
;
óó/ 0
}
òò 
return
ôô 
validationResult
ôô #
;
ôô# $
}
öö 	
private
úú 
void
úú "
CheckConnectedPieces
úú )
(
úú) *
Point
úú* /
start
úú0 5
,
úú5 6
HashSet
úú7 >
<
úú> ?
Point
úú? D
>
úúD E
visited
úúF M
)
úúM N
{
ùù 	
Stack
ûû 
<
ûû 
Point
ûû 
>
ûû 
stack
ûû 
=
ûû  
new
ûû! $
Stack
ûû% *
<
ûû* +
Point
ûû+ 0
>
ûû0 1
(
ûû1 2
)
ûû2 3
;
ûû3 4
stack
üü 
.
üü 
Push
üü 
(
üü 
start
üü 
)
üü 
;
üü 
while
†† 
(
†† 
stack
†† 
.
†† 
Count
†† 
>
†† 
$num
††  !
)
††! "
{
°° 
Point
¢¢ 
currentPoint
¢¢ "
=
¢¢# $
stack
¢¢% *
.
¢¢* +
Pop
¢¢+ .
(
¢¢. /
)
¢¢/ 0
;
¢¢0 1
if
££ 
(
££ 
!
££ 
visited
££ 
.
££ 
Contains
££ %
(
££% &
currentPoint
££& 2
)
££2 3
)
££3 4
{
§§ 
visited
•• 
.
•• 
Add
•• 
(
••  
currentPoint
••  ,
)
••, -
;
••- .
List
¶¶ 
<
¶¶ 
Point
¶¶ 
>
¶¶ 
adjacentPoints
¶¶  .
=
¶¶/ 0"
ObtainAdjacentPoints
¶¶1 E
(
¶¶E F
currentPoint
¶¶F R
)
¶¶R S
;
¶¶S T
foreach
ßß 
(
ßß 
var
ßß 
adjacentCollider
ßß  0
in
ßß1 3
adjacentPoints
ßß4 B
)
ßßB C
{
®® 
if
©© 
(
©© 
!
©© 
visited
©© #
.
©©# $
Contains
©©$ ,
(
©©, -
adjacentCollider
©©- =
)
©©= >
&&
©©? A
board
©©B G
.
©©G H
ContainsKey
©©H S
(
©©S T
adjacentCollider
©©T d
)
©©d e
)
©©e f
{
™™ 
stack
´´ !
.
´´! "
Push
´´" &
(
´´& '
adjacentCollider
´´' 7
)
´´7 8
;
´´8 9
}
¨¨ 
}
≠≠ 
}
ÆÆ 
}
ØØ 
}
∞∞ 	
private
≥≥ 
void
≥≥ 2
$HighlightStartingFirstTurnStaterCell
≥≥ 9
(
≥≥9 :
Point
≥≥: ?
position
≥≥@ H
)
≥≥H I
{
¥¥ 	
if
µµ 
(
µµ 
cellDictionary
µµ 
.
µµ 
TryGetValue
µµ *
(
µµ* +
position
µµ+ 3
,
µµ3 4
out
µµ5 8
Polygon
µµ9 @
cell
µµA E
)
µµE F
)
µµF G
{
∂∂ 
cell
∑∑ 
.
∑∑ 
Fill
∑∑ 
=
∑∑ 
Brushes
∑∑ #
.
∑∑# $
Yellow
∑∑$ *
;
∑∑* +
lastPlacedCell
∏∏ 
=
∏∏  
cell
∏∏! %
;
∏∏% &
cell
ππ 
.
ππ 
	MouseDown
ππ 
+=
ππ !
Cell_MouseDown
ππ" 0
;
ππ0 1
}
∫∫ 
}
ªª 	
private
ΩΩ 
void
ΩΩ 2
$HigligthStartingFirstTurnOponentCell
ΩΩ 9
(
ΩΩ9 :
Point
ΩΩ: ?
position
ΩΩ@ H
)
ΩΩH I
{
ææ 	
ResetHighlights
øø 
(
øø 
)
øø 
;
øø 
var
¿¿ 
checkedPositions
¿¿  
=
¿¿! "
new
¿¿# &
HashSet
¿¿' .
<
¿¿. /
Point
¿¿/ 4
>
¿¿4 5
(
¿¿5 6
)
¿¿6 7
;
¿¿7 8
foreach
¡¡ 
(
¡¡ 
var
¡¡ 
piecePosition
¡¡ &
in
¡¡' )
board
¡¡* /
.
¡¡/ 0
Keys
¡¡0 4
)
¡¡4 5
{
¬¬ 
if
√√ 
(
√√ 
board
√√ 
.
√√ 
TryGetValue
√√ %
(
√√% &
piecePosition
√√& 3
,
√√3 4
out
√√5 8
var
√√9 < 
currentStarterPice
√√= O
)
√√O P
&&
√√Q S 
currentStarterPice
√√T f
!=
√√g i
null
√√j n
)
√√n o
{
ƒƒ 
var
≈≈ 
adjacentOffsets
≈≈ '
=
≈≈( )"
ObtainAdjacentPoints
≈≈* >
(
≈≈> ?
piecePosition
≈≈? L
)
≈≈L M
;
≈≈M N
foreach
∆∆ 
(
∆∆ 
var
∆∆  
offset
∆∆! '
in
∆∆( *
adjacentOffsets
∆∆+ :
)
∆∆: ;
{
«« 
if
»» 
(
»» 
!
»» 
board
»» "
.
»»" #
ContainsKey
»»# .
(
»». /
offset
»»/ 5
)
»»5 6
&&
»»7 9
cellDictionary
»»: H
.
»»H I
TryGetValue
»»I T
(
»»T U
offset
»»U [
,
»»[ \
out
»»] `
Polygon
»»a h
cell
»»i m
)
»»m n
&&
»»o q
!
»»r s
checkedPositions»»s É
.»»É Ñ
Contains»»Ñ å
(»»å ç
offset»»ç ì
)»»ì î
)»»î ï
{
…… 
List
    
<
    !
Point
  ! &
>
  & ''
adjacentColliderPositions
  ( A
=
  B C+
obtaintAdjacentColliderPoints
  D a
(
  a b
offset
  b h
,
  h i
piecePosition
  j w
)
  w x
;
  x y
bool
ÀÀ  !
isConnectedToColony
ÀÀ! 4
=
ÀÀ5 6'
adjacentColliderPositions
ÀÀ7 P
.
ÀÀP Q
Any
ÀÀQ T
(
ÀÀT U
adj
ÀÀU X
=>
ÀÀY [
board
ÀÀ\ a
.
ÀÀa b
ContainsKey
ÀÀb m
(
ÀÀm n
adj
ÀÀn q
)
ÀÀq r
)
ÀÀr s
;
ÀÀs t
if
ÃÃ 
(
ÃÃ  !
isConnectedToColony
ÃÃ  3
)
ÃÃ3 4
{
ÕÕ 
cell
ŒŒ  $
.
ŒŒ$ %
Fill
ŒŒ% )
=
ŒŒ* +
Brushes
ŒŒ, 3
.
ŒŒ3 4

LightGreen
ŒŒ4 >
;
ŒŒ> ?
cell
œœ  $
.
œœ$ %
	IsEnabled
œœ% .
=
œœ/ 0
true
œœ1 5
;
œœ5 6
cell
––  $
.
––$ %
	MouseDown
––% .
+=
––/ 1
Cell_MouseDown
––2 @
;
––@ A
checkedPositions
——  0
.
——0 1
Add
——1 4
(
——4 5
offset
——5 ;
)
——; <
;
——< =
}
““ 
}
”” 
}
‘‘ 
}
’’ 
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
void
ŸŸ -
HighlightAvailableStartingCells
ŸŸ 4
(
ŸŸ4 5
)
ŸŸ5 6
{
⁄⁄ 	
ResetHighlights
€€ 
(
€€ 
)
€€ 
;
€€ 
var
‹‹ 
checkedPositions
‹‹  
=
‹‹! "
new
‹‹# &
HashSet
‹‹' .
<
‹‹. /
Point
‹‹/ 4
>
‹‹4 5
(
‹‹5 6
)
‹‹6 7
;
‹‹7 8
if
›› 
(
›› 
numberOfTurn
›› 
==
›› 
$num
››  
&&
››! #
!
››$ %(
ValidateQueenPieceIsInGame
››% ?
(
››? @
)
››@ A
)
››A B
{
ﬁﬁ 
if
ﬂﬂ 
(
ﬂﬂ 
numberOfPlayer
ﬂﬂ !
==
ﬂﬂ" $
$num
ﬂﬂ% &
)
ﬂﬂ& '
{
‡‡ 
selectedPiece
·· !
=
··" #
player1Pieces
··$ 1
[
··1 2
$num
··2 3
]
··3 4
;
··4 5
}
‚‚ 
else
„„ 
{
‰‰ 
selectedPiece
ÂÂ !
=
ÂÂ" #
player2Pieces
ÂÂ$ 1
[
ÂÂ1 2
$num
ÂÂ2 3
]
ÂÂ3 4
;
ÂÂ4 5
}
ÊÊ 
}
ÁÁ 
foreach
ËË 
(
ËË 
var
ËË 
piecePosition
ËË &
in
ËË' )
board
ËË* /
.
ËË/ 0
Keys
ËË0 4
)
ËË4 5
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
board
ÍÍ 
[
ÍÍ 
piecePosition
ÍÍ '
]
ÍÍ' (
.
ÍÍ( )

playerName
ÍÍ) 3
==
ÍÍ4 6"
UserProfileSingleton
ÍÍ7 K
.
ÍÍK L
username
ÍÍL T
)
ÍÍT U
{
ÎÎ 
var
ÏÏ 
adjacentOffsets
ÏÏ '
=
ÏÏ( )"
ObtainAdjacentPoints
ÏÏ* >
(
ÏÏ> ?
piecePosition
ÏÏ? L
)
ÏÏL M
;
ÏÏM N
foreach
ÓÓ 
(
ÓÓ 
var
ÓÓ  
offset
ÓÓ! '
in
ÓÓ( *
adjacentOffsets
ÓÓ+ :
)
ÓÓ: ;
{
ÔÔ 
if
 
(
 
!
 
board
 "
.
" #
ContainsKey
# .
(
. /
offset
/ 5
)
5 6
&&
7 9
cellDictionary
: H
.
H I
TryGetValue
I T
(
T U
offset
U [
,
[ \
out
] `
Polygon
a h
cell
i m
)
m n
&&
o q
!
r s
checkedPositionss É
.É Ñ
ContainsÑ å
(å ç
offsetç ì
)ì î
)î ï
{
ÒÒ 
bool
ÚÚ  !
isConnectedToColony
ÚÚ! 4
=
ÚÚ5 6"
ObtainAdjacentPoints
ÚÚ7 K
(
ÚÚK L
offset
ÚÚL R
)
ÚÚR S
.
ÚÚS T
Any
ÚÚT W
(
ÚÚW X
adj
ÚÚX [
=>
ÚÚ\ ^
board
ÚÚ_ d
.
ÚÚd e
ContainsKey
ÚÚe p
(
ÚÚp q
adj
ÚÚq t
)
ÚÚt u
&&
ÚÚv x
board
ÚÚy ~
[
ÚÚ~ 
adjÚÚ Ç
]ÚÚÇ É
.ÚÚÉ Ñ

playerNameÚÚÑ é
==ÚÚè ë$
UserProfileSingletonÚÚí ¶
.ÚÚ¶ ß
usernameÚÚß Ø
)ÚÚØ ∞
;ÚÚ∞ ±
bool
ÛÛ  
isNearEnemy
ÛÛ! ,
=
ÛÛ- ."
ObtainAdjacentPoints
ÛÛ/ C
(
ÛÛC D
offset
ÛÛD J
)
ÛÛJ K
.
ÛÛK L
Any
ÛÛL O
(
ÛÛO P
adj
ÛÛP S
=>
ÛÛT V
board
ÛÛW \
.
ÛÛ\ ]
ContainsKey
ÛÛ] h
(
ÛÛh i
adj
ÛÛi l
)
ÛÛl m
&&
ÛÛn p
board
ÛÛq v
[
ÛÛv w
adj
ÛÛw z
]
ÛÛz {
.
ÛÛ{ |

playerNameÛÛ| Ü
!=ÛÛá â$
UserProfileSingletonÛÛä û
.ÛÛû ü
usernameÛÛü ß
)ÛÛß ®
;ÛÛ® ©
if
ÙÙ 
(
ÙÙ  !
isConnectedToColony
ÙÙ  3
&&
ÙÙ4 6
!
ÙÙ7 8
isNearEnemy
ÙÙ8 C
)
ÙÙC D
{
ıı 
cell
ˆˆ  $
.
ˆˆ$ %
Fill
ˆˆ% )
=
ˆˆ* +
Brushes
ˆˆ, 3
.
ˆˆ3 4

LightGreen
ˆˆ4 >
;
ˆˆ> ?
cell
˜˜  $
.
˜˜$ %
	IsEnabled
˜˜% .
=
˜˜/ 0
true
˜˜1 5
;
˜˜5 6
cell
¯¯  $
.
¯¯$ %
	MouseDown
¯¯% .
+=
¯¯/ 1
Cell_MouseDown
¯¯2 @
;
¯¯@ A
checkedPositions
˘˘  0
.
˘˘0 1
Add
˘˘1 4
(
˘˘4 5
offset
˘˘5 ;
)
˘˘; <
;
˘˘< =
}
˙˙ 
}
˚˚ 
}
¸¸ 
}
˝˝ 
}
˛˛ 
}
ˇˇ 	
private
ÅÅ 
bool
ÅÅ #
HasParallelIsollation
ÅÅ *
(
ÅÅ* +
Point
ÅÅ+ 0
position
ÅÅ1 9
)
ÅÅ9 :
{
ÇÇ 	
bool
ÉÉ  
verificationResult
ÉÉ #
=
ÉÉ$ %
true
ÉÉ& *
;
ÉÉ* +
var
ÑÑ 
adjacentPoints
ÑÑ 
=
ÑÑ  "
ObtainAdjacentPoints
ÑÑ! 5
(
ÑÑ5 6
position
ÑÑ6 >
)
ÑÑ> ?
;
ÑÑ? @
var
ÖÖ 
occupiedAdjacent
ÖÖ  
=
ÖÖ! "
adjacentPoints
ÖÖ# 1
.
ÖÖ1 2
Where
ÖÖ2 7
(
ÖÖ7 8
adj
ÖÖ8 ;
=>
ÖÖ< >
board
ÖÖ? D
.
ÖÖD E
ContainsKey
ÖÖE P
(
ÖÖP Q
adj
ÖÖQ T
)
ÖÖT U
)
ÖÖU V
.
ÖÖV W
ToList
ÖÖW ]
(
ÖÖ] ^
)
ÖÖ^ _
;
ÖÖ_ `
if
ÜÜ 
(
ÜÜ 
occupiedAdjacent
ÜÜ 
.
ÜÜ  
Count
ÜÜ  %
<
ÜÜ& '
$num
ÜÜ( )
)
ÜÜ) *
{
áá  
verificationResult
àà "
=
àà# $
false
àà% *
;
àà* +
}
ââ 
else
ää 
{
ãã 
HashSet
åå 
<
åå 
Point
åå 
>
åå 
visited
åå &
=
åå' (
new
åå) ,
HashSet
åå- 4
<
åå4 5
Point
åå5 :
>
åå: ;
(
åå; <
)
åå< =
;
åå= >
Stack
çç 
<
çç 
Point
çç 
>
çç 
stack
çç "
=
çç# $
new
çç% (
Stack
çç) .
<
çç. /
Point
çç/ 4
>
çç4 5
(
çç5 6
)
çç6 7
;
çç7 8
stack
éé 
.
éé 
Push
éé 
(
éé 
occupiedAdjacent
éé +
[
éé+ ,
$num
éé, -
]
éé- .
)
éé. /
;
éé/ 0
visited
èè 
.
èè 
Add
èè 
(
èè 
occupiedAdjacent
èè ,
[
èè, -
$num
èè- .
]
èè. /
)
èè/ 0
;
èè0 1
while
êê 
(
êê 
stack
êê 
.
êê 
Count
êê "
>
êê# $
$num
êê% &
)
êê& '
{
ëë 
var
íí 
current
íí 
=
íí  !
stack
íí" '
.
íí' (
Pop
íí( +
(
íí+ ,
)
íí, -
;
íí- .
var
ìì 
	neighbors
ìì !
=
ìì" #"
ObtainAdjacentPoints
ìì$ 8
(
ìì8 9
current
ìì9 @
)
ìì@ A
;
ììA B
foreach
îî 
(
îî 
var
îî  
neighbor
îî! )
in
îî* ,
	neighbors
îî- 6
)
îî6 7
{
ïï 
if
ññ 
(
ññ 
occupiedAdjacent
ññ ,
.
ññ, -
Contains
ññ- 5
(
ññ5 6
neighbor
ññ6 >
)
ññ> ?
&&
ññ@ B
!
ññC D
visited
ññD K
.
ññK L
Contains
ññL T
(
ññT U
neighbor
ññU ]
)
ññ] ^
)
ññ^ _
{
óó 
visited
òò #
.
òò# $
Add
òò$ '
(
òò' (
neighbor
òò( 0
)
òò0 1
;
òò1 2
stack
ôô !
.
ôô! "
Push
ôô" &
(
ôô& '
neighbor
ôô' /
)
ôô/ 0
;
ôô0 1
}
öö 
}
õõ 
}
úú 
if
ùù 
(
ùù 
visited
ùù 
.
ùù 
Count
ùù  
!=
ùù! #
occupiedAdjacent
ùù$ 4
.
ùù4 5
Count
ùù5 :
)
ùù: ;
{
ûû  
verificationResult
üü &
=
üü' (
true
üü) -
;
üü- .
}
†† 
else
°° 
{
¢¢  
verificationResult
££ &
=
££' (
false
££) .
;
££. /
}
§§ 
}
•• 
return
¶¶  
verificationResult
¶¶ %
;
¶¶% &
}
ßß 	
private
©© 
bool
©© $
IsContinouslyConnected
©© +
(
©©+ ,
Point
©©, 1
adjacent
©©2 :
,
©©: ;
Point
©©< A
previousPosition
©©B R
,
©©R S
Point
©©T Y
currentPosition
©©Z i
)
©©i j
{
™™ 	
var
´´ 
adjacentPoints
´´ 
=
´´ "
ObtainAdjacentPoints
´´  4
(
´´4 5
adjacent
´´5 =
)
´´= >
;
´´> ?
return
¨¨ 
adjacentPoints
¨¨  
.
¨¨  !
Any
¨¨! $
(
¨¨$ %
adj
¨¨% (
=>
¨¨) +
board
¨¨, 1
.
¨¨1 2
ContainsKey
¨¨2 =
(
¨¨= >
adj
¨¨> A
)
¨¨A B
&&
¨¨C E"
ObtainAdjacentPoints
≠≠ $
(
≠≠$ %
adj
≠≠% (
)
≠≠( )
.
≠≠) *
Contains
≠≠* 2
(
≠≠2 3
currentPosition
≠≠3 B
)
≠≠B C
&&
≠≠D F"
ObtainAdjacentPoints
ÆÆ $
(
ÆÆ$ %
adj
ÆÆ% (
)
ÆÆ( )
.
ÆÆ) *
Contains
ÆÆ* 2
(
ÆÆ2 3
previousPosition
ÆÆ3 C
)
ÆÆC D
)
ÆÆD E
;
ÆÆE F
;
ÆÆG H
}
ØØ 	
private
±± 
bool
±± 
IsNotSurrounded
±± $
(
±±$ %
Point
±±% *
position
±±+ 3
)
±±3 4
{
≤≤ 	
var
≥≥ 
adjacentPoints
≥≥ 
=
≥≥  "
ObtainAdjacentPoints
≥≥! 5
(
≥≥5 6
position
≥≥6 >
)
≥≥> ?
;
≥≥? @
int
¥¥ 
occupiedSides
¥¥ 
=
¥¥ 
adjacentPoints
¥¥  .
.
¥¥. /
Count
¥¥/ 4
(
¥¥4 5
adj
¥¥5 8
=>
¥¥9 ;
board
¥¥< A
.
¥¥A B
ContainsKey
¥¥B M
(
¥¥M N
adj
¥¥N Q
)
¥¥Q R
)
¥¥R S
;
¥¥S T
return
µµ 
occupiedSides
µµ  
!=
µµ! #
$num
µµ$ %
;
µµ% &
}
∂∂ 	
private
∏∏ 
bool
∏∏ 
IsConnectedToHive
∏∏ &
(
∏∏& '
Point
∏∏' ,
position
∏∏- 5
)
∏∏5 6
{
ππ 	
var
∫∫ 
adjacentPoints
∫∫ 
=
∫∫  "
ObtainAdjacentPoints
∫∫! 5
(
∫∫5 6
position
∫∫6 >
)
∫∫> ?
;
∫∫? @
bool
ªª !
isConnectedToColony
ªª $
=
ªª% &
adjacentPoints
ªª' 5
.
ªª5 6
Any
ªª6 9
(
ªª9 :
adj
ªª: =
=>
ªª> @
board
ªªA F
.
ªªF G
ContainsKey
ªªG R
(
ªªR S
adj
ªªS V
)
ªªV W
)
ªªW X
;
ªªX Y
return
ºº !
isConnectedToColony
ºº &
;
ºº& '
}
ΩΩ 	
private
øø 
List
øø 
<
øø 
Point
øø 
>
øø "
ObtainAdjacentPoints
øø 0
(
øø0 1
Point
øø1 6
piecePosition
øø7 D
)
øøD E
{
¿¿ 	
List
¡¡ 
<
¡¡ 
Point
¡¡ 
>
¡¡ 
adjacentPoints
¡¡ &
=
¡¡' (
new
¡¡) ,
List
¡¡- 1
<
¡¡1 2
Point
¡¡2 7
>
¡¡7 8
(
¡¡8 9
)
¡¡9 :
;
¡¡: ;
if
¬¬ 
(
¬¬ 
piecePosition
¬¬ 
.
¬¬ 
X
¬¬ 
%
¬¬  !
$num
¬¬" #
==
¬¬$ &
$num
¬¬' (
)
¬¬( )
{
√√ 
adjacentPoints
ƒƒ 
.
ƒƒ 
Add
ƒƒ "
(
ƒƒ" #
new
ƒƒ# &
Point
ƒƒ' ,
(
ƒƒ, -
piecePosition
ƒƒ- :
.
ƒƒ: ;
X
ƒƒ; <
-
ƒƒ= >
$num
ƒƒ? @
,
ƒƒ@ A
piecePosition
ƒƒB O
.
ƒƒO P
Y
ƒƒP Q
-
ƒƒR S
$num
ƒƒT U
)
ƒƒU V
)
ƒƒV W
;
ƒƒW X
adjacentPoints
≈≈ 
.
≈≈ 
Add
≈≈ "
(
≈≈" #
new
≈≈# &
Point
≈≈' ,
(
≈≈, -
piecePosition
≈≈- :
.
≈≈: ;
X
≈≈; <
,
≈≈< =
piecePosition
≈≈> K
.
≈≈K L
Y
≈≈L M
-
≈≈N O
$num
≈≈P Q
)
≈≈Q R
)
≈≈R S
;
≈≈S T
adjacentPoints
∆∆ 
.
∆∆ 
Add
∆∆ "
(
∆∆" #
new
∆∆# &
Point
∆∆' ,
(
∆∆, -
piecePosition
∆∆- :
.
∆∆: ;
X
∆∆; <
+
∆∆= >
$num
∆∆? @
,
∆∆@ A
piecePosition
∆∆B O
.
∆∆O P
Y
∆∆P Q
-
∆∆R S
$num
∆∆T U
)
∆∆U V
)
∆∆V W
;
∆∆W X
adjacentPoints
«« 
.
«« 
Add
«« "
(
««" #
new
««# &
Point
««' ,
(
««, -
piecePosition
««- :
.
««: ;
X
««; <
+
««= >
$num
««? @
,
««@ A
piecePosition
««B O
.
««O P
Y
««P Q
)
««Q R
)
««R S
;
««S T
adjacentPoints
»» 
.
»» 
Add
»» "
(
»»" #
new
»»# &
Point
»»' ,
(
»», -
piecePosition
»»- :
.
»»: ;
X
»»; <
,
»»< =
piecePosition
»»> K
.
»»K L
Y
»»L M
+
»»N O
$num
»»P Q
)
»»Q R
)
»»R S
;
»»S T
adjacentPoints
…… 
.
…… 
Add
…… "
(
……" #
new
……# &
Point
……' ,
(
……, -
piecePosition
……- :
.
……: ;
X
……; <
-
……= >
$num
……? @
,
……@ A
piecePosition
……B O
.
……O P
Y
……P Q
)
……Q R
)
……R S
;
……S T
}
   
else
ÀÀ 
{
ÃÃ 
adjacentPoints
ÕÕ 
.
ÕÕ 
Add
ÕÕ "
(
ÕÕ" #
new
ÕÕ# &
Point
ÕÕ' ,
(
ÕÕ, -
piecePosition
ÕÕ- :
.
ÕÕ: ;
X
ÕÕ; <
-
ÕÕ= >
$num
ÕÕ? @
,
ÕÕ@ A
piecePosition
ÕÕB O
.
ÕÕO P
Y
ÕÕP Q
)
ÕÕQ R
)
ÕÕR S
;
ÕÕS T
adjacentPoints
ŒŒ 
.
ŒŒ 
Add
ŒŒ "
(
ŒŒ" #
new
ŒŒ# &
Point
ŒŒ' ,
(
ŒŒ, -
piecePosition
ŒŒ- :
.
ŒŒ: ;
X
ŒŒ; <
,
ŒŒ< =
piecePosition
ŒŒ> K
.
ŒŒK L
Y
ŒŒL M
-
ŒŒN O
$num
ŒŒP Q
)
ŒŒQ R
)
ŒŒR S
;
ŒŒS T
adjacentPoints
œœ 
.
œœ 
Add
œœ "
(
œœ" #
new
œœ# &
Point
œœ' ,
(
œœ, -
piecePosition
œœ- :
.
œœ: ;
X
œœ; <
+
œœ= >
$num
œœ? @
,
œœ@ A
piecePosition
œœB O
.
œœO P
Y
œœP Q
)
œœQ R
)
œœR S
;
œœS T
adjacentPoints
–– 
.
–– 
Add
–– "
(
––" #
new
––# &
Point
––' ,
(
––, -
piecePosition
––- :
.
––: ;
X
––; <
+
––= >
$num
––? @
,
––@ A
piecePosition
––B O
.
––O P
Y
––P Q
+
––R S
$num
––T U
)
––U V
)
––V W
;
––W X
adjacentPoints
—— 
.
—— 
Add
—— "
(
——" #
new
——# &
Point
——' ,
(
——, -
piecePosition
——- :
.
——: ;
X
——; <
,
——< =
piecePosition
——> K
.
——K L
Y
——L M
+
——N O
$num
——P Q
)
——Q R
)
——R S
;
——S T
adjacentPoints
““ 
.
““ 
Add
““ "
(
““" #
new
““# &
Point
““' ,
(
““, -
piecePosition
““- :
.
““: ;
X
““; <
-
““= >
$num
““? @
,
““@ A
piecePosition
““B O
.
““O P
Y
““P Q
+
““R S
$num
““T U
)
““U V
)
““V W
;
““W X
}
”” 
return
‘‘ 
adjacentPoints
‘‘ !
;
‘‘! "
}
’’ 	
private
◊◊ 
List
◊◊ 
<
◊◊ 
Point
◊◊ 
>
◊◊ +
obtaintAdjacentColliderPoints
◊◊ 9
(
◊◊9 :
Point
◊◊: ?
offset
◊◊@ F
,
◊◊F G
Point
◊◊H M
piecePosition
◊◊N [
)
◊◊[ \
{
ÿÿ 	
List
ŸŸ 
<
ŸŸ 
Point
ŸŸ 
>
ŸŸ 
adjacentPoints
ŸŸ &
=
ŸŸ' (
new
ŸŸ) ,
List
ŸŸ- 1
<
ŸŸ1 2
Point
ŸŸ2 7
>
ŸŸ7 8
(
ŸŸ8 9
)
ŸŸ9 :
;
ŸŸ: ;
if
⁄⁄ 
(
⁄⁄ 
piecePosition
⁄⁄ 
.
⁄⁄ 
X
⁄⁄ 
%
⁄⁄  !
$num
⁄⁄" #
==
⁄⁄$ &
$num
⁄⁄' (
)
⁄⁄( )
{
€€ 
adjacentPoints
‹‹ 
.
‹‹ 
Add
‹‹ "
(
‹‹" #
new
‹‹# &
Point
‹‹' ,
(
‹‹, -
offset
‹‹- 3
.
‹‹3 4
X
‹‹4 5
+
‹‹6 7
$num
‹‹8 9
,
‹‹9 :
offset
‹‹; A
.
‹‹A B
Y
‹‹B C
+
‹‹D E
$num
‹‹F G
)
‹‹G H
)
‹‹H I
;
‹‹I J
adjacentPoints
›› 
.
›› 
Add
›› "
(
››" #
new
››# &
Point
››' ,
(
››, -
offset
››- 3
.
››3 4
X
››4 5
,
››5 6
offset
››7 =
.
››= >
Y
››> ?
+
››@ A
$num
››B C
)
››C D
)
››D E
;
››E F
adjacentPoints
ﬁﬁ 
.
ﬁﬁ 
Add
ﬁﬁ "
(
ﬁﬁ" #
new
ﬁﬁ# &
Point
ﬁﬁ' ,
(
ﬁﬁ, -
offset
ﬁﬁ- 3
.
ﬁﬁ3 4
X
ﬁﬁ4 5
-
ﬁﬁ6 7
$num
ﬁﬁ8 9
,
ﬁﬁ9 :
offset
ﬁﬁ; A
.
ﬁﬁA B
Y
ﬁﬁB C
+
ﬁﬁD E
$num
ﬁﬁF G
)
ﬁﬁG H
)
ﬁﬁH I
;
ﬁﬁI J
adjacentPoints
ﬂﬂ 
.
ﬂﬂ 
Add
ﬂﬂ "
(
ﬂﬂ" #
new
ﬂﬂ# &
Point
ﬂﬂ' ,
(
ﬂﬂ, -
offset
ﬂﬂ- 3
.
ﬂﬂ3 4
X
ﬂﬂ4 5
-
ﬂﬂ6 7
$num
ﬂﬂ8 9
,
ﬂﬂ9 :
offset
ﬂﬂ; A
.
ﬂﬂA B
Y
ﬂﬂB C
)
ﬂﬂC D
)
ﬂﬂD E
;
ﬂﬂE F
adjacentPoints
‡‡ 
.
‡‡ 
Add
‡‡ "
(
‡‡" #
new
‡‡# &
Point
‡‡' ,
(
‡‡, -
offset
‡‡- 3
.
‡‡3 4
X
‡‡4 5
,
‡‡5 6
offset
‡‡7 =
.
‡‡= >
Y
‡‡> ?
-
‡‡@ A
$num
‡‡B C
)
‡‡C D
)
‡‡D E
;
‡‡E F
adjacentPoints
·· 
.
·· 
Add
·· "
(
··" #
new
··# &
Point
··' ,
(
··, -
offset
··- 3
.
··3 4
X
··4 5
+
··6 7
$num
··8 9
,
··9 :
offset
··; A
.
··A B
Y
··B C
)
··C D
)
··D E
;
··E F
}
‚‚ 
else
„„ 
{
‰‰ 
adjacentPoints
ÂÂ 
.
ÂÂ 
Add
ÂÂ "
(
ÂÂ" #
new
ÂÂ# &
Point
ÂÂ' ,
(
ÂÂ, -
offset
ÂÂ- 3
.
ÂÂ3 4
X
ÂÂ4 5
+
ÂÂ6 7
$num
ÂÂ8 9
,
ÂÂ9 :
offset
ÂÂ; A
.
ÂÂA B
Y
ÂÂB C
)
ÂÂC D
)
ÂÂD E
;
ÂÂE F
adjacentPoints
ÊÊ 
.
ÊÊ 
Add
ÊÊ "
(
ÊÊ" #
new
ÊÊ# &
Point
ÊÊ' ,
(
ÊÊ, -
offset
ÊÊ- 3
.
ÊÊ3 4
X
ÊÊ4 5
,
ÊÊ5 6
offset
ÊÊ7 =
.
ÊÊ= >
Y
ÊÊ> ?
+
ÊÊ@ A
$num
ÊÊB C
)
ÊÊC D
)
ÊÊD E
;
ÊÊE F
adjacentPoints
ÁÁ 
.
ÁÁ 
Add
ÁÁ "
(
ÁÁ" #
new
ÁÁ# &
Point
ÁÁ' ,
(
ÁÁ, -
offset
ÁÁ- 3
.
ÁÁ3 4
X
ÁÁ4 5
-
ÁÁ6 7
$num
ÁÁ8 9
,
ÁÁ9 :
offset
ÁÁ; A
.
ÁÁA B
Y
ÁÁB C
)
ÁÁC D
)
ÁÁD E
;
ÁÁE F
adjacentPoints
ËË 
.
ËË 
Add
ËË "
(
ËË" #
new
ËË# &
Point
ËË' ,
(
ËË, -
offset
ËË- 3
.
ËË3 4
X
ËË4 5
-
ËË6 7
$num
ËË8 9
,
ËË9 :
offset
ËË; A
.
ËËA B
Y
ËËB C
-
ËËD E
$num
ËËF G
)
ËËG H
)
ËËH I
;
ËËI J
adjacentPoints
ÈÈ 
.
ÈÈ 
Add
ÈÈ "
(
ÈÈ" #
new
ÈÈ# &
Point
ÈÈ' ,
(
ÈÈ, -
offset
ÈÈ- 3
.
ÈÈ3 4
X
ÈÈ4 5
,
ÈÈ5 6
offset
ÈÈ7 =
.
ÈÈ= >
Y
ÈÈ> ?
-
ÈÈ@ A
$num
ÈÈB C
)
ÈÈC D
)
ÈÈD E
;
ÈÈE F
adjacentPoints
ÍÍ 
.
ÍÍ 
Add
ÍÍ "
(
ÍÍ" #
new
ÍÍ# &
Point
ÍÍ' ,
(
ÍÍ, -
offset
ÍÍ- 3
.
ÍÍ3 4
X
ÍÍ4 5
+
ÍÍ6 7
$num
ÍÍ8 9
,
ÍÍ9 :
offset
ÍÍ; A
.
ÍÍA B
Y
ÍÍB C
-
ÍÍD E
$num
ÍÍF G
)
ÍÍG H
)
ÍÍH I
;
ÍÍI J
}
ÎÎ 
return
ÏÏ 
adjacentPoints
ÏÏ !
;
ÏÏ! "
}
ÌÌ 	
private
ÔÔ 
PointCollection
ÔÔ !
CreateHexagonPoints
ÔÔ  3
(
ÔÔ3 4
double
ÔÔ4 :
size
ÔÔ; ?
)
ÔÔ? @
{
 	
var
ÒÒ 
points
ÒÒ 
=
ÒÒ 
new
ÒÒ 
PointCollection
ÒÒ ,
(
ÒÒ, -
)
ÒÒ- .
;
ÒÒ. /
for
ÚÚ 
(
ÚÚ 
int
ÚÚ 
i
ÚÚ 
=
ÚÚ 
$num
ÚÚ 
;
ÚÚ 
i
ÚÚ 
<
ÚÚ 
$num
ÚÚ  !
;
ÚÚ! "
i
ÚÚ# $
++
ÚÚ$ &
)
ÚÚ& '
{
ÛÛ 
double
ÙÙ 
angle
ÙÙ 
=
ÙÙ 
(
ÙÙ  
i
ÙÙ  !
*
ÙÙ" #
$num
ÙÙ$ &
+
ÙÙ' (
$num
ÙÙ) +
)
ÙÙ+ ,
*
ÙÙ- .
Math
ÙÙ/ 3
.
ÙÙ3 4
PI
ÙÙ4 6
/
ÙÙ7 8
$num
ÙÙ9 <
;
ÙÙ< =
points
ıı 
.
ıı 
Add
ıı 
(
ıı 
new
ıı 
Point
ıı $
(
ıı$ %
size
ıı% )
*
ıı* +
Math
ıı, 0
.
ıı0 1
Cos
ıı1 4
(
ıı4 5
angle
ıı5 :
)
ıı: ;
,
ıı; <
size
ıı= A
*
ııB C
Math
ııD H
.
ııH I
Sin
ııI L
(
ııL M
angle
ııM R
)
ııR S
)
ııS T
)
ııT U
;
ııU V
}
ˆˆ 
return
˜˜ 
points
˜˜ 
;
˜˜ 
}
¯¯ 	
private
˙˙ 
void
˙˙ 
PlacePieceOnCell
˙˙ %
(
˙˙% &
Polygon
˙˙& -
cell
˙˙. 2
)
˙˙2 3
{
˚˚ 	
if
¸¸ 
(
¸¸ 
cell
¸¸ 
!=
¸¸ 
null
¸¸ 
)
¸¸ 
{
˝˝ 
selectedPiece
˛˛ 
.
˛˛ 
Position
˛˛ &
=
˛˛' (
(
˛˛) *
Point
˛˛* /
)
˛˛/ 0
cell
˛˛0 4
.
˛˛4 5
Tag
˛˛5 8
;
˛˛8 9
var
ˇˇ 

pieceImage
ˇˇ 
=
ˇˇ  
new
ˇˇ! $
Image
ˇˇ% *
{
ÄÄ 
Source
ÅÅ 
=
ÅÅ 
new
ÅÅ  
BitmapImage
ÅÅ! ,
(
ÅÅ, -
new
ÅÅ- 0
Uri
ÅÅ1 4
(
ÅÅ4 5
selectedPiece
ÅÅ5 B
.
ÅÅB C
	ImagePath
ÅÅC L
,
ÅÅL M
UriKind
ÅÅN U
.
ÅÅU V
Relative
ÅÅV ^
)
ÅÅ^ _
)
ÅÅ_ `
,
ÅÅ` a
Width
ÇÇ 
=
ÇÇ 
$num
ÇÇ 
,
ÇÇ 
Height
ÉÉ 
=
ÉÉ 
$num
ÉÉ 
,
ÉÉ  
Tag
ÑÑ 
=
ÑÑ 
selectedPiece
ÑÑ '
,
ÑÑ' (
}
ÖÖ 
;
ÖÖ 
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
polygon
ÜÜ $
in
ÜÜ% '
GameBoardGrid
ÜÜ( 5
.
ÜÜ5 6
Children
ÜÜ6 >
.
ÜÜ> ?
OfType
ÜÜ? E
<
ÜÜE F
Polygon
ÜÜF M
>
ÜÜM N
(
ÜÜN O
)
ÜÜO P
)
ÜÜP Q
{
áá 
polygon
àà 
.
àà 
	IsEnabled
àà %
=
àà& '
false
àà( -
;
àà- .
}
ââ 
double
ää 
hexX
ää 
=
ää 
Canvas
ää $
.
ää$ %
GetLeft
ää% ,
(
ää, -
cell
ää- 1
)
ää1 2
;
ää2 3
double
ãã 
hexY
ãã 
=
ãã 
Canvas
ãã $
.
ãã$ %
GetTop
ãã% +
(
ãã+ ,
cell
ãã, 0
)
ãã0 1
;
ãã1 2
double
åå 
pieceX
åå 
=
åå 
hexX
åå  $
+
åå% &
(
åå' (
cell
åå( ,
.
åå, -
ActualWidth
åå- 8
-
åå9 :

pieceImage
åå; E
.
ååE F
Width
ååF K
)
ååK L
/
ååM N
$num
ååO P
;
ååP Q
double
çç 
pieceY
çç 
=
çç 
hexY
çç  $
+
çç% &
(
çç' (
cell
çç( ,
.
çç, -
ActualHeight
çç- 9
-
çç: ;

pieceImage
çç< F
.
ççF G
Height
ççG M
)
ççM N
/
ççO P
$num
ççQ R
;
ççR S
Canvas
éé 
.
éé 
SetLeft
éé 
(
éé 

pieceImage
éé )
,
éé) *
pieceX
éé+ 1
)
éé1 2
;
éé2 3
Canvas
èè 
.
èè 
SetTop
èè 
(
èè 

pieceImage
èè (
,
èè( )
pieceY
èè* 0
)
èè0 1
;
èè1 2
GameBoardGrid
êê 
.
êê 
Children
êê &
.
êê& '
Add
êê' *
(
êê* +

pieceImage
êê+ 5
)
êê5 6
;
êê6 7
board
ëë 
[
ëë 
selectedPiece
ëë #
.
ëë# $
Position
ëë$ ,
]
ëë, -
=
ëë. /
selectedPiece
ëë0 =
;
ëë= >#
RemovePieceFromPlayer
íí %
(
íí% &
selectedPiece
íí& 3
)
íí3 4
;
íí4 5'
SendPiecePositionToServer
ìì )
(
ìì) *
selectedPiece
ìì* 7
)
ìì7 8
;
ìì8 9
lastPlacedCell
îî 
=
îî  
cell
îî! %
;
îî% & 
isFirstPiecePlaced
ïï "
=
ïï# $
true
ïï% )
;
ïï) *
selectedPiece
ññ 
=
ññ 
null
ññ  $
;
ññ$ %
ResetHighlights
óó 
(
óó  
)
óó  !
;
óó! "
}
òò 
}
ôô 	
private
õõ 
void
õõ +
UnlockPlacesWhereThereIsPiece
õõ 2
(
õõ2 3
)
õõ3 4
{
úú 	
foreach
ùù 
(
ùù 
var
ùù 
pieceInBoard
ùù $
in
ùù% '
board
ùù( -
)
ùù- .
{
ûû 
Point
üü 
placeToUnlock
üü #
=
üü$ %
pieceInBoard
üü& 2
.
üü2 3
Key
üü3 6
;
üü6 7
if
†† 
(
†† 
cellDictionary
†† "
.
††" #
ContainsKey
††# .
(
††. /
placeToUnlock
††/ <
)
††< =
&&
††> @
pieceInBoard
††A M
.
††M N
Value
††N S
.
††S T

playerName
††T ^
==
††_ a"
UserProfileSingleton
††b v
.
††v w
username
††w 
)†† Ä
{
°° 
cellDictionary
¢¢ "
[
¢¢" #
placeToUnlock
¢¢# 0
]
¢¢0 1
.
¢¢1 2
	IsEnabled
¢¢2 ;
=
¢¢< =
true
¢¢> B
;
¢¢B C
}
££ 
}
§§ 
List
•• 
<
•• 
Image
•• 
>
•• 
imagesOnBoard
•• %
=
••& '
GameBoardGrid
••( 5
.
••5 6
Children
••6 >
.
••> ?
OfType
••? E
<
••E F
Image
••F K
>
••K L
(
••L M
)
••M N
.
••N O
ToList
••O U
(
••U V
)
••V W
;
••W X
foreach
¶¶ 
(
¶¶ 
Image
¶¶ 
imageOnBoard
¶¶ &
in
¶¶' )
imagesOnBoard
¶¶* 7
)
¶¶7 8
{
ßß 
	GamePiece
®® 
piece
®® 
=
®®  !
(
®®" #
	GamePiece
®®# ,
)
®®, -
imageOnBoard
®®- 9
.
®®9 :
Tag
®®: =
;
®®= >
if
©© 
(
©© 
piece
©© 
.
©© 

playerName
©© #
==
©©$ &"
UserProfileSingleton
©©' ;
.
©©; <
username
©©< D
)
©©D E
{
™™ 
imageOnBoard
´´  
.
´´  !
	IsEnabled
´´! *
=
´´+ ,
true
´´- 1
;
´´1 2
}
¨¨ 
}
≠≠ 
}
ÆÆ 	
private
∞∞ 
void
∞∞ '
SendPiecePositionToServer
∞∞ .
(
∞∞. /
Logic
∞∞/ 4
.
∞∞4 5
	GamePiece
∞∞5 >
	gamePiece
∞∞? H
)
∞∞H I
{
±± 	
LoggerManager
≤≤ 
logger
≤≤  
=
≤≤! "
new
≤≤# &
LoggerManager
≤≤' 4
(
≤≤4 5
this
≤≤5 9
.
≤≤9 :
GetType
≤≤: A
(
≤≤A B
)
≤≤B C
)
≤≤C D
;
≤≤D E
try
≥≥ 
{
¥¥ 
	HiveProxy
µµ 
.
µµ 
Piece
µµ 

pieceMoved
µµ  *
=
µµ+ ,
new
µµ- 0
	HiveProxy
µµ1 :
.
µµ: ;
Piece
µµ; @
(
µµ@ A
)
µµA B
{
∂∂ 
name
∑∑ 
=
∑∑ 
	gamePiece
∑∑ $
.
∑∑$ %
Piece
∑∑% *
.
∑∑* +
Name
∑∑+ /
,
∑∑/ 0

playerName
∏∏ 
=
∏∏  
	gamePiece
∏∏! *
.
∏∏* +
Piece
∏∏+ 0
.
∏∏0 1

playerName
∏∏1 ;
,
∏∏; <
position
ππ 
=
ππ 
	gamePiece
ππ (
.
ππ( )
Piece
ππ) .
.
ππ. /
Position
ππ/ 7
}
∫∫ 
;
∫∫ 
	HiveProxy
ªª 
.
ªª 
GamePice
ªª "
gamePieceMoved
ªª# 1
=
ªª2 3
new
ªª4 7
	HiveProxy
ªª8 A
.
ªªA B
GamePice
ªªB J
(
ªªJ K
)
ªªK L
{
ºº 

playerName
ΩΩ 
=
ΩΩ  
	gamePiece
ΩΩ! *
.
ΩΩ* +

playerName
ΩΩ+ 5
,
ΩΩ5 6
piece
ææ 
=
ææ 

pieceMoved
ææ &
,
ææ& '
	imagePath
øø 
=
øø 
	gamePiece
øø  )
.
øø) *
	ImagePath
øø* 3
,
øø3 4
position
¿¿ 
=
¿¿ 
	gamePiece
¿¿ (
.
¿¿( )
Position
¿¿) 1
,
¿¿1 2
numberOfPiece
¡¡ !
=
¡¡" #
	gamePiece
¡¡$ -
.
¡¡- .
pieceNumber
¡¡. 9
,
¡¡9 :
}
¬¬ 
;
¬¬ 
UserSession
√√ 
userSession
√√ '
=
√√( )
new
√√* -
UserSession
√√. 9
(
√√9 :
)
√√: ;
{
ƒƒ 
	idAccount
≈≈ 
=
≈≈ "
UserProfileSingleton
≈≈  4
.
≈≈4 5
	idAccount
≈≈5 >
,
≈≈> ?
username
∆∆ 
=
∆∆ "
UserProfileSingleton
∆∆ 3
.
∆∆3 4
username
∆∆4 <
,
∆∆< =
	codeMatch
«« 
=
«« 
MatchSingleton
««  .
.
««. /
	codeMatch
««/ 8
}
»» 
;
»» 
gameManagerClient
…… !
.
……! "
	MovePiece
……" +
(
……+ ,
gamePieceMoved
……, :
,
……: ;
userSession
……< G
,
……G H
userSession
……I T
.
……T U
	codeMatch
……U ^
)
……^ _
;
……_ `
gameManagerClient
   !
.
  ! "
SetTurns
  " *
(
  * +
userSession
  + 6
,
  6 7
userSession
  8 C
.
  C D
	codeMatch
  D M
)
  M N
;
  N O
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ '
EndpointNotFoundException
ÃÃ ,
endPointException
ÃÃ- >
)
ÃÃ> ?
{
ÕÕ 
logger
ŒŒ 
.
ŒŒ 
LogError
ŒŒ 
(
ŒŒ  
endPointException
ŒŒ  1
)
ŒŒ1 2
;
ŒŒ2 3
DialogManager
œœ 
.
œœ #
ShowErrorMessageAlert
œœ 3
(
œœ3 4

Properties
œœ4 >
.
œœ> ?
	Resources
œœ? H
.
œœH I%
dialogEndPointException
œœI `
)
œœ` a
;
œœa b
ReturnToLoginView
–– !
(
––! "
)
––" #
;
––# $
}
—— 
catch
““ 
(
““ 
TimeoutException
““ #
timeOutException
““$ 4
)
““4 5
{
”” 
logger
‘‘ 
.
‘‘ 
LogError
‘‘ 
(
‘‘  
timeOutException
‘‘  0
)
‘‘0 1
;
‘‘1 2
DialogManager
’’ 
.
’’ #
ShowErrorMessageAlert
’’ 3
(
’’3 4

Properties
’’4 >
.
’’> ?
	Resources
’’? H
.
’’H I)
dialogComunicationException
’’I d
)
’’d e
;
’’e f
}
÷÷ 
catch
◊◊ 
(
◊◊ $
CommunicationException
◊◊ )$
communicationException
◊◊* @
)
◊◊@ A
{
ÿÿ 
logger
ŸŸ 
.
ŸŸ 
LogError
ŸŸ 
(
ŸŸ  $
communicationException
ŸŸ  6
)
ŸŸ6 7
;
ŸŸ7 8
DialogManager
⁄⁄ 
.
⁄⁄ #
ShowErrorMessageAlert
⁄⁄ 3
(
⁄⁄3 4

Properties
⁄⁄4 >
.
⁄⁄> ?
	Resources
⁄⁄? H
.
⁄⁄H I$
dialogTimeOutException
⁄⁄I _
)
⁄⁄_ `
;
⁄⁄` a
ReturnToLoginView
€€ !
(
€€! "
)
€€" #
;
€€# $
}
‹‹ 
}
›› 	
private
ﬂﬂ 
void
ﬂﬂ #
RemovePieceFromPlayer
ﬂﬂ *
(
ﬂﬂ* +
	GamePiece
ﬂﬂ+ 4
piece
ﬂﬂ5 :
)
ﬂﬂ: ;
{
‡‡ 	
if
·· 
(
·· 
player1Pieces
·· 
.
·· 
Contains
·· &
(
··& '
piece
··' ,
)
··, -
)
··- .
{
‚‚ 
foreach
„„ 
(
„„ 
var
„„ 
child
„„ "
in
„„# %!
stckp_Player1Pieces
„„& 9
.
„„9 :
Children
„„: B
.
„„B C
OfType
„„C I
<
„„I J
Image
„„J O
>
„„O P
(
„„P Q
)
„„Q R
)
„„R S
{
‰‰ 
if
ÂÂ 
(
ÂÂ 
child
ÂÂ 
.
ÂÂ 
Tag
ÂÂ !
==
ÂÂ" $
piece
ÂÂ% *
)
ÂÂ* +
{
ÊÊ !
stckp_Player1Pieces
ÁÁ +
.
ÁÁ+ ,
Children
ÁÁ, 4
.
ÁÁ4 5
Remove
ÁÁ5 ;
(
ÁÁ; <
child
ÁÁ< A
)
ÁÁA B
;
ÁÁB C
break
ËË 
;
ËË 
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 
else
ÏÏ 
if
ÏÏ 
(
ÏÏ 
player2Pieces
ÏÏ "
.
ÏÏ" #
Contains
ÏÏ# +
(
ÏÏ+ ,
piece
ÏÏ, 1
)
ÏÏ1 2
)
ÏÏ2 3
{
ÌÌ 
foreach
ÓÓ 
(
ÓÓ 
var
ÓÓ 
child
ÓÓ "
in
ÓÓ# %!
stckp_Player2Pieces
ÓÓ& 9
.
ÓÓ9 :
Children
ÓÓ: B
.
ÓÓB C
OfType
ÓÓC I
<
ÓÓI J
Image
ÓÓJ O
>
ÓÓO P
(
ÓÓP Q
)
ÓÓQ R
)
ÓÓR S
{
ÔÔ 
if
 
(
 
child
 
.
 
Tag
 !
==
" $
piece
% *
)
* +
{
ÒÒ !
stckp_Player2Pieces
ÚÚ +
.
ÚÚ+ ,
Children
ÚÚ, 4
.
ÚÚ4 5
Remove
ÚÚ5 ;
(
ÚÚ; <
child
ÚÚ< A
)
ÚÚA B
;
ÚÚB C
break
ÛÛ 
;
ÛÛ 
}
ÙÙ 
}
ıı 
}
ˆˆ 
}
˜˜ 	
private
¯¯ 
void
¯¯ 
ResetHighlights
¯¯ $
(
¯¯$ %
)
¯¯% &
{
˘˘ 	
foreach
˙˙ 
(
˙˙ 
	UIElement
˙˙ 
element
˙˙ &
in
˙˙' )
GameBoardGrid
˙˙* 7
.
˙˙7 8
Children
˙˙8 @
)
˙˙@ A
{
˚˚ 
if
¸¸ 
(
¸¸ 
element
¸¸ 
is
¸¸ 
Polygon
¸¸ &
cell
¸¸' +
)
¸¸+ ,
{
˝˝ 
cell
˛˛ 
.
˛˛ 
Fill
˛˛ 
=
˛˛ 
Brushes
˛˛  '
.
˛˛' (
Transparent
˛˛( 3
;
˛˛3 4
cell
ˇˇ 
.
ˇˇ 
	MouseDown
ˇˇ "
-=
ˇˇ# %
Cell_MouseDown
ˇˇ& 4
;
ˇˇ4 5
cell
ÄÄ 
.
ÄÄ 
	MouseDown
ÄÄ "
-=
ÄÄ# %.
 PlacePieceThatIsInGame_MouseDown
ÄÄ& F
;
ÄÄF G
}
ÅÅ 
}
ÇÇ 
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
cell
ÉÉ 
in
ÉÉ  
cellDictionary
ÉÉ! /
)
ÉÉ/ 0
{
ÑÑ 
cell
ÖÖ 
.
ÖÖ 
Value
ÖÖ 
.
ÖÖ 
	IsEnabled
ÖÖ $
=
ÖÖ% &
false
ÖÖ' ,
;
ÖÖ, -
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ 
Image_MouseDown
ââ $
(
ââ$ %
object
ââ% +
sender
ââ, 2
,
ââ2 3"
MouseButtonEventArgs
ââ4 H
e
ââI J
)
ââJ K
{
ää 	
LoggerManager
ãã 
logger
ãã  
=
ãã! "
new
ãã# &
LoggerManager
ãã' 4
(
ãã4 5
this
ãã5 9
.
ãã9 :
GetType
ãã: A
(
ããA B
)
ããB C
)
ããC D
;
ããD E
if
åå 
(
åå 
DialogManager
åå 
.
åå *
ShowConfirmationMessageAlert
åå :
(
åå: ;

Properties
åå; E
.
ååE F
	Resources
ååF O
.
ååO P1
#dialogManagerConfirmationLeaveMatch
ååP s
)
åås t
)
ååt u
{
çç 
if
éé 
(
éé "
UserProfileSingleton
éé '
.
éé' (
	idAccount
éé( 1
==
éé2 4
	Constants
éé5 >
.
éé> ?
DEFAULT_GUEST_ID
éé? O
)
ééO P
{
èè #
DisconnectGuestPlayer
êê )
(
êê) *
)
êê* +
;
êê+ ,
}
ëë 
else
íí 
{
ìì $
DisconnectNormalPlayer
îî *
(
îî* +
)
îî+ ,
;
îî, -
}
ïï 
}
ññ 
}
óó 	
private
òò 
void
òò #
DisconnectGuestPlayer
òò *
(
òò* +
)
òò+ ,
{
ôô 	
LoggerManager
öö 
logger
öö  
=
öö! "
new
öö# &
LoggerManager
öö' 4
(
öö4 5
this
öö5 9
.
öö9 :
GetType
öö: A
(
ööA B
)
ööB C
)
ööC D
;
ööD E
try
õõ 
{
úú 
	HiveProxy
ùù 
.
ùù &
UserSessionManagerClient
ùù 2&
userSessionManagerClient
ùù3 K
=
ùùL M
new
ùùN Q&
UserSessionManagerClient
ùùR j
(
ùùj k
)
ùùk l
;
ùùl m
UserSession
ûû 
session
ûû #
=
ûû$ %
new
ûû& )
UserSession
ûû* 5
(
ûû5 6
)
ûû6 7
{
üü 
	idAccount
†† 
=
†† "
UserProfileSingleton
††  4
.
††4 5
	idAccount
††5 >
,
††> ?
username
°° 
=
°° "
UserProfileSingleton
°° 3
.
°°3 4
username
°°4 <
,
°°< =
	codeMatch
¢¢ 
=
¢¢ 
MatchSingleton
¢¢  .
.
¢¢. /
	codeMatch
¢¢/ 8
,
¢¢8 9
}
££ 
;
££ 
gameManagerClient
§§ !
.
§§! "
LeaveTheGame
§§" .
(
§§. /
session
§§/ 6
,
§§6 7
session
§§8 ?
.
§§? @
	codeMatch
§§@ I
)
§§I J
;
§§J K&
userSessionManagerClient
•• (
.
••( )

Disconnect
••) 3
(
••3 4
session
••4 ;
,
••; <
false
••= B
)
••B C
;
••C D
ReturnToLoginView
¶¶ !
(
¶¶! "
)
¶¶" #
;
¶¶# $
}
®® 
catch
©© 
(
©© '
EndpointNotFoundException
©© ,
endPointException
©©- >
)
©©> ?
{
™™ 
logger
´´ 
.
´´ 
LogError
´´ 
(
´´  
endPointException
´´  1
)
´´1 2
;
´´2 3
DialogManager
¨¨ 
.
¨¨ #
ShowErrorMessageAlert
¨¨ 3
(
¨¨3 4

Properties
¨¨4 >
.
¨¨> ?
	Resources
¨¨? H
.
¨¨H I%
dialogEndPointException
¨¨I `
)
¨¨` a
;
¨¨a b
ReturnToLoginView
≠≠ !
(
≠≠! "
)
≠≠" #
;
≠≠# $
}
ÆÆ 
catch
ØØ 
(
ØØ 
TimeoutException
ØØ #
timeOutException
ØØ$ 4
)
ØØ4 5
{
∞∞ 
logger
±± 
.
±± 
LogError
±± 
(
±±  
timeOutException
±±  0
)
±±0 1
;
±±1 2
DialogManager
≤≤ 
.
≤≤ #
ShowErrorMessageAlert
≤≤ 3
(
≤≤3 4

Properties
≤≤4 >
.
≤≤> ?
	Resources
≤≤? H
.
≤≤H I)
dialogComunicationException
≤≤I d
)
≤≤d e
;
≤≤e f
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ )$
communicationException
¥¥* @
)
¥¥@ A
{
µµ 
logger
∂∂ 
.
∂∂ 
LogError
∂∂ 
(
∂∂  $
communicationException
∂∂  6
)
∂∂6 7
;
∂∂7 8
DialogManager
∑∑ 
.
∑∑ #
ShowErrorMessageAlert
∑∑ 3
(
∑∑3 4

Properties
∑∑4 >
.
∑∑> ?
	Resources
∑∑? H
.
∑∑H I$
dialogTimeOutException
∑∑I _
)
∑∑_ `
;
∑∑` a
ReturnToLoginView
∏∏ !
(
∏∏! "
)
∏∏" #
;
∏∏# $
}
ππ 
}
∫∫ 	
private
ªª 
void
ªª $
DisconnectNormalPlayer
ªª +
(
ªª+ ,
)
ªª, -
{
ºº 	
LoggerManager
ΩΩ 
logger
ΩΩ  
=
ΩΩ! "
new
ΩΩ# &
LoggerManager
ΩΩ' 4
(
ΩΩ4 5
this
ΩΩ5 9
.
ΩΩ9 :
GetType
ΩΩ: A
(
ΩΩA B
)
ΩΩB C
)
ΩΩC D
;
ΩΩD E
try
ææ 
{
øø 
	HiveProxy
¿¿ 
.
¿¿ 
UserManagerClient
¿¿ +
userManagerClient
¿¿, =
=
¿¿> ?
new
¿¿@ C
UserManagerClient
¿¿D U
(
¿¿U V
)
¿¿V W
;
¿¿W X
	HiveProxy
¡¡ 
.
¡¡ &
LeaderBoardManagerClient
¡¡ 2&
leaderBoardManagerClient
¡¡3 K
=
¡¡L M
new
¡¡N Q&
LeaderBoardManagerClient
¡¡R j
(
¡¡j k
)
¡¡k l
;
¡¡l m
int
¬¬  
resultModification
¬¬ &
=
¬¬' (
userManagerClient
¬¬) :
.
¬¬: ;'
UpdateMinusUserReputation
¬¬; T
(
¬¬T U"
UserProfileSingleton
¬¬U i
.
¬¬i j
username
¬¬j r
,
¬¬r s
$num
¬¬t w
)
¬¬w x
;
¬¬x y
if
√√ 
(
√√  
resultModification
√√ &
==
√√' )
	Constants
√√* 3
.
√√3 4
SUCCES_OPERATION
√√4 D
)
√√D E
{
ƒƒ &
leaderBoardManagerClient
≈≈ ,
.
≈≈, -2
$UpdateLoserResultToPlayerLeaderBoard
≈≈- Q
(
≈≈Q R"
UserProfileSingleton
≈≈R f
.
≈≈f g
	idAccount
≈≈g p
)
≈≈p q
;
≈≈q r
UserSession
∆∆ 
session
∆∆  '
=
∆∆( )
new
∆∆* -
UserSession
∆∆. 9
(
∆∆9 :
)
∆∆: ;
{
«« 
	idAccount
»» !
=
»»" #"
UserProfileSingleton
»»$ 8
.
»»8 9
	idAccount
»»9 B
,
»»B C
username
……  
=
……! ""
UserProfileSingleton
……# 7
.
……7 8
username
……8 @
,
……@ A
	codeMatch
   !
=
  " #
MatchSingleton
  $ 2
.
  2 3
	codeMatch
  3 <
,
  < =
}
ÀÀ 
;
ÀÀ 
gameManagerClient
ÃÃ %
.
ÃÃ% &
LeaveTheGame
ÃÃ& 2
(
ÃÃ2 3
session
ÃÃ3 :
,
ÃÃ: ;
session
ÃÃ< C
.
ÃÃC D
	codeMatch
ÃÃD M
)
ÃÃM N
;
ÃÃN O
GoToMainView
ÕÕ  
(
ÕÕ  !
)
ÕÕ! "
;
ÕÕ" #
}
ŒŒ 
else
œœ 
if
œœ 
(
œœ  
resultModification
œœ +
==
œœ, .
	Constants
œœ/ 8
.
œœ8 9
ERROR_OPERATION
œœ9 H
)
œœH I
{
–– 
DialogManager
—— !
.
——! "#
ShowErrorMessageAlert
——" 7
(
——7 8

Properties
——8 B
.
——B C
	Resources
——C L
.
——L M!
dialogDataBaseError
——M `
)
——` a
;
——a b
}
““ 
}
”” 
catch
‘‘ 
(
‘‘ '
EndpointNotFoundException
‘‘ ,
endPointException
‘‘- >
)
‘‘> ?
{
’’ 
logger
÷÷ 
.
÷÷ 
LogError
÷÷ 
(
÷÷  
endPointException
÷÷  1
)
÷÷1 2
;
÷÷2 3
DialogManager
◊◊ 
.
◊◊ #
ShowErrorMessageAlert
◊◊ 3
(
◊◊3 4

Properties
◊◊4 >
.
◊◊> ?
	Resources
◊◊? H
.
◊◊H I%
dialogEndPointException
◊◊I `
)
◊◊` a
;
◊◊a b
ReturnToLoginView
ÿÿ !
(
ÿÿ! "
)
ÿÿ" #
;
ÿÿ# $
}
ŸŸ 
catch
⁄⁄ 
(
⁄⁄ 
TimeoutException
⁄⁄ #
timeOutException
⁄⁄$ 4
)
⁄⁄4 5
{
€€ 
logger
‹‹ 
.
‹‹ 
LogError
‹‹ 
(
‹‹  
timeOutException
‹‹  0
)
‹‹0 1
;
‹‹1 2
DialogManager
›› 
.
›› #
ShowErrorMessageAlert
›› 3
(
››3 4

Properties
››4 >
.
››> ?
	Resources
››? H
.
››H I)
dialogComunicationException
››I d
)
››d e
;
››e f
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ $
CommunicationException
ﬂﬂ )$
communicationException
ﬂﬂ* @
)
ﬂﬂ@ A
{
‡‡ 
logger
·· 
.
·· 
LogError
·· 
(
··  $
communicationException
··  6
)
··6 7
;
··7 8
DialogManager
‚‚ 
.
‚‚ #
ShowErrorMessageAlert
‚‚ 3
(
‚‚3 4

Properties
‚‚4 >
.
‚‚> ?
	Resources
‚‚? H
.
‚‚H I$
dialogTimeOutException
‚‚I _
)
‚‚_ `
;
‚‚` a
ReturnToLoginView
„„ !
(
„„! "
)
„„" #
;
„„# $
}
‰‰ 
}
ÂÂ 	
private
ÊÊ 
void
ÊÊ 
GoToMainView
ÊÊ !
(
ÊÊ! "
)
ÊÊ" #
{
ÁÁ 	
MatchSingleton
ËË 
.
ËË 
Instance
ËË #
.
ËË# $
ResetSingleton
ËË$ 2
(
ËË2 3
)
ËË3 4
;
ËË4 5
MainMenu
ÈÈ 
mainMenu
ÈÈ 
=
ÈÈ 
new
ÈÈ  #
MainMenu
ÈÈ$ ,
(
ÈÈ, -
)
ÈÈ- .
;
ÈÈ. /
this
ÍÍ 
.
ÍÍ 
NavigationService
ÍÍ "
.
ÍÍ" #
Navigate
ÍÍ# +
(
ÍÍ+ ,
mainMenu
ÍÍ, 4
)
ÍÍ4 5
;
ÍÍ5 6
}
ÎÎ 	
public
ÌÌ 
void
ÌÌ #
ChargePlayerGameBoard
ÌÌ )
(
ÌÌ) *

PlayerSide
ÌÌ* 4
side
ÌÌ5 9
)
ÌÌ9 :
{
ÓÓ 	
if
ÔÔ 
(
ÔÔ 
side
ÔÔ 
.
ÔÔ 
	playerOne
ÔÔ 
)
ÔÔ 
{
 
	DockPanel
ÒÒ 
.
ÒÒ 
SetDock
ÒÒ !
(
ÒÒ! "
stckp_Player1
ÒÒ" /
,
ÒÒ/ 0
Dock
ÒÒ0 4
.
ÒÒ4 5
Bottom
ÒÒ5 ;
)
ÒÒ; <
;
ÒÒ< =
	DockPanel
ÚÚ 
.
ÚÚ 
SetDock
ÚÚ !
(
ÚÚ! "
stckp_Player2
ÚÚ" /
,
ÚÚ/ 0
Dock
ÚÚ1 5
.
ÚÚ5 6
Top
ÚÚ6 9
)
ÚÚ9 :
;
ÚÚ: ;
img_ProfilePic1
ÛÛ 
.
ÛÛ  
Source
ÛÛ  &
=
ÛÛ' (
new
ÛÛ) ,
BitmapImage
ÛÛ- 8
(
ÛÛ8 9
new
ÛÛ9 <
Uri
ÛÛ= @
(
ÛÛ@ A"
UserProfileSingleton
ÛÛA U
.
ÛÛU V

imageRoute
ÛÛV `
,
ÛÛ` a
UriKind
ÛÛb i
.
ÛÛi j
Relative
ÛÛj r
)
ÛÛr s
)
ÛÛs t
;
ÛÛt u
txtbl_PlayerName1
ÙÙ !
.
ÙÙ! "
Text
ÙÙ" &
=
ÙÙ' ("
UserProfileSingleton
ÙÙ) =
.
ÙÙ= >
username
ÙÙ> F
;
ÙÙF G
stckp_Player2
ıı 
.
ıı 
	IsEnabled
ıı '
=
ıı( )
false
ıı* /
;
ıı/ 0
numberOfPlayer
ˆˆ 
=
ˆˆ  
$num
ˆˆ! "
;
ˆˆ" #
}
˜˜ 
else
¯¯ 
if
¯¯ 
(
¯¯ 
side
¯¯ 
.
¯¯ 
	playerTwo
¯¯ #
)
¯¯# $
{
˘˘ 
	DockPanel
˙˙ 
.
˙˙ 
SetDock
˙˙ !
(
˙˙! "
stckp_Player2
˙˙" /
,
˙˙/ 0
Dock
˙˙0 4
.
˙˙4 5
Bottom
˙˙5 ;
)
˙˙; <
;
˙˙< =
	DockPanel
˚˚ 
.
˚˚ 
SetDock
˚˚ !
(
˚˚! "
stckp_Player1
˚˚" /
,
˚˚/ 0
Dock
˚˚0 4
.
˚˚4 5
Top
˚˚5 8
)
˚˚8 9
;
˚˚9 :
stckp_Player1
¸¸ 
.
¸¸ 
	IsEnabled
¸¸ '
=
¸¸( )
false
¸¸* /
;
¸¸/ 0
img_ProfilePic2
˝˝ 
.
˝˝  
Source
˝˝  &
=
˝˝' (
new
˝˝) ,
BitmapImage
˝˝- 8
(
˝˝8 9
new
˝˝9 <
Uri
˝˝= @
(
˝˝@ A"
UserProfileSingleton
˝˝A U
.
˝˝U V

imageRoute
˝˝V `
,
˝˝` a
UriKind
˝˝b i
.
˝˝i j
Relative
˝˝j r
)
˝˝r s
)
˝˝s t
;
˝˝t u
txtbl_PlayerName2
˛˛ !
.
˛˛! "
Text
˛˛" &
=
˛˛' ("
UserProfileSingleton
˛˛) =
.
˛˛= >
username
˛˛> F
;
˛˛F G
numberOfPlayer
ˇˇ 
=
ˇˇ  
$num
ˇˇ! "
;
ˇˇ" #
}
ÄÄ 
	DockPanel
ÅÅ 
	dockPanel
ÅÅ 
=
ÅÅ  !
(
ÅÅ" #
	DockPanel
ÅÅ# ,
)
ÅÅ, -
this
ÅÅ- 1
.
ÅÅ1 2
Content
ÅÅ2 9
;
ÅÅ9 :
	dockPanel
ÇÇ 
.
ÇÇ 
UpdateLayout
ÇÇ "
(
ÇÇ" #
)
ÇÇ# $
;
ÇÇ$ %
}
ÉÉ 	
public
ÖÖ 
void
ÖÖ 
ReceivePieceMoved
ÖÖ %
(
ÖÖ% &
	HiveProxy
ÖÖ& /
.
ÖÖ/ 0
GamePice
ÖÖ0 8
piece
ÖÖ9 >
)
ÖÖ> ?
{
ÜÜ 	
Logic
áá 
.
áá 
Piece
áá 
pieceReceived
áá %
=
áá& '%
CreateConcretePieceType
áá( ?
(
áá? @
piece
áá@ E
)
ááE F
;
ááF G
Logic
àà 
.
àà 
	GamePiece
àà 
gamePieceReceived
àà -
=
àà. /
new
àà0 3
Logic
àà4 9
.
àà9 :
	GamePiece
àà: C
(
ààC D
)
ààD E
{
ââ 
Piece
ää 
=
ää 
pieceReceived
ää %
,
ää% &

playerName
ãã 
=
ãã 
piece
ãã "
.
ãã" #

playerName
ãã# -
,
ãã- .
Position
åå 
=
åå 
piece
åå  
.
åå  !
position
åå! )
,
åå) *
	ImagePath
çç 
=
çç 
piece
çç !
.
çç! "
	imagePath
çç" +
,
çç+ ,
pieceNumber
éé 
=
éé 
piece
éé #
.
éé# $
numberOfPiece
éé$ 1
,
éé1 2
}
èè 
;
èè 
gamePieceReceived
êê 
.
êê 
Piece
êê #
.
êê# $
Position
êê$ ,
=
êê- .
piece
êê/ 4
.
êê4 5
piece
êê5 :
.
êê: ;
position
êê; C
;
êêC D
if
ëë 
(
ëë 
piece
ëë 
!=
ëë 
null
ëë 
&&
ëë  
gamePieceReceived
ëë! 2
.
ëë2 3
Position
ëë3 ;
!=
ëë< >
null
ëë? C
)
ëëC D
{
íí 
	GamePiece
ìì 

pieceToAdd
ìì $
=
ìì% &
gamePieceReceived
ìì' 8
;
ìì8 9
Point
îî 
pointOfPieceToAdd
îî '
=
îî( )
gamePieceReceived
îî* ;
.
îî; <
Position
îî< D
;
îîD E
Point
ïï $
previousPositionPlaced
ïï ,
=
ïï- .
gamePieceReceived
ïï/ @
.
ïï@ A
Piece
ïïA F
.
ïïF G
Position
ïïG O
;
ïïO P4
&RemovePieceReceiveFromPlayerStackPanel
ññ 6
(
ññ6 7
gamePieceReceived
ññ7 H
)
ññH I
;
ññI J

pieceToAdd
óó 
.
óó 
Position
óó #
=
óó$ %
pointOfPieceToAdd
óó& 7
;
óó7 8

pieceToAdd
òò 
.
òò 
Piece
òò  
.
òò  !
Position
òò! )
=
òò* +$
previousPositionPlaced
òò, B
;
òòB C(
UpdatePiecePositionOnBoard
ôô *
(
ôô* +

pieceToAdd
ôô+ 5
)
ôô5 6
;
ôô6 7
}
öö 
}
õõ 	
private
ùù 
Logic
ùù 
.
ùù 
Piece
ùù %
CreateConcretePieceType
ùù 3
(
ùù3 4
	HiveProxy
ùù4 =
.
ùù= >
GamePice
ùù> F
piece
ùùG L
)
ùùL M
{
ûû 	
Logic
üü 
.
üü 
Piece
üü 
pieceObtained
üü %
=
üü& '
null
üü( ,
;
üü, -
string
†† 
typeOfPiece
†† 
=
††  
piece
††! &
.
††& '
piece
††' ,
.
††, -
name
††- 1
;
††1 2
switch
°° 
(
°° 
typeOfPiece
°° 
)
°°  
{
¢¢ 
case
££ 
$str
££ 
:
££ 
pieceObtained
§§ !
=
§§" #
new
§§$ '
Queen
§§( -
(
§§- .
)
§§. /
;
§§/ 0
break
•• 
;
•• 
case
¶¶ 
$str
¶¶ 
:
¶¶ 
pieceObtained
ßß !
=
ßß" #
new
ßß$ '
Spider
ßß( .
(
ßß. /
)
ßß/ 0
;
ßß0 1
break
®® 
;
®® 
case
©© 
$str
©© 
:
©© 
pieceObtained
™™ !
=
™™" #
new
™™$ '
Beetle
™™( .
(
™™. /
)
™™/ 0
;
™™0 1
break
´´ 
;
´´ 
case
¨¨ 
$str
¨¨ 
:
¨¨ 
pieceObtained
≠≠ !
=
≠≠" #
new
≠≠$ '
Ant
≠≠( +
(
≠≠+ ,
)
≠≠, -
;
≠≠- .
break
ÆÆ 
;
ÆÆ 
case
ØØ 
$str
ØØ "
:
ØØ" #
pieceObtained
∞∞ !
=
∞∞" #
new
∞∞$ '
Grasshopper
∞∞( 3
(
∞∞3 4
)
∞∞4 5
;
∞∞5 6
break
±± 
;
±± 
}
≤≤ 
pieceObtained
≥≥ 
.
≥≥ 

playerName
≥≥ $
=
≥≥% &
piece
≥≥' ,
.
≥≥, -

playerName
≥≥- 7
;
≥≥7 8
return
¥¥ 
pieceObtained
¥¥  
;
¥¥  !
}
µµ 	
private
∑∑ 
void
∑∑ 4
&RemovePieceReceiveFromPlayerStackPanel
∑∑ ;
(
∑∑; <
	GamePiece
∑∑< E
piece
∑∑F K
)
∑∑K L
{
∏∏ 	
	GamePiece
ππ 
pieceAuxiliar
ππ #
=
ππ$ %
piece
ππ& +
;
ππ+ ,
pieceAuxiliar
∫∫ 
.
∫∫ 
Position
∫∫ "
=
∫∫# $
new
∫∫% (
Point
∫∫) .
(
∫∫. /
-
∫∫/ 0
$num
∫∫0 1
,
∫∫1 2
-
∫∫3 4
$num
∫∫4 5
)
∫∫5 6
;
∫∫6 7
if
ªª 
(
ªª 
player1Pieces
ªª 
.
ªª 
Contains
ªª &
(
ªª& '
pieceAuxiliar
ªª' 4
)
ªª4 5
)
ªª5 6
{
ºº 
foreach
ΩΩ 
(
ΩΩ 
var
ΩΩ 
child
ΩΩ "
in
ΩΩ# %!
stckp_Player1Pieces
ΩΩ& 9
.
ΩΩ9 :
Children
ΩΩ: B
.
ΩΩB C
OfType
ΩΩC I
<
ΩΩI J
Image
ΩΩJ O
>
ΩΩO P
(
ΩΩP Q
)
ΩΩQ R
)
ΩΩR S
{
ææ 
if
øø 
(
øø 
child
øø 
.
øø 
Tag
øø !
is
øø" $
	GamePiece
øø% .
tagPiece
øø/ 7
&&
øø8 :
tagPiece
øø; C
.
øøC D
Equals
øøD J
(
øøJ K
pieceAuxiliar
øøK X
)
øøX Y
)
øøY Z
{
¿¿ !
stckp_Player1Pieces
¡¡ +
.
¡¡+ ,
Children
¡¡, 4
.
¡¡4 5
Remove
¡¡5 ;
(
¡¡; <
child
¡¡< A
)
¡¡A B
;
¡¡B C
break
¬¬ 
;
¬¬ 
}
√√ 
}
ƒƒ 
}
≈≈ 
else
∆∆ 
if
∆∆ 
(
∆∆ 
player2Pieces
∆∆ "
.
∆∆" #
Contains
∆∆# +
(
∆∆+ ,
pieceAuxiliar
∆∆, 9
)
∆∆9 :
)
∆∆: ;
{
«« 
foreach
»» 
(
»» 
var
»» 
child
»» "
in
»»# %!
stckp_Player2Pieces
»»& 9
.
»»9 :
Children
»»: B
.
»»B C
OfType
»»C I
<
»»I J
Image
»»J O
>
»»O P
(
»»P Q
)
»»Q R
)
»»R S
{
…… 
if
   
(
   
child
   
.
   
Tag
   !
is
  " $
	GamePiece
  % .
tagPiece
  / 7
&&
  8 :
tagPiece
  ; C
.
  C D
Equals
  D J
(
  J K
pieceAuxiliar
  K X
)
  X Y
)
  Y Z
{
ÀÀ !
stckp_Player2Pieces
ÃÃ +
.
ÃÃ+ ,
Children
ÃÃ, 4
.
ÃÃ4 5
Remove
ÃÃ5 ;
(
ÃÃ; <
child
ÃÃ< A
)
ÃÃA B
;
ÃÃB C
break
ÕÕ 
;
ÕÕ 
}
ŒŒ 
}
œœ 
}
–– 
}
—— 	
private
”” 
void
”” (
UpdatePiecePositionOnBoard
”” /
(
””/ 0
	GamePiece
””0 9
piece
””: ?
)
””? @
{
‘‘ 	
cellDictionary
’’ 
.
’’ 
TryGetValue
’’ &
(
’’& '
piece
’’' ,
.
’’, -
Position
’’- 5
,
’’5 6
out
’’7 :
var
’’; >
cell
’’? C
)
’’C D
;
’’D E.
 PlacePieceReceivedOnCellToUpdate
÷÷ ,
(
÷÷, -
cell
÷÷- 1
,
÷÷1 2
piece
÷÷3 8
)
÷÷8 9
;
÷÷9 :
}
◊◊ 	
private
ŸŸ 
void
ŸŸ .
 PlacePieceReceivedOnCellToUpdate
ŸŸ 5
(
ŸŸ5 6
Polygon
ŸŸ6 =
cell
ŸŸ> B
,
ŸŸB C
	GamePiece
ŸŸD M
piece
ŸŸN S
)
ŸŸS T
{
⁄⁄ 	
if
€€ 
(
€€ 
cell
€€ 
!=
€€ 
null
€€ 
&&
€€ 
piece
€€ $
!=
€€% '
null
€€( ,
)
€€, -
{
‹‹ 
Point
›› 
oldPosition
›› !
=
››" #
piece
››$ )
.
››) *
Piece
››* /
.
››/ 0
Position
››0 8
;
››8 9
var
ﬁﬁ 

pieceImage
ﬁﬁ 
=
ﬁﬁ  
new
ﬁﬁ! $
Image
ﬁﬁ% *
{
ﬂﬂ 
Source
‡‡ 
=
‡‡ 
new
‡‡  
BitmapImage
‡‡! ,
(
‡‡, -
new
‡‡- 0
Uri
‡‡1 4
(
‡‡4 5
piece
‡‡5 :
.
‡‡: ;
	ImagePath
‡‡; D
,
‡‡D E
UriKind
‡‡F M
.
‡‡M N
Relative
‡‡N V
)
‡‡V W
)
‡‡W X
,
‡‡X Y
Width
·· 
=
·· 
$num
·· 
,
·· 
Height
‚‚ 
=
‚‚ 
$num
‚‚ 
,
‚‚  
Tag
„„ 
=
„„ 
piece
„„ 
,
„„  
}
‰‰ 
;
‰‰ 
double
ÂÂ 
hexX
ÂÂ 
=
ÂÂ 
Canvas
ÂÂ $
.
ÂÂ$ %
GetLeft
ÂÂ% ,
(
ÂÂ, -
cell
ÂÂ- 1
)
ÂÂ1 2
;
ÂÂ2 3
double
ÊÊ 
hexY
ÊÊ 
=
ÊÊ 
Canvas
ÊÊ $
.
ÊÊ$ %
GetTop
ÊÊ% +
(
ÊÊ+ ,
cell
ÊÊ, 0
)
ÊÊ0 1
;
ÊÊ1 2
double
ÁÁ 
pieceX
ÁÁ 
=
ÁÁ 
hexX
ÁÁ  $
+
ÁÁ% &
(
ÁÁ' (
cell
ÁÁ( ,
.
ÁÁ, -
ActualWidth
ÁÁ- 8
-
ÁÁ9 :

pieceImage
ÁÁ; E
.
ÁÁE F
Width
ÁÁF K
)
ÁÁK L
/
ÁÁM N
$num
ÁÁO P
;
ÁÁP Q
double
ËË 
pieceY
ËË 
=
ËË 
hexY
ËË  $
+
ËË% &
(
ËË' (
cell
ËË( ,
.
ËË, -
ActualHeight
ËË- 9
-
ËË: ;

pieceImage
ËË< F
.
ËËF G
Height
ËËG M
)
ËËM N
/
ËËO P
$num
ËËQ R
;
ËËR S
Canvas
ÈÈ 
.
ÈÈ 
SetLeft
ÈÈ 
(
ÈÈ 

pieceImage
ÈÈ )
,
ÈÈ) *
pieceX
ÈÈ+ 1
)
ÈÈ1 2
;
ÈÈ2 3
Canvas
ÍÍ 
.
ÍÍ 
SetTop
ÍÍ 
(
ÍÍ 

pieceImage
ÍÍ (
,
ÍÍ( )
pieceY
ÍÍ* 0
)
ÍÍ0 1
;
ÍÍ1 2
if
ÎÎ 
(
ÎÎ 
board
ÎÎ 
.
ÎÎ 
ContainsKey
ÎÎ %
(
ÎÎ% &
piece
ÎÎ& +
.
ÎÎ+ ,
Piece
ÎÎ, 1
.
ÎÎ1 2
Position
ÎÎ2 :
)
ÎÎ: ;
)
ÎÎ; <
{
ÏÏ !
UpdateReceivedPiece
ÌÌ '
(
ÌÌ' (

pieceImage
ÌÌ( 2
,
ÌÌ2 3
oldPosition
ÌÌ4 ?
)
ÌÌ? @
;
ÌÌ@ A
}
ÓÓ 
else
ÔÔ 
{
 
GameBoardGrid
ÒÒ !
.
ÒÒ! "
Children
ÒÒ" *
.
ÒÒ* +
Add
ÒÒ+ .
(
ÒÒ. /

pieceImage
ÒÒ/ 9
)
ÒÒ9 :
;
ÒÒ: ;
board
ÚÚ 
[
ÚÚ 
piece
ÚÚ 
.
ÚÚ  
Position
ÚÚ  (
]
ÚÚ( )
=
ÚÚ* +
piece
ÚÚ, 1
;
ÚÚ1 2
lastPlacedCell
ÛÛ "
=
ÛÛ# $
cell
ÛÛ% )
;
ÛÛ) *
}
ÙÙ 
ResetHighlights
ıı 
(
ıı  
)
ıı  !
;
ıı! "
}
ˆˆ 
}
˜˜ 	
private
˘˘ 
void
˘˘ !
UpdateReceivedPiece
˘˘ (
(
˘˘( )
Image
˘˘) .

pieceImage
˘˘/ 9
,
˘˘9 :
Point
˘˘; @
oldPosition
˘˘A L
)
˘˘L M
{
˙˙ 	
if
˚˚ 
(
˚˚ 
board
˚˚ 
.
˚˚ 
ContainsKey
˚˚ !
(
˚˚! "
oldPosition
˚˚" -
)
˚˚- .
)
˚˚. /
{
¸¸ 
board
˝˝ 
.
˝˝ 
Remove
˝˝ 
(
˝˝ 
oldPosition
˝˝ (
)
˝˝( )
;
˝˝) *
}
˛˛ 
Image
ˇˇ 
imageToRemove
ˇˇ 
=
ˇˇ  !
GameBoardGrid
ˇˇ" /
.
ˇˇ/ 0
Children
ˇˇ0 8
.
ˇˇ8 9
OfType
ˇˇ9 ?
<
ˇˇ? @
Image
ˇˇ@ E
>
ˇˇE F
(
ˇˇF G
)
ˇˇG H
.
ˇˇH I
Where
Ä	Ä	 
(
Ä	Ä	 
img
Ä	Ä	 
=>
Ä	Ä	 
img
Ä	Ä	  
.
Ä	Ä	  !
Tag
Ä	Ä	! $
is
Ä	Ä	% '
	GamePiece
Ä	Ä	( 1
	gamePiece
Ä	Ä	2 ;
&&
Ä	Ä	< >
	gamePiece
Ä	Ä	? H
.
Ä	Ä	H I
Piece
Ä	Ä	I N
.
Ä	Ä	N O
Position
Ä	Ä	O W
==
Ä	Ä	X Z
oldPosition
Ä	Ä	[ f
)
Ä	Ä	f g
.
Ä	Ä	g h
FirstOrDefault
Ä	Ä	h v
(
Ä	Ä	v w
)
Ä	Ä	w x
;
Ä	Ä	x y
GameBoardGrid
Å	Å	 
.
Å	Å	 
Children
Å	Å	 "
.
Å	Å	" #
Remove
Å	Å	# )
(
Å	Å	) *
imageToRemove
Å	Å	* 7
)
Å	Å	7 8
;
Å	Å	8 9
GameBoardGrid
Ç	Ç	 
.
Ç	Ç	 
Children
Ç	Ç	 "
.
Ç	Ç	" #
Add
Ç	Ç	# &
(
Ç	Ç	& '

pieceImage
Ç	Ç	' 1
)
Ç	Ç	1 2
;
Ç	Ç	2 3
	GamePiece
É	É	 

pieceToAdd
É	É	  
=
É	É	! "

pieceImage
É	É	# -
.
É	É	- .
Tag
É	É	. 1
as
É	É	2 4
	GamePiece
É	É	5 >
;
É	É	> ?
board
Ñ	Ñ	 
[
Ñ	Ñ	 

pieceToAdd
Ñ	Ñ	 
.
Ñ	Ñ	 
Position
Ñ	Ñ	 %
]
Ñ	Ñ	% &
=
Ñ	Ñ	' (

pieceToAdd
Ñ	Ñ	) 3
;
Ñ	Ñ	3 4
}
Ö	Ö	 	
public
à	à	 
void
à	à	 
ReceiveTurns
à	à	  
(
à	à	  !
bool
à	à	! %
isTurn
à	à	& ,
)
à	à	, -
{
â	â	 	
if
ä	ä	 
(
ä	ä	 
isTurn
ä	ä	 
)
ä	ä	 
{
ã	ã	 
txtbl_PlayerName
å	å	  
.
å	å	  !
Text
å	å	! %
=
å	å	& '"
UserProfileSingleton
å	å	( <
.
å	å	< =
username
å	å	= E
;
å	å	E F
if
ç	ç	 
(
ç	ç	 
numberOfPlayer
ç	ç	 !
==
ç	ç	" $
$num
ç	ç	% &
)
ç	ç	& '
{
é	é	 
stckp_Player1
è	è	 !
.
è	è	! "
	IsEnabled
è	è	" +
=
è	è	, -
true
è	è	. 2
;
è	è	2 3!
EnablePiecesOnBoard
ê	ê	 '
(
ê	ê	' (
)
ê	ê	( )
;
ê	ê	) *+
UnlockPlacesWhereThereIsPiece
ë	ë	 1
(
ë	ë	1 2
)
ë	ë	2 3
;
ë	ë	3 4
}
í	í	 
else
ì	ì	 
{
î	î	 
stckp_Player2
ï	ï	 !
.
ï	ï	! "
	IsEnabled
ï	ï	" +
=
ï	ï	, -
true
ï	ï	. 2
;
ï	ï	2 3+
UnlockPlacesWhereThereIsPiece
ñ	ñ	 1
(
ñ	ñ	1 2
)
ñ	ñ	2 3
;
ñ	ñ	3 4!
EnablePiecesOnBoard
ó	ó	 '
(
ó	ó	' (
)
ó	ó	( )
;
ó	ó	) *
}
ò	ò	 
numberOfTurn
ô	ô	 
++
ô	ô	 
;
ô	ô	 
}
ö	ö	 
else
õ	õ	 
{
ú	ú	 
for
ù	ù	 
(
ù	ù	 
int
ù	ù	 
indexUsersInMatch
ù	ù	 *
=
ù	ù	+ ,
$num
ù	ù	- .
;
ù	ù	. /
indexUsersInMatch
ù	ù	0 A
<
ù	ù	B C
usersInGame
ù	ù	D O
.
ù	ù	O P
Count
ù	ù	P U
;
ù	ù	U V
indexUsersInMatch
ù	ù	W h
++
ù	ù	h j
)
ù	ù	j k
{
û	û	 
if
ü	ü	 
(
ü	ü	 
usersInGame
ü	ü	 #
[
ü	ü	# $
indexUsersInMatch
ü	ü	$ 5
]
ü	ü	5 6
.
ü	ü	6 7
username
ü	ü	7 ?
!=
ü	ü	@ B"
UserProfileSingleton
ü	ü	C W
.
ü	ü	W X
username
ü	ü	X `
)
ü	ü	` a
{
†	†	 
txtbl_PlayerName
°	°	 (
.
°	°	( )
Text
°	°	) -
=
°	°	. /
usersInGame
°	°	0 ;
[
°	°	; <
indexUsersInMatch
°	°	< M
]
°	°	M N
.
°	°	N O
username
°	°	O W
;
°	°	W X
}
¢	¢	 
}
£	£	 
if
§	§	 
(
§	§	 
numberOfPlayer
§	§	 "
==
§	§	# %
$num
§	§	& '
)
§	§	' (
{
•	•	 
stckp_Player1
¶	¶	 !
.
¶	¶	! "
	IsEnabled
¶	¶	" +
=
¶	¶	, -
false
¶	¶	. 3
;
¶	¶	3 4!
EnablePiecesOnBoard
ß	ß	 '
(
ß	ß	' (
)
ß	ß	( )
;
ß	ß	) *
}
®	®	 
else
©	©	 
{
™	™	 
stckp_Player2
´	´	 !
.
´	´	! "
	IsEnabled
´	´	" +
=
´	´	, -
false
´	´	. 3
;
´	´	3 4!
EnablePiecesOnBoard
¨	¨	 '
(
¨	¨	' (
)
¨	¨	( )
;
¨	¨	) *
}
≠	≠	 "
DisablePiecesOnBoard
Æ	Æ	 $
(
Æ	Æ	$ %
)
Æ	Æ	% &
;
Æ	Æ	& '
}
Ø	Ø	 
}
∞	∞	 	
private
≤	≤	 
void
≤	≤	 !
EnablePiecesOnBoard
≤	≤	 (
(
≤	≤	( )
)
≤	≤	) *
{
≥	≥	 	
foreach
¥	¥	 
(
¥	¥	 
	UIElement
¥	¥	 
element
¥	¥	 &
in
¥	¥	' )
GameBoardGrid
¥	¥	* 7
.
¥	¥	7 8
Children
¥	¥	8 @
)
¥	¥	@ A
{
µ	µ	 
if
∂	∂	 
(
∂	∂	 
element
∂	∂	 
is
∂	∂	 
Image
∂	∂	 $
image
∂	∂	% *
&&
∂	∂	+ -
image
∂	∂	. 3
.
∂	∂	3 4
Tag
∂	∂	4 7
is
∂	∂	8 :
Logic
∂	∂	; @
.
∂	∂	@ A
	GamePiece
∂	∂	A J
)
∂	∂	J K
{
∑	∑	 
image
∏	∏	 
.
∏	∏	 
	IsEnabled
∏	∏	 #
=
∏	∏	$ %
true
∏	∏	& *
;
∏	∏	* +
image
π	π	 
.
π	π	 
	MouseDown
π	π	 #
+=
π	π	$ &%
PieceSelected_MouseDown
π	π	' >
;
π	π	> ?
}
∫	∫	 
}
ª	ª	 
}
º	º	 	
private
æ	æ	 
void
æ	æ	 "
DisablePiecesOnBoard
æ	æ	 )
(
æ	æ	) *
)
æ	æ	* +
{
ø	ø	 	
foreach
¿	¿	 
(
¿	¿	 
	UIElement
¿	¿	 
element
¿	¿	 &
in
¿	¿	' )
GameBoardGrid
¿	¿	* 7
.
¿	¿	7 8
Children
¿	¿	8 @
)
¿	¿	@ A
{
¡	¡	 
if
¬	¬	 
(
¬	¬	 
element
¬	¬	 
is
¬	¬	 
Image
¬	¬	 $
image
¬	¬	% *
&&
¬	¬	+ -
image
¬	¬	. 3
.
¬	¬	3 4
Tag
¬	¬	4 7
is
¬	¬	8 :
Logic
¬	¬	; @
.
¬	¬	@ A
	GamePiece
¬	¬	A J
)
¬	¬	J K
{
√	√	 
image
ƒ	ƒ	 
.
ƒ	ƒ	 
	IsEnabled
ƒ	ƒ	 #
=
ƒ	ƒ	$ %
false
ƒ	ƒ	& +
;
ƒ	ƒ	+ ,
image
≈	≈	 
.
≈	≈	 
	MouseDown
≈	≈	 #
-=
≈	≈	$ &%
PieceSelected_MouseDown
≈	≈	' >
;
≈	≈	> ?
}
∆	∆	 
}
«	«	 
}
»	»	 	
public
 	 	 
void
 	 	 #
ReceivePlayersToMatch
 	 	 )
(
 	 	) *
UserSession
 	 	* 5
[
 	 	5 6
]
 	 	6 7
usersInMatch
 	 	8 D
)
 	 	D E
{
À	À	 	
usersInGame
Ã	Ã	 
=
Ã	Ã	 
usersInMatch
Ã	Ã	 &
.
Ã	Ã	& '
ToList
Ã	Ã	' -
(
Ã	Ã	- .
)
Ã	Ã	. /
;
Ã	Ã	/ 0
for
Œ	Œ	 
(
Œ	Œ	 
int
Œ	Œ	 
indexUsersInMatch
Œ	Œ	 %
=
Œ	Œ	& '
$num
Œ	Œ	( )
;
Œ	Œ	) *
indexUsersInMatch
Œ	Œ	* ;
<
Œ	Œ	< =
usersInGame
Œ	Œ	> I
.
Œ	Œ	I J
Count
Œ	Œ	J O
;
Œ	Œ	O P
indexUsersInMatch
Œ	Œ	P a
++
Œ	Œ	a c
)
Œ	Œ	c d
{
œ	œ	 
UserSession
–	–	 
user
–	–	  
=
–	–	! "
usersInGame
–	–	# .
[
–	–	. /
indexUsersInMatch
–	–	/ @
]
–	–	@ A
;
–	–	A B
Profile
—	—	 
profileUser
—	—	 #
=
—	—	$ %
GetUserProfile
—	—	& 4
(
—	—	4 5
user
—	—	5 9
)
—	—	9 :
;
—	—	: ;!
UpdatePlayerDisplay
“	“	 #
(
“	“	# $
user
“	“	$ (
,
“	“	( )
profileUser
“	“	* 5
)
“	“	5 6
;
“	“	6 7
}
”	”	 
}
‘	‘	 	
private
’	’	 
Profile
’	’	 
GetUserProfile
’	’	 &
(
’	’	& '
UserSession
’	’	' 2
user
’	’	3 7
)
’	’	7 8
{
÷	÷	 	
	HiveProxy
◊	◊	 
.
◊	◊	 
UserManagerClient
◊	◊	 '
userManagerClient
◊	◊	( 9
=
◊	◊	: ;
new
◊	◊	< ?
	HiveProxy
◊	◊	@ I
.
◊	◊	I J
UserManagerClient
◊	◊	J [
(
◊	◊	[ \
)
◊	◊	\ ]
;
◊	◊	] ^
Profile
ÿ	ÿ	 
profileUser
ÿ	ÿ	 
=
ÿ	ÿ	  !
userManagerClient
ÿ	ÿ	" 3
.
ÿ	ÿ	3 4&
GetUserProfileByUsername
ÿ	ÿ	4 L
(
ÿ	ÿ	L M
user
ÿ	ÿ	M Q
.
ÿ	ÿ	Q R
username
ÿ	ÿ	R Z
)
ÿ	ÿ	Z [
;
ÿ	ÿ	[ \
if
⁄	⁄	 
(
⁄	⁄	 
profileUser
⁄	⁄	 
.
⁄	⁄	 
idAccesAccount
⁄	⁄	 *
==
⁄	⁄	+ -
	Constants
⁄	⁄	. 7
.
⁄	⁄	7 8
ERROR_OPERATION
⁄	⁄	8 G
||
⁄	⁄	H J
user
⁄	⁄	K O
.
⁄	⁄	O P
	idAccount
⁄	⁄	P Y
==
⁄	⁄	Z \
	Constants
⁄	⁄	] f
.
⁄	⁄	f g
DEFAULT_GUEST_ID
⁄	⁄	g w
)
⁄	⁄	w x
{
€	€	 
profileUser
‹	‹	 
.
‹	‹	 
	imagePath
‹	‹	 %
=
‹	‹	& '
$str
‹	‹	( E
;
‹	‹	E F
}
›	›	 
return
ﬂ	ﬂ	 
profileUser
ﬂ	ﬂ	 
;
ﬂ	ﬂ	 
}
‡	‡	 	
private
‚	‚	 
void
‚	‚	 !
UpdatePlayerDisplay
‚	‚	 (
(
‚	‚	( )
UserSession
‚	‚	) 4
user
‚	‚	5 9
,
‚	‚	9 :
Profile
‚	‚	; B
profileUser
‚	‚	C N
)
‚	‚	N O
{
„	„	 	
usernamePlayer1
‰	‰	 
=
‰	‰	 
usersInGame
‰	‰	 )
[
‰	‰	) *
$num
‰	‰	* +
]
‰	‰	+ ,
.
‰	‰	, -
username
‰	‰	- 5
;
‰	‰	5 6
if
Â	Â	 
(
Â	Â	 $
IsPlayer1SlotAvailable
Â	Â	 &
(
Â	Â	& '
user
Â	Â	' +
)
Â	Â	+ ,
)
Â	Â	, -
{
Ê	Ê	 
txtbl_PlayerName1
Á	Á	 !
.
Á	Á	! "
Text
Á	Á	" &
=
Á	Á	' (
user
Á	Á	) -
.
Á	Á	- .
username
Á	Á	. 6
;
Á	Á	6 7
img_ProfilePic1
Ë	Ë	 
.
Ë	Ë	  
Source
Ë	Ë	  &
=
Ë	Ë	' (
new
Ë	Ë	) ,
BitmapImage
Ë	Ë	- 8
(
Ë	Ë	8 9
new
Ë	Ë	9 <
Uri
Ë	Ë	= @
(
Ë	Ë	@ A
profileUser
Ë	Ë	A L
.
Ë	Ë	L M
	imagePath
Ë	Ë	M V
,
Ë	Ë	V W
UriKind
Ë	Ë	X _
.
Ë	Ë	_ `
Relative
Ë	Ë	` h
)
Ë	Ë	h i
)
Ë	Ë	i j
;
Ë	Ë	j k
}
È	È	 
if
Í	Í	 
(
Í	Í	 
usersInGame
Í	Í	 
.
Í	Í	 
Count
Í	Í	 !
==
Í	Í	" $
$num
Í	Í	% &
)
Í	Í	& '
{
Î	Î	 
usernamePlayer2
Ï	Ï	 
=
Ï	Ï	  !
usersInGame
Ï	Ï	" -
[
Ï	Ï	- .
$num
Ï	Ï	. /
]
Ï	Ï	/ 0
.
Ï	Ï	0 1
username
Ï	Ï	1 9
;
Ï	Ï	9 :
if
Ì	Ì	 
(
Ì	Ì	 $
IsPlayer2SlotAvailable
Ì	Ì	 *
(
Ì	Ì	* +
user
Ì	Ì	+ /
)
Ì	Ì	/ 0
)
Ì	Ì	0 1
{
Ó	Ó	 
txtbl_PlayerName2
Ô	Ô	 %
.
Ô	Ô	% &
Text
Ô	Ô	& *
=
Ô	Ô	+ ,
user
Ô	Ô	- 1
.
Ô	Ô	1 2
username
Ô	Ô	2 :
;
Ô	Ô	: ;
img_ProfilePic2
		 #
.
		# $
Source
		$ *
=
		+ ,
new
		- 0
BitmapImage
		1 <
(
		< =
new
		= @
Uri
		A D
(
		D E
profileUser
		E P
.
		P Q
	imagePath
		Q Z
,
		Z [
UriKind
		\ c
.
		c d
Relative
		d l
)
		l m
)
		m n
;
		n o
}
Ò	Ò	 
}
Ú	Ú	 
LoadPlayerPieces
Û	Û	 
(
Û	Û	 !
stckp_Player1Pieces
Û	Û	 0
,
Û	Û	0 1
player1Pieces
Û	Û	2 ?
,
Û	Û	? @
usernamePlayer1
Û	Û	A P
)
Û	Û	P Q
;
Û	Û	Q R
LoadPlayerPieces
Ù	Ù	 
(
Ù	Ù	 !
stckp_Player2Pieces
Ù	Ù	 0
,
Ù	Ù	0 1
player2Pieces
Ù	Ù	2 ?
,
Ù	Ù	? @
usernamePlayer2
Ù	Ù	A P
)
Ù	Ù	P Q
;
Ù	Ù	Q R
}
ı	ı	 	
private
¯	¯	 
bool
¯	¯	 $
IsPlayer1SlotAvailable
¯	¯	 +
(
¯	¯	+ ,
UserSession
¯	¯	, 7
user
¯	¯	8 <
)
¯	¯	< =
{
˘	˘	 	
return
˙	˙	 
txtbl_PlayerName1
˙	˙	 $
.
˙	˙	$ %
Text
˙	˙	% )
==
˙	˙	* ,

Properties
˙	˙	- 7
.
˙	˙	7 8
	Resources
˙	˙	8 A
.
˙	˙	A B
txtbl_Player1
˙	˙	B O
&&
˙	˙	P R
txtbl_PlayerName2
˚	˚	 $
.
˚	˚	$ %
Text
˚	˚	% )
==
˚	˚	* ,"
UserProfileSingleton
˚	˚	- A
.
˚	˚	A B
username
˚	˚	B J
&&
˚	˚	K M
!
¸	¸	 
user
¸	¸	 
.
¸	¸	 
username
¸	¸	 !
.
¸	¸	! "
Equals
¸	¸	" (
(
¸	¸	( )
txtbl_PlayerName2
¸	¸	) :
.
¸	¸	: ;
Text
¸	¸	; ?
)
¸	¸	? @
;
¸	¸	@ A
}
˝	˝	 	
private
ˇ	ˇ	 
bool
ˇ	ˇ	 $
IsPlayer2SlotAvailable
ˇ	ˇ	 +
(
ˇ	ˇ	+ ,
UserSession
ˇ	ˇ	, 7
user
ˇ	ˇ	8 <
)
ˇ	ˇ	< =
{
Ä
Ä
 	
return
Å
Å
 
txtbl_PlayerName2
Å
Å
 $
.
Å
Å
$ %
Text
Å
Å
% )
==
Å
Å
* ,

Properties
Å
Å
- 7
.
Å
Å
7 8
	Resources
Å
Å
8 A
.
Å
Å
A B
txtbl_Player2
Å
Å
B O
&&
Å
Å
P R
txtbl_PlayerName1
Ç
Ç
 $
.
Ç
Ç
$ %
Text
Ç
Ç
% )
==
Ç
Ç
* ,"
UserProfileSingleton
Ç
Ç
- A
.
Ç
Ç
A B
username
Ç
Ç
B J
&&
Ç
Ç
K M
!
É
É
 
user
É
É
 
.
É
É
 
username
É
É
 !
.
É
É
! "
Equals
É
É
" (
(
É
É
( )
txtbl_PlayerName1
É
É
) :
.
É
É
: ;
Text
É
É
; ?
)
É
É
? @
;
É
É
@ A
}
Ñ
Ñ
 	
public
Ü
Ü
 
void
Ü
Ü
 .
 ReceivePlayerHasLeftNotification
Ü
Ü
 4
(
Ü
Ü
4 5
bool
Ü
Ü
5 9!
doPlayerLeftTheGame
Ü
Ü
: M
)
Ü
Ü
M N
{
á
á
 	
LoggerManager
à
à
 
logger
à
à
  
=
à
à
! "
new
à
à
# &
LoggerManager
à
à
' 4
(
à
à
4 5
this
à
à
5 9
.
à
à
9 :
GetType
à
à
: A
(
à
à
A B
)
à
à
B C
)
à
à
C D
;
à
à
D E
bool
â
â
 
exceptionAppear
â
â
  
=
â
â
! "
false
â
â
# (
;
â
â
( )
if
ä
ä
 
(
ä
ä
 !
doPlayerLeftTheGame
ä
ä
 #
)
ä
ä
# $
{
ã
ã
 
DialogManager
å
å
 
.
å
å
 %
ShowWarningMessageAlert
å
å
 5
(
å
å
5 6

Properties
å
å
6 @
.
å
å
@ A
	Resources
å
å
A J
.
å
å
J K'
dialogUserHasLeftTheMatch
å
å
K d
)
å
å
d e
;
å
å
e f
try
ç
ç
 
{
é
é
 
UserSession
è
è
 
userSession
è
è
  +
=
è
è
, -
new
è
è
. 1
UserSession
è
è
2 =
(
è
è
= >
)
è
è
> ?
{
ê
ê
 
username
ë
ë
  
=
ë
ë
! ""
UserProfileSingleton
ë
ë
# 7
.
ë
ë
7 8
username
ë
ë
8 @
,
ë
ë
@ A
	idAccount
í
í
 !
=
í
í
" #"
UserProfileSingleton
í
í
$ 8
.
í
í
8 9
	idAccount
í
í
9 B
,
í
í
B C
	codeMatch
ì
ì
 !
=
ì
ì
" #
MatchSingleton
ì
ì
$ 2
.
ì
ì
2 3
	codeMatch
ì
ì
3 <
}
î
î
 
;
î
î
 
if
ï
ï
 
(
ï
ï
 "
UserProfileSingleton
ï
ï
 ,
.
ï
ï
, -
	idAccount
ï
ï
- 6
!=
ï
ï
6 8
	Constants
ï
ï
8 A
.
ï
ï
A B
DEFAULT_GUEST_ID
ï
ï
B R
)
ï
ï
R S
{
ñ
ñ
 
	HiveProxy
ó
ó
 !
.
ó
ó
! "
UserManagerClient
ó
ó
" 3
userManagerClient
ó
ó
4 E
=
ó
ó
F G
new
ó
ó
H K
UserManagerClient
ó
ó
L ]
(
ó
ó
] ^
)
ó
ó
^ _
;
ó
ó
_ `
userManagerClient
ò
ò
 )
.
ò
ò
) *&
UpdatePlusUserReputation
ò
ò
* B
(
ò
ò
B C
userSession
ò
ò
C N
.
ò
ò
N O
username
ò
ò
O W
,
ò
ò
W X
$num
ò
ò
Y [
)
ò
ò
[ \
;
ò
ò
\ ]
}
ô
ô
 
gameManagerClient
ö
ö
 %
.
ö
ö
% &
LeaveTheGame
ö
ö
& 2
(
ö
ö
2 3
userSession
ö
ö
3 >
,
ö
ö
> ?
userSession
ö
ö
@ K
.
ö
ö
K L
	codeMatch
ö
ö
L U
)
ö
ö
U V
;
ö
ö
V W
}
õ
õ
 
catch
ú
ú
 
(
ú
ú
 '
EndpointNotFoundException
ú
ú
 0
endPointException
ú
ú
1 B
)
ú
ú
B C
{
ù
ù
 
logger
û
û
 
.
û
û
 
LogError
û
û
 #
(
û
û
# $
endPointException
û
û
$ 5
)
û
û
5 6
;
û
û
6 7
DialogManager
ü
ü
 !
.
ü
ü
! "#
ShowErrorMessageAlert
ü
ü
" 7
(
ü
ü
7 8

Properties
ü
ü
8 B
.
ü
ü
B C
	Resources
ü
ü
C L
.
ü
ü
L M%
dialogEndPointException
ü
ü
M d
)
ü
ü
d e
;
ü
ü
e f
exceptionAppear
†
†
 #
=
†
†
$ %
true
†
†
& *
;
†
†
* +
}
°
°
 
catch
¢
¢
 
(
¢
¢
 
TimeoutException
¢
¢
 '
timeOutException
¢
¢
( 8
)
¢
¢
8 9
{
£
£
 
logger
§
§
 
.
§
§
 
LogError
§
§
 #
(
§
§
# $
timeOutException
§
§
$ 4
)
§
§
4 5
;
§
§
5 6
DialogManager
•
•
 !
.
•
•
! "#
ShowErrorMessageAlert
•
•
" 7
(
•
•
7 8

Properties
•
•
8 B
.
•
•
B C
	Resources
•
•
C L
.
•
•
L M)
dialogComunicationException
•
•
M h
)
•
•
h i
;
•
•
i j
}
¶
¶
 
catch
ß
ß
 
(
ß
ß
 $
CommunicationException
ß
ß
 -$
communicationException
ß
ß
. D
)
ß
ß
D E
{
®
®
 
logger
©
©
 
.
©
©
 
LogError
©
©
 #
(
©
©
# $$
communicationException
©
©
$ :
)
©
©
: ;
;
©
©
; <
DialogManager
™
™
 !
.
™
™
! "#
ShowErrorMessageAlert
™
™
" 7
(
™
™
7 8

Properties
™
™
8 B
.
™
™
B C
	Resources
™
™
C L
.
™
™
L M$
dialogTimeOutException
™
™
M c
)
™
™
c d
;
™
™
d e
exceptionAppear
´
´
 #
=
´
´
$ %
true
´
´
& *
;
´
´
* +
}
¨
¨
 
if
≠
≠
 
(
≠
≠
 
exceptionAppear
≠
≠
 #
)
≠
≠
# $
{
Æ
Æ
 
ReturnToLoginView
Ø
Ø
 %
(
Ø
Ø
% &
)
Ø
Ø
& '
;
Ø
Ø
' (
}
∞
∞
 
else
±
±
 
{
≤
≤
 
if
≥
≥
 
(
≥
≥
 "
UserProfileSingleton
≥
≥
 ,
.
≥
≥
, -
	idAccount
≥
≥
- 6
==
≥
≥
7 9
	Constants
≥
≥
: C
.
≥
≥
C D
DEFAULT_GUEST_ID
≥
≥
D T
)
≥
≥
T U
{
¥
¥
 
ReturnToLoginView
µ
µ
 )
(
µ
µ
) *
)
µ
µ
* +
;
µ
µ
+ ,
}
∂
∂
 
else
∑
∑
 
{
∏
∏
 
GoToMainView
π
π
 $
(
π
π
$ %
)
π
π
% &
;
π
π
& '
}
∫
∫
 
}
ª
ª
 
}
º
º
 
}
Ω
Ω
 	
public
ø
ø
 
void
ø
ø
 
ReturnToLoginView
ø
ø
 %
(
ø
ø
% &
)
ø
ø
& '
{
¿
¿
 	
MatchSingleton
¡
¡
 
.
¡
¡
 
Instance
¡
¡
 #
.
¡
¡
# $
ResetSingleton
¡
¡
$ 2
(
¡
¡
2 3
)
¡
¡
3 4
;
¡
¡
4 5"
UserProfileSingleton
¬
¬
  
.
¬
¬
  !
Instance
¬
¬
! )
.
¬
¬
) *
ResetSingleton
¬
¬
* 8
(
¬
¬
8 9
)
¬
¬
9 :
;
¬
¬
: ;
	LoginView
√
√
 
	loginView
√
√
 
=
√
√
  !
new
√
√
" %
	LoginView
√
√
& /
(
√
√
/ 0
)
√
√
0 1
;
√
√
1 2
this
ƒ
ƒ
 
.
ƒ
ƒ
 
NavigationService
ƒ
ƒ
 "
.
ƒ
ƒ
" #
Navigate
ƒ
ƒ
# +
(
ƒ
ƒ
+ ,
	loginView
ƒ
ƒ
, 5
)
ƒ
ƒ
5 6
;
ƒ
ƒ
6 7
}
≈
≈
 	
}
«
«
 
}»
»
 ú_
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
LogErroroo 
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
.tt 
LogErrortt 
(tt  
timeOutExceptiontt  0
)tt0 1
;tt1 2
DialogManageruu 
.uu !
ShowErrorMessageAlertuu 3
(uu3 4

Propertiesuu4 >
.uu> ?
	Resourcesuu? H
.uuH I'
dialogComunicationExceptionuuI d
)uud e
;uue f
}vv 
catchww 
(ww "
CommunicationExceptionww )"
communicationExceptionww* @
)ww@ A
{xx 
loggeryy 
.yy 
LogErroryy 
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
}öö á“
xC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Views\LoginView.xaml.cs
	namespace 	
HiveGameWPFApp
 
. 
Views 
{ 
public 

partial 
class 
	LoginView "
:# $
Page% )
{ 
public 
	LoginView 
( 
) 
{ 	
InitializeComponent 
(  
)  !
;! "
pwb_Password 
. 
PasswordChanged (
+=) +'
PwbPassword_PasswordChanged, G
;G H
App 
. 
	PlayMusic 
( 
$str +
)+ ,
;, -
} 	
private 
void 
BtnLogin_Click #
(# $
object$ *
sender+ 1
,1 2
RoutedEventArgs3 B
eC D
)D E
{ 	
txtb_Username 
. 
BorderBrush %
=& '
new( +
SolidColorBrush, ;
(; <
Colors< B
.B C
WhiteC H
)H I
;I J
brd_Password 
. 
BorderBrush $
=% &
new' *
SolidColorBrush+ :
(: ;
Colors; A
.A B
WhiteB G
)G H
;H I
Profile   
userAccount   
=    !
new  " %
Profile  & -
{!! 
username"" 
="" 
txtb_Username"" (
.""( )
Text"") -
,""- .
password## 
=## 
pwb_Password## '
.##' (
Password##( 0
}$$ 
;$$ 
if&& 
(&& 
verifyFields&& 
(&& 
)&& 
)&& 
{'' 
int(( 
validateCredentials(( '
=((( )
ValidateCredentials((* =
(((= >
userAccount((> I
)((I J
;((J K
if** 
(** 
validateCredentials** '
==**( *
$num**+ ,
)**, -
{++ '
ValidateExistingUserSession,, /
(,,/ 0
),,0 1
;,,1 2
}-- 
else.. 
if.. 
(.. 
validateCredentials.. ,
==..- /
$num..0 1
)..1 2
{// 
DialogManager00 !
.00! "!
ShowErrorMessageAlert00" 7
(007 8

Properties008 B
.00B C
	Resources00C L
.00L M(
dialogMissmatchesCredentials00M i
)00i j
;00j k
}11 
}22 
else33 
{44 
DialogManager55 
.55 !
ShowErrorMessageAlert55 3
(553 4

Properties554 >
.55> ?
	Resources55? H
.55H I
dialogWrongData55I X
)55X Y
;55Y Z
}66 
}77 	
public99 
bool99 
verifyFields99  
(99  !
)99! "
{:: 	
bool;; 
passwordValidation;; #
=;;$ %
	Validator;;& /
.;;/ 0
ValidatePassword;;0 @
(;;@ A
pwb_Password;;A M
.;;M N
Password;;N V
);;V W
;;;W X
bool<< 
usernameValidation<< #
=<<$ %
	Validator<<& /
.<</ 0
ValidateUsername<<0 @
(<<@ A
txtb_Username<<A N
.<<N O
Text<<O S
)<<S T
;<<T U
if>> 
(>> 
!>> 
passwordValidation>> #
)>># $
{?? 
brd_Password@@ 
.@@ 
BorderBrush@@ (
=@@) *
Brushes@@+ 2
.@@2 3
Red@@3 6
;@@6 7
}AA 
ifBB 
(BB 
!BB 
usernameValidationBB #
)BB# $
{CC 
txtb_UsernameDD 
.DD 
BorderBrushDD )
=DD* +
BrushesDD, 3
.DD3 4
RedDD4 7
;DD7 8
}EE 
returnGG 
passwordValidationGG %
&&GG& (
usernameValidationGG) ;
;GG; <
}HH 	
publicJJ 
voidJJ '
ValidateExistingUserSessionJJ /
(JJ/ 0
)JJ0 1
{KK 	
boolLL %
existingSessionValidationLL *
=LL+ ,
falseLL- 2
;LL2 3
LoggerManagerMM 
loggerMM  
=MM! "
newMM# &
LoggerManagerMM' 4
(MM4 5
thisMM5 9
.MM9 :
GetTypeMM: A
(MMA B
)MMB C
)MMC D
;MMD E
	HiveProxyNN 
.NN $
UserSessionManagerClientNN .$
userSessionManagerClientNN/ G
=NNH I
newNNJ M$
UserSessionManagerClientNNN f
(NNf g
)NNg h
;NNh i
tryOO 
{PP 
UserSessionQQ 
sessionQQ #
=QQ$ %
newQQ& )
UserSessionQQ* 5
(QQ5 6
)QQ6 7
{RR 
usernameSS 
=SS  
UserProfileSingletonSS 3
.SS3 4
usernameSS4 <
,SS< =
	idAccountTT 
=TT  
UserProfileSingletonTT  4
.TT4 5
	idAccountTT5 >
}UU 
;UU %
existingSessionValidationVV )
=VV* +$
userSessionManagerClientVV, D
.VVD E
VerifyConnectivityVVE W
(VVW X
sessionVVX _
)VV_ `
;VV` a
ifWW 
(WW %
existingSessionValidationWW -
)WW- .
{XX 
DialogManagerYY !
.YY! "#
ShowWarningMessageAlertYY" 9
(YY9 :

PropertiesYY: D
.YYD E
	ResourcesYYE N
.YYN O!
dialogExistingSessionYYO d
)YYd e
;YYe f
}ZZ 
else[[ 
{\\ $
userSessionManagerClient]] ,
.]], -
ConnectToGame]]- :
(]]: ;
session]]; B
)]]B C
;]]C D
DisplayMainMenuView^^ '
(^^' (
)^^( )
;^^) *
}__ 
}`` 
catchaa 
(aa %
EndpointNotFoundExceptionaa ,
endPointExceptionaa- >
)aa> ?
{bb 
loggercc 
.cc 
LogErrorcc 
(cc  
endPointExceptioncc  1
)cc1 2
;cc2 3
DialogManagerdd 
.dd !
ShowErrorMessageAlertdd 3
(dd3 4

Propertiesdd4 >
.dd> ?
	Resourcesdd? H
.ddH I#
dialogEndPointExceptionddI `
)dd` a
;dda b
}ee 
catchff 
(ff 
TimeoutExceptionff #
timeOutExceptionff$ 4
)ff4 5
{gg 
loggerhh 
.hh 
LogErrorhh 
(hh  
timeOutExceptionhh  0
)hh0 1
;hh1 2
DialogManagerii 
.ii !
ShowErrorMessageAlertii 3
(ii3 4

Propertiesii4 >
.ii> ?
	Resourcesii? H
.iiH I'
dialogComunicationExceptioniiI d
)iid e
;iie f
}jj 
catchkk 
(kk "
CommunicationExceptionkk )"
communicationExceptionkk* @
)kk@ A
{ll 
loggermm 
.mm 
LogErrormm 
(mm  "
communicationExceptionmm  6
)mm6 7
;mm7 8
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
}oo 
}pp 	
publicrr 
intrr 
ValidateCredentialsrr &
(rr& '
Profilerr' .
profilerr/ 6
)rr6 7
{ss 	
LoggerManagertt 
loggertt  
=tt! "
newtt# &
LoggerManagertt' 4
(tt4 5
thistt5 9
.tt9 :
GetTypett: A
(ttA B
)ttB C
)ttC D
;ttD E
intuu 
validationResultuu  
=uu! "
-uu# $
$numuu$ %
;uu% &
tryww 
{xx 
stringyy 
hashedPasswordyy %
=yy& '
Hasheryy( .
.yy. /

hashToSHA1yy/ 9
(yy9 :
profileyy: A
.yyA B
passwordyyB J
)yyJ K
;yyK L
stringzz 
usernamezz 
=zz  !
profilezz" )
.zz) *
usernamezz* 2
;zz2 3
IUserManager{{ 
userManager{{ (
={{) *
new{{+ .
	HiveProxy{{/ 8
.{{8 9
UserManagerClient{{9 J
({{J K
){{K L
;{{L M
validationResult||  
=||! "
userManager||# .
.||. /%
VerifyPasswordCredentials||/ H
(||H I
username||I Q
,||Q R
hashedPassword||S a
)||a b
;||b c
}}} 
catch~~ 
(~~ %
EndpointNotFoundException~~ ,
endPointException~~- >
)~~> ?
{ 
logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ 
(
ÄÄ  
endPointException
ÄÄ  1
)
ÄÄ1 2
;
ÄÄ2 3
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
ÅÅH I%
dialogEndPointException
ÅÅI `
)
ÅÅ` a
;
ÅÅa b
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ 
TimeoutException
ÉÉ #
timeOutException
ÉÉ$ 4
)
ÉÉ4 5
{
ÑÑ 
logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ 
(
ÖÖ  
timeOutException
ÖÖ  0
)
ÖÖ0 1
;
ÖÖ1 2
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
ÜÜH I)
dialogComunicationException
ÜÜI d
)
ÜÜd e
;
ÜÜe f
}
áá 
catch
àà 
(
àà $
CommunicationException
àà )$
communicationException
àà* @
)
àà@ A
{
ââ 
logger
ää 
.
ää 
LogError
ää 
(
ää  $
communicationException
ää  6
)
ää6 7
;
ää7 8
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
åå 
switch
éé 
(
éé 
validationResult
éé $
)
éé$ %
{
èè 
case
êê 
-
êê 
$num
êê 
:
êê 
DialogManager
ëë !
.
ëë! "#
ShowErrorMessageAlert
ëë" 7
(
ëë7 8

Properties
ëë8 B
.
ëëB C
	Resources
ëëC L
.
ëëL M!
dialogDataBaseError
ëëM `
)
ëë` a
;
ëëa b
break
íí 
;
íí 
case
ìì 
$num
ìì 
:
ìì !
obtainSingletonData
îî '
(
îî' (
profile
îî( /
)
îî/ 0
;
îî0 1
break
ïï 
;
ïï 
}
ññ 
return
òò 
validationResult
òò #
;
òò# $
}
ôô 	
public
õõ 
void
õõ !
obtainSingletonData
õõ '
(
õõ' (
Profile
õõ( /
profile
õõ0 7
)
õõ7 8
{
úú 	
LoggerManager
ùù 
logger
ùù  
=
ùù! "
new
ùù# &
LoggerManager
ùù' 4
(
ùù4 5
this
ùù5 9
.
ùù9 :
GetType
ùù: A
(
ùùA B
)
ùùB C
)
ùùC D
;
ùùD E
try
üü 
{
†† 
IUserManager
°° 
userManager
°° (
=
°°) *
new
°°+ .
UserManagerClient
°°/ @
(
°°@ A
)
°°A B
;
°°B C
string
¢¢ 
hashedPassword
¢¢ %
=
¢¢& '
Hasher
¢¢( .
.
¢¢. /

hashToSHA1
¢¢/ 9
(
¢¢9 :
profile
¢¢: A
.
¢¢A B
password
¢¢B J
)
¢¢J K
;
¢¢K L
Profile
££ 
userAccount
££ #
=
££$ %
userManager
££& 1
.
££1 2
GetUserProfile
££2 @
(
££@ A
profile
££A H
.
££H I
username
££I Q
,
££Q R
hashedPassword
££S a
)
££a b
;
££b c
if
•• 
(
•• 
userAccount
•• 
!=
••  "
null
••# '
)
••' (
{
¶¶ "
UserProfileSingleton
ßß (
.
ßß( )
Instance
ßß) 1
.
ßß1 2
CreateInstance
ßß2 @
(
ßß@ A
userAccount
ßßA L
)
ßßL M
;
ßßM N
}
®® 
}
©© 
catch
™™ 
(
™™ '
EndpointNotFoundException
™™ ,
endPointException
™™- >
)
™™> ?
{
´´ 
logger
¨¨ 
.
¨¨ 
LogError
¨¨ 
(
¨¨  
endPointException
¨¨  1
)
¨¨1 2
;
¨¨2 3
DialogManager
≠≠ 
.
≠≠ #
ShowErrorMessageAlert
≠≠ 3
(
≠≠3 4

Properties
≠≠4 >
.
≠≠> ?
	Resources
≠≠? H
.
≠≠H I%
dialogEndPointException
≠≠I `
)
≠≠` a
;
≠≠a b
}
ÆÆ 
catch
ØØ 
(
ØØ 
TimeoutException
ØØ #
timeOutException
ØØ$ 4
)
ØØ4 5
{
∞∞ 
logger
±± 
.
±± 
LogError
±± 
(
±±  
timeOutException
±±  0
)
±±0 1
;
±±1 2
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
≤≤H I)
dialogComunicationException
≤≤I d
)
≤≤d e
;
≤≤e f
}
≥≥ 
catch
¥¥ 
(
¥¥ $
CommunicationException
¥¥ )$
communicationException
¥¥* @
)
¥¥@ A
{
µµ 
logger
∂∂ 
.
∂∂ 
LogError
∂∂ 
(
∂∂  $
communicationException
∂∂  6
)
∂∂6 7
;
∂∂7 8
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
∏∏ 
}
ππ 	
private
ªª 
void
ªª "
GenerateGuestProfile
ªª )
(
ªª) *
)
ªª* +
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
øø 
	HiveProxy
¿¿ 
.
¿¿ &
UserSessionManagerClient
¿¿ 2&
userSessionManagerClient
¿¿3 K
=
¿¿L M
new
¿¿N Q
	HiveProxy
¿¿R [
.
¿¿[ \&
UserSessionManagerClient
¿¿\ t
(
¿¿t u
)
¿¿u v
;
¿¿v w
string
¡¡ 
randomUsername
¡¡ %
=
¡¡& '
ProfileGenerator
¡¡( 8
.
¡¡8 9#
RandomChooserUsername
¡¡9 N
(
¡¡N O
)
¡¡O P
;
¡¡P Q
UserSession
¬¬ 
guestSession
¬¬ (
=
¬¬) *
new
¬¬+ .
UserSession
¬¬/ :
(
¬¬: ;
)
¬¬; <
{
√√ 
username
ƒƒ 
=
ƒƒ 
randomUsername
ƒƒ -
,
ƒƒ- .
	idAccount
≈≈ 
=
≈≈ 
	Constants
≈≈  )
.
≈≈) *
DEFAULT_GUEST_ID
≈≈* :
}
∆∆ 
;
∆∆ 
while
«« 
(
«« &
userSessionManagerClient
«« /
.
««/ 0 
VerifyConnectivity
««0 B
(
««B C
guestSession
««C O
)
««O P
)
««P Q
{
»» 
guestSession
……  
.
……  !
username
……! )
=
……* +
ProfileGenerator
……, <
.
……< =#
RandomChooserUsername
……= R
(
……R S
)
……S T
;
……T U
}
   
Profile
ÀÀ 
profileGuest
ÀÀ $
=
ÀÀ% &
new
ÀÀ' *
Profile
ÀÀ+ 2
(
ÀÀ2 3
)
ÀÀ3 4
{
ÃÃ 
idAccesAccount
ÕÕ "
=
ÕÕ# $
	Constants
ÕÕ% .
.
ÕÕ. /
DEFAULT_GUEST_ID
ÕÕ/ ?
,
ÕÕ? @
	idProfile
ŒŒ 
=
ŒŒ 
	Constants
ŒŒ  )
.
ŒŒ) *
DEFAULT_GUEST_ID
ŒŒ* :
,
ŒŒ: ;
username
œœ 
=
œœ 
randomUsername
œœ -
,
œœ- .
nickname
–– 
=
–– 
randomUsername
–– -
,
––- .
description
—— 
=
——  !
ProfileGenerator
——" 2
.
——2 3(
RandomDescriptionGenerator
——3 M
(
——M N
)
——N O
,
——O P
	imagePath
““ 
=
““ 
ProfileGenerator
““  0
.
““0 1%
RandomChooserAvatarIcon
““1 H
(
““H I
)
““I J
,
““J K
createdDate
”” 
=
””  !
DateTime
””" *
.
””* +
Now
””+ .
,
””. /
}
‘‘ 
;
‘‘ "
UserProfileSingleton
’’ $
.
’’$ %
Instance
’’% -
.
’’- .
CreateInstance
’’. <
(
’’< =
profileGuest
’’= I
)
’’I J
;
’’J K&
userSessionManagerClient
÷÷ (
.
÷÷( )
ConnectToGame
÷÷) 6
(
÷÷6 7
guestSession
÷÷7 C
)
÷÷C D
;
÷÷D E
}
◊◊ 
catch
ÿÿ 
(
ÿÿ '
EndpointNotFoundException
ÿÿ ,
endPointException
ÿÿ- >
)
ÿÿ> ?
{
ŸŸ 
logger
⁄⁄ 
.
⁄⁄ 
LogError
⁄⁄ 
(
⁄⁄  
endPointException
⁄⁄  1
)
⁄⁄1 2
;
⁄⁄2 3
DialogManager
€€ 
.
€€ #
ShowErrorMessageAlert
€€ 3
(
€€3 4

Properties
€€4 >
.
€€> ?
	Resources
€€? H
.
€€H I%
dialogEndPointException
€€I `
)
€€` a
;
€€a b
}
‹‹ 
catch
›› 
(
›› 
TimeoutException
›› #
timeOutException
››$ 4
)
››4 5
{
ﬁﬁ 
logger
ﬂﬂ 
.
ﬂﬂ 
LogError
ﬂﬂ 
(
ﬂﬂ  
timeOutException
ﬂﬂ  0
)
ﬂﬂ0 1
;
ﬂﬂ1 2
DialogManager
‡‡ 
.
‡‡ #
ShowErrorMessageAlert
‡‡ 3
(
‡‡3 4

Properties
‡‡4 >
.
‡‡> ?
	Resources
‡‡? H
.
‡‡H I)
dialogComunicationException
‡‡I d
)
‡‡d e
;
‡‡e f
}
·· 
catch
‚‚ 
(
‚‚ $
CommunicationException
‚‚ )$
communicationException
‚‚* @
)
‚‚@ A
{
„„ 
logger
‰‰ 
.
‰‰ 
LogError
‰‰ 
(
‰‰  $
communicationException
‰‰  6
)
‰‰6 7
;
‰‰7 8
DialogManager
ÂÂ 
.
ÂÂ #
ShowErrorMessageAlert
ÂÂ 3
(
ÂÂ3 4

Properties
ÂÂ4 >
.
ÂÂ> ?
	Resources
ÂÂ? H
.
ÂÂH I$
dialogTimeOutException
ÂÂI _
)
ÂÂ_ `
;
ÂÂ` a
}
ÊÊ 
}
ÁÁ 	
private
ÈÈ 
void
ÈÈ 
BtnGuest_Click
ÈÈ #
(
ÈÈ# $
object
ÈÈ$ *
sender
ÈÈ+ 1
,
ÈÈ1 2
RoutedEventArgs
ÈÈ3 B
e
ÈÈC D
)
ÈÈD E
{
ÍÍ 	"
GenerateGuestProfile
ÎÎ  
(
ÎÎ  !
)
ÎÎ! "
;
ÎÎ" #
GameCodeView
ÏÏ 
gameCodeView
ÏÏ %
=
ÏÏ& '
new
ÏÏ( +
GameCodeView
ÏÏ, 8
(
ÏÏ8 9
)
ÏÏ9 :
;
ÏÏ: ;
this
ÌÌ 
.
ÌÌ 
NavigationService
ÌÌ "
.
ÌÌ" #
Navigate
ÌÌ# +
(
ÌÌ+ ,
gameCodeView
ÌÌ, 8
)
ÌÌ8 9
;
ÌÌ9 :
}
ÓÓ 	
private
 
void
 
BtnRegister_Click
 &
(
& '
object
' -
sender
. 4
,
4 5
RoutedEventArgs
6 E
e
F G
)
G H
{
ÒÒ 	
RegisterView
ÚÚ 
registerView
ÚÚ %
=
ÚÚ& '
new
ÚÚ( +
RegisterView
ÚÚ, 8
(
ÚÚ8 9
)
ÚÚ9 :
;
ÚÚ: ;
this
ÛÛ 
.
ÛÛ 
NavigationService
ÛÛ "
.
ÛÛ" #
Navigate
ÛÛ# +
(
ÛÛ+ ,
registerView
ÛÛ, 8
)
ÛÛ8 9
;
ÛÛ9 :
}
ÙÙ 	
private
ˆˆ 
void
ˆˆ &
BtnRecoverPassword_Click
ˆˆ -
(
ˆˆ- .
object
ˆˆ. 4
sender
ˆˆ5 ;
,
ˆˆ; <"
MouseButtonEventArgs
ˆˆ= Q
e
ˆˆR S
)
ˆˆS T
{
˜˜ 	$
VerifyEmailAndUsername
¯¯ "$
verifyEmailAndUsername
¯¯# 9
=
¯¯: ;
new
¯¯< ?$
VerifyEmailAndUsername
¯¯@ V
(
¯¯V W
)
¯¯W X
;
¯¯X Y
this
˘˘ 
.
˘˘ 
NavigationService
˘˘ "
.
˘˘" #
Navigate
˘˘# +
(
˘˘+ ,$
verifyEmailAndUsername
˘˘, B
)
˘˘B C
;
˘˘C D
}
˙˙ 	
private
¸¸ 
void
¸¸ -
BtnPasswordVisibility_MouseDown
¸¸ 4
(
¸¸4 5
object
¸¸5 ;
sender
¸¸< B
,
¸¸B C"
MouseButtonEventArgs
¸¸D X
e
¸¸Y Z
)
¸¸Z [
{
˝˝ 	&
TogglePasswordVisibility
˛˛ $
(
˛˛$ %
true
˛˛% )
)
˛˛) *
;
˛˛* +
ChangePetImage
ˇˇ 
(
ˇˇ 
$str
ˇˇ G
)
ˇˇG H
;
ˇˇH I
}
ÄÄ 	
private
ÇÇ 
void
ÇÇ +
BtnPasswordVisibility_MouseUp
ÇÇ 2
(
ÇÇ2 3
object
ÇÇ3 9
sender
ÇÇ: @
,
ÇÇ@ A"
MouseButtonEventArgs
ÇÇB V
e
ÇÇW X
)
ÇÇX Y
{
ÉÉ 	&
TogglePasswordVisibility
ÑÑ $
(
ÑÑ$ %
false
ÑÑ% *
)
ÑÑ* +
;
ÑÑ+ ,+
UpdatePetImageBasedOnPassword
ÖÖ )
(
ÖÖ) *
)
ÖÖ* +
;
ÖÖ+ ,
}
ÜÜ 	
private
àà 
void
àà )
PwbPassword_PasswordChanged
àà 0
(
àà0 1
object
àà1 7
sender
àà8 >
,
àà> ?
RoutedEventArgs
àà@ O
e
ààP Q
)
ààQ R
{
ââ 	+
UpdatePetImageBasedOnPassword
ää )
(
ää) *
)
ää* +
;
ää+ ,*
UpdatePasswordVisibilityIcon
ãã (
(
ãã( )
)
ãã) *
;
ãã* +
}
åå 	
private
éé 
void
éé &
TogglePasswordVisibility
éé -
(
éé- .
bool
éé. 2
	isVisible
éé3 <
)
éé< =
{
èè 	
if
êê 
(
êê 
	isVisible
êê 
)
êê 
{
ëë 
brd_Password
íí 
.
íí 

Visibility
íí '
=
íí( )

Visibility
íí* 4
.
íí4 5
	Collapsed
íí5 >
;
íí> ?!
brd_PasswordDisplay
ìì #
.
ìì# $

Visibility
ìì$ .
=
ìì/ 0

Visibility
ìì1 ;
.
ìì; <
Visible
ìì< C
;
ììC D"
txtb_PasswordDisplay
îî $
.
îî$ %
Text
îî% )
=
îî* +
pwb_Password
îî, 8
.
îî8 9
Password
îî9 A
;
îîA B
}
ïï 
else
ññ 
{
óó 
brd_Password
òò 
.
òò 

Visibility
òò '
=
òò( )

Visibility
òò* 4
.
òò4 5
Visible
òò5 <
;
òò< =!
brd_PasswordDisplay
ôô #
.
ôô# $

Visibility
ôô$ .
=
ôô/ 0

Visibility
ôô1 ;
.
ôô; <
	Collapsed
ôô< E
;
ôôE F
pwb_Password
öö 
.
öö 
Password
öö %
=
öö& '"
txtb_PasswordDisplay
öö( <
.
öö< =
Text
öö= A
;
ööA B
}
õõ 
}
úú 	
private
ûû 
void
ûû *
UpdatePasswordVisibilityIcon
ûû 1
(
ûû1 2
)
ûû2 3
{
üü 	&
tgbtn_PasswordVisibility
†† $
.
††$ %

Visibility
††% /
=
††0 1
pwb_Password
††2 >
.
††> ?
Password
††? G
.
††G H
Length
††H N
>
††O P
$num
††Q R
?
°° 

Visibility
°° 
.
°° 
Visible
°° $
:
¢¢ 

Visibility
¢¢ 
.
¢¢ 
	Collapsed
¢¢ &
;
¢¢& '
}
££ 	
private
•• 
void
•• +
UpdatePetImageBasedOnPassword
•• 2
(
••2 3
)
••3 4
{
¶¶ 	
ChangePetImage
ßß 
(
ßß 
pwb_Password
ßß '
.
ßß' (
Password
ßß( 0
.
ßß0 1
Length
ßß1 7
>
ßß8 9
$num
ßß: ;
?
®® 
$str
®® ;
:
©© 
$str
©© .
)
©©. /
;
©©/ 0
}
™™ 	
private
¨¨ 
void
¨¨ 
ChangePetImage
¨¨ #
(
¨¨# $
string
¨¨$ *
	imagePath
¨¨+ 4
)
¨¨4 5
{
≠≠ 	
img_Pet
ÆÆ 
.
ÆÆ 
Source
ÆÆ 
=
ÆÆ 
new
ÆÆ  
BitmapImage
ÆÆ! ,
(
ÆÆ, -
new
ÆÆ- 0
Uri
ÆÆ1 4
(
ÆÆ4 5
	imagePath
ÆÆ5 >
,
ÆÆ> ?
UriKind
ÆÆ@ G
.
ÆÆG H
Relative
ÆÆH P
)
ÆÆP Q
)
ÆÆQ R
;
ÆÆR S
}
ØØ 	
private
±± 
void
±± !
DisplayMainMenuView
±± (
(
±±( )
)
±±) *
{
≤≤ 	
MainMenu
≥≥ 

mainWindow
≥≥ 
=
≥≥  !
new
≥≥" %
MainMenu
≥≥& .
(
≥≥. /
)
≥≥/ 0
;
≥≥0 1
this
¥¥ 
.
¥¥ 
NavigationService
¥¥ "
.
¥¥" #
Navigate
¥¥# +
(
¥¥+ ,

mainWindow
¥¥, 6
)
¥¥6 7
;
¥¥7 8
}
µµ 	
}
∂∂ 
}∑∑ Ú…
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
;&&1 2
App(( 
.(( 
	PlayMusic(( 
((( 
$str(( +
)((+ ,
;((, -
})) 	
private++ 
void++  
HideFullLobbyActions++ )
(++) *
)++* +
{,, 	
btn_SendOffPlayer-- 
.-- 

Visibility-- (
=--) *

Visibility--+ 5
.--5 6
	Collapsed--6 ?
;--? @
	btn_Start.. 
... 

Visibility..  
=..! "

Visibility..# -
...- .
	Collapsed... 7
;..7 8
stckp_Friends// 
.// 

Visibility// $
=//% &

Visibility//' 1
.//1 2
	Collapsed//2 ;
;//; <
stckp_SearchFriends00 
.00  

Visibility00  *
=00+ ,

Visibility00- 7
.007 8
	Collapsed008 A
;00A B"
lstv_ActiveFriendsList11 "
.11" #

Visibility11# -
=11. /

Visibility110 :
.11: ;
	Collapsed11; D
;11D E
}22 	
private44 
void44 
ShowCreatorActions44 '
(44' (
)44( )
{55 	
stckp_Friends66 
.66 

Visibility66 $
=66% &

Visibility66' 1
.661 2
Visible662 9
;669 :
stckp_SearchFriends77 
.77  

Visibility77  *
=77+ ,

Visibility77- 7
.777 8
Visible778 ?
;77? @"
lstv_ActiveFriendsList88 "
.88" #

Visibility88# -
=88. /

Visibility880 :
.88: ;
Visible88; B
;88B C
btn_SendOffPlayer99 
.99 

Visibility99 (
=99) *

Visibility99+ 5
.995 6
	Collapsed996 ?
;99? @
	btn_Start:: 
.:: 

Visibility::  
=::! "

Visibility::# -
.::- .
	Collapsed::. 7
;::7 8
};; 	
private== 
void== 
ConnectToChat== "
(==" #
)==# $
{>> 	
LoggerManager?? 
logger??  
=??! "
new??# &
LoggerManager??' 4
(??4 5
this??5 9
.??9 :
GetType??: A
(??A B
)??B C
)??C D
;??D E
userProfile@@ 
.@@ 
username@@  
=@@! " 
UserProfileSingleton@@# 7
.@@7 8
username@@8 @
;@@@ A
userProfileAA 
.AA 
idAccesAccountAA &
=AA' ( 
UserProfileSingletonAA) =
.AA= >
	idAccountAA> G
;AAG H
tryBB 
{CC 
chatManagerDD 
.DD 
ConnectToChatLobbyDD .
(DD. /
userProfileDD/ :
,DD: ;
matchLobbyCodeDD< J
)DDJ K
;DDK L
}EE 
catchFF 
(FF %
EndpointNotFoundExceptionFF ,
endPointExceptionFF- >
)FF> ?
{GG 
loggerHH 
.HH 
LogErrorHH 
(HH  
endPointExceptionHH  1
)HH1 2
;HH2 3
DialogManagerII 
.II !
ShowErrorMessageAlertII 3
(II3 4

PropertiesII4 >
.II> ?
	ResourcesII? H
.IIH I#
dialogEndPointExceptionIII `
)II` a
;IIa b
}JJ 
catchKK 
(KK 
TimeoutExceptionKK #
timeOutExceptionKK$ 4
)KK4 5
{LL 
loggerMM 
.MM 
LogErrorMM 
(MM  
timeOutExceptionMM  0
)MM0 1
;MM1 2
DialogManagerNN 
.NN !
ShowErrorMessageAlertNN 3
(NN3 4

PropertiesNN4 >
.NN> ?
	ResourcesNN? H
.NNH I'
dialogComunicationExceptionNNI d
)NNd e
;NNe f
}OO 
catchPP 
(PP "
CommunicationExceptionPP )"
communicationExceptionPP* @
)PP@ A
{QQ 
loggerRR 
.RR 
LogErrorRR 
(RR  "
communicationExceptionRR  6
)RR6 7
;RR7 8
DialogManagerSS 
.SS !
ShowErrorMessageAlertSS 3
(SS3 4

PropertiesSS4 >
.SS> ?
	ResourcesSS? H
.SSH I"
dialogTimeOutExceptionSSI _
)SS_ `
;SS` a
}TT 
}UU 	
privateWW 
voidWW 
ConnectToTheLobbyWW &
(WW& '
)WW' (
{XX 	
LoggerManagerYY 
loggerYY  
=YY! "
newYY# &
LoggerManagerYY' 4
(YY4 5
thisYY5 9
.YY9 :
GetTypeYY: A
(YYA B
)YYB C
)YYC D
;YYD E
tryZZ 
{[[ 
UserSession\\ 
userSession\\ '
=\\( )
new\\* -
UserSession\\. 9
(\\9 :
)\\: ;
{]] 
username^^ 
=^^  
UserProfileSingleton^^ 3
.^^3 4
username^^4 <
,^^< =
	idAccount__ 
=__  
UserProfileSingleton__  4
.__4 5
	idAccount__5 >
,__> ?
	codeMatch`` 
=`` 
matchLobbyCode``  .
}aa 
;aa 
lobbyManagerClientbb "
.bb" #
ConnectToLobbybb# 1
(bb1 2
userSessionbb2 =
,bb= >
matchLobbyCodebb> L
)bbL M
;bbM N
}cc 
catchdd 
(dd %
EndpointNotFoundExceptiondd ,
endPointExceptiondd- >
)dd> ?
{ee 
loggerff 
.ff 
LogErrorff 
(ff  
endPointExceptionff  1
)ff1 2
;ff2 3
DialogManagergg 
.gg !
ShowErrorMessageAlertgg 3
(gg3 4

Propertiesgg4 >
.gg> ?
	Resourcesgg? H
.ggH I#
dialogEndPointExceptionggI `
)gg` a
;gga b
}hh 
catchii 
(ii 
TimeoutExceptionii #
timeOutExceptionii$ 4
)ii4 5
{jj 
loggerkk 
.kk 
LogErrorkk 
(kk  
timeOutExceptionkk  0
)kk0 1
;kk1 2
DialogManagerll 
.ll !
ShowErrorMessageAlertll 3
(ll3 4

Propertiesll4 >
.ll> ?
	Resourcesll? H
.llH I'
dialogComunicationExceptionllI d
)lld e
;lle f
}mm 
catchnn 
(nn "
CommunicationExceptionnn )"
communicationExceptionnn* @
)nn@ A
{oo 
loggerpp 
.pp 
LogErrorpp 
(pp  "
communicationExceptionpp  6
)pp6 7
;pp7 8
DialogManagerqq 
.qq !
ShowErrorMessageAlertqq 3
(qq3 4

Propertiesqq4 >
.qq> ?
	Resourcesqq? H
.qqH I"
dialogTimeOutExceptionqqI _
)qq_ `
;qq` a
}rr 
}ss 	
privateuu 
voiduu !
ConnectAsFriendJoineduu *
(uu* +
)uu+ ,
{vv 	
LoggerManagerww 
loggerww  
=ww! "
newww# &
LoggerManagerww' 4
(ww4 5
thisww5 9
.ww9 :
GetTypeww: A
(wwA B
)wwB C
)wwC D
;wwD E
tryxx 
{yy 
UserSessionzz 
sessionzz #
=zz$ %
newzz& )
UserSessionzz* 5
(zz5 6
)zz6 7
{{{ 
	idAccount|| 
=|| 
userProfile||  +
.||+ ,
idAccesAccount||, :
,||: ;
username}} 
=}} 
userProfile}} *
.}}* +
username}}+ 3
,}}3 4
}~~ 
;~~  
friendsManagerClient $
.$ %!
JoinAsConnectedFriend% :
(: ;
session; B
)B C
;C D"
friendsManagerClient
ÄÄ $
.
ÄÄ$ %
GetFriendsList
ÄÄ% 3
(
ÄÄ3 4
session
ÄÄ4 ;
)
ÄÄ; <
;
ÄÄ< =
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ ,
endPointException
ÇÇ- >
)
ÇÇ> ?
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogError
ÑÑ 
(
ÑÑ  
endPointException
ÑÑ  1
)
ÑÑ1 2
;
ÑÑ2 3
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I%
dialogEndPointException
ÖÖI `
)
ÖÖ` a
;
ÖÖa b
}
ÜÜ 
catch
áá 
(
áá 
TimeoutException
áá #
timeOutException
áá$ 4
)
áá4 5
{
àà 
logger
ââ 
.
ââ 
LogError
ââ 
(
ââ  
timeOutException
ââ  0
)
ââ0 1
;
ââ1 2
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I)
dialogComunicationException
ääI d
)
ääd e
;
ääe f
}
ãã 
catch
åå 
(
åå $
CommunicationException
åå )$
communicationException
åå* @
)
åå@ A
{
çç 
logger
éé 
.
éé 
LogError
éé 
(
éé  $
communicationException
éé  6
)
éé6 7
;
éé7 8
DialogManager
èè 
.
èè #
ShowErrorMessageAlert
èè 3
(
èè3 4

Properties
èè4 >
.
èè> ?
	Resources
èè? H
.
èèH I$
dialogTimeOutException
èèI _
)
èè_ `
;
èè` a
}
êê 
}
ëë 	
private
ìì 
void
ìì 
Image_MouseDown
ìì $
(
ìì$ %
object
ìì% +
sender
ìì, 2
,
ìì2 3"
MouseButtonEventArgs
ìì4 H
e
ììI J
)
ììJ K
{
îî 	
if
ïï 
(
ïï 
DialogManager
ïï 
.
ïï *
ShowConfirmationMessageAlert
ïï :
(
ïï: ;

Properties
ïï; E
.
ïïE F
	Resources
ïïF O
.
ïïO P%
dialogConfirmLeaveLobby
ïïP g
)
ïïg h
)
ïïh i
{
ññ 
LoggerManager
óó 
logger
óó $
=
óó% &
new
óó' *
LoggerManager
óó+ 8
(
óó8 9
this
óó9 =
.
óó= >
GetType
óó> E
(
óóE F
)
óóF G
)
óóG H
;
óóH I
UserSession
òò 
userSession
òò '
=
òò( )
new
òò* -
UserSession
òò. 9
(
òò9 :
)
òò: ;
{
ôô 
username
öö 
=
öö "
UserProfileSingleton
öö 3
.
öö3 4
username
öö4 <
,
öö< =
	idAccount
õõ 
=
õõ "
UserProfileSingleton
õõ  4
.
õõ4 5
	idAccount
õõ5 >
}
úú 
;
úú 
try
ùù 
{
ûû 
bool
üü 
isKicked
üü !
=
üü" #
false
üü$ )
;
üü) *
if
†† 
(
†† "
UserProfileSingleton
†† ,
.
††, -
	idAccount
††- 6
!=
††7 9
	Constants
††: C
.
††C D
DEFAULT_GUEST_ID
††D T
)
††T U
{
°° 
MatchSingleton
¢¢ &
.
¢¢& '
Instance
¢¢' /
.
¢¢/ 0
ResetSingleton
¢¢0 >
(
¢¢> ?
)
¢¢? @
;
¢¢@ A!
KickPlayerFromLobby
££ +
(
££+ ,
userSession
££, 7
,
££7 8
isKicked
££9 A
)
££A B
;
££B C'
RedirectRespectivePlayers
§§ 1
(
§§1 2
isKicked
§§2 :
)
§§: ;
;
§§; <
}
•• 
else
¶¶ 
{
ßß 
MatchSingleton
®® &
.
®®& '
Instance
®®' /
.
®®/ 0
ResetSingleton
®®0 >
(
®®> ?
)
®®? @
;
®®@ A!
KickPlayerFromLobby
©© +
(
©©+ ,
userSession
©©, 7
,
©©7 8
isKicked
©©9 A
)
©©A B
;
©©B C'
RedirectRespectivePlayers
™™ 1
(
™™1 2
isKicked
™™2 :
)
™™: ;
;
™™; <
}
´´ 
matchLobbyCode
¨¨ "
=
¨¨# $
$str
¨¨% (
;
¨¨( )
}
≠≠ 
catch
ÆÆ 
(
ÆÆ '
EndpointNotFoundException
ÆÆ 0
endPointException
ÆÆ1 B
)
ÆÆB C
{
ØØ 
logger
∞∞ 
.
∞∞ 
LogError
∞∞ #
(
∞∞# $
endPointException
∞∞$ 5
)
∞∞5 6
;
∞∞6 7
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
±±L M%
dialogEndPointException
±±M d
)
±±d e
;
±±e f
}
≤≤ 
catch
≥≥ 
(
≥≥ 
TimeoutException
≥≥ '
timeOutException
≥≥( 8
)
≥≥8 9
{
¥¥ 
logger
µµ 
.
µµ 
LogError
µµ #
(
µµ# $
timeOutException
µµ$ 4
)
µµ4 5
;
µµ5 6
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
∑∑ 
catch
∏∏ 
(
∏∏ $
CommunicationException
∏∏ -$
communicationException
∏∏. D
)
∏∏D E
{
ππ 
logger
∫∫ 
.
∫∫ 
LogError
∫∫ #
(
∫∫# $$
communicationException
∫∫$ :
)
∫∫: ;
;
∫∫; <
DialogManager
ªª !
.
ªª! "#
ShowErrorMessageAlert
ªª" 7
(
ªª7 8

Properties
ªª8 B
.
ªªB C
	Resources
ªªC L
.
ªªL M$
dialogTimeOutException
ªªM c
)
ªªc d
;
ªªd e
}
ºº 
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ !
KickPlayerFromLobby
¿¿ (
(
¿¿( )
UserSession
¿¿) 4
session
¿¿5 <
,
¿¿< =
bool
¿¿> B
isKicked
¿¿C K
)
¿¿K L
{
¡¡ 	
LoggerManager
¬¬ 
logger
¬¬  
=
¬¬! "
new
¬¬# &
LoggerManager
¬¬' 4
(
¬¬4 5
this
¬¬5 9
.
¬¬9 :
GetType
¬¬: A
(
¬¬A B
)
¬¬B C
)
¬¬C D
;
¬¬D E
try
√√ 
{
ƒƒ  
lobbyManagerClient
≈≈ "
.
≈≈" #"
LeavePlayerFromLobby
≈≈# 7
(
≈≈7 8
session
≈≈8 ?
,
≈≈? @
matchLobbyCode
≈≈A O
,
≈≈O P
isKicked
≈≈Q Y
)
≈≈Y Z
;
≈≈Z [
}
∆∆ 
catch
«« 
(
«« '
EndpointNotFoundException
«« ,
endPointException
««- >
)
««> ?
{
»» 
logger
…… 
.
…… 
LogError
…… 
(
……  
endPointException
……  1
)
……1 2
;
……2 3
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
  H I%
dialogEndPointException
  I `
)
  ` a
;
  a b
}
ÀÀ 
catch
ÃÃ 
(
ÃÃ 
TimeoutException
ÃÃ #
timeOutException
ÃÃ$ 4
)
ÃÃ4 5
{
ÕÕ 
logger
ŒŒ 
.
ŒŒ 
LogError
ŒŒ 
(
ŒŒ  
timeOutException
ŒŒ  0
)
ŒŒ0 1
;
ŒŒ1 2
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
–– 
catch
—— 
(
—— $
CommunicationException
—— )$
communicationException
——* @
)
——@ A
{
““ 
logger
”” 
.
”” 
LogError
”” 
(
””  $
communicationException
””  6
)
””6 7
;
””7 8
DialogManager
‘‘ 
.
‘‘ #
ShowErrorMessageAlert
‘‘ 3
(
‘‘3 4

Properties
‘‘4 >
.
‘‘> ?
	Resources
‘‘? H
.
‘‘H I$
dialogTimeOutException
‘‘I _
)
‘‘_ `
;
‘‘` a
}
’’ 
}
÷÷ 	
private
ÿÿ 
void
ÿÿ  
LeaveUserGameLobby
ÿÿ '
(
ÿÿ' (
)
ÿÿ( )
{
ŸŸ 	
LoggerManager
⁄⁄ 
logger
⁄⁄  
=
⁄⁄! "
new
⁄⁄# &
LoggerManager
⁄⁄' 4
(
⁄⁄4 5
this
⁄⁄5 9
.
⁄⁄9 :
GetType
⁄⁄: A
(
⁄⁄A B
)
⁄⁄B C
)
⁄⁄C D
;
⁄⁄D E
try
€€ 
{
‹‹ 
	HiveProxy
›› 
.
›› &
UserSessionManagerClient
›› 2&
userSessionManagerClient
››3 K
=
››L M
new
››N Q
	HiveProxy
››R [
.
››[ \&
UserSessionManagerClient
››\ t
(
››t u
)
››u v
;
››v w
Profile
ﬁﬁ 
guestToDisconnect
ﬁﬁ )
=
ﬁﬁ* +
new
ﬁﬁ, /
Profile
ﬁﬁ0 7
(
ﬁﬁ7 8
)
ﬁﬁ8 9
{
ﬂﬂ 
username
‡‡ 
=
‡‡ "
UserProfileSingleton
‡‡ 3
.
‡‡3 4
username
‡‡4 <
,
‡‡< =
idAccesAccount
·· "
=
··# $"
UserProfileSingleton
··% 9
.
··9 :
	idAccount
··: C
}
‚‚ 
;
‚‚ 
int
„„ *
profileDisconnectionFromChat
„„ 0
=
„„1 2
chatManager
„„3 >
.
„„> ?%
DisconectPlayerFromChat
„„? V
(
„„V W
guestToDisconnect
„„W h
,
„„h i
matchLobbyCode
„„j x
)
„„x y
;
„„y z
if
‰‰ 
(
‰‰ *
profileDisconnectionFromChat
‰‰ 0
==
‰‰1 3
	Constants
‰‰4 =
.
‰‰= >
SUCCES_OPERATION
‰‰> N
)
‰‰N O
{
ÂÂ 
MainMenu
ÊÊ 
mainMenu
ÊÊ %
=
ÊÊ& '
new
ÊÊ( +
MainMenu
ÊÊ, 4
(
ÊÊ4 5
)
ÊÊ5 6
;
ÊÊ6 7
this
ÁÁ 
.
ÁÁ 
NavigationService
ÁÁ *
.
ÁÁ* +
Navigate
ÁÁ+ 3
(
ÁÁ3 4
mainMenu
ÁÁ4 <
)
ÁÁ< =
;
ÁÁ= >
}
ËË 
else
ÈÈ 
{
ÍÍ 
DialogManager
ÎÎ !
.
ÎÎ! "%
ShowWarningMessageAlert
ÎÎ" 9
(
ÎÎ9 :

Properties
ÎÎ: D
.
ÎÎD E
	Resources
ÎÎE N
.
ÎÎN O-
dialogCouldntLobbyDisconnection
ÎÎO n
)
ÎÎn o
;
ÎÎo p
}
ÏÏ 
}
ÌÌ 
catch
ÓÓ 
(
ÓÓ '
EndpointNotFoundException
ÓÓ ,
endPointException
ÓÓ- >
)
ÓÓ> ?
{
ÔÔ 
logger
 
.
 
LogError
 
(
  
endPointException
  1
)
1 2
;
2 3
DialogManager
ÒÒ 
.
ÒÒ #
ShowErrorMessageAlert
ÒÒ 3
(
ÒÒ3 4

Properties
ÒÒ4 >
.
ÒÒ> ?
	Resources
ÒÒ? H
.
ÒÒH I%
dialogEndPointException
ÒÒI `
)
ÒÒ` a
;
ÒÒa b
}
ÚÚ 
catch
ÛÛ 
(
ÛÛ 
TimeoutException
ÛÛ #
timeOutException
ÛÛ$ 4
)
ÛÛ4 5
{
ÙÙ 
logger
ıı 
.
ıı 
LogError
ıı 
(
ıı  
timeOutException
ıı  0
)
ıı0 1
;
ıı1 2
DialogManager
ˆˆ 
.
ˆˆ #
ShowErrorMessageAlert
ˆˆ 3
(
ˆˆ3 4

Properties
ˆˆ4 >
.
ˆˆ> ?
	Resources
ˆˆ? H
.
ˆˆH I$
dialogTimeOutException
ˆˆI _
)
ˆˆ_ `
;
ˆˆ` a
}
˜˜ 
catch
¯¯ 
(
¯¯ $
CommunicationException
¯¯ )$
communicationException
¯¯* @
)
¯¯@ A
{
˘˘ 
logger
˙˙ 
.
˙˙ 
LogError
˙˙ 
(
˙˙  $
communicationException
˙˙  6
)
˙˙6 7
;
˙˙7 8
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
˚˚H I)
dialogComunicationException
˚˚I d
)
˚˚d e
;
˚˚e f
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
void
ˇˇ !
LeaveGuestGameLobby
ˇˇ (
(
ˇˇ( )
)
ˇˇ) *
{
ÄÄ 	
LoggerManager
ÅÅ 
logger
ÅÅ  
=
ÅÅ! "
new
ÅÅ# &
LoggerManager
ÅÅ' 4
(
ÅÅ4 5
this
ÅÅ5 9
.
ÅÅ9 :
GetType
ÅÅ: A
(
ÅÅA B
)
ÅÅB C
)
ÅÅC D
;
ÅÅD E
try
ÇÇ 
{
ÉÉ 
	HiveProxy
ÑÑ 
.
ÑÑ &
UserSessionManagerClient
ÑÑ 2&
userSessionManagerClient
ÑÑ3 K
=
ÑÑL M
new
ÑÑN Q
	HiveProxy
ÑÑR [
.
ÑÑ[ \&
UserSessionManagerClient
ÑÑ\ t
(
ÑÑt u
)
ÑÑu v
;
ÑÑv w
Profile
ÖÖ 
guestToDisconnect
ÖÖ )
=
ÖÖ* +
new
ÖÖ, /
Profile
ÖÖ0 7
(
ÖÖ7 8
)
ÖÖ8 9
{
ÜÜ 
username
áá 
=
áá "
UserProfileSingleton
áá 3
.
áá3 4
username
áá4 <
,
áá< =
idAccesAccount
àà "
=
àà# $"
UserProfileSingleton
àà% 9
.
àà9 :
	idAccount
àà: C
}
ââ 
;
ââ 
UserSession
ää 
userSession
ää '
=
ää( )
new
ää* -
UserSession
ää. 9
(
ää9 :
)
ää: ;
{
ãã 
username
åå 
=
åå "
UserProfileSingleton
åå 3
.
åå3 4
username
åå4 <
,
åå< =
	idAccount
çç 
=
çç "
UserProfileSingleton
çç  4
.
çç4 5
	idAccount
çç5 >
,
çç> ?
}
éé 
;
éé 
int
èè *
profileDisconnectionFromChat
èè 0
=
èè1 2
chatManager
èè3 >
.
èè> ?%
DisconectPlayerFromChat
èè? V
(
èèV W
guestToDisconnect
èèW h
,
èèh i
matchLobbyCode
èèj x
)
èèx y
;
èèy z
int
êê *
profileDisconnectionFromGame
êê 0
=
êê1 2&
userSessionManagerClient
êê3 K
.
êêK L

Disconnect
êêL V
(
êêV W
userSession
êêW b
,
êêb c
false
êêd i
)
êêi j
;
êêj k
if
ëë 
(
ëë *
profileDisconnectionFromChat
ëë /
==
ëë0 2
	Constants
ëë3 <
.
ëë< =
SUCCES_OPERATION
ëë= M
&&
ëëN P*
profileDisconnectionFromGame
ëëQ m
==
ëën p
	Constants
ëëq z
.
ëëz {
SUCCES_OPERATIONëë{ ã
)ëëã å
{
íí "
UserProfileSingleton
ìì (
.
ìì( )
Instance
ìì) 1
.
ìì1 2
ResetSingleton
ìì2 @
(
ìì@ A
)
ììA B
;
ììB C
	LoginView
îî 
	loginView
îî '
=
îî( )
new
îî* -
	LoginView
îî. 7
(
îî7 8
)
îî8 9
;
îî9 :
this
ïï 
.
ïï 
NavigationService
ïï *
.
ïï* +
Navigate
ïï+ 3
(
ïï3 4
	loginView
ïï4 =
)
ïï= >
;
ïï> ?
}
ññ 
else
óó 
{
òò 
DialogManager
ôô !
.
ôô! "%
ShowWarningMessageAlert
ôô" 9
(
ôô9 :

Properties
ôô: D
.
ôôD E
	Resources
ôôE N
.
ôôN O/
!globalDialog_PartialDisconnection
ôôO p
)
ôôp q
;
ôôq r
}
öö 
}
õõ 
catch
úú 
(
úú '
EndpointNotFoundException
úú ,
endPointException
úú- >
)
úú> ?
{
ùù 
logger
ûû 
.
ûû 
LogError
ûû 
(
ûû  
endPointException
ûû  1
)
ûû1 2
;
ûû2 3
DialogManager
üü 
.
üü #
ShowErrorMessageAlert
üü 3
(
üü3 4

Properties
üü4 >
.
üü> ?
	Resources
üü? H
.
üüH I%
dialogEndPointException
üüI `
)
üü` a
;
üüa b
}
†† 
catch
°° 
(
°° 
TimeoutException
°° #
timeOutException
°°$ 4
)
°°4 5
{
¢¢ 
logger
££ 
.
££ 
LogError
££ 
(
££  
timeOutException
££  0
)
££0 1
;
££1 2
DialogManager
§§ 
.
§§ #
ShowErrorMessageAlert
§§ 3
(
§§3 4

Properties
§§4 >
.
§§> ?
	Resources
§§? H
.
§§H I)
dialogComunicationException
§§I d
)
§§d e
;
§§e f
}
•• 
catch
¶¶ 
(
¶¶ $
CommunicationException
¶¶ )$
communicationException
¶¶* @
)
¶¶@ A
{
ßß 
logger
®® 
.
®® 
LogError
®® 
(
®®  $
communicationException
®®  6
)
®®6 7
;
®®7 8
DialogManager
©© 
.
©© #
ShowErrorMessageAlert
©© 3
(
©©3 4

Properties
©©4 >
.
©©> ?
	Resources
©©? H
.
©©H I$
dialogTimeOutException
©©I _
)
©©_ `
;
©©` a
}
™™ 
}
´´ 	
public
≠≠ 
void
≠≠ 
ReceiveMessage
≠≠ "
(
≠≠" #
Message
≠≠# *
[
≠≠* +
]
≠≠+ ,
message
≠≠- 4
)
≠≠4 5
{
ÆÆ 	
ChatMessagesPanel
ØØ 
.
ØØ 
Children
ØØ &
.
ØØ& '
Clear
ØØ' ,
(
ØØ, -
)
ØØ- .
;
ØØ. /
for
∞∞ 
(
∞∞ 
int
∞∞ 
indexListMessage
∞∞ %
=
∞∞& '
$num
∞∞( )
;
∞∞) *
indexListMessage
∞∞+ ;
<
∞∞< =
message
∞∞> E
.
∞∞E F
Length
∞∞F L
;
∞∞L M
indexListMessage
∞∞N ^
++
∞∞^ `
)
∞∞` a
{
±± 
if
≤≤ 
(
≤≤ 
message
≤≤ 
[
≤≤ 
indexListMessage
≤≤ ,
]
≤≤, -
.
≤≤- .
username
≤≤. 6
.
≤≤6 7
Equals
≤≤7 =
(
≤≤= >
userProfile
≤≤> I
.
≤≤I J
username
≤≤J R
)
≤≤R S
)
≤≤S T
{
≥≥ 
string
¥¥ 
messageReceived
¥¥ *
=
¥¥+ ,
$"
¥¥- /
{
¥¥/ 0
message
¥¥0 7
[
¥¥7 8
indexListMessage
¥¥8 H
]
¥¥H I
.
¥¥I J
username
¥¥J R
}
¥¥R S
$str
¥¥S U
{
¥¥U V
message
¥¥V ]
[
¥¥] ^
indexListMessage
¥¥^ n
]
¥¥n o
.
¥¥o p
text
¥¥p t
}
¥¥t u
$str
¥¥u v
{
¥¥v w
DateTime
¥¥w 
.¥¥ Ä
Now¥¥Ä É
.¥¥É Ñ
ToString¥¥Ñ å
(¥¥å ç
$str¥¥ç î
)¥¥î ï
}¥¥ï ñ
"¥¥ñ ó
;¥¥ó ò
Border
µµ 
messageContainer
µµ +
=
µµ, -
new
µµ. 1
Border
µµ2 8
{
∂∂ 

Background
∑∑ "
=
∑∑# $
new
∑∑% (
SolidColorBrush
∑∑) 8
(
∑∑8 9
Colors
∑∑9 ?
.
∑∑? @
White
∑∑@ E
)
∑∑E F
,
∑∑F G
BorderThickness
∏∏ '
=
∏∏( )
new
∏∏* -
	Thickness
∏∏. 7
(
∏∏7 8
$num
∏∏8 9
)
∏∏9 :
,
∏∏: ;
Padding
ππ 
=
ππ  !
new
ππ" %
	Thickness
ππ& /
(
ππ/ 0
$num
ππ0 2
)
ππ2 3
,
ππ3 4
Margin
∫∫ 
=
∫∫  
new
∫∫! $
	Thickness
∫∫% .
(
∫∫. /
$num
∫∫/ 1
,
∫∫1 2
$num
∫∫3 4
,
∫∫4 5
$num
∫∫6 8
,
∫∫8 9
$num
∫∫: ;
)
∫∫; <
,
∫∫< =!
HorizontalAlignment
ªª +
=
ªª, -!
HorizontalAlignment
ªª. A
.
ªªA B
Right
ªªB G
}
ºº 
;
ºº 
	TextBlock
ΩΩ 
messageBlock
ΩΩ *
=
ΩΩ+ ,
new
ΩΩ- 0
	TextBlock
ΩΩ1 :
{
ææ 
Text
øø 
=
øø 
messageReceived
øø .
,
øø. /

Foreground
¿¿ "
=
¿¿# $
new
¿¿% (
SolidColorBrush
¿¿) 8
(
¿¿8 9
Colors
¿¿9 ?
.
¿¿? @
Black
¿¿@ E
)
¿¿E F
,
¿¿F G
FontSize
¡¡  
=
¡¡! "
$num
¡¡# %
,
¡¡% &

FontWeight
¬¬ "
=
¬¬# $
FontWeights
¬¬% 0
.
¬¬0 1
Bold
¬¬1 5
,
¬¬5 6
TextWrapping
√√ $
=
√√% &
TextWrapping
√√' 3
.
√√3 4
Wrap
√√4 8
,
√√8 9
MaxWidth
ƒƒ  
=
ƒƒ! "
$num
ƒƒ# &
}
≈≈ 
;
≈≈ 
messageContainer
∆∆ $
.
∆∆$ %
Child
∆∆% *
=
∆∆+ ,
messageBlock
∆∆- 9
;
∆∆9 :
ChatMessagesPanel
«« %
.
««% &
Children
««& .
.
««. /
Add
««/ 2
(
««2 3
messageContainer
««3 C
)
««C D
;
««D E
}
»» 
else
…… 
{
   
string
ÀÀ 
messageReceived
ÀÀ *
=
ÀÀ+ ,
$"
ÀÀ- /
{
ÀÀ/ 0
message
ÀÀ0 7
[
ÀÀ7 8
indexListMessage
ÀÀ8 H
]
ÀÀH I
.
ÀÀI J
username
ÀÀJ R
}
ÀÀR S
$str
ÀÀS U
{
ÀÀU V
message
ÀÀV ]
[
ÀÀ] ^
indexListMessage
ÀÀ^ n
]
ÀÀn o
.
ÀÀo p
text
ÀÀp t
}
ÀÀt u
$str
ÀÀu v
{
ÀÀv w
DateTime
ÀÀw 
.ÀÀ Ä
NowÀÀÄ É
.ÀÀÉ Ñ
ToStringÀÀÑ å
(ÀÀå ç
$strÀÀç î
)ÀÀî ï
}ÀÀï ñ
"ÀÀñ ó
;ÀÀó ò
Border
ÃÃ 
messageContainer
ÃÃ +
=
ÃÃ, -
new
ÃÃ. 1
Border
ÃÃ2 8
{
ÕÕ 

Background
ŒŒ "
=
ŒŒ# $
new
ŒŒ% (
SolidColorBrush
ŒŒ) 8
(
ŒŒ8 9
Colors
ŒŒ9 ?
.
ŒŒ? @
White
ŒŒ@ E
)
ŒŒE F
,
ŒŒF G
BorderThickness
œœ '
=
œœ( )
new
œœ* -
	Thickness
œœ. 7
(
œœ7 8
$num
œœ8 9
)
œœ9 :
,
œœ: ;
Padding
–– 
=
––  !
new
––" %
	Thickness
––& /
(
––/ 0
$num
––0 2
)
––2 3
,
––3 4
Margin
—— 
=
——  
new
——! $
	Thickness
——% .
(
——. /
$num
——/ 1
,
——1 2
$num
——3 4
,
——4 5
$num
——6 8
,
——8 9
$num
——: ;
)
——; <
,
——< =!
HorizontalAlignment
““ +
=
““, -!
HorizontalAlignment
““. A
.
““A B
Left
““B F
}
”” 
;
”” 
	TextBlock
‘‘ 
messageBlock
‘‘ *
=
‘‘+ ,
new
‘‘- 0
	TextBlock
‘‘1 :
{
’’ 
Text
÷÷ 
=
÷÷ 
messageReceived
÷÷ .
,
÷÷. /

Foreground
◊◊ "
=
◊◊# $
new
◊◊% (
SolidColorBrush
◊◊) 8
(
◊◊8 9
Colors
◊◊9 ?
.
◊◊? @
Black
◊◊@ E
)
◊◊E F
,
◊◊F G
FontSize
ÿÿ  
=
ÿÿ! "
$num
ÿÿ# %
,
ÿÿ% &

FontWeight
ŸŸ "
=
ŸŸ# $
FontWeights
ŸŸ% 0
.
ŸŸ0 1
Bold
ŸŸ1 5
,
ŸŸ5 6
TextWrapping
⁄⁄ $
=
⁄⁄% &
TextWrapping
⁄⁄' 3
.
⁄⁄3 4
Wrap
⁄⁄4 8
,
⁄⁄8 9
MaxWidth
€€  
=
€€! "
$num
€€# &
}
‹‹ 
;
‹‹ 
messageContainer
›› $
.
››$ %
Child
››% *
=
››+ ,
messageBlock
››- 9
;
››9 :
ChatMessagesPanel
ﬁﬁ %
.
ﬁﬁ% &
Children
ﬁﬁ& .
.
ﬁﬁ. /
Add
ﬁﬁ/ 2
(
ﬁﬁ2 3
messageContainer
ﬁﬁ3 C
)
ﬁﬁC D
;
ﬁﬁD E
}
ﬂﬂ 
}
‡‡ 
}
‚‚ 	
private
‰‰ 
void
‰‰ "
BtnSendMessage_Click
‰‰ )
(
‰‰) *
object
‰‰* 0
sender
‰‰1 7
,
‰‰7 8
RoutedEventArgs
‰‰9 H
e
‰‰I J
)
‰‰J K
{
ÂÂ 	
LoggerManager
ÊÊ 
logger
ÊÊ  
=
ÊÊ! "
new
ÊÊ# &
LoggerManager
ÊÊ' 4
(
ÊÊ4 5
this
ÊÊ5 9
.
ÊÊ9 :
GetType
ÊÊ: A
(
ÊÊA B
)
ÊÊB C
)
ÊÊC D
;
ÊÊD E
string
ÁÁ 
message
ÁÁ 
=
ÁÁ 
txtb_MessageInput
ÁÁ .
.
ÁÁ. /
Text
ÁÁ/ 3
;
ÁÁ3 4
if
ÈÈ 
(
ÈÈ 
!
ÈÈ 
string
ÈÈ 
.
ÈÈ 
IsNullOrEmpty
ÈÈ %
(
ÈÈ% &
message
ÈÈ& -
)
ÈÈ- .
)
ÈÈ. /
{
ÍÍ 
Message
ÎÎ 
messageToSend
ÎÎ %
=
ÎÎ& '
new
ÎÎ( +
Message
ÎÎ, 3
(
ÎÎ3 4
)
ÎÎ4 5
{
ÏÏ 
username
ÌÌ 
=
ÌÌ 
userProfile
ÌÌ *
.
ÌÌ* +
username
ÌÌ+ 3
,
ÌÌ3 4
text
ÓÓ 
=
ÓÓ 
message
ÓÓ "
}
ÔÔ 
;
ÔÔ 
try
 
{
ÒÒ 
chatManager
ÚÚ 
.
ÚÚ  
SendMessages
ÚÚ  ,
(
ÚÚ, -
messageToSend
ÚÚ- :
,
ÚÚ: ;
matchLobbyCode
ÚÚ; I
)
ÚÚI J
;
ÚÚJ K
txtb_MessageInput
ÛÛ %
.
ÛÛ% &
Clear
ÛÛ& +
(
ÛÛ+ ,
)
ÛÛ, -
;
ÛÛ- .
}
ÙÙ 
catch
ıı 
(
ıı '
EndpointNotFoundException
ıı 0
endPointException
ıı1 B
)
ııB C
{
ˆˆ 
logger
˜˜ 
.
˜˜ 
LogError
˜˜ #
(
˜˜# $
endPointException
˜˜$ 5
)
˜˜5 6
;
˜˜6 7
DialogManager
¯¯ !
.
¯¯! "#
ShowErrorMessageAlert
¯¯" 7
(
¯¯7 8

Properties
¯¯8 B
.
¯¯B C
	Resources
¯¯C L
.
¯¯L M%
dialogEndPointException
¯¯M d
)
¯¯d e
;
¯¯e f
}
˘˘ 
catch
˙˙ 
(
˙˙ 
TimeoutException
˙˙ '
timeOutException
˙˙( 8
)
˙˙8 9
{
˚˚ 
logger
¸¸ 
.
¸¸ 
LogError
¸¸ #
(
¸¸# $
timeOutException
¸¸$ 4
)
¸¸4 5
;
¸¸5 6
DialogManager
˝˝ !
.
˝˝! "#
ShowErrorMessageAlert
˝˝" 7
(
˝˝7 8

Properties
˝˝8 B
.
˝˝B C
	Resources
˝˝C L
.
˝˝L M)
dialogComunicationException
˝˝M h
)
˝˝h i
;
˝˝i j
}
˛˛ 
catch
ˇˇ 
(
ˇˇ $
CommunicationException
ˇˇ -$
communicationException
ˇˇ. D
)
ˇˇD E
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogError
ÅÅ #
(
ÅÅ# $$
communicationException
ÅÅ$ :
)
ÅÅ: ;
;
ÅÅ; <
DialogManager
ÇÇ !
.
ÇÇ! "#
ShowErrorMessageAlert
ÇÇ" 7
(
ÇÇ7 8

Properties
ÇÇ8 B
.
ÇÇB C
	Resources
ÇÇC L
.
ÇÇL M$
dialogTimeOutException
ÇÇM c
)
ÇÇc d
;
ÇÇd e
}
ÉÉ 
txtb_MessageInput
ÑÑ !
.
ÑÑ! "
Clear
ÑÑ" '
(
ÑÑ' (
)
ÑÑ( )
;
ÑÑ) *
txtb_CharCount
ÖÖ 
.
ÖÖ 
Text
ÖÖ #
=
ÖÖ$ %
$str
ÖÖ& -
;
ÖÖ- .
}
ÜÜ 
}
áá 	
private
ââ 
void
ââ #
BtnInviteFriend_Click
ââ *
(
ââ* +
object
ââ+ 1
sender
ââ2 8
,
ââ8 9
RoutedEventArgs
ââ: I
e
ââJ K
)
ââK L
{
ää 	
LoggerManager
ãã 
logger
ãã  
=
ãã! "
new
ãã# &
LoggerManager
ãã' 4
(
ãã4 5
this
ãã5 9
.
ãã9 :
GetType
ãã: A
(
ããA B
)
ããB C
)
ããC D
;
ããD E
	HiveProxy
åå 
.
åå *
EmailInvitationManagerClient
åå 2*
emailInvitationManagerClient
åå3 O
=
ååP Q
new
ååR U
	HiveProxy
ååV _
.
åå_ `*
EmailInvitationManagerClient
åå` |
(
åå| }
)
åå} ~
;
åå~ 
try
çç 
{
éé 
Button
èè 
clickedButton
èè $
=
èè% &
sender
èè' -
as
èè. 0
Button
èè1 7
;
èè7 8
Friend
êê 
friendToInvite
êê %
=
êê& '
clickedButton
êê( 5
.
êê5 6
DataContext
êê6 A
as
êêB D
Friend
êêE K
;
êêK L
UserVerificator
ëë 
userToInvite
ëë  ,
=
ëë- .
new
ëë/ 2
UserVerificator
ëë3 B
(
ëëB C
)
ëëC D
{
íí 
code
ìì 
=
ìì 
matchLobbyCode
ìì )
,
ìì) *
email
îî 
=
îî 
friendToInvite
îî *
.
îî* +
email
îî+ 0
,
îî0 1
}
ïï 
;
ïï 
int
ññ 
resultInvitation
ññ $
=
ññ% &*
emailInvitationManagerClient
ññ' C
.
ññC D!
SendEmailInvitation
ññD W
(
ññW X
userToInvite
ññX d
)
ññd e
;
ññe f
if
óó 
(
óó 
resultInvitation
óó #
==
óó$ &
	Constants
óó' 0
.
óó0 1
SUCCES_OPERATION
óó1 A
)
óóA B
{
òò 
DialogManager
ôô !
.
ôô! "%
ShowSuccessMessageAlert
ôô" 9
(
ôô9 :

Properties
ôô: D
.
ôôD E
	Resources
ôôE N
.
ôôN O'
dialogEmailInvitationSend
ôôO h
)
ôôh i
;
ôôi j
}
öö 
else
õõ 
{
úú 
DialogManager
ùù !
.
ùù! "#
ShowErrorMessageAlert
ùù" 7
(
ùù7 8

Properties
ùù8 B
.
ùùB C
	Resources
ùùC L
.
ùùL M$
dialogCouldntSendEmail
ùùM c
)
ùùc d
;
ùùd e
}
ûû 
}
üü 
catch
†† 
(
†† '
EndpointNotFoundException
†† ,
endPointException
††- >
)
††> ?
{
°° 
logger
¢¢ 
.
¢¢ 
LogError
¢¢ 
(
¢¢  
endPointException
¢¢  1
)
¢¢1 2
;
¢¢2 3
DialogManager
££ 
.
££ #
ShowErrorMessageAlert
££ 3
(
££3 4

Properties
££4 >
.
££> ?
	Resources
££? H
.
££H I%
dialogEndPointException
££I `
)
££` a
;
££a b
}
§§ 
catch
•• 
(
•• 
TimeoutException
•• #
timeOutException
••$ 4
)
••4 5
{
¶¶ 
logger
ßß 
.
ßß 
LogError
ßß 
(
ßß  
timeOutException
ßß  0
)
ßß0 1
;
ßß1 2
DialogManager
®® 
.
®® #
ShowErrorMessageAlert
®® 3
(
®®3 4

Properties
®®4 >
.
®®> ?
	Resources
®®? H
.
®®H I)
dialogComunicationException
®®I d
)
®®d e
;
®®e f
}
©© 
catch
™™ 
(
™™ $
CommunicationException
™™ )$
communicationException
™™* @
)
™™@ A
{
´´ 
logger
¨¨ 
.
¨¨ 
LogError
¨¨ 
(
¨¨  $
communicationException
¨¨  6
)
¨¨6 7
;
¨¨7 8
DialogManager
≠≠ 
.
≠≠ #
ShowErrorMessageAlert
≠≠ 3
(
≠≠3 4

Properties
≠≠4 >
.
≠≠> ?
	Resources
≠≠? H
.
≠≠H I$
dialogTimeOutException
≠≠I _
)
≠≠_ `
;
≠≠` a
}
ÆÆ 
}
ØØ 	
private
≤≤ 
void
≤≤ )
TxtMessageInput_TextChanged
≤≤ 0
(
≤≤0 1
object
≤≤1 7
sender
≤≤8 >
,
≤≤> ?"
TextChangedEventArgs
≤≤@ T
e
≤≤U V
)
≤≤V W
{
≥≥ 	
int
¥¥ 
currentLength
¥¥ 
=
¥¥ 
txtb_MessageInput
¥¥  1
.
¥¥1 2
Text
¥¥2 6
.
¥¥6 7
Length
¥¥7 =
;
¥¥= >
txtb_CharCount
µµ 
.
µµ 
Text
µµ 
=
µµ  !
$"
µµ" $
{
µµ$ %
currentLength
µµ% 2
}
µµ2 3
$str
µµ3 7
"
µµ7 8
;
µµ8 9
if
∂∂ 
(
∂∂ 
currentLength
∂∂ 
==
∂∂  
$num
∂∂! $
)
∂∂$ %
{
∑∑ 
txtb_MessageInput
∏∏ !
.
∏∏! "

IsReadOnly
∏∏" ,
=
∏∏- .
true
∏∏/ 3
;
∏∏3 4
}
ππ 
else
∫∫ 
{
ªª 
txtb_MessageInput
ºº !
.
ºº! "

IsReadOnly
ºº" ,
=
ºº- .
false
ºº/ 4
;
ºº4 5
}
ΩΩ 
}
ææ 	
private
¿¿ 
void
¿¿ 
BtnSendOff_Click
¿¿ %
(
¿¿% &
object
¿¿& ,
sender
¿¿- 3
,
¿¿3 4
RoutedEventArgs
¿¿5 D
e
¿¿E F
)
¿¿F G
{
¡¡ 	
UserSession
¬¬ 

userToKick
¬¬ "
=
¬¬# $
usersInLobby
¬¬% 1
[
¬¬1 2
$num
¬¬2 3
]
¬¬3 4
;
¬¬4 5
if
√√ 
(
√√ 
DialogManager
√√ 
.
√√ *
ShowConfirmationMessageAlert
√√ :
(
√√: ;

Properties
√√; E
.
√√E F
	Resources
√√F O
.
√√O P*
dialogConfirmationKickPlayer
√√P l
)
√√l m
)
√√m n
{
ƒƒ 
LoggerManager
≈≈ 
logger
≈≈ $
=
≈≈% &
new
≈≈' *
LoggerManager
≈≈+ 8
(
≈≈8 9
this
≈≈9 =
.
≈≈= >
GetType
≈≈> E
(
≈≈E F
)
≈≈F G
)
≈≈G H
;
≈≈H I
Profile
∆∆  
userToKickFromChat
∆∆ *
=
∆∆+ ,
new
∆∆- 0
Profile
∆∆1 8
(
∆∆8 9
)
∆∆9 :
{
«« 
	idAccount
»» 
=
»» 

userToKick
»»  *
.
»»* +
	idAccount
»»+ 4
,
»»4 5
username
…… 
=
…… 

userToKick
…… )
.
……) *
username
……* 2
,
……2 3
}
   
;
   
try
ÀÀ 
{
ÃÃ 
bool
ÕÕ 
isKicked
ÕÕ !
=
ÕÕ" #
true
ÕÕ$ (
;
ÕÕ( )
if
ŒŒ 
(
ŒŒ 

userToKick
ŒŒ "
.
ŒŒ" #
	idAccount
ŒŒ# ,
!=
ŒŒ- /
	Constants
ŒŒ0 9
.
ŒŒ9 :
DEFAULT_GUEST_ID
ŒŒ: J
)
ŒŒJ K
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
——A B
chatManager
““ #
.
““# $%
DisconectPlayerFromChat
““$ ;
(
““; < 
userToKickFromChat
““< N
,
““N O
matchLobbyCode
““P ^
)
““^ _
;
““_ `
}
”” 
else
‘‘ 
{
’’ 
MatchSingleton
÷÷ &
.
÷÷& '
Instance
÷÷' /
.
÷÷/ 0
ResetSingleton
÷÷0 >
(
÷÷> ?
)
÷÷? @
;
÷÷@ A!
KickPlayerFromLobby
◊◊ +
(
◊◊+ ,

userToKick
◊◊, 6
,
◊◊6 7
isKicked
◊◊8 @
)
◊◊@ A
;
◊◊A B&
UserSessionManagerClient
ÿÿ 0
.
ÿÿ0 1

Disconnect
ÿÿ1 ;
(
ÿÿ; <

userToKick
ÿÿ< F
,
ÿÿF G
false
ÿÿH M
)
ÿÿM N
;
ÿÿN O
}
ŸŸ 
}
⁄⁄ 
catch
€€ 
(
€€ '
EndpointNotFoundException
€€ 0
endPointException
€€1 B
)
€€B C
{
‹‹ 
logger
›› 
.
›› 
LogError
›› #
(
››# $
endPointException
››$ 5
)
››5 6
;
››6 7
DialogManager
ﬁﬁ !
.
ﬁﬁ! "#
ShowErrorMessageAlert
ﬁﬁ" 7
(
ﬁﬁ7 8

Properties
ﬁﬁ8 B
.
ﬁﬁB C
	Resources
ﬁﬁC L
.
ﬁﬁL M%
dialogEndPointException
ﬁﬁM d
)
ﬁﬁd e
;
ﬁﬁe f
}
ﬂﬂ 
catch
‡‡ 
(
‡‡ 
TimeoutException
‡‡ '
timeOutException
‡‡( 8
)
‡‡8 9
{
·· 
logger
‚‚ 
.
‚‚ 
LogError
‚‚ #
(
‚‚# $
timeOutException
‚‚$ 4
)
‚‚4 5
;
‚‚5 6
DialogManager
„„ !
.
„„! "#
ShowErrorMessageAlert
„„" 7
(
„„7 8

Properties
„„8 B
.
„„B C
	Resources
„„C L
.
„„L M)
dialogComunicationException
„„M h
)
„„h i
;
„„i j
}
‰‰ 
catch
ÂÂ 
(
ÂÂ $
CommunicationException
ÂÂ -$
communicationException
ÂÂ. D
)
ÂÂD E
{
ÊÊ 
logger
ÁÁ 
.
ÁÁ 
LogError
ÁÁ #
(
ÁÁ# $$
communicationException
ÁÁ$ :
)
ÁÁ: ;
;
ÁÁ; <
DialogManager
ËË !
.
ËË! "#
ShowErrorMessageAlert
ËË" 7
(
ËË7 8

Properties
ËË8 B
.
ËËB C
	Resources
ËËC L
.
ËËL M$
dialogTimeOutException
ËËM c
)
ËËc d
;
ËËd e
}
ÈÈ 
}
ÍÍ 
}
ÎÎ 	
private
ÌÌ 
void
ÌÌ ,
RefreshActiveFriendsList_Click
ÌÌ 3
(
ÌÌ3 4
object
ÌÌ4 :
sender
ÌÌ; A
,
ÌÌA B
RoutedEventArgs
ÌÌC R
e
ÌÌS T
)
ÌÌT U
{
ÓÓ 	
LoggerManager
ÔÔ 
logger
ÔÔ  
=
ÔÔ! "
new
ÔÔ# &
LoggerManager
ÔÔ' 4
(
ÔÔ4 5
this
ÔÔ5 9
.
ÔÔ9 :
GetType
ÔÔ: A
(
ÔÔA B
)
ÔÔB C
)
ÔÔC D
;
ÔÔD E
try
 
{
ÒÒ 
UserSession
ÚÚ 
userProfile
ÚÚ '
=
ÚÚ( )
new
ÚÚ* -
UserSession
ÚÚ. 9
(
ÚÚ9 :
)
ÚÚ: ;
{
ÛÛ 
	idAccount
ÙÙ 
=
ÙÙ "
UserProfileSingleton
ÙÙ  4
.
ÙÙ4 5
	idAccount
ÙÙ5 >
,
ÙÙ> ?
username
ıı 
=
ıı "
UserProfileSingleton
ıı 3
.
ıı3 4
username
ıı4 <
}
ˆˆ 
;
ˆˆ "
friendsManagerClient
˜˜ $
.
˜˜$ %
GetFriendsList
˜˜% 3
(
˜˜3 4
userProfile
˜˜4 ?
)
˜˜? @
;
˜˜@ A
}
¯¯ 
catch
˘˘ 
(
˘˘ '
EndpointNotFoundException
˘˘ ,
endPointException
˘˘- >
)
˘˘> ?
{
˙˙ 
logger
˚˚ 
.
˚˚ 
LogError
˚˚ 
(
˚˚  
endPointException
˚˚  1
)
˚˚1 2
;
˚˚2 3
DialogManager
¸¸ 
.
¸¸ #
ShowErrorMessageAlert
¸¸ 3
(
¸¸3 4

Properties
¸¸4 >
.
¸¸> ?
	Resources
¸¸? H
.
¸¸H I%
dialogEndPointException
¸¸I `
)
¸¸` a
;
¸¸a b
}
˝˝ 
catch
˛˛ 
(
˛˛ 
TimeoutException
˛˛ #
timeOutException
˛˛$ 4
)
˛˛4 5
{
ˇˇ 
logger
ÄÄ 
.
ÄÄ 
LogError
ÄÄ 
(
ÄÄ  
timeOutException
ÄÄ  0
)
ÄÄ0 1
;
ÄÄ1 2
DialogManager
ÅÅ 
.
ÅÅ #
ShowErrorMessageAlert
ÅÅ 3
(
ÅÅ3 4

Properties
ÅÅ4 >
.
ÅÅ> ?
	Resources
ÅÅ? H
.
ÅÅH I)
dialogComunicationException
ÅÅI d
)
ÅÅd e
;
ÅÅe f
}
ÇÇ 
catch
ÉÉ 
(
ÉÉ $
CommunicationException
ÉÉ )$
communicationException
ÉÉ* @
)
ÉÉ@ A
{
ÑÑ 
logger
ÖÖ 
.
ÖÖ 
LogError
ÖÖ 
(
ÖÖ  $
communicationException
ÖÖ  6
)
ÖÖ6 7
;
ÖÖ7 8
DialogManager
ÜÜ 
.
ÜÜ #
ShowErrorMessageAlert
ÜÜ 3
(
ÜÜ3 4

Properties
ÜÜ4 >
.
ÜÜ> ?
	Resources
ÜÜ? H
.
ÜÜH I$
dialogTimeOutException
ÜÜI _
)
ÜÜ_ `
;
ÜÜ` a
}
áá 
}
àà 	
public
ää 
void
ää $
ObtainConnectedFriends
ää *
(
ää* +
UserSession
ää+ 6
[
ää6 7
]
ää7 8
connectedFriends
ää9 I
)
ääI J
{
ãã 	
LoggerManager
åå 
logger
åå  
=
åå! "
new
åå# &
LoggerManager
åå' 4
(
åå4 5
this
åå5 9
.
åå9 :
GetType
åå: A
(
ååA B
)
ååB C
)
ååC D
;
ååD E$
lstv_ActiveFriendsList
çç "
.
çç" #
Items
çç# (
.
çç( )
Clear
çç) .
(
çç. /
)
çç/ 0
;
çç0 1
try
éé 
{
èè 
	HiveProxy
êê 
.
êê %
FriendshipManagerClient
êê 1%
friendshipManagerClient
êê2 I
=
êêJ K
new
êêL O
	HiveProxy
êêP Y
.
êêY Z%
FriendshipManagerClient
êêZ q
(
êêq r
)
êêr s
;
êês t
Profile
ëë 
userProfile
ëë #
=
ëë$ %
new
ëë& )
Profile
ëë* 1
(
ëë1 2
)
ëë2 3
{
íí 
idAccesAccount
ìì "
=
ìì# $"
UserProfileSingleton
ìì% 9
.
ìì9 :
	idAccount
ìì: C
}
îî 
;
îî 
Profile
ïï 
[
ïï 
]
ïï 
friendsObtained
ïï )
=
ïï* +%
friendshipManagerClient
ïï, C
.
ïïC D
GetAllFriends
ïïD Q
(
ïïQ R
userProfile
ïïR ]
)
ïï] ^
;
ïï^ _
List
ññ 
<
ññ 
Friend
ññ 
>
ññ 
friends
ññ $
=
ññ% &
new
ññ' *
List
ññ+ /
<
ññ/ 0
Friend
ññ0 6
>
ññ6 7
(
ññ7 8
)
ññ8 9
;
ññ9 :!
UserSessionComparer
óó #
comparer
óó$ ,
=
óó- .
new
óó/ 2!
UserSessionComparer
óó3 F
(
óóF G
)
óóG H
;
óóH I
for
òò 
(
òò 
int
òò 
friendsIndex
òò %
=
òò& '
$num
òò( )
;
òò) *
friendsObtained
òò+ :
.
òò: ;
Length
òò; A
>
òòB C
friendsIndex
òòD P
;
òòP Q
friendsIndex
òòR ^
++
òò^ `
)
òò` a
{
ôô 
UserSession
öö 
friendSession
öö  -
=
öö. /
new
öö0 3
UserSession
öö4 ?
(
öö? @
)
öö@ A
{
õõ 
username
úú  
=
úú! "
friendsObtained
úú# 2
[
úú2 3
friendsIndex
úú3 ?
]
úú? @
.
úú@ A
username
úúA I
,
úúI J
	idAccount
ùù !
=
ùù" #
friendsObtained
ùù$ 3
[
ùù3 4
friendsIndex
ùù4 @
]
ùù@ A
.
ùùA B
	idAccount
ùùB K
}
ûû 
;
ûû 
if
üü 
(
üü 
connectedFriends
üü (
.
üü( )
Contains
üü) 1
(
üü1 2
friendSession
üü2 ?
,
üü? @
comparer
üü@ H
)
üüH I
)
üüI J
{
†† 
Friend
°° 
ActiveFriend
°° +
=
°°, -
new
°°. 1
Friend
°°2 8
(
°°8 9
)
°°9 :
{
¢¢ 
	idAccount
££ %
=
££& '
friendsObtained
££( 7
[
££7 8
friendsIndex
££8 D
]
££D E
.
££E F
	idAccount
££F O
,
££O P
username
§§ $
=
§§% &
friendsObtained
§§' 6
[
§§6 7
friendsIndex
§§7 C
]
§§C D
.
§§D E
username
§§E M
,
§§M N
nickname
•• $
=
••% &
friendsObtained
••' 6
[
••6 7
friendsIndex
••7 C
]
••C D
.
••D E
nickname
••E M
,
••M N
email
¶¶ !
=
¶¶" #
friendsObtained
¶¶$ 3
[
¶¶3 4
friendsIndex
¶¶4 @
]
¶¶@ A
.
¶¶A B
email
¶¶B G
,
¶¶G H
	imagePath
ßß %
=
ßß& '
friendsObtained
ßß( 7
[
ßß7 8
friendsIndex
ßß8 D
]
ßßD E
.
ßßE F
	imagePath
ßßF O
}
®® 
;
®® 
friends
©© 
.
©©  
Add
©©  #
(
©©# $
ActiveFriend
©©$ 0
)
©©0 1
;
©©1 2
}
™™ 
}
´´ 
Application
¨¨ 
.
¨¨ 
Current
¨¨ #
.
¨¨# $

Dispatcher
¨¨$ .
.
¨¨. /
Invoke
¨¨/ 5
(
¨¨5 6
(
¨¨6 7
)
¨¨7 8
=>
¨¨9 ;
{
≠≠ $
lstv_ActiveFriendsList
ÆÆ *
.
ÆÆ* +
Items
ÆÆ+ 0
.
ÆÆ0 1
Clear
ÆÆ1 6
(
ÆÆ6 7
)
ÆÆ7 8
;
ÆÆ8 9
for
ØØ 
(
ØØ 
int
ØØ 
indexFriends
ØØ (
=
ØØ) *
$num
ØØ+ ,
;
ØØ, -
friends
ØØ. 5
.
ØØ5 6
Count
ØØ6 ;
>
ØØ< =
indexFriends
ØØ> J
;
ØØJ K
indexFriends
ØØL X
++
ØØX Z
)
ØØZ [
{
∞∞ $
lstv_ActiveFriendsList
±± .
.
±±. /
Items
±±/ 4
.
±±4 5
Add
±±5 8
(
±±8 9
friends
±±9 @
[
±±@ A
indexFriends
±±A M
]
±±M N
)
±±N O
;
±±O P
}
≤≤ 
}
≥≥ 
)
≥≥ 
;
≥≥ 
}
¥¥ 
catch
µµ 
(
µµ '
EndpointNotFoundException
µµ ,
endPointException
µµ- >
)
µµ> ?
{
∂∂ 
logger
∑∑ 
.
∑∑ 
LogError
∑∑ 
(
∑∑  
endPointException
∑∑  1
)
∑∑1 2
;
∑∑2 3
DialogManager
∏∏ 
.
∏∏ #
ShowErrorMessageAlert
∏∏ 3
(
∏∏3 4

Properties
∏∏4 >
.
∏∏> ?
	Resources
∏∏? H
.
∏∏H I%
dialogEndPointException
∏∏I `
)
∏∏` a
;
∏∏a b
}
ππ 
catch
∫∫ 
(
∫∫ 
TimeoutException
∫∫ #
timeOutException
∫∫$ 4
)
∫∫4 5
{
ªª 
logger
ºº 
.
ºº 
LogError
ºº 
(
ºº  
timeOutException
ºº  0
)
ºº0 1
;
ºº1 2
DialogManager
ΩΩ 
.
ΩΩ #
ShowErrorMessageAlert
ΩΩ 3
(
ΩΩ3 4

Properties
ΩΩ4 >
.
ΩΩ> ?
	Resources
ΩΩ? H
.
ΩΩH I)
dialogComunicationException
ΩΩI d
)
ΩΩd e
;
ΩΩe f
}
ææ 
catch
øø 
(
øø $
CommunicationException
øø )$
communicationException
øø* @
)
øø@ A
{
¿¿ 
logger
¡¡ 
.
¡¡ 
LogError
¡¡ 
(
¡¡  $
communicationException
¡¡  6
)
¡¡6 7
;
¡¡7 8
DialogManager
¬¬ 
.
¬¬ #
ShowErrorMessageAlert
¬¬ 3
(
¬¬3 4

Properties
¬¬4 >
.
¬¬> ?
	Resources
¬¬? H
.
¬¬H I$
dialogTimeOutException
¬¬I _
)
¬¬_ `
;
¬¬` a
}
√√ 
}
ƒƒ 	
public
∆∆ 
void
∆∆ #
ReceivePlayersToLobby
∆∆ )
(
∆∆) *
UserSession
∆∆* 5
[
∆∆5 6
]
∆∆6 7
users
∆∆8 =
)
∆∆= >
{
«« 	
usersInLobby
»» 
=
»» 
users
»»  
.
»»  !
ToList
»»! '
(
»»' (
)
»»( )
;
»») *
UserSession
…… 
userSession
…… #
=
……$ %
new
……& )
UserSession
……* 5
(
……5 6
)
……6 7
{
   
username
ÀÀ 
=
ÀÀ "
UserProfileSingleton
ÀÀ /
.
ÀÀ/ 0
username
ÀÀ0 8
,
ÀÀ8 9
	idAccount
ÃÃ 
=
ÃÃ "
UserProfileSingleton
ÃÃ 0
.
ÃÃ0 1
	idAccount
ÃÃ1 :
,
ÃÃ: ;
}
ÕÕ 
;
ÕÕ 
if
ŒŒ 
(
ŒŒ 
users
ŒŒ 
[
ŒŒ 
$num
ŒŒ 
]
ŒŒ 
.
ŒŒ 
	idAccount
ŒŒ "
==
ŒŒ# %
-
ŒŒ& '
$num
ŒŒ' (
)
ŒŒ( )
{
œœ 
bool
–– 
isKicked
–– 
=
–– 
false
––  %
;
––% &
DialogManager
—— 
.
—— %
ShowWarningMessageAlert
—— 5
(
——5 6

Properties
——6 @
.
——@ A
	Resources
——A J
.
——J K
dialogHostHasLeft
——K \
)
——\ ]
;
——] ^'
RedirectRespectivePlayers
““ )
(
““) *
isKicked
““* 2
)
““2 3
;
““3 4
}
”” 
else
‘‘ 
if
‘‘ 
(
‘‘ 
users
‘‘ 
.
‘‘ 
Length
‘‘ !
==
‘‘" $
$num
‘‘% &
)
‘‘& '
{
’’ $
ChargeOnePlayerProfile
÷÷ &
(
÷÷& '
users
÷÷' ,
[
÷÷, -
$num
÷÷- .
]
÷÷. /
)
÷÷/ 0
;
÷÷0 1
}
◊◊ 
else
ÿÿ 
if
ÿÿ 
(
ÿÿ 
users
ÿÿ 
.
ÿÿ 
Length
ÿÿ !
==
ÿÿ" $
$num
ÿÿ% &
)
ÿÿ& '
{
ŸŸ %
ChargeTwoPlayersProfile
⁄⁄ '
(
⁄⁄' (
users
⁄⁄( -
)
⁄⁄- .
;
⁄⁄. /
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ '
RedirectRespectivePlayers
ﬁﬁ .
(
ﬁﬁ. /
bool
ﬁﬁ/ 3
isKicked
ﬁﬁ4 <
)
ﬁﬁ< =
{
ﬂﬂ 	
LoggerManager
‡‡ 
logger
‡‡  
=
‡‡! "
new
‡‡# &
LoggerManager
‡‡' 4
(
‡‡4 5
this
‡‡5 9
.
‡‡9 :
GetType
‡‡: A
(
‡‡A B
)
‡‡B C
)
‡‡C D
;
‡‡D E
UserSession
·· 
userSession
·· #
=
··$ %
new
··& )
UserSession
··* 5
(
··5 6
)
··6 7
{
‚‚ 
username
„„ 
=
„„ "
UserProfileSingleton
„„ /
.
„„/ 0
username
„„0 8
,
„„8 9
	idAccount
‰‰ 
=
‰‰ "
UserProfileSingleton
‰‰ 0
.
‰‰0 1
	idAccount
‰‰1 :
}
ÂÂ 
;
ÂÂ 
try
ÊÊ 
{
ÁÁ 
if
ËË 
(
ËË "
UserProfileSingleton
ËË (
.
ËË( )
	idAccount
ËË) 2
!=
ËË3 5
	Constants
ËË6 ?
.
ËË? @
DEFAULT_GUEST_ID
ËË@ P
)
ËËP Q
{
ÈÈ 
MatchSingleton
ÍÍ "
.
ÍÍ" #
Instance
ÍÍ# +
.
ÍÍ+ ,
ResetSingleton
ÍÍ, :
(
ÍÍ: ;
)
ÍÍ; <
;
ÍÍ< =!
KickPlayerFromLobby
ÎÎ '
(
ÎÎ' (
userSession
ÎÎ( 3
,
ÎÎ3 4
isKicked
ÎÎ5 =
)
ÎÎ= >
;
ÎÎ> ? 
LeaveUserGameLobby
ÏÏ &
(
ÏÏ& '
)
ÏÏ' (
;
ÏÏ( )
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
MatchSingleton
 "
.
" #
Instance
# +
.
+ ,
ResetSingleton
, :
(
: ;
)
; <
;
< =!
KickPlayerFromLobby
ÒÒ '
(
ÒÒ' (
userSession
ÒÒ( 3
,
ÒÒ3 4
isKicked
ÒÒ5 =
)
ÒÒ= >
;
ÒÒ> ?!
LeaveGuestGameLobby
ÚÚ '
(
ÚÚ' (
)
ÚÚ( )
;
ÚÚ) *
}
ÛÛ 
matchLobbyCode
ÙÙ 
=
ÙÙ  
$str
ÙÙ! $
;
ÙÙ$ %
}
ıı 
catch
ˆˆ 
(
ˆˆ '
EndpointNotFoundException
ˆˆ ,
endPointException
ˆˆ- >
)
ˆˆ> ?
{
˜˜ 
logger
¯¯ 
.
¯¯ 
LogError
¯¯ 
(
¯¯  
endPointException
¯¯  1
)
¯¯1 2
;
¯¯2 3
DialogManager
˘˘ 
.
˘˘ #
ShowErrorMessageAlert
˘˘ 3
(
˘˘3 4

Properties
˘˘4 >
.
˘˘> ?
	Resources
˘˘? H
.
˘˘H I%
dialogEndPointException
˘˘I `
)
˘˘` a
;
˘˘a b
}
˙˙ 
catch
˚˚ 
(
˚˚ 
TimeoutException
˚˚ #
timeOutException
˚˚$ 4
)
˚˚4 5
{
¸¸ 
logger
˝˝ 
.
˝˝ 
LogError
˝˝ 
(
˝˝  
timeOutException
˝˝  0
)
˝˝0 1
;
˝˝1 2
DialogManager
˛˛ 
.
˛˛ #
ShowErrorMessageAlert
˛˛ 3
(
˛˛3 4

Properties
˛˛4 >
.
˛˛> ?
	Resources
˛˛? H
.
˛˛H I)
dialogComunicationException
˛˛I d
)
˛˛d e
;
˛˛e f
}
ˇˇ 
catch
ÄÄ 
(
ÄÄ $
CommunicationException
ÄÄ )$
communicationException
ÄÄ* @
)
ÄÄ@ A
{
ÅÅ 
logger
ÇÇ 
.
ÇÇ 
LogError
ÇÇ 
(
ÇÇ  $
communicationException
ÇÇ  6
)
ÇÇ6 7
;
ÇÇ7 8
DialogManager
ÉÉ 
.
ÉÉ #
ShowErrorMessageAlert
ÉÉ 3
(
ÉÉ3 4

Properties
ÉÉ4 >
.
ÉÉ> ?
	Resources
ÉÉ? H
.
ÉÉH I$
dialogTimeOutException
ÉÉI _
)
ÉÉ_ `
;
ÉÉ` a
}
ÑÑ 
}
ÖÖ 	
private
áá 
void
áá $
ChargeOnePlayerProfile
áá +
(
áá+ ,
UserSession
áá, 7
user
áá8 <
)
áá< =
{
àà 	
LoggerManager
ââ 
logger
ââ  
=
ââ! "
new
ââ# &
LoggerManager
ââ' 4
(
ââ4 5
this
ââ5 9
.
ââ9 :
GetType
ââ: A
(
ââA B
)
ââB C
)
ââC D
;
ââD E
	HiveProxy
ää 
.
ää 
UserManagerClient
ää '
userManagerClient
ää( 9
=
ää: ;
new
ää< ?
	HiveProxy
ää@ I
.
ääI J
UserManagerClient
ääJ [
(
ää[ \
)
ää\ ]
;
ää] ^
try
ãã 
{
åå 
Profile
çç 
profileUser
çç #
=
çç$ %
userManagerClient
çç& 7
.
çç7 8&
GetUserProfileByUsername
çç8 P
(
ççP Q
user
ççQ U
.
ççU V
username
ççV ^
)
çç^ _
;
çç_ `
txtb_HostName
éé 
.
éé 
Text
éé "
=
éé# $
profileUser
éé% 0
.
éé0 1
nickname
éé1 9
;
éé9 :
img_AvatarHost
èè 
.
èè 
Source
èè %
=
èè& '
new
èè( +
BitmapImage
èè, 7
(
èè7 8
new
èè8 ;
Uri
èè< ?
(
èè? @
profileUser
èè@ K
.
èèK L
	imagePath
èèL U
,
èèU V
UriKind
èèW ^
.
èè^ _
Relative
èè_ g
)
èèg h
)
èèh i
;
èèi j
	brd_Guest
êê 
.
êê 

Visibility
êê $
=
êê% &

Visibility
êê' 1
.
êê1 2
	Collapsed
êê2 ;
;
êê; < 
ShowCreatorActions
ëë "
(
ëë" #
)
ëë# $
;
ëë$ %
}
íí 
catch
ìì 
(
ìì '
EndpointNotFoundException
ìì ,
endPointException
ìì- >
)
ìì> ?
{
îî 
logger
ïï 
.
ïï 
LogError
ïï 
(
ïï  
endPointException
ïï  1
)
ïï1 2
;
ïï2 3
DialogManager
ññ 
.
ññ #
ShowErrorMessageAlert
ññ 3
(
ññ3 4

Properties
ññ4 >
.
ññ> ?
	Resources
ññ? H
.
ññH I%
dialogEndPointException
ññI `
)
ññ` a
;
ñña b
}
óó 
catch
òò 
(
òò 
TimeoutException
òò #
timeOutException
òò$ 4
)
òò4 5
{
ôô 
logger
öö 
.
öö 
LogError
öö 
(
öö  
timeOutException
öö  0
)
öö0 1
;
öö1 2
DialogManager
õõ 
.
õõ #
ShowErrorMessageAlert
õõ 3
(
õõ3 4

Properties
õõ4 >
.
õõ> ?
	Resources
õõ? H
.
õõH I)
dialogComunicationException
õõI d
)
õõd e
;
õõe f
}
úú 
catch
ùù 
(
ùù $
CommunicationException
ùù )$
communicationException
ùù* @
)
ùù@ A
{
ûû 
logger
üü 
.
üü 
LogError
üü 
(
üü  $
communicationException
üü  6
)
üü6 7
;
üü7 8
DialogManager
†† 
.
†† #
ShowErrorMessageAlert
†† 3
(
††3 4

Properties
††4 >
.
††> ?
	Resources
††? H
.
††H I$
dialogTimeOutException
††I _
)
††_ `
;
††` a
}
°° 
}
¢¢ 	
private
§§ 
void
§§ %
ChargeTwoPlayersProfile
§§ ,
(
§§, -
UserSession
§§- 8
[
§§8 9
]
§§9 :
users
§§; @
)
§§@ A
{
•• 	
LoggerManager
¶¶ 
logger
¶¶  
=
¶¶! "
new
¶¶# &
LoggerManager
¶¶' 4
(
¶¶4 5
this
¶¶5 9
.
¶¶9 :
GetType
¶¶: A
(
¶¶A B
)
¶¶B C
)
¶¶C D
;
¶¶D E
	HiveProxy
ßß 
.
ßß 
UserManagerClient
ßß '
userManagerClient
ßß( 9
=
ßß: ;
new
ßß< ?
	HiveProxy
ßß@ I
.
ßßI J
UserManagerClient
ßßJ [
(
ßß[ \
)
ßß\ ]
;
ßß] ^
try
®® 
{
©© 
Profile
™™ 
profileUserHost
™™ '
=
™™( )
userManagerClient
™™* ;
.
™™; <&
GetUserProfileByUsername
™™< T
(
™™T U
users
™™U Z
[
™™Z [
$num
™™[ \
]
™™\ ]
.
™™] ^
username
™™^ f
)
™™f g
;
™™g h
txtb_HostName
´´ 
.
´´ 
Text
´´ "
=
´´# $
profileUserHost
´´% 4
.
´´4 5
nickname
´´5 =
;
´´= >
img_AvatarHost
¨¨ 
.
¨¨ 
Source
¨¨ %
=
¨¨& '
new
¨¨( +
BitmapImage
¨¨, 7
(
¨¨7 8
new
¨¨8 ;
Uri
¨¨< ?
(
¨¨? @
profileUserHost
¨¨@ O
.
¨¨O P
	imagePath
¨¨P Y
,
¨¨Y Z
UriKind
¨¨[ b
.
¨¨b c
Relative
¨¨c k
)
¨¨k l
)
¨¨l m
;
¨¨m n
if
≠≠ 
(
≠≠ 
users
≠≠ 
[
≠≠ 
$num
≠≠ 
]
≠≠ 
.
≠≠ 
	idAccount
≠≠ &
==
≠≠' )
	Constants
≠≠* 3
.
≠≠3 4
DEFAULT_GUEST_ID
≠≠4 D
)
≠≠D E
{
ÆÆ 
txtb_GuestName
ØØ "
.
ØØ" #
Text
ØØ# '
=
ØØ( )
users
ØØ* /
[
ØØ/ 0
$num
ØØ0 1
]
ØØ1 2
.
ØØ2 3
username
ØØ3 ;
;
ØØ; <
img_AvatarGuest
∞∞ #
.
∞∞# $
Source
∞∞$ *
=
∞∞+ ,
new
∞∞- 0
BitmapImage
∞∞1 <
(
∞∞< =
new
∞∞= @
Uri
∞∞A D
(
∞∞D E
$str
∞∞E b
,
∞∞b c
UriKind
∞∞d k
.
∞∞k l
Relative
∞∞l t
)
∞∞t u
)
∞∞u v
;
∞∞v w
}
±± 
else
≤≤ 
{
≥≥ 
Profile
¥¥ 
profileUserGuest
¥¥ ,
=
¥¥- .
userManagerClient
¥¥/ @
.
¥¥@ A&
GetUserProfileByUsername
¥¥A Y
(
¥¥Y Z
users
¥¥Z _
[
¥¥_ `
$num
¥¥` a
]
¥¥a b
.
¥¥b c
username
¥¥c k
)
¥¥k l
;
¥¥l m
txtb_GuestName
µµ "
.
µµ" #
Text
µµ# '
=
µµ( )
profileUserGuest
µµ* :
.
µµ: ;
nickname
µµ; C
;
µµC D
img_AvatarGuest
∂∂ #
.
∂∂# $
Source
∂∂$ *
=
∂∂+ ,
new
∂∂- 0
BitmapImage
∂∂1 <
(
∂∂< =
new
∂∂= @
Uri
∂∂A D
(
∂∂D E
profileUserGuest
∂∂E U
.
∂∂U V
	imagePath
∂∂V _
,
∂∂_ `
UriKind
∂∂a h
.
∂∂h i
Relative
∂∂i q
)
∂∂q r
)
∂∂r s
;
∂∂s t
}
∑∑ 
	brd_Guest
∏∏ 
.
∏∏ 

Visibility
∏∏ $
=
∏∏% &

Visibility
∏∏' 1
.
∏∏1 2
Visible
∏∏2 9
;
∏∏9 :
	GameMatch
ππ 
gamer
ππ 
=
ππ  !
new
ππ" %
	GameMatch
ππ& /
(
ππ/ 0
)
ππ0 1
{
∫∫ 
	idAccount
ªª 
=
ªª "
UserProfileSingleton
ªª  4
.
ªª4 5
	idAccount
ªª5 >
,
ªª> ?
code
ºº 
=
ºº 
matchLobbyCode
ºº )
}
ΩΩ 
;
ΩΩ 
int
ææ !
verificationCreator
ææ '
=
ææ( ) 
lobbyManagerClient
ææ* <
.
ææ< =%
VerifyCreatorOfTheMatch
ææ= T
(
ææT U
gamer
ææU Z
)
ææZ [
;
ææ[ \ 
ShowCorrectActions
øø "
(
øø" #!
verificationCreator
øø# 6
)
øø6 7
;
øø7 8
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
LogError
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
»» 
LogError
»» 
(
»»  
timeOutException
»»  0
)
»»0 1
;
»»1 2
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
……H I)
dialogComunicationException
……I d
)
……d e
;
……e f
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
LogError
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
ŒŒH I$
dialogTimeOutException
ŒŒI _
)
ŒŒ_ `
;
ŒŒ` a
}
œœ 
}
–– 	
private
““ 
void
““  
ShowCorrectActions
““ '
(
““' (
int
““( + 
verificationResult
““, >
)
““> ?
{
”” 	
if
‘‘ 
(
‘‘  
verificationResult
‘‘ !
==
‘‘" $
$num
‘‘% &
)
‘‘& '
{
’’ "
HideFullLobbyActions
÷÷ $
(
÷÷$ %
)
÷÷% &
;
÷÷& '
btn_SendOffPlayer
◊◊ !
.
◊◊! "

Visibility
◊◊" ,
=
◊◊- .

Visibility
◊◊/ 9
.
◊◊9 :
	Collapsed
◊◊: C
;
◊◊C D
}
ÿÿ 
else
ÿÿ 
if
ÿÿ 
(
ÿÿ  
verificationResult
ÿÿ '
==
ÿÿ( *
$num
ÿÿ+ ,
)
ÿÿ, -
{
ŸŸ "
HideFullLobbyActions
⁄⁄ $
(
⁄⁄$ %
)
⁄⁄% &
;
⁄⁄& '
btn_SendOffPlayer
€€ !
.
€€! "

Visibility
€€" ,
=
€€, -

Visibility
€€. 8
.
€€8 9
Visible
€€9 @
;
€€@ A
	btn_Start
‹‹ 
.
‹‹ 

Visibility
‹‹ $
=
‹‹% &

Visibility
‹‹' 1
.
‹‹1 2
Visible
‹‹2 9
;
‹‹9 :
}
›› 
}
ﬁﬁ 	
private
‡‡ 
void
‡‡  
SearchFriend_Click
‡‡ '
(
‡‡' (
object
‡‡( .
sender
‡‡/ 5
,
‡‡5 6
	EventArgs
‡‡7 @
e
‡‡A B
)
‡‡B C
{
·· 	
txt_SearchFriend
‚‚ 
.
‚‚ 
BorderBrush
‚‚ (
=
‚‚) *
Brushes
‚‚+ 2
.
‚‚2 3
Yellow
‚‚3 9
;
‚‚9 :
if
„„ 
(
„„ 
ValidateField
„„ 
(
„„ 
)
„„ 
)
„„  
{
‰‰ 
List
ÂÂ 
<
ÂÂ 
Friend
ÂÂ 
>
ÂÂ 
friends
ÂÂ $
=
ÂÂ% &$
lstv_ActiveFriendsList
ÂÂ' =
.
ÂÂ= >
Items
ÂÂ> C
.
ÂÂC D
Cast
ÂÂD H
<
ÂÂH I
Friend
ÂÂI O
>
ÂÂO P
(
ÂÂP Q
)
ÂÂQ R
.
ÂÂR S
ToList
ÂÂS Y
(
ÂÂY Z
)
ÂÂZ [
;
ÂÂ[ \
Friend
ÊÊ 
foundedFriend
ÊÊ $
=
ÊÊ% &
new
ÊÊ' *
Friend
ÊÊ+ 1
(
ÊÊ1 2
)
ÊÊ2 3
;
ÊÊ3 4
foundedFriend
ÁÁ 
.
ÁÁ 
username
ÁÁ &
=
ÁÁ' (
$str
ÁÁ) 5
;
ÁÁ5 6
for
ËË 
(
ËË 
int
ËË 
friendsIndex
ËË $
=
ËË$ %
$num
ËË% &
;
ËË& '
friendsIndex
ËË( 4
<
ËË4 5
friends
ËË5 <
.
ËË< =
Count
ËË= B
;
ËËB C
friendsIndex
ËËD P
++
ËËP R
)
ËËR S
{
ÈÈ 
if
ÍÍ 
(
ÍÍ 
friends
ÍÍ 
[
ÍÍ 
friendsIndex
ÍÍ +
]
ÍÍ+ ,
.
ÍÍ, -
username
ÍÍ- 5
==
ÍÍ6 8
txt_SearchFriend
ÍÍ9 I
.
ÍÍI J
Text
ÍÍJ N
)
ÍÍN O
{
ÎÎ 
foundedFriend
ÏÏ $
=
ÏÏ% &
friends
ÏÏ' .
[
ÏÏ. /
friendsIndex
ÏÏ/ ;
]
ÏÏ; <
;
ÏÏ< =
}
ÌÌ 
}
ÓÓ 
if
ÔÔ 
(
ÔÔ 
foundedFriend
ÔÔ !
.
ÔÔ! "
username
ÔÔ" *
!=
ÔÔ+ -
$str
ÔÔ. :
)
ÔÔ: ;
{
 $
lstv_ActiveFriendsList
ÒÒ *
.
ÒÒ* +
Items
ÒÒ+ 0
.
ÒÒ0 1
Clear
ÒÒ1 6
(
ÒÒ6 7
)
ÒÒ7 8
;
ÒÒ8 9$
lstv_ActiveFriendsList
ÚÚ *
.
ÚÚ* +
Items
ÚÚ+ 0
.
ÚÚ0 1
Add
ÚÚ1 4
(
ÚÚ4 5
foundedFriend
ÚÚ5 B
)
ÚÚB C
;
ÚÚC D
}
ÛÛ 
else
ÙÙ 
{
ıı 
DialogManager
ˆˆ !
.
ˆˆ! "%
ShowWarningMessageAlert
ˆˆ" 9
(
ˆˆ9 :

Properties
ˆˆ: D
.
ˆˆD E
	Resources
ˆˆE N
.
ˆˆN O+
dialogMangerCouldntFindFriend
ˆˆO l
)
ˆˆl m
;
ˆˆm n
}
˜˜ 
}
¯¯ 
else
˘˘ 
{
˙˙ 
DialogManager
˚˚ 
.
˚˚ #
ShowErrorMessageAlert
˚˚ 3
(
˚˚3 4

Properties
˚˚4 >
.
˚˚> ?
	Resources
˚˚? H
.
˚˚H I
dialogWrongData
˚˚I X
)
˚˚X Y
;
˚˚Y Z
}
¸¸ 
}
˝˝ 	
private
ˇˇ 
void
ˇˇ 
BtnStarGame_Click
ˇˇ &
(
ˇˇ& '
object
ˇˇ' -
sender
ˇˇ. 4
,
ˇˇ4 5
RoutedEventArgs
ˇˇ6 E
e
ˇˇF G
)
ˇˇG H
{
ÄÄ 	
LoggerManager
ÅÅ 
logger
ÅÅ  
=
ÅÅ! "
new
ÅÅ# &
LoggerManager
ÅÅ' 4
(
ÅÅ4 5
this
ÅÅ5 9
.
ÅÅ9 :
GetType
ÅÅ: A
(
ÅÅA B
)
ÅÅB C
)
ÅÅC D
;
ÅÅD E
try
ÇÇ 
{
ÉÉ  
lobbyManagerClient
ÑÑ "
.
ÑÑ" #

StartMatch
ÑÑ# -
(
ÑÑ- .
matchLobbyCode
ÑÑ. <
)
ÑÑ< =
;
ÑÑ= >
MatchCreator
ÖÖ 
matchCreator
ÖÖ )
=
ÖÖ* +
new
ÖÖ, /
MatchCreator
ÖÖ0 <
(
ÖÖ< =
)
ÖÖ= >
{
ÜÜ 
idCreatorAccount
áá $
=
áá% &"
UserProfileSingleton
áá' ;
.
áá; <
	idAccount
áá< E
,
ááE F
	codeMatch
àà 
=
àà 
matchLobbyCode
àà  .
,
àà. /

stateMatch
ââ 
=
ââ  
$str
ââ! *
}
ää 
;
ää 
Profile
ãã 
profile
ãã 
=
ãã  !
new
ãã" %
Profile
ãã& -
(
ãã- .
)
ãã. /
{
åå 
username
çç 
=
çç "
UserProfileSingleton
çç 3
.
çç3 4
username
çç4 <
}
éé 
;
éé 
UserSession
èè 
session
èè #
=
èè$ %
new
èè& )
UserSession
èè* 5
(
èè5 6
)
èè6 7
{
êê 
username
ëë 
=
ëë "
UserProfileSingleton
ëë 3
.
ëë3 4
username
ëë4 <
,
ëë< =
	codeMatch
íí 
=
íí 
matchLobbyCode
íí  .
,
íí. /
	idAccount
ìì 
=
ìì "
UserProfileSingleton
ìì  4
.
ìì4 5
	idAccount
ìì5 >
,
ìì> ?
}
îî 
;
îî '
MatchCreatorManagerClient
ïï )'
matchCreatorManagerClient
ïï* C
=
ïïD E
new
ïïF I'
MatchCreatorManagerClient
ïïJ c
(
ïïc d
)
ïïd e
;
ïïe f'
matchCreatorManagerClient
ññ )
.
ññ) *
UpdateMatchState
ññ* :
(
ññ: ;
matchCreator
ññ; G
)
ññG H
;
ññH I
GameBoardView
óó 
gameBoardView
óó +
=
óó, -
new
óó. 1
GameBoardView
óó2 ?
(
óó? @
)
óó@ A
;
óóA B
this
òò 
.
òò 
NavigationService
òò &
.
òò& '
Navigate
òò' /
(
òò/ 0
gameBoardView
òò0 =
)
òò= >
;
òò> ?
}
ôô 
catch
öö 
(
öö '
EndpointNotFoundException
öö ,
endPointException
öö- >
)
öö> ?
{
õõ 
logger
úú 
.
úú 
LogError
úú 
(
úú  
endPointException
úú  1
)
úú1 2
;
úú2 3
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4

Properties
ùù4 >
.
ùù> ?
	Resources
ùù? H
.
ùùH I%
dialogEndPointException
ùùI `
)
ùù` a
;
ùùa b
}
ûû 
catch
üü 
(
üü 
TimeoutException
üü #
timeOutException
üü$ 4
)
üü4 5
{
†† 
logger
°° 
.
°° 
LogError
°° 
(
°°  
timeOutException
°°  0
)
°°0 1
;
°°1 2
DialogManager
¢¢ 
.
¢¢ #
ShowErrorMessageAlert
¢¢ 3
(
¢¢3 4

Properties
¢¢4 >
.
¢¢> ?
	Resources
¢¢? H
.
¢¢H I)
dialogComunicationException
¢¢I d
)
¢¢d e
;
¢¢e f
}
££ 
catch
§§ 
(
§§ $
CommunicationException
§§ )$
communicationException
§§* @
)
§§@ A
{
•• 
logger
¶¶ 
.
¶¶ 
LogError
¶¶ 
(
¶¶  $
communicationException
¶¶  6
)
¶¶6 7
;
¶¶7 8
DialogManager
ßß 
.
ßß #
ShowErrorMessageAlert
ßß 3
(
ßß3 4

Properties
ßß4 >
.
ßß> ?
	Resources
ßß? H
.
ßßH I$
dialogTimeOutException
ßßI _
)
ßß_ `
;
ßß` a
}
®® 
}
©© 	
private
´´ 
bool
´´ 
ValidateField
´´ "
(
´´" #
)
´´# $
{
¨¨ 	
bool
≠≠  
validationUserName
≠≠ #
=
≠≠$ %
	Validator
≠≠& /
.
≠≠/ 0
ValidateUsername
≠≠0 @
(
≠≠@ A
txt_SearchFriend
≠≠A Q
.
≠≠Q R
Text
≠≠R V
)
≠≠V W
;
≠≠W X
if
ÆÆ 
(
ÆÆ 
!
ÆÆ  
validationUserName
ÆÆ #
)
ÆÆ# $
{
ØØ 
txt_SearchFriend
∞∞  
.
∞∞  !
BorderBrush
∞∞! ,
=
∞∞- .
Brushes
∞∞/ 6
.
∞∞6 7
Red
∞∞7 :
;
∞∞: ;
}
±± 
return
≤≤  
validationUserName
≤≤ %
;
≤≤% &
}
≥≥ 	
public
µµ 
void
µµ '
ReceiveKickedNotification
µµ -
(
µµ- .
)
µµ. /
{
∂∂ 	
DialogManager
∑∑ 
.
∑∑ %
ShowWarningMessageAlert
∑∑ 1
(
∑∑1 2

Properties
∑∑2 <
.
∑∑< =
	Resources
∑∑= F
.
∑∑F G!
dialogYouveBeenKick
∑∑G Z
)
∑∑Z [
;
∑∑[ \
if
∏∏ 
(
∏∏ "
UserProfileSingleton
∏∏ #
.
∏∏# $
	idAccount
∏∏$ -
==
∏∏. 0
	Constants
∏∏1 :
.
∏∏: ;
DEFAULT_GUEST_ID
∏∏; K
)
∏∏K L
{
ππ 
	LoginView
∫∫ 
	loginView
∫∫ #
=
∫∫$ %
new
∫∫& )
	LoginView
∫∫* 3
(
∫∫3 4
)
∫∫4 5
;
∫∫5 6
this
ªª 
.
ªª 
NavigationService
ªª &
.
ªª& '
Navigate
ªª' /
(
ªª/ 0
	loginView
ªª0 9
)
ªª9 :
;
ªª: ;
}
ºº 
else
ΩΩ 
{
ææ 
MainMenu
øø 
mainMenu
øø !
=
øø" #
new
øø$ '
MainMenu
øø( 0
(
øø0 1
)
øø1 2
;
øø2 3
this
¿¿ 
.
¿¿ 
NavigationService
¿¿ &
.
¿¿& '
Navigate
¿¿' /
(
¿¿/ 0
mainMenu
¿¿0 8
)
¿¿8 9
;
¿¿9 :
}
¡¡ 
}
¬¬ 	
public
ƒƒ 
void
ƒƒ +
ReceiveStartMatchNotification
ƒƒ 1
(
ƒƒ1 2
)
ƒƒ2 3
{
≈≈ 	
GameBoardView
∆∆ 
gameBoardView
∆∆ '
=
∆∆( )
new
∆∆* -
GameBoardView
∆∆. ;
(
∆∆; <
)
∆∆< =
;
∆∆= >
this
«« 
.
«« 
NavigationService
«« "
.
««" #
Navigate
««# +
(
««+ ,
gameBoardView
««, 9
)
««9 :
;
««: ;
}
»» 	
private
   
class
   
Friend
   
{
ÀÀ 	
public
ÃÃ 
int
ÃÃ 
	idAccount
ÃÃ  
{
ÃÃ! "
get
ÃÃ$ '
;
ÃÃ' (
set
ÃÃ) ,
;
ÃÃ, -
}
ÃÃ. /
public
ÕÕ 
string
ÕÕ 
username
ÕÕ "
{
ÕÕ# $
get
ÕÕ& )
;
ÕÕ) *
set
ÕÕ+ .
;
ÕÕ. /
}
ÕÕ0 1
public
œœ 
string
œœ 
nickname
œœ "
{
œœ# $
get
œœ% (
;
œœ( )
set
œœ* -
;
œœ- .
}
œœ/ 0
public
–– 
string
–– 
email
–– 
{
––  !
get
––" %
;
––% &
set
––' *
;
––* +
}
––, -
public
““ 
string
““ 
	imagePath
““ #
{
““$ %
get
““& )
;
““) *
set
““+ .
;
““. /
}
““0 1
}
‘‘ 	
}
’’ 
public
ÿÿ 

class
ÿÿ !
UserSessionComparer
ÿÿ $
:
ÿÿ% &
IEqualityComparer
ÿÿ' 8
<
ÿÿ8 9
UserSession
ÿÿ9 D
>
ÿÿD E
{
ŸŸ 
public
⁄⁄ 
bool
⁄⁄ 
Equals
⁄⁄ 
(
⁄⁄ 
UserSession
⁄⁄ &
userSessionOne
⁄⁄' 5
,
⁄⁄5 6
UserSession
⁄⁄7 B
userSessionTwo
⁄⁄C Q
)
⁄⁄Q R
{
€€ 	
return
‹‹ 
string
‹‹ 
.
‹‹ 
Equals
‹‹  
(
‹‹  !
userSessionOne
‹‹! /
.
‹‹/ 0
username
‹‹0 8
,
‹‹8 9
userSessionTwo
‹‹: H
.
‹‹H I
username
‹‹I Q
,
‹‹Q R
StringComparison
‹‹S c
.
‹‹c d
Ordinal
‹‹d k
)
‹‹k l
&&
‹‹m o
userSessionOne
›› !
.
››! "
	idAccount
››" +
==
››, .
userSessionTwo
››/ =
.
››= >
	idAccount
››> G
&&
››H J
userSessionOne
››K Y
.
››Y Z
	codeMatch
››Z c
==
››d f
userSessionTwo
››g u
.
››u v
	codeMatch
››v 
;›› Ä
}
ﬁﬁ 	
public
‡‡ 
int
‡‡ 
GetHashCode
‡‡ 
(
‡‡ 
UserSession
‡‡ *
userSession
‡‡+ 6
)
‡‡6 7
{
·· 	
int
‚‚ 
hashUsername
‚‚ 
=
‚‚ 
userSession
‚‚ *
.
‚‚* +
username
‚‚+ 3
?
‚‚3 4
.
‚‚4 5
GetHashCode
‚‚5 @
(
‚‚@ A
)
‚‚A B
??
‚‚C E
$num
‚‚F G
;
‚‚G H
int
„„ 
hashIdAccount
„„ 
=
„„ 
userSession
„„  +
.
„„+ ,
	idAccount
„„, 5
.
„„5 6
GetHashCode
„„6 A
(
„„A B
)
„„B C
;
„„C D
int
‰‰ 
hashCodeMatch
‰‰ 
=
‰‰ 
userSession
‰‰  +
.
‰‰+ ,
	codeMatch
‰‰, 5
?
‰‰5 6
.
‰‰6 7
GetHashCode
‰‰7 B
(
‰‰B C
)
‰‰C D
??
‰‰E G
$num
‰‰H I
;
‰‰I J
return
ÂÂ 
hashUsername
ÂÂ 
^
ÂÂ  !
hashIdAccount
ÂÂ" /
^
ÂÂ0 1
hashCodeMatch
ÂÂ2 ?
;
ÂÂ? @
}
ÊÊ 	
}
ÁÁ 
}ÍÍ ≥’
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
private 
static 
Profile 
[ 
]  
friendsObtained! 0
;0 1
public 
FriendsListView 
( 
)  
{ 	
InitializeComponent 
(  
)  !
;! " 
setAsConnectedFriend  
(  !
)! "
;" #
} 	
private   
void    
setAsConnectedFriend   )
(  ) *
)  * +
{!! 	
LoggerManager"" 
logger""  
=""! "
new""# &
LoggerManager""' 4
(""4 5
this""5 9
.""9 :
GetType"": A
(""A B
)""B C
)""C D
;""D E
Profile## 
userProfile## 
=##  !
new##" %
Profile##& -
(##- .
)##. /
{$$ 
idAccesAccount%% 
=%%   
UserProfileSingleton%%! 5
.%%5 6
	idAccount%%6 ?
,%%? @
username&& 
=&&  
UserProfileSingleton&& /
.&&/ 0
username&&0 8
}'' 
;'' 
}(( 	
private** 
void** 
LoadFriendships** $
(**$ %
)**% &
{++ 	
lvw_FriendsList,, 
.,, 
Items,, !
.,,! "
Clear,," '
(,,' (
),,( )
;,,) *
	HiveProxy-- 
.-- #
FriendshipManagerClient-- -#
friendshipManagerClient--. E
=--F G
new--H K
	HiveProxy--L U
.--U V#
FriendshipManagerClient--V m
(--m n
)--n o
;--o p
LoggerManager.. 
logger..  
=..! "
new..# &
LoggerManager..' 4
(..4 5
this..5 9
...9 :
GetType..: A
(..A B
)..B C
)..C D
;..D E
try// 
{00 
Profile11 
userProfile11 #
=11$ %
new11& )
Profile11* 1
(111 2
)112 3
{22 
idAccesAccount33 "
=33# $ 
UserProfileSingleton33% 9
.339 :
	idAccount33: C
}44 
;44 
friendsObtained55 
=55  !#
friendshipManagerClient55" 9
.559 :
GetAllFriends55: G
(55G H
userProfile55H S
)55S T
;55T U
if66 
(66 
friendsObtained66 #
.66# $
Length66$ *
==66+ -
$num66. /
)66/ 0
{77 
DialogManager88 !
.88! "#
ShowWarningMessageAlert88" 9
(889 :

Properties88: D
.88D E
	Resources88E N
.88N O 
dialogNoFriendsAdded88O c
)88c d
;88d e
}99 
else:: 
if:: 
(:: 
friendsObtained:: (
[::( )
$num::) *
]::* +
.::+ ,
	idProfile::, 5
==::6 8
	Constants::9 B
.::B C
ERROR_OPERATION::C R
)::R S
{;; 
DialogManager<< !
.<<! "!
ShowErrorMessageAlert<<" 7
(<<7 8

Properties<<8 B
.<<B C
	Resources<<C L
.<<L M
dialogDataBaseError<<M `
)<<` a
;<<a b
}== 
else== 
if== 
(== 
friendsObtained== *
.==* +
Length==+ 1
>===2 4
	Constants==5 >
.==> ?
DATA_MATCHES==? K
)==K L
{>> "
LoadFriendsInformation?? *
(??* +
)??+ ,
;??, -
}@@ 
}AA 
catchBB 
(BB %
EndpointNotFoundExceptionBB ,
endPointExceptionBB- >
)BB> ?
{CC 
loggerDD 
.DD 
LogErrorDD 
(DD  
endPointExceptionDD  1
)DD1 2
;DD2 3
DialogManagerEE 
.EE !
ShowErrorMessageAlertEE 3
(EE3 4

PropertiesEE4 >
.EE> ?
	ResourcesEE? H
.EEH I#
dialogEndPointExceptionEEI `
)EE` a
;EEa b
}FF 
catchGG 
(GG 
TimeoutExceptionGG #
timeOutExceptionGG$ 4
)GG4 5
{HH 
loggerII 
.II 
LogErrorII 
(II  
timeOutExceptionII  0
)II0 1
;II1 2
DialogManagerJJ 
.JJ !
ShowErrorMessageAlertJJ 3
(JJ3 4

PropertiesJJ4 >
.JJ> ?
	ResourcesJJ? H
.JJH I'
dialogComunicationExceptionJJI d
)JJd e
;JJe f
}KK 
catchLL 
(LL "
CommunicationExceptionLL )"
communicationExceptionLL* @
)LL@ A
{MM 
loggerNN 
.NN 
LogErrorNN 
(NN  "
communicationExceptionNN  6
)NN6 7
;NN7 8
DialogManagerOO 
.OO !
ShowErrorMessageAlertOO 3
(OO3 4

PropertiesOO4 >
.OO> ?
	ResourcesOO? H
.OOH I"
dialogTimeOutExceptionOOI _
)OO_ `
;OO` a
}PP 
}QQ 	
privateSS 
voidSS "
LoadFriendsInformationSS +
(SS+ ,
)SS, -
{TT 	
LoggerManagerUU 
loggerUU  
=UU! "
newUU# &
LoggerManagerUU' 4
(UU4 5
thisUU5 9
.UU9 :
GetTypeUU: A
(UUA B
)UUB C
)UUC D
;UUD E
	HiveProxyVV 
.VV $
UserSessionManagerClientVV .$
userSessionManagerClientVV/ G
=VVH I
newVVJ M
	HiveProxyVVN W
.VVW X$
UserSessionManagerClientVVX p
(VVp q
)VVq r
;VVr s
tryWW 
{XX 
forYY 
(YY 
intYY 
indexUsersProfileYY *
=YY+ ,
$numYY- .
;YY. /
indexUsersProfileYY0 A
<YYB C
friendsObtainedYYD S
.YYS T
LengthYYT Z
;YYZ [
indexUsersProfileYY\ m
++YYm o
)YYo p
{ZZ 
UserSession[[ 
userSession[[  +
=[[, -
new[[. 1
UserSession[[2 =
([[= >
)[[> ?
{\\ 
username]]  
=]]! "
friendsObtained]]# 2
[]]2 3
indexUsersProfile]]3 D
]]]D E
.]]E F
username]]F N
,]]N O
	idAccount^^ !
=^^" #
friendsObtained^^$ 3
[^^3 4
indexUsersProfile^^4 E
]^^E F
.^^F G
	idAccount^^G P
}__ 
;__ 
bool`` 
stateFriend`` $
=``% &$
userSessionManagerClient``' ?
.``? @
VerifyConnectivity``@ R
(``R S
userSession``S ^
)``^ _
;``_ `
ProfileUseraa 
profileUseraa  +
=aa, -
newaa. 1
ProfileUseraa2 =
(aa= >
)aa> ?
{bb 
	idProfilecc !
=cc" #
friendsObtainedcc$ 3
[cc3 4
indexUsersProfilecc4 E
]ccE F
.ccF G
	idProfileccG P
,ccP Q
	idAccountdd !
=dd" #
friendsObtaineddd$ 3
[dd3 4
indexUsersProfiledd4 E
]ddE F
.ddF G
	idAccountddG P
,ddP Q
usernameee  
=ee! "
friendsObtainedee# 2
[ee2 3
indexUsersProfileee3 D
]eeD E
.eeE F
usernameeeF N
,eeN O
imageProfileff $
=ff% &
friendsObtainedff' 6
[ff6 7
indexUsersProfileff7 H
]ffH I
.ffI J
	imagePathffJ S
,ffS T
stategg 
=gg 
stateFriendgg  +
}hh 
;hh 
lvw_FriendsListii #
.ii# $
Itemsii$ )
.ii) *
Addii* -
(ii- .
profileUserii. 9
)ii9 :
;ii: ;
}jj 
}kk 
catchll 
(ll %
EndpointNotFoundExceptionll ,
endPointExceptionll- >
)ll> ?
{mm 
loggernn 
.nn 
LogErrornn 
(nn  
endPointExceptionnn  1
)nn1 2
;nn2 3
DialogManageroo 
.oo !
ShowErrorMessageAlertoo 3
(oo3 4

Propertiesoo4 >
.oo> ?
	Resourcesoo? H
.ooH I#
dialogEndPointExceptionooI `
)oo` a
;ooa b
}pp 
catchqq 
(qq 
TimeoutExceptionqq #
timeOutExceptionqq$ 4
)qq4 5
{rr 
loggerss 
.ss 
LogErrorss 
(ss  
timeOutExceptionss  0
)ss0 1
;ss1 2
DialogManagertt 
.tt !
ShowErrorMessageAlerttt 3
(tt3 4

Propertiestt4 >
.tt> ?
	Resourcestt? H
.ttH I'
dialogComunicationExceptionttI d
)ttd e
;tte f
}uu 
catchvv 
(vv "
CommunicationExceptionvv )"
communicationExceptionvv* @
)vv@ A
{ww 
loggerxx 
.xx 
LogErrorxx 
(xx  "
communicationExceptionxx  6
)xx6 7
;xx7 8
DialogManageryy 
.yy !
ShowErrorMessageAlertyy 3
(yy3 4

Propertiesyy4 >
.yy> ?
	Resourcesyy? H
.yyH I"
dialogTimeOutExceptionyyI _
)yy_ `
;yy` a
}zz 
}|| 	
private~~ 
void~~ 
LoadFriendRequests~~ '
(~~' (
)~~( )
{ 	
	HiveProxy
ÄÄ 
.
ÄÄ (
FriendRequestManagerClient
ÄÄ 0(
friendRequestManagerClient
ÄÄ1 K
=
ÄÄL M
new
ÄÄN Q
	HiveProxy
ÄÄR [
.
ÄÄ[ \(
FriendRequestManagerClient
ÄÄ\ v
(
ÄÄv w
)
ÄÄw x
;
ÄÄx y
LoggerManager
ÅÅ 
logger
ÅÅ  
=
ÅÅ! "
new
ÅÅ# &
LoggerManager
ÅÅ' 4
(
ÅÅ4 5
this
ÅÅ5 9
.
ÅÅ9 :
GetType
ÅÅ: A
(
ÅÅA B
)
ÅÅB C
)
ÅÅC D
;
ÅÅD E 
lvw_FriendRequests
ÇÇ 
.
ÇÇ 
Items
ÇÇ $
.
ÇÇ$ %
Clear
ÇÇ% *
(
ÇÇ* +
)
ÇÇ+ ,
;
ÇÇ, -
try
ÉÉ 
{
ÑÑ 
Profile
ÖÖ 
userProfile
ÖÖ #
=
ÖÖ$ %
new
ÖÖ& )
Profile
ÖÖ* 1
(
ÖÖ1 2
)
ÖÖ2 3
{
ÜÜ 
idAccesAccount
áá "
=
áá# $"
UserProfileSingleton
áá% 9
.
áá9 :
	idAccount
áá: C
}
àà 
;
àà 
Profile
ââ 
[
ââ 
]
ââ $
friendRequestsObtained
ââ 0
=
ââ1 2(
friendRequestManagerClient
ââ3 M
.
ââM N
GetFriendRequests
ââN _
(
ââ_ `
userProfile
ââ` k
)
ââk l
;
ââl m
if
ää 
(
ää $
friendRequestsObtained
ää *
.
ää* +
Length
ää+ 1
==
ää2 4
	Constants
ää5 >
.
ää> ?
NO_DATA_MATCHES
ää? N
)
ääN O
{
ãã 
DialogManager
åå !
.
åå! "%
ShowWarningMessageAlert
åå" 9
(
åå9 :

Properties
åå: D
.
ååD E
	Resources
ååE N
.
ååN O#
dialogNoFriendRequest
ååO d
)
ååd e
;
ååe f
}
çç 
else
éé 
if
éé 
(
éé $
friendRequestsObtained
éé /
[
éé/ 0
$num
éé0 1
]
éé1 2
.
éé2 3
	idProfile
éé3 <
==
éé= ?
	Constants
éé@ I
.
ééI J
ERROR_OPERATION
ééJ Y
)
ééY Z
{
èè 
DialogManager
êê !
.
êê! "#
ShowErrorMessageAlert
êê" 7
(
êê7 8

Properties
êê8 B
.
êêB C
	Resources
êêC L
.
êêL M!
dialogDataBaseError
êêM `
)
êê` a
;
êêa b
}
ëë 
else
íí 
if
íí 
(
íí $
friendRequestsObtained
íí /
.
íí/ 0
Length
íí0 6
>=
íí7 9
	Constants
íí: C
.
ííC D
DATA_MATCHES
ííD P
)
ííP Q
{
ìì "
LoadUsersInformation
îî (
(
îî( )$
friendRequestsObtained
îî) ?
)
îî? @
;
îî@ A
}
ïï 
}
ññ 
catch
óó 
(
óó '
EndpointNotFoundException
óó ,
endPointException
óó- >
)
óó> ?
{
òò 
logger
ôô 
.
ôô 
LogError
ôô 
(
ôô  
endPointException
ôô  1
)
ôô1 2
;
ôô2 3
DialogManager
öö 
.
öö #
ShowErrorMessageAlert
öö 3
(
öö3 4

Properties
öö4 >
.
öö> ?
	Resources
öö? H
.
ööH I%
dialogEndPointException
ööI `
)
öö` a
;
ööa b
}
õõ 
catch
úú 
(
úú 
TimeoutException
úú #
timeOutException
úú$ 4
)
úú4 5
{
ùù 
logger
ûû 
.
ûû 
LogError
ûû 
(
ûû  
timeOutException
ûû  0
)
ûû0 1
;
ûû1 2
DialogManager
üü 
.
üü #
ShowErrorMessageAlert
üü 3
(
üü3 4

Properties
üü4 >
.
üü> ?
	Resources
üü? H
.
üüH I)
dialogComunicationException
üüI d
)
üüd e
;
üüe f
}
†† 
catch
°° 
(
°° $
CommunicationException
°° )$
communicationException
°°* @
)
°°@ A
{
¢¢ 
logger
££ 
.
££ 
LogError
££ 
(
££  $
communicationException
££  6
)
££6 7
;
££7 8
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
§§H I$
dialogTimeOutException
§§I _
)
§§_ `
;
§§` a
}
•• 
}
¶¶ 	
private
®® 
void
®® "
LoadUsersInformation
®® )
(
®®) *
Profile
®®* 1
[
®®1 2
]
®®2 3
usersProfile
®®4 @
)
®®@ A
{
©© 	
for
™™ 
(
™™ 
int
™™ 
indexUsersProfile
™™ %
=
™™& '
$num
™™( )
;
™™) *
indexUsersProfile
™™, =
<
™™> ?
usersProfile
™™@ L
.
™™L M
Length
™™M S
;
™™S T
indexUsersProfile
™™U f
++
™™f h
)
™™h i
{
´´ 
ProfileUser
¨¨ 
profileUser
¨¨ '
=
¨¨( )
new
¨¨* -
ProfileUser
¨¨. 9
(
¨¨9 :
)
¨¨: ;
{
≠≠ 
	idProfile
ÆÆ 
=
ÆÆ 
usersProfile
ÆÆ  ,
[
ÆÆ, -
indexUsersProfile
ÆÆ- >
]
ÆÆ> ?
.
ÆÆ? @
	idProfile
ÆÆ@ I
,
ÆÆI J
	idAccount
ØØ 
=
ØØ 
usersProfile
ØØ  ,
[
ØØ, -
indexUsersProfile
ØØ- >
]
ØØ> ?
.
ØØ? @
idAccesAccount
ØØ@ N
,
ØØN O
username
∞∞ 
=
∞∞ 
usersProfile
∞∞ +
[
∞∞+ ,
indexUsersProfile
∞∞, =
]
∞∞= >
.
∞∞> ?
nickname
∞∞? G
,
∞∞G H
imageProfile
±±  
=
±±! "
usersProfile
±±# /
[
±±/ 0
indexUsersProfile
±±0 A
]
±±A B
.
±±B C
	imagePath
±±C L
,
±±L M
}
≤≤ 
;
≤≤  
lvw_FriendRequests
≥≥ "
.
≥≥" #
Items
≥≥# (
.
≥≥( )
Add
≥≥) ,
(
≥≥, -
profileUser
≥≥- 8
)
≥≥8 9
;
≥≥9 :
}
¥¥ 
}
µµ 	
private
∑∑ 
void
∑∑ 

SearchUser
∑∑ 
(
∑∑  
object
∑∑  &
sender
∑∑' -
,
∑∑- .
RoutedEventArgs
∑∑/ >
e
∑∑? @
)
∑∑@ A
{
∏∏ 	
if
ππ 
(
ππ 
VerifyField
ππ 
(
ππ 
)
ππ 
)
ππ 
{
∫∫ 
if
ªª 
(
ªª 
txtb_SearchFriend
ªª %
.
ªª% &
Text
ªª& *
==
ªª+ -"
UserProfileSingleton
ªª. B
.
ªªB C
username
ªªC K
)
ªªK L
{
ºº 
DialogManager
ΩΩ !
.
ΩΩ! "%
ShowWarningMessageAlert
ΩΩ" 9
(
ΩΩ9 :

Properties
ΩΩ: D
.
ΩΩD E
	Resources
ΩΩE N
.
ΩΩN O%
dialogCanNotAddYourself
ΩΩO f
)
ΩΩf g
;
ΩΩg h
}
ææ 
else
øø 
{
¿¿ #
LoadFriendToAddSearch
¡¡ )
(
¡¡) *
)
¡¡* +
;
¡¡+ ,
}
¬¬ 
}
√√ 
else
ƒƒ 
{
≈≈ 
DialogManager
∆∆ 
.
∆∆ #
ShowErrorMessageAlert
∆∆ 3
(
∆∆3 4

Properties
∆∆4 >
.
∆∆> ?
	Resources
∆∆? H
.
∆∆H I
dialogWrongData
∆∆I X
)
∆∆X Y
;
∆∆Y Z
}
«« 
}
»» 	
public
   
bool
   
VerifyField
   
(
    
)
    !
{
ÀÀ 	
lvw_FriendToAdd
ÃÃ 
.
ÃÃ 
Items
ÃÃ !
.
ÃÃ! "
Clear
ÃÃ" '
(
ÃÃ' (
)
ÃÃ( )
;
ÃÃ) *
bool
ÕÕ 
usernameField
ÕÕ 
=
ÕÕ  
	Validator
ÕÕ! *
.
ÕÕ* +
ValidateUsername
ÕÕ+ ;
(
ÕÕ; <
txtb_SearchFriend
ÕÕ< M
.
ÕÕM N
Text
ÕÕN R
)
ÕÕR S
;
ÕÕS T
if
ŒŒ 
(
ŒŒ 
!
ŒŒ 
usernameField
ŒŒ 
)
ŒŒ 
{
œœ 
txtb_SearchFriend
–– !
.
––! "
BorderBrush
––" -
=
––. /
Brushes
––0 7
.
––7 8
Red
––8 ;
;
––; <
}
—— 
return
““ 
usernameField
““  
;
““  !
}
”” 	
private
’’ 
void
’’ #
LoadFriendToAddSearch
’’ *
(
’’* +
)
’’+ ,
{
÷÷ 	
	HiveProxy
◊◊ 
.
◊◊ 
UserManagerClient
◊◊ '
userManagerClient
◊◊( 9
=
◊◊: ;
new
◊◊< ?
	HiveProxy
◊◊@ I
.
◊◊I J
UserManagerClient
◊◊J [
(
◊◊[ \
)
◊◊\ ]
;
◊◊] ^
LoggerManager
ÿÿ 
logger
ÿÿ  
=
ÿÿ! "
new
ÿÿ# &
LoggerManager
ÿÿ' 4
(
ÿÿ4 5
this
ÿÿ5 9
.
ÿÿ9 :
GetType
ÿÿ: A
(
ÿÿA B
)
ÿÿB C
)
ÿÿC D
;
ÿÿD E
try
ŸŸ 
{
⁄⁄ 
Profile
€€ !
userProfileObtained
€€ +
=
€€, -
userManagerClient
€€. ?
.
€€? @&
GetUserProfileByUsername
€€@ X
(
€€X Y
txtb_SearchFriend
€€Y j
.
€€j k
Text
€€k o
)
€€o p
;
€€p q
if
‹‹ 
(
‹‹ !
userProfileObtained
‹‹ '
.
‹‹' (
	idProfile
‹‹( 1
>=
‹‹2 4
$num
‹‹5 6
)
‹‹6 7
{
›› 
Profile
ﬁﬁ 
profileObtained
ﬁﬁ +
=
ﬁﬁ, -
new
ﬁﬁ. 1
Profile
ﬁﬁ2 9
(
ﬁﬁ9 :
)
ﬁﬁ: ;
{
ﬂﬂ 
idAccesAccount
‡‡ &
=
‡‡' (!
userProfileObtained
‡‡) <
.
‡‡< =
idAccesAccount
‡‡= K
}
·· 
;
·· 
int
‚‚ .
 verificationFriendRequestExisted
‚‚ 8
=
‚‚9 :)
VerifyExistingFriendRequest
‚‚; V
(
‚‚V W
profileObtained
‚‚W f
)
‚‚f g
;
‚‚g h
bool
„„ 

areFriends
„„ #
=
„„$ %
false
„„& +
;
„„+ ,
if
‰‰ 
(
‰‰ .
 verificationFriendRequestExisted
‰‰ 8
==
‰‰9 ;
$num
‰‰< =
)
‰‰= >
{
ÂÂ 

areFriends
ÊÊ "
=
ÊÊ# $
false
ÊÊ% *
;
ÊÊ* +!
LoadUserInformation
ÁÁ +
(
ÁÁ+ ,!
userProfileObtained
ÁÁ, ?
,
ÁÁ? @

areFriends
ÁÁ@ J
)
ÁÁJ K
;
ÁÁK L
}
ËË 
else
ÈÈ 
if
ÈÈ 
(
ÈÈ .
 verificationFriendRequestExisted
ÈÈ =
>=
ÈÈ> @
$num
ÈÈA B
)
ÈÈB C
{
ÍÍ 

areFriends
ÎÎ "
=
ÎÎ# $
true
ÎÎ% )
;
ÎÎ) *!
LoadUserInformation
ÏÏ +
(
ÏÏ+ ,!
userProfileObtained
ÏÏ, ?
,
ÏÏ? @

areFriends
ÏÏA K
)
ÏÏK L
;
ÏÏL M
}
ÌÌ 
else
ÓÓ 
{
ÔÔ 
DialogManager
 %
.
% &#
ShowErrorMessageAlert
& ;
(
; <

Properties
< F
.
F G
	Resources
G P
.
P Q!
dialogDataBaseError
Q d
)
d e
;
e f
}
ÒÒ 
}
ÚÚ 
else
ÚÚ 
if
ÚÚ 
(
ÚÚ !
userProfileObtained
ÚÚ ,
.
ÚÚ, -
	idProfile
ÚÚ- 6
==
ÚÚ7 9
	Constants
ÚÚ: C
.
ÚÚC D
NO_DATA_MATCHES
ÚÚD S
)
ÚÚS T
{
ÛÛ 
DialogManager
ÙÙ !
.
ÙÙ! "%
ShowWarningMessageAlert
ÙÙ" 9
(
ÙÙ9 :

Properties
ÙÙ: D
.
ÙÙD E
	Resources
ÙÙE N
.
ÙÙN O#
dialogNoUsernameFound
ÙÙO d
)
ÙÙd e
;
ÙÙe f
}
ıı 
else
ıı 
if
ıı 
(
ıı !
userProfileObtained
ıı ,
.
ıı, -
	idProfile
ıı- 6
==
ıı7 9
	Constants
ıı: C
.
ııC D
ERROR_OPERATION
ııD S
)
ııS T
{
ˆˆ 
DialogManager
˜˜ !
.
˜˜! "#
ShowErrorMessageAlert
˜˜" 7
(
˜˜7 8

Properties
˜˜8 B
.
˜˜B C
	Resources
˜˜C L
.
˜˜L M!
dialogDataBaseError
˜˜M `
)
˜˜` a
;
˜˜a b
}
¯¯ 
}
˘˘ 
catch
˙˙ 
(
˙˙ '
EndpointNotFoundException
˙˙ ,
endPointException
˙˙- >
)
˙˙> ?
{
˚˚ 
logger
¸¸ 
.
¸¸ 
LogError
¸¸ 
(
¸¸  
endPointException
¸¸  1
)
¸¸1 2
;
¸¸2 3
DialogManager
˝˝ 
.
˝˝ #
ShowErrorMessageAlert
˝˝ 3
(
˝˝3 4

Properties
˝˝4 >
.
˝˝> ?
	Resources
˝˝? H
.
˝˝H I%
dialogEndPointException
˝˝I `
)
˝˝` a
;
˝˝a b
}
˛˛ 
catch
ˇˇ 
(
ˇˇ 
TimeoutException
ˇˇ #
timeOutException
ˇˇ$ 4
)
ˇˇ4 5
{
ÄÄ 
logger
ÅÅ 
.
ÅÅ 
LogError
ÅÅ 
(
ÅÅ  
timeOutException
ÅÅ  0
)
ÅÅ0 1
;
ÅÅ1 2
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
ÇÇH I)
dialogComunicationException
ÇÇI d
)
ÇÇd e
;
ÇÇe f
}
ÉÉ 
catch
ÑÑ 
(
ÑÑ $
CommunicationException
ÑÑ )$
communicationException
ÑÑ* @
)
ÑÑ@ A
{
ÖÖ 
logger
ÜÜ 
.
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  $
communicationException
ÜÜ  6
)
ÜÜ6 7
;
ÜÜ7 8
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
àà 
}
ââ 	
private
ãã 
int
ãã )
VerifyExistingFriendRequest
ãã /
(
ãã/ 0
Profile
ãã0 7
profileObtained
ãã8 G
)
ããG H
{
åå 	
LoggerManager
çç 
logger
çç  
=
çç! "
new
çç# &
LoggerManager
çç' 4
(
çç4 5
this
çç5 9
.
çç9 :
GetType
çç: A
(
ççA B
)
ççB C
)
ççC D
;
ççD E
	HiveProxy
éé 
.
éé (
FriendRequestManagerClient
éé 0(
friendRequestManagerClient
éé1 K
=
ééL M
new
ééN Q
	HiveProxy
ééR [
.
éé[ \(
FriendRequestManagerClient
éé\ v
(
éév w
)
ééw x
;
ééx y
int
èè  
verificationResult
èè "
=
èè# $
	Constants
èè% .
.
èè. /
ERROR_OPERATION
èè/ >
;
èè> ?
try
êê 
{
ëë 
Profile
íí 
searcherProfile
íí '
=
íí( )
new
íí* -
Profile
íí. 5
(
íí5 6
)
íí6 7
{
ìì 
idAccesAccount
îî "
=
îî# $"
UserProfileSingleton
îî% 9
.
îî9 :
	idAccount
îî: C
}
ïï 
;
ïï  
verificationResult
ññ "
=
ññ# $(
friendRequestManagerClient
ññ% ?
.
ññ? @+
VerifyFriendRequestRegistered
ññ@ ]
(
ññ] ^
searcherProfile
ññ^ m
,
ññm n
profileObtained
ñño ~
)
ññ~ 
;ññ Ä
}
óó 
catch
òò 
(
òò '
EndpointNotFoundException
òò ,
endPointException
òò- >
)
òò> ?
{
ôô 
logger
öö 
.
öö 
LogError
öö 
(
öö  
endPointException
öö  1
)
öö1 2
;
öö2 3
DialogManager
õõ 
.
õõ #
ShowErrorMessageAlert
õõ 3
(
õõ3 4

Properties
õõ4 >
.
õõ> ?
	Resources
õõ? H
.
õõH I%
dialogEndPointException
õõI `
)
õõ` a
;
õõa b
}
úú 
catch
ùù 
(
ùù 
TimeoutException
ùù #
timeOutException
ùù$ 4
)
ùù4 5
{
ûû 
logger
üü 
.
üü 
LogError
üü 
(
üü  
timeOutException
üü  0
)
üü0 1
;
üü1 2
DialogManager
†† 
.
†† #
ShowErrorMessageAlert
†† 3
(
††3 4

Properties
††4 >
.
††> ?
	Resources
††? H
.
††H I)
dialogComunicationException
††I d
)
††d e
;
††e f
}
°° 
catch
¢¢ 
(
¢¢ $
CommunicationException
¢¢ )$
communicationException
¢¢* @
)
¢¢@ A
{
££ 
logger
§§ 
.
§§ 
LogError
§§ 
(
§§  $
communicationException
§§  6
)
§§6 7
;
§§7 8
DialogManager
•• 
.
•• #
ShowErrorMessageAlert
•• 3
(
••3 4

Properties
••4 >
.
••> ?
	Resources
••? H
.
••H I$
dialogTimeOutException
••I _
)
••_ `
;
••` a
}
¶¶ 
return
ßß  
verificationResult
ßß %
;
ßß% &
}
®® 	
private
™™ 
void
™™ !
AcceptFriendRequest
™™ (
(
™™( )
object
™™) /
sender
™™0 6
,
™™6 7
	EventArgs
™™8 A
e
™™B C
)
™™C D
{
´´ 	
Button
¨¨ 
clickedButton
¨¨  
=
¨¨! "
sender
¨¨# )
as
¨¨* ,
Button
¨¨- 3
;
¨¨3 4
ProfileUser
≠≠ 
profileUser
≠≠ #
=
≠≠$ %
clickedButton
≠≠& 3
.
≠≠3 4
DataContext
≠≠4 ?
as
≠≠@ B
ProfileUser
≠≠C N
;
≠≠N O
if
ÆÆ 
(
ÆÆ 
profileUser
ÆÆ 
!=
ÆÆ 
null
ÆÆ #
)
ÆÆ# $
{
ØØ %
SendAcceptFriendRequest
∞∞ '
(
∞∞' (
profileUser
∞∞( 3
)
∞∞3 4
;
∞∞4 5
}
±± 
else
≤≤ 
{
≥≥ 
DialogManager
¥¥ 
.
¥¥ #
ShowErrorMessageAlert
¥¥ 3
(
¥¥3 4

Properties
¥¥4 >
.
¥¥> ?
	Resources
¥¥? H
.
¥¥H I,
dialogErrorAtObtainingUserData
¥¥I g
)
¥¥g h
;
¥¥h i
}
µµ 
}
∂∂ 	
private
ππ 
void
ππ "
DeclineFriendRequest
ππ )
(
ππ) *
object
ππ* 0
sender
ππ1 7
,
ππ7 8
	EventArgs
ππ9 B
e
ππC D
)
ππD E
{
∫∫ 	
Button
ªª 
clickedButton
ªª  
=
ªª! "
sender
ªª# )
as
ªª* ,
Button
ªª- 3
;
ªª3 4
ProfileUser
ºº 
profileUser
ºº #
=
ºº$ %
clickedButton
ºº& 3
.
ºº3 4
DataContext
ºº4 ?
as
ºº@ B
ProfileUser
ººC N
;
ººN O
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
SUCCES_OPERATION
ÂÂ0 @
)
ÂÂ@ A
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
ERROR_OPERATION
ÍÍ5 D
)
ÍÍD E
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
LogError
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
ˆˆ 
LogError
ˆˆ 
(
ˆˆ  
timeOutException
ˆˆ  0
)
ˆˆ0 1
;
ˆˆ1 2
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
˜˜H I)
dialogComunicationException
˜˜I d
)
˜˜d e
;
˜˜e f
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
LogError
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
¸¸H I$
dialogTimeOutException
¸¸I _
)
¸¸_ `
;
¸¸` a
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
SUCCES_OPERATION
èè0 @
)
èè@ A
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
ERROR_OPERATION
îî5 D
)
îîD E
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
LogError
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
†† 
LogError
†† 
(
††  
timeOutException
††  0
)
††0 1
;
††1 2
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
°°H I)
dialogComunicationException
°°I d
)
°°d e
;
°°e f
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
LogError
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
¶¶H I$
dialogTimeOutException
¶¶I _
)
¶¶_ `
;
¶¶` a
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
SUCCES_OPERATION
ππ/ ?
)
ππ? @
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
ERROR_OPERATION
ææ4 C
)
ææC D
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
LogError
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
   
LogError
   
(
    
timeOutException
    0
)
  0 1
;
  1 2
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
ÀÀH I)
dialogComunicationException
ÀÀI d
)
ÀÀd e
;
ÀÀe f
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
LogError
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
––H I$
dialogTimeOutException
––I _
)
––_ `
;
––` a
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
SUCCES_OPERATION
ıı0 @
)
ıı@ A
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
ERROR_OPERATION
˙˙5 D
)
˙˙D E
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
LogError
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
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  
timeOutException
ÜÜ  0
)
ÜÜ0 1
;
ÜÜ1 2
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
ááH I)
dialogComunicationException
ááI d
)
áád e
;
ááe f
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
LogError
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
ååH I$
dialogTimeOutException
ååI _
)
åå_ `
;
åå` a
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
ùù 
class
ùù 
ProfileUser
ùù !
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
¢¢ 
nickname
¢¢ "
{
¢¢# $
get
¢¢% (
;
¢¢( )
set
¢¢* -
;
¢¢- .
}
¢¢/ 0
public
££ 
string
££ 
imageProfile
££ &
{
££' (
get
££) ,
;
££, -
set
££. 1
;
££1 2
}
££3 4
public
§§ 
bool
§§ 
state
§§ 
{
§§ 
get
§§  #
;
§§# $
set
§§% (
;
§§( )
}
§§* +
public
•• 
bool
•• 

areFriends
•• "
{
••# $
get
••% (
;
••( )
set
••* -
;
••- .
}
••/ 0
}
¶¶ 	
private
®® 
class
®® 
FriendRequest
®® #
{
©© 	
public
™™ 
int
™™ 
	idAccount
™™  
{
™™! "
set
™™# &
;
™™& '
get
™™( +
;
™™+ ,
}
™™- .
public
´´ 
string
´´ 
nickname
´´ "
{
´´# $
set
´´% (
;
´´( )
get
´´* -
;
´´- .
}
´´/ 0
public
¨¨ 
string
¨¨ 
imageProfile
¨¨ &
{
¨¨' (
set
¨¨) ,
;
¨¨, -
get
¨¨. 1
;
¨¨1 2
}
¨¨3 4
}
≠≠ 	
private
ØØ 
void
ØØ 
BtnFriends_Click
ØØ %
(
ØØ% &
object
ØØ& ,
sender
ØØ- 3
,
ØØ3 4
RoutedEventArgs
ØØ5 D
e
ØØE F
)
ØØF G
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
±±5 6
Visible
±±6 =
;
±±= >"
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
≤≤8 9
	Collapsed
≤≤9 B
;
≤≤B C
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
LoadFriendships
¥¥ 
(
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 	
private
∑∑ 
void
∑∑ %
BtnFriendRequests_Click
∑∑ ,
(
∑∑, -
object
∑∑- 3
sender
∑∑4 :
,
∑∑: ;
RoutedEventArgs
∑∑< K
e
∑∑L M
)
∑∑M N
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
∫∫8 9
Visible
∫∫9 @
;
∫∫@ A
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
ªª5 6
	Collapsed
ªª6 ?
;
ªª? @ 
LoadFriendRequests
ºº 
(
ºº 
)
ºº  
;
ºº  !
}
ΩΩ 	
private
øø 
void
øø 
BtnAdd_Click
øø !
(
øø! "
object
øø" (
sender
øø) /
,
øø/ 0
RoutedEventArgs
øø1 @
e
øøA B
)
øøB C
{
¿¿ 	
stckp_GameFriends
¡¡ 
.
¡¡ 

Visibility
¡¡ (
=
¡¡) *

Visibility
¡¡+ 5
.
¡¡5 6
	Collapsed
¡¡6 ?
;
¡¡? @"
stckp_FriendRequests
¬¬  
.
¬¬  !

Visibility
¬¬! +
=
¬¬, -

Visibility
¬¬. 8
.
¬¬8 9
	Collapsed
¬¬9 B
;
¬¬B C
stck_AddNewFriend
√√ 
.
√√ 

Visibility
√√ (
=
√√) *

Visibility
√√+ 5
.
√√5 6
Visible
√√6 =
;
√√= >
}
ƒƒ 	
private
∆∆ 
void
∆∆ 
Image_MouseDown
∆∆ $
(
∆∆$ %
object
∆∆% +
sender
∆∆, 2
,
∆∆2 3"
MouseButtonEventArgs
∆∆4 H
e
∆∆I J
)
∆∆J K
{
«« 	
MainMenu
»» 
mainMenu
»» 
=
»» 
new
»»  #
MainMenu
»»$ ,
(
»», -
)
»»- .
;
»». /
this
…… 
.
…… 
NavigationService
…… "
.
……" #
Navigate
……# +
(
……+ ,
mainMenu
……, 4
)
……4 5
;
……5 6
}
   	
private
ÃÃ 
void
ÃÃ 
ReturnMainMenu
ÃÃ #
(
ÃÃ# $
object
ÃÃ$ *
sender
ÃÃ+ 1
,
ÃÃ1 2
RoutedEventArgs
ÃÃ3 B
e
ÃÃC D
)
ÃÃD E
{
ÕÕ 	
MainMenu
ŒŒ 
mainMenu
ŒŒ 
=
ŒŒ 
new
ŒŒ  #
MainMenu
ŒŒ$ ,
(
ŒŒ, -
)
ŒŒ- .
;
ŒŒ. /
this
œœ 
.
œœ 
NavigationService
œœ "
.
œœ" #
Navigate
œœ# +
(
œœ+ ,
mainMenu
œœ, 4
)
œœ4 5
;
œœ5 6
}
–– 	
public
““ 
void
““ $
ObtainConnectedFriends
““ *
(
““* +
string
““+ 1
[
““1 2
]
““2 3
connectedFriends
““4 D
)
““D E
{
”” 	"
ObservableCollection
‘‘  
<
‘‘  !
ProfileUser
‘‘! ,
>
‘‘, -
usersRefreshed
‘‘. <
=
‘‘= >
new
‘‘? B"
ObservableCollection
‘‘C W
<
‘‘W X
ProfileUser
‘‘X c
>
‘‘c d
(
‘‘d e
)
‘‘e f
;
‘‘f g
for
’’ 
(
’’ 
int
’’ 
indexListView
’’ "
=
’’# $
$num
’’% &
;
’’& '
indexListView
’’( 5
<
’’6 7
lvw_FriendsList
’’8 G
.
’’G H
Items
’’H M
.
’’M N
Count
’’N S
;
’’S T
indexListView
’’U b
++
’’b d
)
’’d e
{
÷÷ 
ProfileUser
◊◊ 
profile
◊◊ #
=
◊◊$ %
lvw_FriendsList
◊◊& 5
.
◊◊5 6
Items
◊◊6 ;
[
◊◊; <
indexListView
◊◊< I
]
◊◊I J
as
◊◊K M
ProfileUser
◊◊N Y
;
◊◊Y Z
if
ÿÿ 
(
ÿÿ 
profile
ÿÿ 
!=
ÿÿ 
null
ÿÿ "
)
ÿÿ" #
{
ŸŸ 
profile
⁄⁄ 
.
⁄⁄ 
state
⁄⁄ !
=
⁄⁄" #
connectedFriends
⁄⁄$ 4
.
⁄⁄4 5
Contains
⁄⁄5 =
(
⁄⁄= >
profile
⁄⁄> E
.
⁄⁄E F
username
⁄⁄F N
)
⁄⁄N O
;
⁄⁄O P
}
€€ 
usersRefreshed
‹‹ 
.
‹‹ 
Add
‹‹ "
(
‹‹" #
profile
‹‹# *
)
‹‹* +
;
‹‹+ ,
}
›› 
lvw_FriendsList
ﬁﬁ 
.
ﬁﬁ 
Items
ﬁﬁ !
.
ﬁﬁ! "
Clear
ﬁﬁ" '
(
ﬁﬁ' (
)
ﬁﬁ( )
;
ﬁﬁ) *
lvw_FriendsList
ﬂﬂ 
.
ﬂﬂ 
ItemsSource
ﬂﬂ '
=
ﬂﬂ( )
usersRefreshed
ﬂﬂ* 8
;
ﬂﬂ8 9
}
‡‡ 	
}
·· 
}‚‚ ∑ä
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
string 
	codeLobby  
;  !
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
.##: ;
DEFAULT_GUEST_ID##; K
)##K L
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
.66) *
DEFAULT_GUEST_ID66* :
,66: ;
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
.::= >
SUCCES_OPERATION::> N
)::N O
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
LogErrorGG 
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
.LL 
LogErrorLL 
(LL  
timeOutExceptionLL  0
)LL0 1
;LL1 2
DialogManagerMM 
.MM !
ShowErrorMessageAlertMM 3
(MM3 4

PropertiesMM4 >
.MM> ?
	ResourcesMM? H
.MMH I'
dialogComunicationExceptionMMI d
)MMd e
;MMe f
}NN 
catchOO 
(OO "
CommunicationExceptionOO )"
communicationExceptionOO* @
)OO@ A
{PP 
loggerQQ 
.QQ 
LogErrorQQ 
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
.RRH I"
dialogTimeOutExceptionRRI _
)RR_ `
;RR` a
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
{[[ 
	codeLobby\\ 
=\\ 
Regex\\ !
.\\! "
Replace\\" )
(\\) *
	txtb_Code\\* 3
.\\3 4
Text\\4 8
.\\8 9
Trim\\9 =
(\\= >
)\\> ?
,\\? @
$str\\A G
,\\G H
$str\\I K
)\\K L
;\\L M
int]] !
validationResultLobby]] )
=]]* +!
ValidateExistingLobby]], A
(]]A B
	codeLobby]]B K
)]]K L
;]]L M
if^^ 
(^^ !
validationResultLobby^^ )
==^^* ,
	Constants^^- 6
.^^6 7
DATA_MATCHES^^7 C
)^^C D
{__ #
ValidateCapacityOfLobby`` +
(``+ ,
	codeLobby``, 5
)``5 6
;``6 7
}aa 
elsebb 
ifbb 
(bb !
validationResultLobbybb -
==bb. 0
	Constantsbb1 :
.bb: ;
NO_DATA_MATCHESbb; J
)bbJ K
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
LogError
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
ÜÜ 
LogError
ÜÜ 
(
ÜÜ  
timeOutException
ÜÜ  0
)
ÜÜ0 1
;
ÜÜ1 2
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
LogError
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
ååH I$
dialogTimeOutException
ååI _
)
åå_ `
;
åå` a
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
ERROR_OPERATION
ìì- <
;
ìì< =
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
öö0 1
DATA_MATCHES
öö1 =
;
öö= >
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
ûû0 1
NO_DATA_MATCHES
ûû1 @
;
ûû@ A
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
LogError
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
®® 
LogError
®® 
(
®®  
timeOutException
®®  0
)
®®0 1
;
®®1 2
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
©©H I)
dialogComunicationException
©©I d
)
©©d e
;
©©e f
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
LogError
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
ÆÆH I$
dialogTimeOutException
ÆÆI _
)
ÆÆ_ `
;
ÆÆ` a
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
)
¿¿8 9
;
¿¿9 :
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
}ÿÿ ‰À
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
DispatcherTimer 
timer  %
;% &
private 
int 
timeLeft 
= 
$num !
;! "
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
{** 	
timer++ 
=++ 
new++ 
DispatcherTimer++ '
(++' (
)++( )
;++) *
timer,, 
.,, 
Interval,, 
=,, 
TimeSpan,, %
.,,% &
FromSeconds,,& 1
(,,1 2
$num,,2 3
),,3 4
;,,4 5
timer-- 
.-- 
Tick-- 
+=-- 

Timer_Tick-- $
;--$ %
timer.. 
... 
Start.. 
(.. 
).. 
;.. 
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
{11 	
timeLeft22 
--22 
;22 
	txt_Timer33 
.33 
Text33 
=33 

Properties33 '
.33' (
	Resources33( 1
.331 2
	txt_Timer332 ;
+33< =
timeLeft33> F
;33F G
if44 
(44 
timeLeft44 
<=44 
$num44 
)44 
{55 
timer66 
.66 
Stop66 
(66 
)66 
;66 
	txt_Timer77 
.77 

Visibility77 $
=77% &

Visibility77' 1
.771 2
	Collapsed772 ;
;77; <
txt_ResendLink88 
.88 

Visibility88 )
=88* +

Visibility88, 6
.886 7
Visible887 >
;88> ?
txt_ResendCodeClick99 #
.99# $

Visibility99$ .
=99/ 0

Visibility991 ;
.99; <
Visible99< C
;99C D
}:: 
};; 	
private<< 
void<< 
FocusFirstTextBox<< &
(<<& '
)<<' (
{== 	
TextBox>> 
firstTextBox>>  
=>>! "
(>># $
TextBox>>$ +
)>>+ ,
brd_BubbleOne>>, 9
.>>9 :
Child>>: ?
;>>? @
firstTextBox?? 
.?? 
Focus?? 
(?? 
)??  
;??  !
}@@ 	
privateBB 
voidBB 
TextBox_TextChangedBB (
(BB( )
objectBB) /
senderBB0 6
,BB6 7 
TextChangedEventArgsBB8 L
eBBM N
)BBN O
{CC 	
TextBoxDD 
currentTextBoxDD "
=DD# $
(DD% &
TextBoxDD& -
)DD- .
senderDD. 4
;DD4 5
ifEE 
(EE 
currentTextBoxEE 
.EE 
TextEE #
.EE# $
LengthEE$ *
==EE+ -
$numEE. /
)EE/ 0
{FF 
MoveToNextTextBoxGG !
(GG! "
currentTextBoxGG" 0
)GG0 1
;GG1 2
}HH 
elseII 
ifII 
(II 
currentTextBoxII #
.II# $
TextII$ (
.II( )
LengthII) /
==II0 2
$numII3 4
)II4 5
{JJ !
MoveToPreviousTextBoxKK %
(KK% &
currentTextBoxKK& 4
)KK4 5
;KK5 6
}LL 
ifNN 
(NN 
AllTextBoxesFilledNN "
(NN" #
)NN# $
)NN$ %
{OO 
ValidateCodePP 
(PP 
)PP 
;PP 
}QQ 
}RR 	
privateUU 
voidUU 
TextBox_GotFocusUU %
(UU% &
objectUU& ,
senderUU- 3
,UU3 4
RoutedEventArgsUU5 D
eUUE F
)UUF G
{VV 	
TextBoxWW 
currentTextBoxWW "
=WW# $
(WW% &
TextBoxWW& -
)WW- .
senderWW. 4
;WW4 5
BorderXX 
currentBorderXX  
=XX! "
(XX# $
BorderXX$ *
)XX* +
currentTextBoxXX+ 9
.XX9 :
ParentXX: @
;XX@ A
currentBorderYY 
.YY 
BorderBrushYY %
=YY& '
BrushesYY( /
.YY/ 0
YellowYY0 6
;YY6 7
}ZZ 	
private[[ 
void[[ 
TextBox_LostFocus[[ &
([[& '
object[[' -
sender[[. 4
,[[4 5
RoutedEventArgs[[6 E
e[[F G
)[[G H
{\\ 	
TextBox]] 
currentTextBox]] "
=]]# $
(]]% &
TextBox]]& -
)]]- .
sender]]. 4
;]]4 5
Border^^ 
currentBorder^^  
=^^! "
(^^# $
Border^^$ *
)^^* +
currentTextBox^^+ 9
.^^9 :
Parent^^: @
;^^@ A
currentBorder__ 
.__ 
BorderBrush__ %
=__& '
Brushes__( /
.__/ 0
White__0 5
;__5 6
}`` 	
privatebb 
voidbb 
MoveToNextTextBoxbb &
(bb& '
TextBoxbb' .
currentTextBoxbb/ =
)bb= >
{cc 	
ifdd 
(dd 
currentTextBoxdd 
==dd !
(dd" #
TextBoxdd# *
)dd* +
brd_BubbleOnedd+ 8
.dd8 9
Childdd9 >
)dd> ?
(ee 
(ee 
TextBoxee 
)ee 
brd_BubbleTwoee '
.ee' (
Childee( -
)ee- .
.ee. /
Focusee/ 4
(ee4 5
)ee5 6
;ee6 7
elseff 
ifff 
(ff 
currentTextBoxff #
==ff$ &
(ff' (
TextBoxff( /
)ff/ 0
brd_BubbleTwoff0 =
.ff= >
Childff> C
)ffC D
(gg 
(gg 
TextBoxgg 
)gg 
brd_BubbleThreegg )
.gg) *
Childgg* /
)gg/ 0
.gg0 1
Focusgg1 6
(gg6 7
)gg7 8
;gg8 9
elsehh 
ifhh 
(hh 
currentTextBoxhh #
==hh$ &
(hh' (
TextBoxhh( /
)hh/ 0
brd_BubbleThreehh0 ?
.hh? @
Childhh@ E
)hhE F
(ii 
(ii 
TextBoxii 
)ii 
brd_BubbleFourii (
.ii( )
Childii) .
)ii. /
.ii/ 0
Focusii0 5
(ii5 6
)ii6 7
;ii7 8
elsejj 
ifjj 
(jj 
currentTextBoxjj #
==jj$ &
(jj' (
TextBoxjj( /
)jj/ 0
brd_BubbleFourjj0 >
.jj> ?
Childjj? D
)jjD E
(kk 
(kk 
TextBoxkk 
)kk 
brd_BubbleFivekk (
.kk( )
Childkk) .
)kk. /
.kk/ 0
Focuskk0 5
(kk5 6
)kk6 7
;kk7 8
elsell 
ifll 
(ll 
currentTextBoxll #
==ll$ &
(ll' (
TextBoxll( /
)ll/ 0
brd_BubbleFivell0 >
.ll> ?
Childll? D
)llD E
(mm 
(mm 
TextBoxmm 
)mm 
brd_BubbleSixmm '
.mm' (
Childmm( -
)mm- .
.mm. /
Focusmm/ 4
(mm4 5
)mm5 6
;mm6 7
}nn 	
privatepp 
voidpp !
MoveToPreviousTextBoxpp *
(pp* +
TextBoxpp+ 2
currentTextBoxpp3 A
)ppA B
{qq 	
ifrr 
(rr 
currentTextBoxrr 
==rr !
(rr" #
TextBoxrr# *
)rr* +
brd_BubbleSixrr+ 8
.rr8 9
Childrr9 >
)rr> ?
(ss 
(ss 
TextBoxss 
)ss 
brd_BubbleFivess (
.ss( )
Childss) .
)ss. /
.ss/ 0
Focusss0 5
(ss5 6
)ss6 7
;ss7 8
elsett 
iftt 
(tt 
currentTextBoxtt #
==tt$ &
(tt' (
TextBoxtt( /
)tt/ 0
brd_BubbleFivett0 >
.tt> ?
Childtt? D
)ttD E
(uu 
(uu 
TextBoxuu 
)uu 
brd_BubbleFouruu (
.uu( )
Childuu) .
)uu. /
.uu/ 0
Focusuu0 5
(uu5 6
)uu6 7
;uu7 8
elsevv 
ifvv 
(vv 
currentTextBoxvv #
==vv$ &
(vv' (
TextBoxvv( /
)vv/ 0
brd_BubbleFourvv0 >
.vv> ?
Childvv? D
)vvD E
(ww 
(ww 
TextBoxww 
)ww 
brd_BubbleThreeww )
.ww) *
Childww* /
)ww/ 0
.ww0 1
Focusww1 6
(ww6 7
)ww7 8
;ww8 9
elsexx 
ifxx 
(xx 
currentTextBoxxx #
==xx$ &
(xx' (
TextBoxxx( /
)xx/ 0
brd_BubbleThreexx0 ?
.xx? @
Childxx@ E
)xxE F
(yy 
(yy 
TextBoxyy 
)yy 
brd_BubbleTwoyy '
.yy' (
Childyy( -
)yy- .
.yy. /
Focusyy/ 4
(yy4 5
)yy5 6
;yy6 7
elsezz 
ifzz 
(zz 
currentTextBoxzz #
==zz$ &
(zz' (
TextBoxzz( /
)zz/ 0
brd_BubbleTwozz0 =
.zz= >
Childzz> C
)zzC D
({{ 
({{ 
TextBox{{ 
){{ 
brd_BubbleOne{{ '
.{{' (
Child{{( -
){{- .
.{{. /
Focus{{/ 4
({{4 5
){{5 6
;{{6 7
}|| 	
private~~ 
bool~~ 
AllTextBoxesFilled~~ '
(~~' (
)~~( )
{ 	
return
ÄÄ 
(
ÄÄ 
(
ÄÄ 
TextBox
ÄÄ 
)
ÄÄ 
brd_BubbleOne
ÄÄ *
.
ÄÄ* +
Child
ÄÄ+ 0
)
ÄÄ0 1
.
ÄÄ1 2
Text
ÄÄ2 6
.
ÄÄ6 7
Length
ÄÄ7 =
>
ÄÄ> ?
$num
ÄÄ@ A
&&
ÄÄB D
(
ÅÅ 
(
ÅÅ 
TextBox
ÅÅ 
)
ÅÅ 
brd_BubbleTwo
ÅÅ *
.
ÅÅ* +
Child
ÅÅ+ 0
)
ÅÅ0 1
.
ÅÅ1 2
Text
ÅÅ2 6
.
ÅÅ6 7
Length
ÅÅ7 =
>
ÅÅ> ?
$num
ÅÅ@ A
&&
ÅÅB D
(
ÇÇ 
(
ÇÇ 
TextBox
ÇÇ 
)
ÇÇ 
brd_BubbleThree
ÇÇ ,
.
ÇÇ, -
Child
ÇÇ- 2
)
ÇÇ2 3
.
ÇÇ3 4
Text
ÇÇ4 8
.
ÇÇ8 9
Length
ÇÇ9 ?
>
ÇÇ@ A
$num
ÇÇB C
&&
ÇÇD F
(
ÉÉ 
(
ÉÉ 
TextBox
ÉÉ 
)
ÉÉ 
brd_BubbleFour
ÉÉ +
.
ÉÉ+ ,
Child
ÉÉ, 1
)
ÉÉ1 2
.
ÉÉ2 3
Text
ÉÉ3 7
.
ÉÉ7 8
Length
ÉÉ8 >
>
ÉÉ? @
$num
ÉÉA B
&&
ÉÉC E
(
ÑÑ 
(
ÑÑ 
TextBox
ÑÑ 
)
ÑÑ 
brd_BubbleFive
ÑÑ +
.
ÑÑ+ ,
Child
ÑÑ, 1
)
ÑÑ1 2
.
ÑÑ2 3
Text
ÑÑ3 7
.
ÑÑ7 8
Length
ÑÑ8 >
>
ÑÑ? @
$num
ÑÑA B
&&
ÑÑC E
(
ÖÖ 
(
ÖÖ 
TextBox
ÖÖ 
)
ÖÖ 
brd_BubbleSix
ÖÖ *
.
ÖÖ* +
Child
ÖÖ+ 0
)
ÖÖ0 1
.
ÖÖ1 2
Text
ÖÖ2 6
.
ÖÖ6 7
Length
ÖÖ7 =
>
ÖÖ> ?
$num
ÖÖ@ A
;
ÖÖA B
}
ÜÜ 	
private
àà 
void
àà 
ValidateCode
àà !
(
àà! "
)
àà" #
{
ââ 	
string
ää 
enteredCode
ää 
=
ää  
GetEnteredCode
ää! /
(
ää/ 0
)
ää0 1
;
ää1 2
if
ãã 
(
ãã 
IsValidCode
ãã 
(
ãã 
enteredCode
ãã '
)
ãã' (
)
ãã( )
{
åå $
ShowNewPasswordSection
çç &
(
çç& '
)
çç' (
;
çç( )
}
éé 
else
èè 
{
êê 
lbl_ErrorMessage
ëë  
.
ëë  !

Visibility
ëë! +
=
ëë, -

Visibility
ëë. 8
.
ëë8 9
Visible
ëë9 @
;
ëë@ A
}
íí 
}
ìì 	
private
ïï 
string
ïï 
GetEnteredCode
ïï %
(
ïï% &
)
ïï& '
{
ññ 	
return
óó 
$"
óó 
{
óó 
(
óó 
(
óó 
TextBox
óó 
)
óó  
brd_BubbleOne
óó  -
.
óó- .
Child
óó. 3
)
óó3 4
.
óó4 5
Text
óó5 9
}
óó9 :
{
óó: ;
(
óó; <
(
óó< =
TextBox
óó= D
)
óóD E
brd_BubbleTwo
óóE R
.
óóR S
Child
óóS X
)
óóX Y
.
óóY Z
Text
óóZ ^
}
óó^ _
"
óó_ `
+
óóa b
$"
òò 
{
òò 
(
òò 
(
òò 
TextBox
òò 
)
òò  
brd_BubbleThree
òò  /
.
òò/ 0
Child
òò0 5
)
òò5 6
.
òò6 7
Text
òò7 ;
}
òò; <
{
òò< =
(
òò= >
(
òò> ?
TextBox
òò? F
)
òòF G
brd_BubbleFour
òòG U
.
òòU V
Child
òòV [
)
òò[ \
.
òò\ ]
Text
òò] a
}
òòa b
"
òòb c
+
òòd e
$"
ôô 
{
ôô 
(
ôô 
(
ôô 
TextBox
ôô 
)
ôô  
brd_BubbleFive
ôô  .
.
ôô. /
Child
ôô/ 4
)
ôô4 5
.
ôô5 6
Text
ôô6 :
}
ôô: ;
{
ôô; <
(
ôô< =
(
ôô= >
TextBox
ôô> E
)
ôôE F
brd_BubbleSix
ôôF S
.
ôôS T
Child
ôôT Y
)
ôôY Z
.
ôôZ [
Text
ôô[ _
}
ôô_ `
"
ôô` a
;
ôôa b
}
öö 	
private
ùù 
bool
ùù 
IsValidCode
ùù  
(
ùù  !
string
ùù! '
code
ùù( ,
)
ùù, -
{
ûû 	
LoggerManager
üü 
logger
üü  
=
üü! "
new
üü# &
LoggerManager
üü' 4
(
üü4 5
this
üü5 9
.
üü9 :
GetType
üü: A
(
üüA B
)
üüB C
)
üüC D
;
üüD E
	HiveProxy
†† 
.
†† ,
EmailVerificationManagerClient
†† 4&
emailVerificationManager
††5 M
=
††N O
new
††P S
	HiveProxy
††T ]
.
††] ^,
EmailVerificationManagerClient
††^ |
(
††| }
)
††} ~
;
††~ 
bool
°° 
isValid
°° 
=
°° 
false
°°  
;
°°  !
try
¢¢ 
{
££ 
UserVerificator
§§ 
verificationUser
§§  0
=
§§1 2
new
§§3 6
UserVerificator
§§7 F
(
§§F G
)
§§G H
;
§§H I
verificationUser
••  
.
••  !
email
••! &
=
••' ("
UserProfileSingleton
••) =
.
••= >
email
••> C
;
••C D
verificationUser
¶¶  
.
¶¶  !
code
¶¶! %
=
¶¶& '
code
¶¶( ,
;
¶¶, -
isValid
ßß 
=
ßß &
emailVerificationManager
ßß 2
.
ßß2 3$
VerifyCodeVerification
ßß3 I
(
ßßI J
verificationUser
ßßJ Z
)
ßßZ [
;
ßß[ \
}
®® 
catch
©© 
(
©© '
EndpointNotFoundException
©© ,
endPointException
©©- >
)
©©> ?
{
™™ 
logger
´´ 
.
´´ 
LogError
´´ 
(
´´  
endPointException
´´  1
)
´´1 2
;
´´2 3
DialogManager
¨¨ 
.
¨¨ #
ShowErrorMessageAlert
¨¨ 3
(
¨¨3 4

Properties
¨¨4 >
.
¨¨> ?
	Resources
¨¨? H
.
¨¨H I%
dialogEndPointException
¨¨I `
)
¨¨` a
;
¨¨a b
}
≠≠ 
catch
ÆÆ 
(
ÆÆ 
TimeoutException
ÆÆ #
timeOutException
ÆÆ$ 4
)
ÆÆ4 5
{
ØØ 
logger
∞∞ 
.
∞∞ 
LogError
∞∞ 
(
∞∞  
timeOutException
∞∞  0
)
∞∞0 1
;
∞∞1 2
DialogManager
±± 
.
±± #
ShowErrorMessageAlert
±± 3
(
±±3 4

Properties
±±4 >
.
±±> ?
	Resources
±±? H
.
±±H I)
dialogComunicationException
±±I d
)
±±d e
;
±±e f
}
≤≤ 
catch
≥≥ 
(
≥≥ $
CommunicationException
≥≥ )$
communicationException
≥≥* @
)
≥≥@ A
{
¥¥ 
logger
µµ 
.
µµ 
LogError
µµ 
(
µµ  $
communicationException
µµ  6
)
µµ6 7
;
µµ7 8
DialogManager
∂∂ 
.
∂∂ #
ShowErrorMessageAlert
∂∂ 3
(
∂∂3 4

Properties
∂∂4 >
.
∂∂> ?
	Resources
∂∂? H
.
∂∂H I$
dialogTimeOutException
∂∂I _
)
∂∂_ `
;
∂∂` a
}
∑∑ 
return
∏∏ 
isValid
∏∏ 
;
∏∏ 
}
ππ 	
private
ªª 
void
ªª $
ShowNewPasswordSection
ªª +
(
ªª+ ,
)
ªª, -
{
ºº 	
lbl_ErrorMessage
ΩΩ 
.
ΩΩ 

Visibility
ΩΩ '
=
ΩΩ( )

Visibility
ΩΩ* 4
.
ΩΩ4 5
	Collapsed
ΩΩ5 >
;
ΩΩ> ?#
grd_VerificationPanel
ææ !
.
ææ! "

Visibility
ææ" ,
=
ææ- .

Visibility
ææ/ 9
.
ææ9 :
	Collapsed
ææ: C
;
ææC D
grd_EditionPanel
øø 
.
øø 

Visibility
øø '
=
øø( )

Visibility
øø* 4
.
øø4 5
Visible
øø5 <
;
øø< =
}
¿¿ 	
private
¬¬ 
void
¬¬ %
BtnConfirmChanges_Click
¬¬ ,
(
¬¬, -
object
¬¬- 3
sender
¬¬4 :
,
¬¬: ;
RoutedEventArgs
¬¬< K
e
¬¬L M
)
¬¬M N
{
√√ 	
	txt_Email
ƒƒ 
.
ƒƒ 
BorderBrush
ƒƒ !
=
ƒƒ" #
Brushes
ƒƒ$ +
.
ƒƒ+ ,
White
ƒƒ, 1
;
ƒƒ1 2
brd_Password
≈≈ 
.
≈≈ 
BorderBrush
≈≈ $
=
≈≈% &
Brushes
≈≈' .
.
≈≈. /
Yellow
≈≈/ 5
;
≈≈5 6!
brd_ConfirmPassword
∆∆ 
.
∆∆  
BorderBrush
∆∆  +
=
∆∆, -
Brushes
∆∆. 5
.
∆∆5 6
Yellow
∆∆6 <
;
∆∆< =
if
«« 
(
«« 
ValidateFields
«« 
(
«« 
)
««  
)
««  !
{
»» 
if
…… 
(
…… #
ValidateSamePasswords
…… )
(
……) *
)
……* +
)
……+ ,
{
   
if
ÀÀ 
(
ÀÀ (
ValidateExistingCredential
ÀÀ 2
(
ÀÀ2 3
)
ÀÀ3 4
)
ÀÀ4 5
{
ÃÃ 
UpdateCredentials
ÕÕ )
(
ÕÕ) *
)
ÕÕ* +
;
ÕÕ+ ,
}
ŒŒ 
}
œœ 
else
–– 
{
—— 
DialogManager
““ !
.
““! "%
ShowWarningMessageAlert
““" 9
(
““9 :

Properties
““: D
.
““D E
	Resources
““E N
.
““N O'
dialogMissmatchesPassword
““O h
)
““h i
;
““i j
}
”” 
}
‘‘ 
else
’’ 
{
÷÷ 
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
◊◊H I
dialogWrongData
◊◊I X
)
◊◊X Y
;
◊◊Y Z
}
ÿÿ 
}
ŸŸ 	
private
€€ 
bool
€€ 
ValidateFields
€€ #
(
€€# $
)
€€$ %
{
‹‹ 	
bool
›› 
emailVerification
›› "
=
››# $
	Validator
››% .
.
››. /
ValidateEmail
››/ <
(
››< =
	txt_Email
››= F
.
››F G
Text
››G K
)
››K L
;
››L M
bool
ﬁﬁ !
passwordVerificaton
ﬁﬁ $
=
ﬁﬁ% &
	Validator
ﬁﬁ' 0
.
ﬁﬁ0 1
ValidatePassword
ﬁﬁ1 A
(
ﬁﬁA B
pwb_Password
ﬁﬁB N
.
ﬁﬁN O
Password
ﬁﬁO W
)
ﬁﬁW X
;
ﬁﬁX Y
bool
ﬂﬂ )
passwordConfirmVerification
ﬂﬂ ,
=
ﬂﬂ- .
	Validator
ﬂﬂ/ 8
.
ﬂﬂ8 9
ValidatePassword
ﬂﬂ9 I
(
ﬂﬂI J!
pwb_ConfirmPassword
ﬂﬂJ ]
.
ﬂﬂ] ^
Password
ﬂﬂ^ f
)
ﬂﬂf g
;
ﬂﬂg h
if
‡‡ 
(
‡‡ 
!
‡‡ 
emailVerification
‡‡ "
)
‡‡" #
{
·· 
	txt_Email
‚‚ 
.
‚‚ 
BorderBrush
‚‚ %
=
‚‚& '
Brushes
‚‚( /
.
‚‚/ 0
Red
‚‚0 3
;
‚‚3 4
}
„„ 
if
‰‰ 
(
‰‰ 
!
‰‰ !
passwordVerificaton
‰‰ $
)
‰‰$ %
{
ÂÂ 
brd_Password
ÊÊ 
.
ÊÊ 
BorderBrush
ÊÊ (
=
ÊÊ) *
Brushes
ÊÊ+ 2
.
ÊÊ2 3
Red
ÊÊ3 6
;
ÊÊ6 7
}
ÁÁ 
if
ËË 
(
ËË 
!
ËË )
passwordConfirmVerification
ËË ,
)
ËË, -
{
ÈÈ !
brd_ConfirmPassword
ÍÍ #
.
ÍÍ# $
BorderBrush
ÍÍ$ /
=
ÍÍ0 1
Brushes
ÍÍ2 9
.
ÍÍ9 :
Red
ÍÍ: =
;
ÍÍ= >
}
ÎÎ 
return
ÏÏ 
emailVerification
ÏÏ $
&&
ÏÏ% '!
passwordVerificaton
ÏÏ( ;
&&
ÏÏ< >)
passwordConfirmVerification
ÏÏ? Z
;
ÏÏZ [
}
ÌÌ 	
private
ÔÔ 
bool
ÔÔ #
ValidateSamePasswords
ÔÔ *
(
ÔÔ* +
)
ÔÔ+ ,
{
 	
bool
ÒÒ 
samePasswords
ÒÒ 
=
ÒÒ  
false
ÒÒ! &
;
ÒÒ& '
if
ÚÚ 
(
ÚÚ !
pwb_ConfirmPassword
ÚÚ #
.
ÚÚ# $
Password
ÚÚ$ ,
==
ÚÚ- /
pwb_Password
ÚÚ0 <
.
ÚÚ< =
Password
ÚÚ= E
)
ÚÚE F
{
ÛÛ 
samePasswords
ÙÙ 
=
ÙÙ 
true
ÙÙ  $
;
ÙÙ$ %
}
ıı 
return
ˆˆ 
samePasswords
ˆˆ  
;
ˆˆ  !
}
˜˜ 	
private
˘˘ 
bool
˘˘ (
ValidateExistingCredential
˘˘ /
(
˘˘/ 0
)
˘˘0 1
{
˙˙ 	
bool
˚˚  
resultVerification
˚˚ #
=
˚˚$ %
false
˚˚& +
;
˚˚+ ,
LoggerManager
¸¸ 
logger
¸¸  
=
¸¸! "
new
¸¸# &
LoggerManager
¸¸' 4
(
¸¸4 5
this
¸¸5 9
.
¸¸9 :
GetType
¸¸: A
(
¸¸A B
)
¸¸B C
)
¸¸C D
;
¸¸D E
	HiveProxy
˝˝ 
.
˝˝ 
UserManagerClient
˝˝ '
userManagerClient
˝˝( 9
=
˝˝: ;
new
˝˝< ?
	HiveProxy
˝˝@ I
.
˝˝I J
UserManagerClient
˝˝J [
(
˝˝[ \
)
˝˝\ ]
;
˝˝] ^
try
˛˛ 
{
ˇˇ 
int
ÄÄ +
resultVerificationCredentials
ÄÄ 1
=
ÄÄ2 3
userManagerClient
ÄÄ4 E
.
ÄÄE F
VerifyCredentials
ÄÄF W
(
ÄÄW X"
UserProfileSingleton
ÄÄX l
.
ÄÄl m
username
ÄÄm u
,
ÄÄu v
	txt_EmailÄÄw Ä
.ÄÄÄ Å
TextÄÄÅ Ö
)ÄÄÖ Ü
;ÄÄÜ á
if
ÅÅ 
(
ÅÅ +
resultVerificationCredentials
ÅÅ 1
==
ÅÅ2 4
	Constants
ÅÅ5 >
.
ÅÅ> ?
DATA_MATCHES
ÅÅ? K
)
ÅÅK L
{
ÇÇ 
DialogManager
ÉÉ !
.
ÉÉ! "#
ShowErrorMessageAlert
ÉÉ" 7
(
ÉÉ7 8

Properties
ÉÉ8 B
.
ÉÉB C
	Resources
ÉÉC L
.
ÉÉL M*
dialogEmailAlreadyRegistered
ÉÉM i
)
ÉÉi j
;
ÉÉj k 
resultVerification
ÑÑ &
=
ÑÑ' (
false
ÑÑ) .
;
ÑÑ. /
}
ÖÖ 
else
ÜÜ 
if
ÜÜ 
(
ÜÜ +
resultVerificationCredentials
ÜÜ 6
==
ÜÜ7 9
	Constants
ÜÜ: C
.
ÜÜC D
NO_DATA_MATCHES
ÜÜD S
)
ÜÜS T
{
áá  
resultVerification
àà &
=
àà' (
true
àà) -
;
àà- .
}
ââ 
else
ää 
{
ãã 
DialogManager
åå !
.
åå! "#
ShowErrorMessageAlert
åå" 7
(
åå7 8

Properties
åå8 B
.
ååB C
	Resources
ååC L
.
ååL M!
dialogDataBaseError
ååM `
)
åå` a
;
ååa b 
resultVerification
çç &
=
çç' (
false
çç) .
;
çç. /
}
éé 
}
èè 
catch
êê 
(
êê '
EndpointNotFoundException
êê ,
endPointException
êê- >
)
êê> ?
{
ëë 
logger
íí 
.
íí 
LogError
íí 
(
íí  
endPointException
íí  1
)
íí1 2
;
íí2 3
DialogManager
ìì 
.
ìì #
ShowErrorMessageAlert
ìì 3
(
ìì3 4

Properties
ìì4 >
.
ìì> ?
	Resources
ìì? H
.
ììH I%
dialogEndPointException
ììI `
)
ìì` a
;
ììa b
}
îî 
catch
ïï 
(
ïï 
TimeoutException
ïï #
timeOutException
ïï$ 4
)
ïï4 5
{
ññ 
logger
óó 
.
óó 
LogError
óó 
(
óó  
timeOutException
óó  0
)
óó0 1
;
óó1 2
DialogManager
òò 
.
òò #
ShowErrorMessageAlert
òò 3
(
òò3 4

Properties
òò4 >
.
òò> ?
	Resources
òò? H
.
òòH I)
dialogComunicationException
òòI d
)
òòd e
;
òòe f
}
ôô 
catch
öö 
(
öö $
CommunicationException
öö )$
communicationException
öö* @
)
öö@ A
{
õõ 
logger
úú 
.
úú 
LogError
úú 
(
úú  $
communicationException
úú  6
)
úú6 7
;
úú7 8
DialogManager
ùù 
.
ùù #
ShowErrorMessageAlert
ùù 3
(
ùù3 4

Properties
ùù4 >
.
ùù> ?
	Resources
ùù? H
.
ùùH I$
dialogTimeOutException
ùùI _
)
ùù_ `
;
ùù` a
}
ûû 
return
üü  
resultVerification
üü %
;
üü% &
}
†† 	
private
¢¢ 
void
¢¢ 
UpdateCredentials
¢¢ &
(
¢¢& '
)
¢¢' (
{
££ 	
LoggerManager
§§ 
logger
§§  
=
§§! "
new
§§# &
LoggerManager
§§' 4
(
§§4 5
this
§§5 9
.
§§9 :
GetType
§§: A
(
§§A B
)
§§B C
)
§§C D
;
§§D E
	HiveProxy
•• 
.
•• 
UserManagerClient
•• '
userManagerClient
••( 9
=
••: ;
new
••< ?
	HiveProxy
••@ I
.
••I J
UserManagerClient
••J [
(
••[ \
)
••\ ]
;
••] ^
try
¶¶ 
{
ßß 
AccessAccount
®® 
oldAccesAccount
®® -
=
®®. /
new
®®0 3
AccessAccount
®®4 A
(
®®A B
)
®®B C
{
©© 
idAccesAccount
™™ "
=
™™# $"
UserProfileSingleton
™™% 9
.
™™9 :
	idAccount
™™: C
,
™™C D
email
´´ 
=
´´ "
UserProfileSingleton
´´ 0
.
´´0 1
email
´´1 6
,
´´6 7
password
¨¨ 
=
¨¨ "
UserProfileSingleton
¨¨ 3
.
¨¨3 4
password
¨¨4 <
}
≠≠ 
;
≠≠ 
string
ÆÆ 
passwordToEncrypt
ÆÆ (
=
ÆÆ) *
pwb_Password
ÆÆ+ 7
.
ÆÆ7 8
Password
ÆÆ8 @
;
ÆÆ@ A
string
ØØ 
passwordEncripted
ØØ (
=
ØØ) *
Hasher
ØØ+ 1
.
ØØ1 2

hashToSHA1
ØØ2 <
(
ØØ< =
passwordToEncrypt
ØØ= N
)
ØØN O
;
ØØO P
AccessAccount
∞∞ 
newAccesAccount
∞∞ -
=
∞∞. /
new
∞∞0 3
AccessAccount
∞∞4 A
(
∞∞A B
)
∞∞B C
{
±± 
idAccesAccount
≤≤ "
=
≤≤# $"
UserProfileSingleton
≤≤% 9
.
≤≤9 :
	idAccount
≤≤: C
,
≤≤C D
email
≥≥ 
=
≥≥ 
	txt_Email
≥≥ %
.
≥≥% &
Text
≥≥& *
,
≥≥* +
password
¥¥ 
=
¥¥ 
passwordEncripted
¥¥ 0
}
µµ 
;
µµ 
int
∂∂ 
updateResult
∂∂  
=
∂∂! "
userManagerClient
∂∂# 4
.
∂∂4 5$
UpdateLoginCredentials
∂∂5 K
(
∂∂K L
oldAccesAccount
∂∂L [
,
∂∂[ \
newAccesAccount
∂∂] l
)
∂∂l m
;
∂∂m n
if
∑∑ 
(
∑∑ 
updateResult
∑∑  
==
∑∑! #
	Constants
∑∑$ -
.
∑∑- .
SUCCES_OPERATION
∑∑. >
)
∑∑> ?
{
∏∏ 
DialogManager
ππ !
.
ππ! "%
ShowSuccessMessageAlert
ππ" 9
(
ππ9 :

Properties
ππ: D
.
ππD E
	Resources
ππE N
.
ππN O
dialogUpdatedData
ππO `
)
ππ` a
;
ππa b"
UserProfileSingleton
∫∫ (
.
∫∫( )
Instance
∫∫) 1
.
∫∫1 2
ResetSingleton
∫∫2 @
(
∫∫@ A
)
∫∫A B
;
∫∫B C
DisconnectPlayer
ªª $
(
ªª$ %
)
ªª% &
;
ªª& '
ReturnToLoginView
ºº %
(
ºº% &
)
ºº& '
;
ºº' (
}
ΩΩ 
else
ææ 
{
øø 
DialogManager
¿¿ !
.
¿¿! "#
ShowErrorMessageAlert
¿¿" 7
(
¿¿7 8

Properties
¿¿8 B
.
¿¿B C
	Resources
¿¿C L
.
¿¿L M!
dialogDataBaseError
¿¿M `
)
¿¿` a
;
¿¿a b
}
¡¡ 
}
¬¬ 
catch
√√ 
(
√√ '
EndpointNotFoundException
√√ ,
endPointException
√√- >
)
√√> ?
{
ƒƒ 
logger
≈≈ 
.
≈≈ 
LogError
≈≈ 
(
≈≈  
endPointException
≈≈  1
)
≈≈1 2
;
≈≈2 3
DialogManager
∆∆ 
.
∆∆ #
ShowErrorMessageAlert
∆∆ 3
(
∆∆3 4

Properties
∆∆4 >
.
∆∆> ?
	Resources
∆∆? H
.
∆∆H I%
dialogEndPointException
∆∆I `
)
∆∆` a
;
∆∆a b
}
«« 
catch
»» 
(
»» 
TimeoutException
»» #
timeOutException
»»$ 4
)
»»4 5
{
…… 
logger
   
.
   
LogError
   
(
    
timeOutException
    0
)
  0 1
;
  1 2
DialogManager
ÀÀ 
.
ÀÀ #
ShowErrorMessageAlert
ÀÀ 3
(
ÀÀ3 4

Properties
ÀÀ4 >
.
ÀÀ> ?
	Resources
ÀÀ? H
.
ÀÀH I)
dialogComunicationException
ÀÀI d
)
ÀÀd e
;
ÀÀe f
}
ÃÃ 
catch
ÕÕ 
(
ÕÕ $
CommunicationException
ÕÕ )$
communicationException
ÕÕ* @
)
ÕÕ@ A
{
ŒŒ 
logger
œœ 
.
œœ 
LogError
œœ 
(
œœ  $
communicationException
œœ  6
)
œœ6 7
;
œœ7 8
DialogManager
–– 
.
–– #
ShowErrorMessageAlert
–– 3
(
––3 4

Properties
––4 >
.
––> ?
	Resources
––? H
.
––H I$
dialogTimeOutException
––I _
)
––_ `
;
––` a
}
—— 
}
““ 	
private
‘‘ 
void
‘‘ 
DisconnectPlayer
‘‘ %
(
‘‘% &
)
‘‘& '
{
’’ 	
LoggerManager
÷÷ 
logger
÷÷  
=
÷÷! "
new
÷÷# &
LoggerManager
÷÷' 4
(
÷÷4 5
this
÷÷5 9
.
÷÷9 :
GetType
÷÷: A
(
÷÷A B
)
÷÷B C
)
÷÷C D
;
÷÷D E
	HiveProxy
◊◊ 
.
◊◊ &
UserSessionManagerClient
◊◊ .&
userSessionManagerClient
◊◊/ G
=
◊◊H I
new
◊◊J M&
UserSessionManagerClient
◊◊N f
(
◊◊f g
)
◊◊g h
;
◊◊h i
try
ÿÿ 
{
ŸŸ 
UserSession
⁄⁄ 
userSession
⁄⁄ '
=
⁄⁄( )
new
⁄⁄* -
UserSession
⁄⁄. 9
(
⁄⁄9 :
)
⁄⁄: ;
{
€€ 
	idAccount
‹‹ 
=
‹‹ "
UserProfileSingleton
‹‹  4
.
‹‹4 5
	idAccount
‹‹5 >
,
‹‹> ?
username
›› 
=
›› "
UserProfileSingleton
›› 3
.
››3 4
username
››4 <
,
››< =
}
ﬁﬁ 
;
ﬁﬁ &
userSessionManagerClient
ﬂﬂ (
.
ﬂﬂ( )

Disconnect
ﬂﬂ) 3
(
ﬂﬂ3 4
userSession
ﬂﬂ4 ?
,
ﬂﬂ? @
false
ﬂﬂ@ E
)
ﬂﬂE F
;
ﬂﬂF G
}
‡‡ 
catch
·· 
(
·· '
EndpointNotFoundException
·· ,
endPointException
··- >
)
··> ?
{
‚‚ 
logger
„„ 
.
„„ 
LogError
„„ 
(
„„  
endPointException
„„  1
)
„„1 2
;
„„2 3
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
‰‰H I%
dialogEndPointException
‰‰I `
)
‰‰` a
;
‰‰a b
}
ÂÂ 
catch
ÊÊ 
(
ÊÊ 
TimeoutException
ÊÊ #
timeOutException
ÊÊ$ 4
)
ÊÊ4 5
{
ÁÁ 
logger
ËË 
.
ËË 
LogError
ËË 
(
ËË  
timeOutException
ËË  0
)
ËË0 1
;
ËË1 2
DialogManager
ÈÈ 
.
ÈÈ #
ShowErrorMessageAlert
ÈÈ 3
(
ÈÈ3 4

Properties
ÈÈ4 >
.
ÈÈ> ?
	Resources
ÈÈ? H
.
ÈÈH I)
dialogComunicationException
ÈÈI d
)
ÈÈd e
;
ÈÈe f
}
ÍÍ 
catch
ÎÎ 
(
ÎÎ $
CommunicationException
ÎÎ )$
communicationException
ÎÎ* @
)
ÎÎ@ A
{
ÏÏ 
logger
ÌÌ 
.
ÌÌ 
LogError
ÌÌ 
(
ÌÌ  $
communicationException
ÌÌ  6
)
ÌÌ6 7
;
ÌÌ7 8
DialogManager
ÓÓ 
.
ÓÓ #
ShowErrorMessageAlert
ÓÓ 3
(
ÓÓ3 4

Properties
ÓÓ4 >
.
ÓÓ> ?
	Resources
ÓÓ? H
.
ÓÓH I$
dialogTimeOutException
ÓÓI _
)
ÓÓ_ `
;
ÓÓ` a
}
ÔÔ 
}
 	
private
ÚÚ 
void
ÚÚ !
BtnResendCode_Click
ÚÚ (
(
ÚÚ( )
object
ÚÚ) /
sender
ÚÚ0 6
,
ÚÚ6 7"
MouseButtonEventArgs
ÚÚ8 L
e
ÚÚM N
)
ÚÚN O
{
ÛÛ 	
LoggerManager
ÙÙ 
logger
ÙÙ  
=
ÙÙ! "
new
ÙÙ# &
LoggerManager
ÙÙ' 4
(
ÙÙ4 5
this
ÙÙ5 9
.
ÙÙ9 :
GetType
ÙÙ: A
(
ÙÙA B
)
ÙÙB C
)
ÙÙC D
;
ÙÙD E
	HiveProxy
ıı 
.
ıı ,
EmailVerificationManagerClient
ıı 4&
emailVerificationManager
ıı5 M
=
ııN O
new
ııP S
	HiveProxy
ııT ]
.
ıı] ^,
EmailVerificationManagerClient
ıı^ |
(
ıı| }
)
ıı} ~
;
ıı~ 
try
ˆˆ 
{
˜˜ 
int
¯¯ 
resultEmailSend
¯¯ #
=
¯¯$ %&
emailVerificationManager
¯¯& >
.
¯¯> ?#
SendVerificationEmail
¯¯? T
(
¯¯T U"
UserProfileSingleton
¯¯U i
.
¯¯i j
email
¯¯j o
)
¯¯o p
;
¯¯p q
if
˘˘ 
(
˘˘ 
resultEmailSend
˘˘ #
==
˘˘$ &
	Constants
˘˘' 0
.
˘˘0 1
SUCCES_OPERATION
˘˘1 A
)
˘˘A B
{
˙˙ 
DialogManager
˚˚ !
.
˚˚! "%
ShowSuccessMessageAlert
˚˚" 9
(
˚˚9 :

Properties
˚˚: D
.
˚˚D E
	Resources
˚˚E N
.
˚˚N O,
dialogEmailVerificationMessage
˚˚O m
)
˚˚m n
;
˚˚n o
}
¸¸ 
else
˝˝ 
{
˛˛ 
DialogManager
ˇˇ !
.
ˇˇ! "#
ShowErrorMessageAlert
ˇˇ" 7
(
ˇˇ7 8

Properties
ˇˇ8 B
.
ˇˇB C
	Resources
ˇˇC L
.
ˇˇL M$
dialogCouldntSendEmail
ˇˇM c
)
ˇˇc d
;
ˇˇd e
}
ÄÄ 
}
ÅÅ 
catch
ÇÇ 
(
ÇÇ '
EndpointNotFoundException
ÇÇ ,
endPointException
ÇÇ- >
)
ÇÇ> ?
{
ÉÉ 
logger
ÑÑ 
.
ÑÑ 
LogError
ÑÑ 
(
ÑÑ  
endPointException
ÑÑ  1
)
ÑÑ1 2
;
ÑÑ2 3
DialogManager
ÖÖ 
.
ÖÖ #
ShowErrorMessageAlert
ÖÖ 3
(
ÖÖ3 4

Properties
ÖÖ4 >
.
ÖÖ> ?
	Resources
ÖÖ? H
.
ÖÖH I%
dialogEndPointException
ÖÖI `
)
ÖÖ` a
;
ÖÖa b
}
ÜÜ 
catch
áá 
(
áá 
TimeoutException
áá #
timeOutException
áá$ 4
)
áá4 5
{
àà 
logger
ââ 
.
ââ 
LogError
ââ 
(
ââ  
timeOutException
ââ  0
)
ââ0 1
;
ââ1 2
DialogManager
ää 
.
ää #
ShowErrorMessageAlert
ää 3
(
ää3 4

Properties
ää4 >
.
ää> ?
	Resources
ää? H
.
ääH I)
dialogComunicationException
ääI d
)
ääd e
;
ääe f
}
ãã 
catch
åå 
(
åå $
CommunicationException
åå )$
communicationException
åå* @
)
åå@ A
{
çç 
logger
éé 
.
éé 
LogError
éé 
(
éé  $
communicationException
éé  6
)
éé6 7
;
éé7 8
DialogManager
èè 
.
èè #
ShowErrorMessageAlert
èè 3
(
èè3 4

Properties
èè4 >
.
èè> ?
	Resources
èè? H
.
èèH I$
dialogTimeOutException
èèI _
)
èè_ `
;
èè` a
}
êê 
}
ëë 	
private
îî 
void
îî #
BtnCancelChange_Click
îî *
(
îî* +
object
îî+ 1
sender
îî2 8
,
îî8 9
RoutedEventArgs
îî: I
e
îîJ K
)
îîK L
{
ïï 	
MainMenu
ññ 
mainMenu
ññ 
=
ññ 
new
ññ  #
MainMenu
ññ$ ,
(
ññ, -
)
ññ- .
;
ññ. /
this
óó 
.
óó 
NavigationService
óó "
.
óó" #
Navigate
óó# +
(
óó+ ,
mainMenu
óó, 4
)
óó4 5
;
óó5 6
}
òò 	
public
öö 
void
öö 
ReturnToLoginView
öö %
(
öö% &
)
öö& '
{
õõ 	
DisconnectPlayer
úú 
(
úú 
)
úú 
;
úú 
	LoginView
ùù 
	loginView
ùù 
=
ùù  !
new
ùù" %
	LoginView
ùù& /
(
ùù/ 0
)
ùù0 1
;
ùù1 2
this
ûû 
.
ûû 
NavigationService
ûû "
.
ûû" #
Navigate
ûû# +
(
ûû+ ,
	loginView
ûû, 5
)
ûû5 6
;
ûû6 7
}
üü 	
private
°° 
void
°° 
Image_MouseDown
°° $
(
°°$ %
object
°°% +
sender
°°, 2
,
°°2 3"
MouseButtonEventArgs
°°4 H
e
°°I J
)
°°J K
{
¢¢ 	
ReturnToLoginView
££ 
(
££ 
)
££ 
;
££  
}
§§ 	
private
¶¶ 
void
¶¶ &
TextBox_PreviewMouseDown
¶¶ -
(
¶¶- .
object
¶¶. 4
sender
¶¶5 ;
,
¶¶; <"
MouseButtonEventArgs
¶¶= Q
e
¶¶R S
)
¶¶S T
{
ßß 	
e
®® 
.
®® 
Handled
®® 
=
®® 
true
®® 
;
®® 
}
©© 	
}
™™ 
}´´ Õ
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
} 	
private 
void '
SettingChangingEventHandler 0
(0 1
object1 7
sender8 >
,> ?
System@ F
.F G
ConfigurationG T
.T U$
SettingChangingEventArgsU m
en o
)o p
{q r
} 	
private 
void &
SettingsSavingEventHandler /
(/ 0
object0 6
sender7 =
,= >
System? E
.E F
ComponentModelF T
.T U
CancelEventArgsU d
ee f
)f g
{h i
} 	
} 
} …g
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
Regex 
passwordRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str	7 ã
,
ã å
RegexOptions
å ò
.
ò ô
None
ô ù
,
ù û
TimeSpan
û ¶
.
¶ ß
FromMilliseconds
ß ∑
(
∑ ∏
$num
∏ º
)
º Ω
)
Ω æ
;
æ ø
private 
static 
Regex 
usernameRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 O
,O P
RegexOptionsP \
.\ ]
None] a
,a b
TimeSpanc k
.k l
FromMillisecondsl |
(| }
$num	} Å
)
Å Ç
)
Ç É
;
É Ñ
private 
static 
Regex 
nicknameRegex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 O
,O P
RegexOptionsQ ]
.] ^
None^ b
,b c
TimeSpand l
.l m
FromMillisecondsm }
(} ~
$num	~ Ç
)
Ç É
)
É Ñ
;
Ñ Ö
private 
static 
Regex 
numbersRegrex *
=+ ,
new- 0
Regex1 6
(6 7
$str7 A
,A B
RegexOptionsB N
.N O
NoneO S
,S T
TimeSpanU ]
.] ^
FromMilliseconds^ n
(n o
$numo r
)r s
)s t
;t u
private 
static 
Regex 
	dateRegex &
=' (
new) ,
Regex- 2
(2 3
$str3 j
,j k
RegexOptionsl x
.x y
Noney }
,} ~
TimeSpan	 á
.
á à
FromMilliseconds
à ò
(
ò ô
$num
ô ù
)
ù û
)
û ü
;
ü †
private 
static 
Regex 
codeLobbyMatchRegex 0
=1 2
new3 6
Regex7 <
(< =
$str= J
,J K
RegexOptionsL X
.X Y
NoneY ]
,] ^
TimeSpan_ g
.g h
FromMillisecondsh x
(x y
$numy }
)} ~
)~ 
;	 Ä
private 
static 
Regex 

stateRegex '
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
Regex 
	textRegex &
=' (
new) ,
Regex- 2
(2 3
$str3 K
,K L
RegexOptionsM Y
.Y Z
NoneZ ^
,^ _
TimeSpan` h
.h i
FromMillisecondsi y
(y z
$numz ~
)~ 
)	 Ä
;
Ä Å
private 
static 
Regex 

emailRegex '
=( )
new* -
Regex. 3
(3 4
$str	4 ü
,
ü †
RegexOptions
† ¨
.
¨ ≠
None
≠ ±
,
± ≤
TimeSpan
≤ ∫
.
∫ ª
FromMilliseconds
ª À
(
À Ã
$num
Ã –
)
– —
)
— “
;
“ ”
public 
static 
bool  
ValidateRegexPattern /
(/ 0
string0 6
data7 ;
,; <
Regex= B
regexC H
)H I
{ 	
bool 
isValid 
= 
false  
;  !
try 
{ 
isValid 
= 
regex 
.  
IsMatch  '
(' (
data( ,
), -
;- .
}   
catch!! 
(!! &
RegexMatchTimeoutException!! -
)!!- .
{"" 
isValid## 
=## 
false## 
;##  
}$$ 
return%% 
isValid%% 
;%% 
}&& 	
public(( 
static(( 
bool(( 
ValidateDescription(( .
(((. /
string((/ 5
description((6 A
)((A B
{)) 	
bool** 
isValid** 
=** 
false**  
;**  !
string++ 
cleanedDescription++ %
=++& '
Regex++( -
.++- .
Replace++. 5
(++5 6
description++6 A
.++A B
Trim++B F
(++F G
)++G H
,++H I
$str++J P
,++P Q
$str++R T
)++T U
;++U V
if,, 
(,, 
!,, 
string,, 
.,, 
IsNullOrEmpty,, %
(,,% &
cleanedDescription,,& 8
),,8 9
&&,,: < 
ValidateRegexPattern,,= Q
(,,Q R
cleanedDescription,,R d
,,,d e
	textRegex,,e n
),,n o
),,o p
{-- 
isValid.. 
=.. 
true.. 
;.. 
}// 
return00 
isValid00 
;00 
}11 	
public33 
static33 
bool33 
ValidatePassword33 +
(33+ ,
string33, 2
password333 ;
)33; <
{44 	
bool55 
isValid55 
=55 
false55  
;55  !
string66 
cleanedPassword66 "
=66# $
Regex66% *
.66* +
Replace66+ 2
(662 3
password663 ;
.66; <
Trim66< @
(66@ A
)66A B
,66B C
$str66D J
,66J K
$str66L N
)66N O
;66O P
if77 
(77 
!77 
string77 
.77 
IsNullOrWhiteSpace77 *
(77* +
cleanedPassword77+ :
)77: ;
&&77< > 
ValidateRegexPattern77? S
(77S T
cleanedPassword77T c
,77c d
passwordRegex77e r
)77r s
)77s t
{88 
isValid99 
=99 
true99 
;99 
}:: 
return;; 
isValid;; 
;;; 
}<< 	
public>> 
static>> 
bool>> 
ValidateUsername>> +
(>>+ ,
string>>, 2
username>>3 ;
)>>; <
{?? 	
bool@@ 
isValid@@ 
=@@ 
false@@  
;@@  !
stringAA 
cleanedUsernameAA "
=AA# $
RegexAA% *
.AA* +
ReplaceAA+ 2
(AA2 3
usernameAA3 ;
.AA; <
TrimAA< @
(AA@ A
)AAA B
,AAB C
$strAAD J
,AAJ K
$strAAL N
)AAN O
;AAO P
ifBB 
(BB 
!BB 
stringBB 
.BB 
IsNullOrWhiteSpaceBB *
(BB* +
cleanedUsernameBB+ :
)BB: ;
&&BB< > 
ValidateRegexPatternBB? S
(BBS T
cleanedUsernameBBT c
,BBc d
usernameRegexBBe r
)BBr s
)BBs t
{CC 
isValidDD 
=DD 
trueDD 
;DD 
}EE 
returnFF 
isValidFF 
;FF 
}GG 	
publicII 
staticII 
boolII 
ValidateEmailII (
(II( )
stringII) /
emailII0 5
)II5 6
{JJ 	
boolKK 
isValidKK 
=KK 
falseKK  
;KK  !
stringLL 
cleanedEmailLL 
=LL  !
RegexLL" '
.LL' (
ReplaceLL( /
(LL/ 0
emailLL0 5
.LL5 6
TrimLL6 :
(LL: ;
)LL; <
,LL< =
$strLL> D
,LLD E
$strLLF H
)LLH I
;LLI J
ifMM 
(MM 
!MM 
stringMM 
.MM 
IsNullOrWhiteSpaceMM *
(MM* +
cleanedEmailMM+ 7
)MM7 8
&&MM8 :
cleanedEmailMM: F
.MMF G
LengthMMG M
<MMM N
$numMMN Q
&&MMQ S 
ValidateRegexPatternMMT h
(MMh i
cleanedEmailMMi u
,MMu v

emailRegex	MMw Å
)
MMÅ Ç
)
MMÇ É
{NN 
isValidOO 
=OO 
trueOO 
;OO 
}PP 
returnQQ 
isValidQQ 
;QQ 
}RR 	
publicTT 
staticTT 
boolTT 
ValidateNickNameTT +
(TT+ ,
stringTT, 2
nickNameTT3 ;
)TT; <
{UU 	
boolVV 
isValidVV 
=VV 
falseVV  
;VV  !
stringWW 
cleanedNickNameWW "
=WW# $
RegexWW% *
.WW* +
ReplaceWW+ 2
(WW2 3
nickNameWW3 ;
.WW; <
TrimWW< @
(WW@ A
)WWA B
,WWB C
$strWWD J
,WWJ K
$strWWL N
)WWN O
;WWO P
ifXX 
(XX 
!XX 
stringXX 
.XX 
IsNullOrWhiteSpaceXX )
(XX) *
cleanedNickNameXX* 9
)XX9 :
&&XX; = 
ValidateRegexPatternXX> R
(XXR S
cleanedNickNameXXS b
,XXb c
nicknameRegexXXd q
)XXq r
)XXr s
{YY 
isValidZZ 
=ZZ 
trueZZ 
;ZZ 
}[[ 
return\\ 
isValid\\ 
;\\ 
}]] 	
public__ 
static__ 
bool__ 
ValidateDate__ '
(__' (
string__( .
date__/ 3
)__3 4
{`` 	
boolaa 
isValidaa 
=aa 
falseaa  
;aa  !
ifbb 
(bb 
!bb 
stringbb 
.bb 
IsNullOrWhiteSpacebb )
(bb) *
datebb* .
)bb. /
&&bb/ 1 
ValidateRegexPatternbb2 F
(bbF G
datebbG K
,bbK L
	dateRegexbbM V
)bbV W
)bbW X
{cc 
isValiddd 
=dd 
truedd 
;dd 
}ee 
returnff 
isValidff 
;ff 
}gg 	
publicii 
staticii 
boolii 
ValidateCodeii '
(ii' (
stringii( .
	codeLobbyii/ 8
)ii8 9
{jj 	
boolkk 
isValidkk 
=kk 
falsekk  
;kk  !
stringll 
codeCleanedll 
=ll  
Regexll! &
.ll& '
Replacell' .
(ll. /
	codeLobbyll/ 8
.ll8 9
Trimll9 =
(ll= >
)ll> ?
,ll? @
$strllA G
,llG H
$strllI K
)llK L
;llL M
ifmm 
(mm 
!mm 
stringmm 
.mm 
IsNullOrWhiteSpacemm *
(mm* +
codeCleanedmm+ 6
)mm6 7
&&mm8 : 
ValidateRegexPatternmm; O
(mmO P
codeCleanedmmP [
,mm[ \
codeLobbyMatchRegexmm] p
)mmp q
)mmq r
{nn 
isValidoo 
=oo 
trueoo 
;oo 
}pp 
returnqq 
isValidqq 
;qq 
}rr 	
publictt 
statictt 
booltt 
ValidateStatett (
(tt( )
stringtt) /
statett0 5
)tt5 6
{uu 	
boolvv 
isValidvv 
=vv 
falsevv  
;vv  !
stringww 
stateCleanedww 
=ww  !
Regexww" '
.ww' (
Replaceww( /
(ww/ 0
stateww0 5
.ww5 6
Trimww6 :
(ww: ;
)ww; <
,ww< =
$strww> D
,wwD E
$strwwF H
)wwH I
;wwI J
ifxx 
(xx 
!xx 
stringxx 
.xx 
IsNullOrWhiteSpacexx *
(xx* +
stateCleanedxx+ 7
)xx7 8
&&xx9 ; 
ValidateRegexPatternxx< P
(xxP Q
stateCleanedxxQ ]
,xx] ^

stateRegexxx_ i
)xxi j
)xxj k
{yy 
isValidzz 
=zz 
truezz 
;zz 
}{{ 
return|| 
isValid|| 
;|| 
}}} 	
}~~ 
} Œ$
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
singletonInstance5 F
=G H
newI L 
UserProfileSingletonM a
(a b
)b c
;c d
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
singletonInstance7 H
;H I
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
}77 î
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
int 
ERROR_OPERATION (
=) *
-+ ,
$num, -
;- .
public 
const 
int 
SUCCES_OPERATION )
=* +
$num, -
;- .
public 
const 
int 
NO_DATA_MATCHES (
=) *
$num+ ,
;, -
public 
const 
int 
DATA_MATCHES %
=& '
$num( )
;) *
public 
const 
int 
DEFAULT_GUEST_ID )
=* +
$num, -
;- .
public 
const 
string  
DEFAULT_IMAGE_PLAYER 0
=1 2
$str3 6
;6 7
public 
const 
string 
DEFAULT_IMAGE_GUEST /
=0 1
$str2 5
;5 6
public 
static 
bool 
	isInMatch $
=% &
false' ,
;, -
} 
} ¥
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
public 
int 
pieceNumber 
{  
get" %
;% &
set' *
;* +
}, -
public 
string 
	ImagePath 
{  !
get" %
;% &
set' *
;* +
}, -
public 
Point 
Position 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

playerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
	GamePiece 
( 
Piece 
piece $
,$ %
string& ,
	imagePath- 6
,6 7
Point8 =
position> F
,F G
stringH N

playernameO Y
,Y Z
int[ ^
pieceNumber_ j
)j k
{ 	
Piece 
= 
piece 
; 
	ImagePath 
= 
	imagePath !
;! "
Position 
= 
position 
;  

playerName 
= 

playername #
;# $
this 
. 
pieceNumber 
= 
pieceNumber *
;* +
} 	
public 
	GamePiece 
( 
) 
{ 	
}   	
public"" 
override"" 
bool"" 
Equals"" #
(""# $
object""$ *
obj""+ .
)"". /
{## 	
if$$ 
($$ 
obj$$ 
is$$ 
	GamePiece$$  
other$$! &
)$$& '
{%% 
return&& 
this&& 
.&& 
Position&& $
.&&$ %
Equals&&% +
(&&+ ,
other&&, 1
.&&1 2
Position&&2 :
)&&: ;
&&&&< >
this&&? C
.&&C D

playerName&&D N
==&&O Q
other&&R W
.&&W X

playerName&&X b
;&&b c
}'' 
return(( 
false(( 
;(( 
})) 	
}++ 
},, ì
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
 
public 
static 
string &
RandomDescriptionGenerator 7
(7 8
)8 9
{ 	
string 
[ 
] 
defaultDescriptions (
=) *
{+ ,
$str- B
,B C
$strC k
,k l
$str	l Å
+
Ç É
$str )
,) *
$str* O
,O P
$strP q
,q r
$str	r Ñ
+
Ñ Ö
$str 2
+2 3
$str3 [
}\ ]
;] ^
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultDescriptions* =
.= >
Length> D
)D E
;E F
return 
defaultDescriptions &
[& '
randomIndex' 2
]2 3
;3 4
} 	
public 
static 
string #
RandomChooserAvatarIcon 4
(4 5
)5 6
{ 	
string 
[ 
] 
defaultAvatars #
=$ %
{& '
$str( E
,E F
$strG d
,d e
$str	f É
,
É Ñ
$str -
,- .
$str/ L
,L M
$strN k
}l m
;m n
Random 
random 
= 
new 
Random  &
(& '
)' (
;( )
int 
randomIndex 
= 
random $
.$ %
Next% )
() *
defaultAvatars* 8
.8 9
Length9 ?
)? @
;@ A
return 
defaultAvatars !
[! "
randomIndex" -
]- .
;. /
} 	
public 
static 
string !
RandomChooserUsername 2
(2 3
)3 4
{ 	
Random   
random   
=   
new   
Random    &
(  & '
)  ' (
;  ( )
int!! 
randomIndexNumber!! !
=!!" #
random!!$ *
.!!* +
Next!!+ /
(!!/ 0
$num!!0 1
,!!1 2
$num!!2 9
)!!9 :
;!!: ;
string"" 
defaultUsername"" "
=""# $
$str""% ,
+"", -
randomIndexNumber""- >
;""> ?
return## 
defaultUsername## "
;##" #
}$$ 	
}%% 
}&& ¸
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

class

 
Hasher

 
{ 
public 
static 
string 

hashToSHA1 '
(' (
string( .

textToHash/ 9
)9 :
{ 	
StringBuilder 
stringHashBuilder +
=, -
new. 1
StringBuilder2 ?
(? @
)@ A
;A B
byte 
[ 
] 

inputBytes 
= 
Encoding  (
.( )
UTF8) -
.- .
GetBytes. 6
(6 7

textToHash7 A
)A B
;B C
using 
( 
SHA1 
sha1 
= 
SHA1 "
." #
Create# )
() *
)* +
)+ ,
{ 
byte 
[ 
] 
	hashBytes  
=! "
sha1# '
.' (
ComputeHash( 3
(3 4

inputBytes4 >
)> ?
;? @
string 
hexaDecimalFormat (
=) *
$str+ /
;/ 0
for 
( 
int 

indexBytes "
=# $
$num% &
;& '

indexBytes) 3
<4 5
	hashBytes6 ?
.? @
Length@ F
;F G

indexBytesH R
++R T
)T U
{ 
stringHashBuilder %
.% &
Append& ,
(, -
	hashBytes- 6
[6 7

indexBytes7 A
]A B
.B C
ToStringC K
(K L
hexaDecimalFormatL ]
)] ^
)^ _
;_ `
} 
} 
return 
stringHashBuilder $
.$ %
ToString% -
(- .
). /
;/ 0
} 	
} 
} ÿ
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
} 
} ”m
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
public 
Point 
Position 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

playerName  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
abstract 
bool 
IsValidMove (
(( )
Point) .
from/ 3
,3 4
Point5 :
to; =
,= >

Dictionary? I
<I J
PointJ O
,O P
PieceQ V
>V W
boardX ]
)] ^
;^ _
public 
override 
bool 
Equals #
(# $
object$ *
obj+ .
). /
{ 	
if 
( 
obj 
is 
Piece 
other "
)" #
{ 
return 
this 
. 
Name  
==! #
other$ )
.) *
Name* .
&&/ 1
this2 6
.6 7
Position7 ?
.? @
Equals@ F
(F G
otherG L
.L M
PositionM U
)U V
;V W
} 
return 
false 
; 
} 	
} 
public 

class 
Queen 
: 
Piece 
{ 
public   
Queen   
(   
)   
{!! 	
Name"" 
="" 
$str"" 
;"" 

playerName## 
=## 
$str## 
;## 
}$$ 	
public&& 
override&& 
bool&& 
IsValidMove&& (
(&&( )
Point&&) .
from&&/ 3
,&&3 4
Point&&5 :
to&&; =
,&&= >

Dictionary&&? I
<&&I J
Point&&J O
,&&O P
Piece&&Q V
>&&V W
board&&X ]
)&&] ^
{'' 	
var(( 
validOffsets(( 
=(( 
new(( "
List((# '
<((' (
Point((( -
>((- .
{)) 
new** 
Point** 
(** 
-** 
$num** 
,** 
$num** 
)**  
,**  !
new**" %
Point**& +
(**+ ,
$num**, -
,**- .
$num**/ 0
)**0 1
,**1 2
new**3 6
Point**7 <
(**< =
$num**= >
,**> ?
-**@ A
$num**A B
)**B C
,**C D
new**E H
Point**I N
(**N O
$num**O P
,**P Q
$num**R S
)**S T
,**T U
new++ 
Point++ 
(++ 
-++ 
$num++ 
,++ 
$num++ 
)++  
,++  !
new++" %
Point++& +
(+++ ,
$num++, -
,++- .
-++/ 0
$num++0 1
)++1 2
},, 
;,, 
return.. 
validOffsets.. 
...  
Contains..  (
(..( )
new..) ,
Point..- 2
(..2 3
to..3 5
...5 6
X..6 7
-..8 9
from..: >
...> ?
X..? @
,..@ A
to..B D
...D E
Y..E F
-..G H
from..I M
...M N
Y..N O
)..O P
)..P Q
&&..R T
!// 
board// 
.// 
ContainsKey// %
(//% &
to//& (
)//( )
;//) *
}00 	
}11 
public33 

class33 
Spider33 
:33 
Piece33 
{44 
public55 
Spider55 
(55 
)55 
{66 	
Name77 
=77 
$str77 
;77 

playerName88 
=88 
$str88 
;88 
}99 	
public;; 
override;; 
bool;; 
IsValidMove;; (
(;;( )
Point;;) .
from;;/ 3
,;;3 4
Point;;5 :
to;;; =
,;;= >

Dictionary;;? I
<;;I J
Point;;J O
,;;O P
Piece;;Q V
>;;V W
board;;X ]
);;] ^
{<< 	
var== 
distance== 
=== 
Math== 
.==  
Abs==  #
(==# $
to==$ &
.==& '
X==' (
-==) *
from==+ /
.==/ 0
X==0 1
)==1 2
+==3 4
Math==5 9
.==9 :
Abs==: =
(=== >
to==> @
.==@ A
Y==A B
-==C D
from==E I
.==I J
Y==J K
)==K L
;==L M
if>> 
(>> 
distance>> 
!=>> 
$num>> 
)>> 
return>> %
false>>& +
;>>+ ,
return@@ 
!@@ 
board@@ 
.@@ 
ContainsKey@@ %
(@@% &
to@@& (
)@@( )
;@@) *
}AA 	
}BB 
publicCC 

classCC 
BeetleCC 
:CC 
PieceCC 
{DD 
publicEE 
BeetleEE 
(EE 
)EE 
{FF 	
NameGG 
=GG 
$strGG 
;GG 

playerNameHH 
=HH 
$strHH 
;HH 
}II 	
publicKK 
overrideKK 
boolKK 
IsValidMoveKK (
(KK( )
PointKK) .
fromKK/ 3
,KK3 4
PointKK5 :
toKK; =
,KK= >

DictionaryKK? I
<KKI J
PointKKJ O
,KKO P
PieceKKQ V
>KKV W
boardKKX ]
)KK] ^
{LL 	
returnMM 
boardMM 
.MM 
ContainsKeyMM $
(MM$ %
fromMM% )
)MM) *
&&MM+ -
!MM. /
boardMM/ 4
.MM4 5
ContainsKeyMM5 @
(MM@ A
toMMA C
)MMC D
;MMD E
}NN 	
}OO 
publicPP 

classPP 
AntPP 
:PP 
PiecePP 
{QQ 
publicRR 
AntRR 
(RR 
)RR 
{SS 	
NameTT 
=TT 
$strTT 
;TT 

playerNameUU 
=UU 
$strUU 
;UU 
}VV 	
publicXX 
overrideXX 
boolXX 
IsValidMoveXX (
(XX( )
PointXX) .
fromXX/ 3
,XX3 4
PointXX5 :
toXX; =
,XX= >

DictionaryXX? I
<XXI J
PointXXJ O
,XXO P
PieceXXQ V
>XXV W
boardXXX ]
)XX] ^
{YY 	
varZZ 
xDiffZZ 
=ZZ 
toZZ 
.ZZ 
XZZ 
-ZZ 
fromZZ #
.ZZ# $
XZZ$ %
;ZZ% &
var[[ 
yDiff[[ 
=[[ 
to[[ 
.[[ 
Y[[ 
-[[ 
from[[ #
.[[# $
Y[[$ %
;[[% &
var\\ 
	direction\\ 
=\\ 
new\\ 
Point\\  %
(\\% &
xDiff\\& +
,\\+ ,
yDiff\\- 2
)\\2 3
;\\3 4
if^^ 
(^^ 
board^^ 
.^^ 
ContainsKey^^ !
(^^! "
to^^" $
)^^$ %
)^^% &
return^^' -
false^^. 3
;^^3 4
return`` 
xDiff`` 
==`` 
$num`` 
||``  
yDiff``! &
==``' )
$num``* +
||``, .
Math``/ 3
.``3 4
Abs``4 7
(``7 8
xDiff``8 =
)``= >
==``? A
Math``B F
.``F G
Abs``G J
(``J K
yDiff``K P
)``P Q
;``Q R
}aa 	
}bb 
publiccc 

classcc 
Grasshoppercc 
:cc 
Piececc $
{dd 
publicee 
Grasshopperee 
(ee 
)ee 
{ff 	
Namegg 
=gg 
$strgg  
;gg  !

playerNamehh 
=hh 
$strhh 
;hh 
}ii 	
publickk 
overridekk 
boolkk 
IsValidMovekk (
(kk( )
Pointkk) .
fromkk/ 3
,kk3 4
Pointkk5 :
tokk; =
,kk= >

Dictionarykk? I
<kkI J
PointkkJ O
,kkO P
PiecekkQ V
>kkV W
boardkkX ]
)kk] ^
{ll 	
varmm 
xDiffmm 
=mm 
tomm 
.mm 
Xmm 
-mm 
frommm #
.mm# $
Xmm$ %
;mm% &
varnn 
yDiffnn 
=nn 
tonn 
.nn 
Ynn 
-nn 
fromnn #
.nn# $
Ynn$ %
;nn% &
ifpp 
(pp 
xDiffpp 
==pp 
$numpp 
||pp 
yDiffpp #
==pp$ &
$numpp' (
||pp) +
Mathpp, 0
.pp0 1
Abspp1 4
(pp4 5
xDiffpp5 :
)pp: ;
==pp< >
Mathpp? C
.ppC D
AbsppD G
(ppG H
yDiffppH M
)ppM N
)ppN O
{qq 
varrr 
stepXrr 
=rr 
xDiffrr !
==rr" $
$numrr% &
?rr' (
$numrr) *
:rr+ ,
xDiffrr- 2
/rr3 4
Mathrr5 9
.rr9 :
Absrr: =
(rr= >
xDiffrr> C
)rrC D
;rrD E
varss 
stepYss 
=ss 
yDiffss !
==ss" $
$numss% &
?ss' (
$numss) *
:ss+ ,
yDiffss- 2
/ss3 4
Mathss5 9
.ss9 :
Absss: =
(ss= >
yDiffss> C
)ssC D
;ssD E
doublett 
xtt 
=tt 
fromtt 
.tt  
Xtt  !
,tt! "
ytt# $
=tt% &
fromtt' +
.tt+ ,
Ytt, -
;tt- .
whilevv 
(vv 
xvv 
!=vv 
tovv 
.vv 
Xvv  
||vv! #
yvv$ %
!=vv& (
tovv) +
.vv+ ,
Yvv, -
)vv- .
{ww 
xxx 
+=xx 
stepXxx 
;xx 
yyy 
+=yy 
stepYyy 
;yy 
ifzz 
(zz 
boardzz 
.zz 
ContainsKeyzz )
(zz) *
newzz* -
Pointzz. 3
(zz3 4
xzz4 5
,zz5 6
yzz7 8
)zz8 9
)zz9 :
)zz: ;
returnzz< B
truezzC G
;zzG H
}{{ 
}|| 
return~~ 
false~~ 
;~~ 
} 	
}
ÄÄ 
public
ÅÅ 

class
ÅÅ 
	GameBoard
ÅÅ 
{
ÇÇ 
private
ÉÉ 

Dictionary
ÉÉ 
<
ÉÉ 
Point
ÉÉ  
,
ÉÉ  !
Piece
ÉÉ" '
>
ÉÉ' (
board
ÉÉ) .
=
ÉÉ/ 0
new
ÉÉ1 4

Dictionary
ÉÉ5 ?
<
ÉÉ? @
Point
ÉÉ@ E
,
ÉÉE F
Piece
ÉÉG L
>
ÉÉL M
(
ÉÉM N
)
ÉÉN O
;
ÉÉO P
public
ÖÖ 
bool
ÖÖ 

PlacePiece
ÖÖ 
(
ÖÖ 
Point
ÖÖ $
position
ÖÖ% -
,
ÖÖ- .
Piece
ÖÖ/ 4
piece
ÖÖ5 :
)
ÖÖ: ;
{
ÜÜ 	
if
áá 
(
áá 
!
áá 
piece
áá 
.
áá 
IsValidMove
áá "
(
áá" #
piece
áá# (
.
áá( )
Position
áá) 1
,
áá1 2
position
áá3 ;
,
áá; <
board
áá= B
)
ááB C
)
ááC D
return
ááE K
false
ááL Q
;
ááQ R
board
ââ 
[
ââ 
position
ââ 
]
ââ 
=
ââ 
piece
ââ #
;
ââ# $
return
ää 
true
ää 
;
ää 
}
ãã 	
public
çç 
bool
çç 
RemovePiece
çç 
(
çç  
Point
çç  %
position
çç& .
)
çç. /
{
éé 	
if
èè 
(
èè 
board
èè 
.
èè 
ContainsKey
èè !
(
èè! "
position
èè" *
)
èè* +
)
èè+ ,
{
êê 
board
ëë 
.
ëë 
Remove
ëë 
(
ëë 
position
ëë %
)
ëë% &
;
ëë& '
return
íí 
true
íí 
;
íí 
}
ìì 
return
îî 
false
îî 
;
îî 
}
ïï 	
public
óó 
Piece
óó 

GetPieceAt
óó 
(
óó  
Point
óó  %
position
óó& .
)
óó. /
{
òò 	
return
ôô 
board
ôô 
.
ôô 
ContainsKey
ôô $
(
ôô$ %
position
ôô% -
)
ôô- .
?
ôô/ 0
board
ôô1 6
[
ôô6 7
position
ôô7 ?
]
ôô? @
:
ôôA B
null
ôôC G
;
ôôG H
}
öö 	
}
õõ 
}ûû ˝
wC:\Users\chris\OneDrive\Escritorio\Hive\chris979712\HiveGameClient\HiveGameClient\HiveGameWPFApp\Logic\LoggerManager.cs
[ 
assembly 	
:	 

log4net 
. 
Config 
. 
XmlConfigurator )
() *
Watch* /
=0 1
true2 6
)6 7
]7 8
	namespace 	
HiveGameWPFApp
 
. 
Logic 
{ 
public 

class 
LoggerManager 
{ 
public 
ILog 
Logger 
{ 
get  
;  !
set" %
;% &
}' (
public 
LoggerManager 
( 
Type !
type" &
)& '
{ 	
Logger 
= 

LogManager 
.  
	GetLogger  )
() *
type* .
). /
;/ 0
} 	
public 
ILog 
	GetLogger 
( 
Type "
type# '
)' (
{ 	
return 

LogManager 
. 
	GetLogger '
(' (
type( ,
), -
;- .
} 	
public 
void 
LogInfo 
( 
string "
message# *
)* +
{ 	
Logger 
. 
Info 
( 
message 
)  
;  !
} 	
public   
void   
LogError   
(   
string   #
message  $ +
,  + ,
	Exception  - 6
ex  7 9
)  9 :
{!! 	
Logger"" 
."" 
Error"" 
("" 
message""  
,""  !
ex""" $
)""$ %
;""% &
}## 	
public%% 
void%% 
LogError%% 
(%% 
	Exception%% &
ex%%' )
)%%) *
{&& 	
Logger'' 
.'' 
Error'' 
('' 
ex'' 
)'' 
;'' 
}(( 	
public)) 
void)) 
LogFatal)) 
()) 
	Exception)) &
ex))' )
)))) *
{** 	
Logger++ 
.++ 
Fatal++ 
(++ 
ex++ 
)++ 
;++ 
},, 	
public-- 
void-- 
LogWarn-- 
(-- 
	Exception-- %
ex--& (
)--( )
{.. 	
Logger// 
.// 
Warn// 
(// 
ex// 
)// 
;// 
}00 	
public22 
void22 
LogDebug22 
(22 
	Exception22 &
ex22' )
)22) *
{33 	
Logger44 
.44 
Debug44 
(44 
ex44 
)44 
;44 
}55 	
}66 
}77 §

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
SingletonInstance/ @
=A B
newC F
MatchSingletonG U
(U V
)V W
;W X
public 
static 
string 
	codeMatch &
{' (
get* -
;- .
set/ 2
;2 3
}4 5
public 
static 
MatchSingleton $
Instance% -
=>. 0
SingletonInstance1 B
;B C
public 
void 
CreateInstance "
(" #
string# )
code* .
). /
{ 	
	codeMatch 
= 
code 
; 
} 	
public 
void 
ResetSingleton "
(" #
)# $
{ 	
	codeMatch 
= 
null 
; 
} 	
} 
} 