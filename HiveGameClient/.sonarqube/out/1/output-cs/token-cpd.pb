�
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
]44) *�?
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
}|| �
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
}55 �b
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
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
}�� �
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
�� 
brd_Password
�� 
.
�� 

Visibility
�� '
=
��( )
	isVisible
��* 3
?
��4 5

Visibility
��6 @
.
��@ A
	Collapsed
��A J
:
��K L

Visibility
��M W
.
��W X
Visible
��X _
;
��_ `!
brd_PasswordDisplay
�� #
.
��# $

Visibility
��$ .
=
��/ 0
	isVisible
��1 :
?
��; <

Visibility
��= G
.
��G H
Visible
��H O
:
��P Q

Visibility
��R \
.
��\ ]
	Collapsed
��] f
;
��f g
if
�� 
(
�� 
	isVisible
�� 
)
�� "
txtb_PasswordDisplay
�� 3
.
��3 4
Text
��4 8
=
��9 :
pwb_Password
��; G
.
��G H
Password
��H P
;
��P Q
else
�� 
pwb_Password
�� !
.
��! "
Password
��" *
=
��+ ,"
txtb_PasswordDisplay
��- A
.
��A B
Text
��B F
;
��F G
}
�� 
else
�� 
{
�� !
pwb_ConfirmPassword
�� #
.
��# $

Visibility
��$ .
=
��/ 0
	isVisible
��1 :
?
��; <

Visibility
��= G
.
��G H
	Collapsed
��H Q
:
��R S

Visibility
��T ^
.
��^ _
Visible
��_ f
;
��f g(
brd_PasswordDisplayConfirm
�� *
.
��* +

Visibility
��+ 5
=
��6 7
	isVisible
��8 A
?
��B C

Visibility
��D N
.
��N O
Visible
��O V
:
��W X

Visibility
��Y c
.
��c d
	Collapsed
��d m
;
��m n
if
�� 
(
�� 
	isVisible
�� 
)
�� )
txtb_ConfirmPasswordDisplay
�� :
.
��: ;
Text
��; ?
=
��@ A!
pwb_ConfirmPassword
��B U
.
��U V
Password
��V ^
;
��^ _
else
�� !
pwb_ConfirmPassword
�� (
.
��( )
Password
��) 1
=
��2 3)
txtb_ConfirmPasswordDisplay
��4 O
.
��O P
Text
��P T
;
��T U
}
�� 
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
�� 	
public
�� 
void
�� 
ReturnToLogin
�� !
(
��! "
)
��" #
{
�� 	
	LoginView
�� 
	loginView
�� 
=
��  !
new
��" %
	LoginView
��& /
(
��/ 0
)
��0 1
;
��1 2
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
��+ ,
	loginView
��, 5
)
��5 6
;
��6 7
}
�� 	
}
�� 
}�� ��
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
SUCCES_OPERATION
��1 A
)
��A B
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��1 A
)
��A B
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
ERROR_OPERATION
��6 E
)
��E F
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
LogError
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
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
�� 	
}
�� 
}�� �t
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
	idAccount	99{ �
)
99� �
;
99� �
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
totalWonMatches	qqw �
)
qq� �
.
qq� �
ToList
qq� �
(
qq� �
)
qq� �
;
qq� �
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
indexLeaderBoardsSorted	ssj �
++
ss� �
)
ss� �
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
�� "
.
��" #
ItemsSource
��# .
=
��/ 0!
playerStatisticList
��1 D
;
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
}�� ��	
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
$num	(( �
)
((� �
,
((� �
(
((� �
$num
((� �
,
((� �
$num
((� �
)
((� �
,
((� �
(
((� �
$num
((� �
,
((� �
$num
((� �
)
((� �
,
((� �
(
((� �
-
((� �
$num
((� �
,
((� �
$num
((� �
)
((� �
,
((� �
(
((� �
-
((� �
$num
((� �
,
((� �
-
((� �
$num
((� �
)
((� �
}
((� �
;
((� �
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
,	)) �
$num
))� �
)
))� �
,
))� �
(
))� �
$num
))� �
,
))� �
$num
))� �
)
))� �
,
))� �
(
))� �
$num
))� �
,
))� �
$num
))� �
)
))� �
,
))� �
(
))� �
-
))� �
$num
))� �
,
))� �
$num
))� �
)
))� �
,
))� �
(
))� �
-
))� �
$num
))� �
,
))� �
$num
))� �
)
))� �
}
))� �
;
))� �
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
,	66 �
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
)	77 �
,
77� �
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
)	88 �
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
,	EE �
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
)	FF �
,
FF� �
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
)	GG �
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
��. /
GameBoardGrid
�� 
.
�� 
Children
�� "
.
��" #
Clear
��# (
(
��( )
)
��) *
;
��* +
cellDictionary
�� 
.
�� 
Clear
��  
(
��  !
)
��! "
;
��" #
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
��- .
GameBoardGrid
�� !
.
��! "
Children
��" *
.
��* +
Add
��+ .
(
��. /
hexagon
��/ 6
)
��6 7
;
��7 8
cellDictionary
�� "
[
��" #
new
��# &
Point
��' ,
(
��, -
row
��- 0
,
��0 1
col
��2 5
)
��5 6
]
��6 7
=
��8 9
hexagon
��: A
;
��A B
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
�� 
selectedPiece
�� 
!=
��  
null
��! %
&&
��& (
sender
��) /
is
��0 2
Polygon
��3 :
cell
��; ?
&&
��@ B
cell
��C G
!=
��H J
null
��K O
)
��O P
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
�� (
ValidateQueenPieceIsInGame
�� *
(
��* +
)
��+ ,
)
��, -
{
�� 
if
�� 
(
�� 
sender
�� 
is
�� 
Image
�� #

imagePiece
��$ .
)
��. /
{
�� 
	GamePiece
�� 
piece
�� #
=
��$ %
(
��& '
	GamePiece
��' 0
)
��0 1

imagePiece
��1 ;
.
��; <
Tag
��< ?
;
��? @"
PieceOnBoardSelected
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
��3 4
$str
��4 s
)
��s t
;
��t u
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

playerName
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
�� 
numberOfTurn
��  
==
��! #
$num
��$ %
&&
��& (
!
��) *(
ValidateQueenPieceIsInGame
��* D
(
��D E
)
��E F
&&
��G I
piece
��J O
.
��O P
Piece
��P U
.
��U V
Name
��V Z
!=
��[ ]
$str
��^ e
)
��e f
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
dialogQueenIsNotInPlay
��M c
)
��c d
;
��d e-
HighlightAvailableStartingCells
�� 3
(
��3 4
)
��4 5
;
��5 6
}
�� 
else
�� 
{
�� 
selectedPiece
�� !
=
��" #
piece
��$ )
;
��) *
if
�� 
(
�� 
!
��  
isFirstPiecePlaced
�� +
)
��+ ,
{
�� 
if
�� 
(
�� 
cellDictionary
�� *
.
��* +
TryGetValue
��+ 6
(
��6 7
new
��7 :
Point
��; @
(
��@ A
$num
��A B
,
��B C
$num
��D E
)
��E F
,
��F G
out
��H K
Polygon
��L S

centerCell
��T ^
)
��^ _
&&
��` b
!
��c d
board
��d i
.
��i j
ContainsKey
��j u
(
��u v
new
��v y
Point
��z 
(�� �
$num��� �
,��� �
$num��� �
)��� �
)��� �
)��� �
{
�� 2
$HighlightStartingFirstTurnStaterCell
�� @
(
��@ A
new
��A D
Point
��E J
(
��J K
$num
��K L
,
��L M
$num
��N O
)
��O P
)
��P Q
;
��Q R
PlacePieceOnCell
�� ,
(
��, -
lastPlacedCell
��- ;
)
��; <
;
��< =
}
�� 
else
�� 
{
�� 2
$HigligthStartingFirstTurnOponentCell
�� @
(
��@ A
new
��A D
Point
��E J
(
��J K
$num
��K L
,
��L M
$num
��N O
)
��O P
)
��P Q
;
��Q R
}
�� 
}
�� 
else
�� 
{
�� 
Point
�� 

staterMove
�� (
=
��) *
new
��+ .
Point
��/ 4
(
��4 5
-
��5 6
$num
��6 7
,
��7 8
-
��9 :
$num
��: ;
)
��; <
;
��< =
if
�� 
(
�� 
selectedPiece
�� )
.
��) *
Position
��* 2
==
��3 5

staterMove
��6 @
)
��@ A
{
�� -
HighlightAvailableStartingCells
�� ;
(
��; <
)
��< =
;
��= >
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� (
ValidateQueenPieceIsInGame
�� /
(
��/ 0
)
��0 1
{
�� 	
return
�� 
board
�� 
.
�� 
Values
�� 
.
��  
Any
��  #
(
��# $
piece
��$ )
=>
��* ,
piece
��- 2
!=
��3 5
null
��6 :
&&
��; =
piece
��> C
.
��C D
Piece
��D I
.
��I J
Name
��J N
.
��N O
Equals
��O U
(
��U V
$str
��V ]
)
��] ^
&&
��_ a
piece
��b g
.
��g h
Piece
��h m
.
��m n

playerName
��n x
==
��y {#
UserProfileSingleton��| �
.��� �
username��� �
)��� �
;��� �
}
�� 	
private
�� 
void
�� "
PieceOnBoardSelected
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
�� 	
string
�� 
typeOfPiece
�� 
=
��  
piece
��! &
.
��& '
Piece
��' ,
.
��, -
Name
��- 1
;
��1 2
if
�� 
(
�� 1
#ValidateThatPieceCannotBreakTheHive
�� 3
(
��3 4
piece
��4 9
.
��9 :
Position
��: B
)
��B C
)
��C D
{
�� 
switch
�� 
(
�� 
typeOfPiece
�� #
)
��# $
{
�� 
case
�� 
$str
��  
:
��  !
	MoveQueen
�� !
(
��! "
piece
��" '
)
��' (
;
��( )
break
�� 
;
�� 
case
�� 
$str
�� !
:
��! "

MoveSpider
�� "
(
��" #
piece
��# (
)
��( )
;
��) *
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
MoveAnt
�� 
(
��  
piece
��  %
)
��% &
;
��& '
break
�� 
;
�� 
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
��H I"
dialogBrokeHiveAlert
��I ]
)
��] ^
;
��^ _
}
�� 
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
�� 
selectedPiece
�� 
=
�� 
piece
�� !
;
��! "
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
�� 
board
�� "
[
��" #
queenPosition
��# 0
]
��0 1
;
��1 2
board
�� 
.
�� 
Remove
�� 
(
�� 
queenPosition
�� &
)
��& '
;
��' (
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
�� 
board
�� 
.
�� 
ContainsKey
�� &
(
��& '
offset
��' -
)
��- .
&&
��/ 1
cellDictionary
��2 @
.
��@ A
TryGetValue
��A L
(
��L M
offset
��M S
,
��S T
out
��U X
Polygon
��Y `
cell
��a e
)
��e f
&&
��g i
!
��j k
checkedPositions
��k {
.
��{ |
Contains��| �
(��� �
offset��� �
)��� �
)��� �
{
�� 
if
�� 
(
�� 
IsConnectedToHive
�� )
(
��) *
offset
��* 0
)
��0 1
&&
��2 4
IsNotSurrounded
��5 D
(
��D E
offset
��E K
)
��K L
)
��L M
{
�� 
cell
�� 
.
�� 
Fill
�� !
=
��" #
Brushes
��$ +
.
��+ ,

LightGreen
��, 6
;
��6 7
cell
�� 
.
�� 
	IsEnabled
�� &
=
��' (
true
��) -
;
��- .
cell
�� 
.
�� 
	MouseDown
�� &
+=
��' ).
 PlacePieceThatIsInGame_MouseDown
��* J
;
��J K
checkedPositions
�� (
.
��( )
Add
��) ,
(
��, -
offset
��- 3
)
��3 4
;
��4 5
}
�� 
}
�� 
}
�� 
board
�� 
.
�� 
Add
�� 
(
�� 
queenPosition
�� #
,
��# $

queenPiece
��% /
)
��/ 0
;
��0 1
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
�� 
selectedPiece
�� 
=
�� 
piece
�� !
;
��! "
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
�� 
if
�� 
(
�� 
cellDictionary
�� !
.
��! "
TryGetValue
��" -
(
��- .
posiblePosition
��. =
,
��= >
out
��? B
Polygon
��C J
cell
��K O
)
��O P
)
��P Q
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
��" $.
 PlacePieceThatIsInGame_MouseDown
��% E
;
��E F
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 

MoveBeetle
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
�� 	
}
�� 	
private
�� 
void
�� 
MoveAnt
�� 
(
�� 
	GamePiece
�� &
piece
��' ,
)
��, -
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
selectedPiece
�� 
=
�� 
piece
�� !
;
��! "
board
�� 
.
�� 
Remove
�� 
(
�� 
piece
�� 
.
�� 
Position
�� '
)
��' (
;
��( )
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '
ObtainAntMoves
��( 6
(
��6 7
piece
��7 <
.
��< =
Position
��= E
)
��E F
;
��F G
foreach
�� 
(
�� 
var
�� 
possiblePosition
�� (
in
��) +
possibleMoves
��, 9
)
��9 :
{
�� 
if
�� 
(
�� 
cellDictionary
�� !
.
��! "
TryGetValue
��" -
(
��- .
possiblePosition
��. >
,
��> ?
out
��@ C
Polygon
��D K
cell
��L P
)
��P Q
)
��Q R
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
�� &
.
��& '
Green
��' ,
;
��, -
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
��F G
}
�� 
}
�� 
board
�� 
.
�� 
Add
�� 
(
�� 
piece
�� 
.
�� 
Position
�� $
,
��$ %
piece
��& +
)
��+ ,
;
��, -
}
�� 	
private
�� 
void
�� 
MoveGrasshopper
�� $
(
��$ %
	GamePiece
��% .
piece
��/ 4
)
��4 5
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
selectedPiece
�� 
=
�� 
piece
�� !
;
��! "
List
�� 
<
�� 
Point
�� 
>
�� 
possibleMoves
�� %
=
��& '$
ObtainGrassHopperMoves
��( >
(
��> ?
piece
��? D
.
��D E
Position
��E M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
possiblePosition
�� )
in
��* ,
possibleMoves
��- :
)
��: ;
{
�� 
if
�� 
(
�� 
cellDictionary
�� "
.
��" #
TryGetValue
��# .
(
��. /
possiblePosition
��/ ?
,
��? @
out
��A D
Polygon
��E L
cell
��M Q
)
��Q R
)
��R S
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
��F G
}
�� 
}
�� 
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
ObtainSpiderMoves
�� -
(
��- .
Point
��. 3
start
��4 9
)
��9 :
{
�� 	
Queue
�� 
<
�� 
(
�� 
Point
�� 
position
�� !
,
��! "
Point
��# (
previousPosition
��) 9
,
��9 :
int
��; >
steps
��? D
)
��D E
>
��E F
queue
��G L
=
��M N
new
��O R
Queue
��S X
<
��X Y
(
��Y Z
Point
��Z _
position
��` h
,
��h i
Point
��j o
previousPosition��p �
,��� �
int��� �
steps��� �
)��� �
>��� �
(��� �
)��� �
;��� �
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visitedPoint
�� '
=
��( )
new
��* -
HashSet
��. 5
<
��5 6
Point
��6 ;
>
��; <
(
��< =
)
��= >
;
��> ?
List
�� 
<
�� 
Point
�� 
>
�� 

validMoves
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Point
��. 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
queue
�� 
.
�� 
Enqueue
�� 
(
�� 
(
�� 
start
��  
,
��  !
start
��" '
,
��' (
$num
��) *
)
��* +
)
��+ ,
;
��, -
visitedPoint
�� 
.
�� 
Add
�� 
(
�� 
start
�� "
)
��" #
;
��# $
while
�� 
(
�� 
queue
�� 
.
�� 
Count
�� 
>
��  
$num
��! "
)
��" #
{
�� 
var
�� 
(
�� 
currentPosition
�� $
,
��$ %
previousPosition
��& 6
,
��6 7
currentSteps
��8 D
)
��D E
=
��F G
queue
��H M
.
��M N
Dequeue
��N U
(
��V W
)
��W X
;
��X Y
if
�� 
(
�� 
currentSteps
�� 
<
��  !
$num
��" #
)
��# $
{
�� 
var
�� 
adjacentPoints
�� &
=
��' ("
ObtainAdjacentPoints
��) =
(
��= >
currentPosition
��> M
)
��M N
;
��N O
foreach
�� 
(
�� 
var
�� 
adjacent
��  (
in
��) +
adjacentPoints
��, :
)
��: ;
{
�� 
if
�� 
(
�� 
!
�� 
visitedPoint
�� (
.
��( )
Contains
��) 1
(
��1 2
adjacent
��2 :
)
��: ;
&&
��< >
!
��? @
board
��@ E
.
��E F
ContainsKey
��F Q
(
��Q R
adjacent
��R Z
)
��Z [
)
��[ \
{
�� 
if
�� 
(
��  $
IsContinouslyConnected
��  6
(
��6 7
adjacent
��7 ?
,
��? @
currentPosition
��@ O
,
��O P
currentPosition
��P _
)
��_ `
)
��` a
{
�� 
visitedPoint
��  ,
.
��, -
Add
��- 0
(
��0 1
adjacent
��1 9
)
��9 :
;
��: ;
queue
��  %
.
��% &
Enqueue
��& -
(
��- .
(
��. /
adjacent
��/ 7
,
��7 8
currentPosition
��8 G
,
��H I
currentSteps
��I U
+
��V W
$num
��X Y
)
��Y Z
)
��Z [
;
��[ \
}
�� 
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
currentSteps
�� $
==
��% '
$num
��( )
&&
��* ,
IsConnectedToHive
��- >
(
��> ?
currentPosition
��? N
)
��N O
)
��O P
{
�� 

validMoves
�� 
.
�� 
Add
�� "
(
��" #
currentPosition
��# 2
)
��2 3
;
��3 4
}
�� 
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
�� 
List
�� 
<
�� 
Point
�� 
>
�� 
ObtainAntMoves
�� *
(
��* +
Point
��+ 0

piecePoint
��1 ;
)
��; <
{
�� 	
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
��& '
new
��( +
List
��, 0
<
��0 1
Point
��1 6
>
��6 7
(
��7 8
)
��8 9
;
��9 :
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visitedPoint
�� '
=
��( )
new
��* -
HashSet
��. 5
<
��5 6
Point
��6 ;
>
��; <
(
��< =
)
��= >
;
��> ?
Queue
�� 
<
�� 
Point
�� 
>
�� 
queue
�� 
=
��  
new
��! $
Queue
��% *
<
��* +
Point
��+ 0
>
��0 1
(
��1 2
)
��2 3
;
��3 4
queue
�� 
.
�� 
Enqueue
�� 
(
�� 

piecePoint
�� $
)
��$ %
;
��% &
visitedPoint
�� 
.
�� 
Add
�� 
(
�� 

piecePoint
�� '
)
��' (
;
��( )
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
�� 
currentPosition
�� #
=
��$ %
queue
��& +
.
��+ ,
Dequeue
��, 3
(
��3 4
)
��4 5
;
��5 6
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
�� 
var
�� 
adjacent
�� $
in
��% '
adjacentPoints
��( 6
)
��6 7
{
�� 
if
�� 
(
�� 
!
�� 
visitedPoint
�� $
.
��$ %
Contains
��% -
(
��- .
adjacent
��. 6
)
��6 7
&&
��7 9
!
�� 
board
�� 
.
�� 
ContainsKey
�� *
(
��* +
adjacent
��+ 3
)
��3 4
&&
��4 6
IsConnectedToHive
�� )
(
��) *
adjacent
��* 2
)
��2 3
&&
��3 5
IsNotSurrounded
�� '
(
��' (
adjacent
��( 0
)
��0 1
)
��1 2
{
�� 
possibleMoves
�� %
.
��% &
Add
��& )
(
��) *
adjacent
��* 2
)
��2 3
;
��3 4
visitedPoint
�� $
.
��$ %
Add
��% (
(
��( )
adjacent
��) 1
)
��1 2
;
��2 3
queue
�� 
.
�� 
Enqueue
�� %
(
��% &
adjacent
��& .
)
��. /
;
��/ 0
}
�� 
}
�� 
}
�� 
return
�� 
possibleMoves
��  
;
��  !
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
�� $
ObtainGrassHopperMoves
�� 2
(
��2 3
Point
��3 8
start
��9 >
)
��> ?
{
�� 	
List
�� 
<
�� 
Point
�� 
>
�� 

validMoves
�� "
=
��# $
new
��% (
List
��) -
<
��- .
Point
��. 3
>
��3 4
(
��4 5
)
��5 6
;
��6 7
var
�� 

directions
�� 
=
�� "
ObtainAdjacentPoints
�� 1
(
��1 2
start
��2 7
)
��7 8
;
��8 9
foreach
�� 
(
�� 
var
�� 
	direction
�� !
in
��" $

directions
��% /
)
��/ 0
{
�� 
if
�� 
(
�� 
board
�� 
.
�� 
ContainsKey
�� %
(
��% &
	direction
��& /
)
��/ 0
)
��0 1
{
�� 
Point
�� 
currentPosition
�� )
=
��* +!
MoveInSameDirection
��, ?
(
��? @
	direction
��@ I
,
��I J
start
��K P
)
��P Q
;
��Q R
Point
�� 
nextPosition
�� &
=
��' (!
MoveInSameDirection
��) <
(
��< =
currentPosition
��= L
,
��L M
	direction
��N W
)
��W X
;
��X Y
bool
�� 
NotfoundPiece
�� &
=
��' (
false
��) .
;
��. /
while
�� 
(
�� 
!
�� 
NotfoundPiece
�� )
)
��) *
{
�� 
if
�� 
(
�� 
board
�� !
.
��! "
ContainsKey
��" -
(
��- .
currentPosition
��. =
)
��= >
)
��> ?
{
�� 
NotfoundPiece
�� )
=
��* +
false
��, 1
;
��1 2
Point
�� !%
currentPositionAuxiliar
��" 9
=
��: ;
nextPosition
��< H
;
��H I
nextPosition
�� (
=
��) *!
MoveInSameDirection
��+ >
(
��> ?
currentPosition
��? N
,
��N O
nextPosition
��P \
)
��\ ]
;
��] ^
currentPosition
�� +
=
��, -%
currentPositionAuxiliar
��. E
;
��E F
}
�� 
else
�� 
if
�� 
(
��  !
!
��! "
board
��" '
.
��' (
ContainsKey
��( 3
(
��3 4
currentPosition
��4 C
)
��C D
&&
��E G
IsConnectedToHive
��H Y
(
��Y Z
currentPosition
��Z i
)
��i j
)
��j k
{
�� 

validMoves
�� &
.
��& '
Add
��' *
(
��* +
currentPosition
��+ :
)
��: ;
;
��; <
NotfoundPiece
�� )
=
��* +
true
��, 0
;
��0 1
}
�� 
}
�� 
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
Point
�� !
MoveInSameDirection
�� )
(
��) *
Point
��* /
current
��0 7
,
��7 8
Point
��9 >
start
��? D
)
��D E
{
�� 	
Point
�� 
pointToMove
�� 
=
�� 
new
��  #
Point
��$ )
(
��) *
$num
��* +
,
��+ ,
$num
��- .
)
��. /
;
��/ 0
double
�� 
dq
�� 
=
�� 
current
�� 
.
��  
X
��  !
-
��" #
start
��$ )
.
��) *
X
��* +
;
��+ ,
double
�� 
dr
�� 
=
�� 
current
�� 
.
��  
Y
��  !
-
��" #
start
��$ )
.
��) *
Y
��* +
;
��+ ,
if
�� 
(
�� 
start
�� 
.
�� 
X
�� 
%
�� 
$num
�� 
==
�� 
$num
��  
)
��  !
{
�� 
int
�� 
index
�� 
=
��  
HexPairDirecctions
�� .
.
��. /
	FindIndex
��/ 8
(
��8 9
dir
��9 <
=>
��= ?
dir
��@ C
.
��C D
dirUp
��D I
==
��J L
dq
��M O
&&
��P R
dir
��S V
.
��V W
dirDown
��W ^
==
��_ a
dr
��b d
)
��d e
;
��e f
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
(
�� 
double
�� 
dirU
��  
,
��  !
double
��" (
dirD
��) -
)
��- .
=
��/ 0
HexOddDirecctions
��1 B
[
��B C
index
��C H
]
��H I
;
��I J
pointToMove
�� 
=
��  !
new
��" %
Point
��& +
(
��+ ,
current
��, 3
.
��3 4
X
��4 5
+
��6 7
dirU
��8 <
,
��< =
current
��> E
.
��E F
Y
��F G
+
��H I
dirD
��J N
)
��N O
;
��O P
}
�� 
}
�� 
else
�� 
{
�� 
int
�� 
index
�� 
=
�� 
HexOddDirecctions
�� -
.
��- .
	FindIndex
��. 7
(
��7 8
dir
��8 ;
=>
��< >
dir
��? B
.
��B C
dirUp
��C H
==
��I K
dq
��L N
&&
��O Q
dir
��R U
.
��U V
dirDown
��V ]
==
��^ `
dr
��a c
)
��c d
;
��d e
if
�� 
(
�� 
index
�� 
!=
�� 
-
�� 
$num
�� 
)
��  
{
�� 
(
�� 
double
�� 
dirU
��  
,
��  !
double
��" (
dirD
��) -
)
��- .
=
��/ 0 
HexPairDirecctions
��1 C
[
��C D
index
��D I
]
��I J
;
��J K
pointToMove
�� 
=
��  !
new
��" %
Point
��& +
(
��+ ,
current
��, 3
.
��3 4
X
��4 5
+
��6 7
dirU
��8 <
,
��< =
current
��> E
.
��E F
Y
��F G
+
��H I
dirD
��J N
)
��N O
;
��O P
}
�� 
}
�� 
return
�� 
pointToMove
�� 
;
�� 
}
�� 	
private
�� 
void
�� .
 PlacePieceThatIsInGame_MouseDown
�� 5
(
��5 6
object
��6 <
sender
��= C
,
��C D"
MouseButtonEventArgs
��E Y
e
��Z [
)
��[ \
{
�� 	
if
�� 
(
�� 
selectedPiece
�� 
!=
��  
null
��! %
&&
��& (
sender
��) /
is
��0 2
Polygon
��3 :
cell
��; ?
&&
��@ B
cell
��C G
!=
��H J
null
��K O
)
��O P
{
�� 
Point
�� 
oldPosition
�� !
=
��" #
selectedPiece
��$ 1
.
��1 2
Position
��2 :
;
��: ;
selectedPiece
�� 
.
�� 
Position
�� &
=
��' (
(
��) *
Point
��* /
)
��/ 0
cell
��0 4
.
��4 5
Tag
��5 8
;
��8 9
selectedPiece
�� 
.
�� 
Piece
�� #
.
��# $
Position
��$ ,
=
��- .
oldPosition
��/ :
;
��: ;
var
�� 

pieceImage
�� 
=
��  
new
��! $
Image
��% *
{
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
selectedPiece
��5 B
.
��B C
	ImagePath
��C L
,
��L M
UriKind
��N U
.
��U V
Relative
��V ^
)
��^ _
)
��_ `
,
��` a
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Tag
�� 
=
�� 
selectedPiece
�� '
,
��' (
}
�� 
;
�� 
double
�� 
hexX
�� 
=
�� 
Canvas
�� $
.
��$ %
GetLeft
��% ,
(
��, -
cell
��- 1
)
��1 2
;
��2 3
double
�� 
hexY
�� 
=
�� 
Canvas
�� $
.
��$ %
GetTop
��% +
(
��+ ,
cell
��, 0
)
��0 1
;
��1 2
double
�� 
pieceX
�� 
=
�� 
hexX
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualWidth
��- 8
-
��9 :

pieceImage
��; E
.
��E F
Width
��F K
)
��K L
/
��M N
$num
��O P
;
��P Q
double
�� 
pieceY
�� 
=
�� 
hexY
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualHeight
��- 9
-
��: ;

pieceImage
��< F
.
��F G
Height
��G M
)
��M N
/
��O P
$num
��Q R
;
��R S
Canvas
�� 
.
�� 
SetLeft
�� 
(
�� 

pieceImage
�� )
,
��) *
pieceX
��+ 1
)
��1 2
;
��2 3
Canvas
�� 
.
�� 
SetTop
�� 
(
�� 

pieceImage
�� (
,
��( )
pieceY
��* 0
)
��0 1
;
��1 2-
UpdateOldAndNewPlaceInGameBoard
�� /
(
��/ 0

pieceImage
��0 :
,
��: ;
oldPosition
��< G
)
��G H
;
��H I'
SendPiecePositionToServer
�� )
(
��) *
selectedPiece
��* 7
)
��7 8
;
��8 9
lastPlacedCell
�� 
=
��  
cell
��! %
;
��% &
selectedPiece
�� 
=
�� 
null
��  $
;
��$ %
ResetHighlights
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 	
private
�� 
void
�� -
UpdateOldAndNewPlaceInGameBoard
�� 4
(
��4 5
Image
��5 :

pieceImage
��; E
,
��E F
Point
��G L
oldPosition
��M X
)
��X Y
{
�� 	
if
�� 
(
�� 
board
�� 
.
�� 
ContainsKey
�� !
(
��! "
oldPosition
��" -
)
��- .
)
��. /
{
�� 
board
�� 
.
�� 
Remove
�� 
(
�� 
oldPosition
�� (
)
��( )
;
��) *
}
�� 
var
�� 
imageToRemove
�� 
=
�� 
GameBoardGrid
��  -
.
��- .
Children
��. 6
.
��6 7
OfType
��7 =
<
��= >
Image
��> C
>
��C D
(
��D E
)
��E F
.
��F G
Where
�� 
(
�� 
img
�� 
=>
�� 
img
��  
.
��  !
Tag
��! $
is
��% '
	GamePiece
��( 1
	gamePiece
��2 ;
&&
��< >
	gamePiece
��? H
.
��H I
Piece
��I N
.
��N O
Position
��O W
==
��X Z
oldPosition
��[ f
)
��f g
.
��g h
ToList
��h n
(
��n o
)
��o p
;
��p q
foreach
�� 
(
�� 
var
�� 
pieceToQuit
�� #
in
��$ &
imageToRemove
��' 4
)
��4 5
{
�� 
GameBoardGrid
�� 
.
�� 
Children
�� &
.
��& '
Remove
��' -
(
��- .
pieceToQuit
��. 9
)
��9 :
;
��: ;
}
�� 
GameBoardGrid
�� 
.
�� 
Children
�� "
.
��" #
Add
��# &
(
��& '

pieceImage
��' 1
)
��1 2
;
��2 3
	GamePiece
�� 

pieceToAdd
��  
=
��! "

pieceImage
��# -
.
��- .
Tag
��. 1
as
��2 4
	GamePiece
��5 >
;
��> ?
board
�� 
[
�� 

pieceToAdd
�� 
.
�� 
Position
�� %
]
��% &
=
��' (

pieceToAdd
��) 3
;
��3 4
}
�� 	
private
�� 
bool
�� 1
#ValidateThatPieceCannotBreakTheHive
�� 8
(
��8 9
Point
��9 >
positionPiece
��? L
)
��L M
{
�� 	
bool
�� 
validationResult
�� !
=
��" #
false
��$ )
;
��) *
if
�� 
(
�� 
positionPiece
�� 
!=
�� 
new
�� !
Point
��" '
(
��' (
-
��( )
$num
��) *
,
��* +
-
��, -
$num
��- .
)
��. /
)
��/ 0
{
�� 
var
�� 
piece
�� 
=
�� 
board
�� !
[
��! "
positionPiece
��" /
]
��/ 0
;
��0 1
board
�� 
.
�� 
Remove
�� 
(
�� 
positionPiece
�� *
)
��* +
;
��+ ,
Point
�� 
start
�� 
=
�� 
board
�� #
.
��# $
Keys
��$ (
.
��( )
FirstOrDefault
��) 7
(
��7 8
)
��8 9
;
��9 :
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visited
�� &
=
��' (
new
��) ,
HashSet
��- 4
<
��4 5
Point
��5 :
>
��: ;
(
��; <
)
��< =
;
��= >"
CheckConnectedPieces
�� $
(
��$ %
start
��% *
,
��* +
visited
��, 3
)
��3 4
;
��4 5
if
�� 
(
�� 
visited
�� 
.
�� 
Count
�� !
==
��" $
board
��% *
.
��* +
Count
��+ 0
)
��0 1
{
�� 
validationResult
�� $
=
��% &
true
��' +
;
��+ ,
}
�� 
else
�� 
{
�� 
validationResult
�� $
=
��% &
false
��' ,
;
��, -
}
�� 
board
�� 
.
�� 
Add
�� 
(
�� 
positionPiece
�� '
,
��' (
piece
��) .
)
��. /
;
��/ 0
}
�� 
return
�� 
validationResult
�� #
;
��# $
}
�� 	
private
�� 
void
�� "
CheckConnectedPieces
�� )
(
��) *
Point
��* /
start
��0 5
,
��5 6
HashSet
��7 >
<
��> ?
Point
��? D
>
��D E
visited
��F M
)
��M N
{
�� 	
Stack
�� 
<
�� 
Point
�� 
>
�� 
stack
�� 
=
��  
new
��! $
Stack
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
stack
�� 
.
�� 
Push
�� 
(
�� 
start
�� 
)
�� 
;
�� 
while
�� 
(
�� 
stack
�� 
.
�� 
Count
�� 
>
�� 
$num
��  !
)
��! "
{
�� 
Point
�� 
currentPoint
�� "
=
��# $
stack
��% *
.
��* +
Pop
��+ .
(
��. /
)
��/ 0
;
��0 1
if
�� 
(
�� 
!
�� 
visited
�� 
.
�� 
Contains
�� %
(
��% &
currentPoint
��& 2
)
��2 3
)
��3 4
{
�� 
visited
�� 
.
�� 
Add
�� 
(
��  
currentPoint
��  ,
)
��, -
;
��- .
List
�� 
<
�� 
Point
�� 
>
�� 
adjacentPoints
��  .
=
��/ 0"
ObtainAdjacentPoints
��1 E
(
��E F
currentPoint
��F R
)
��R S
;
��S T
foreach
�� 
(
�� 
var
�� 
adjacentCollider
��  0
in
��1 3
adjacentPoints
��4 B
)
��B C
{
�� 
if
�� 
(
�� 
!
�� 
visited
�� #
.
��# $
Contains
��$ ,
(
��, -
adjacentCollider
��- =
)
��= >
&&
��? A
board
��B G
.
��G H
ContainsKey
��H S
(
��S T
adjacentCollider
��T d
)
��d e
)
��e f
{
�� 
stack
�� !
.
��! "
Push
��" &
(
��& '
adjacentCollider
��' 7
)
��7 8
;
��8 9
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 2
$HighlightStartingFirstTurnStaterCell
�� 9
(
��9 :
Point
��: ?
position
��@ H
)
��H I
{
�� 	
if
�� 
(
�� 
cellDictionary
�� 
.
�� 
TryGetValue
�� *
(
��* +
position
��+ 3
,
��3 4
out
��5 8
Polygon
��9 @
cell
��A E
)
��E F
)
��F G
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
�� #
.
��# $
Yellow
��$ *
;
��* +
lastPlacedCell
�� 
=
��  
cell
��! %
;
��% &
cell
�� 
.
�� 
	MouseDown
�� 
+=
�� !
Cell_MouseDown
��" 0
;
��0 1
}
�� 
}
�� 	
private
�� 
void
�� 2
$HigligthStartingFirstTurnOponentCell
�� 9
(
��9 :
Point
��: ?
position
��@ H
)
��H I
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
var
�� 
checkedPositions
��  
=
��! "
new
��# &
HashSet
��' .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
foreach
�� 
(
�� 
var
�� 
piecePosition
�� &
in
��' )
board
��* /
.
��/ 0
Keys
��0 4
)
��4 5
{
�� 
if
�� 
(
�� 
board
�� 
.
�� 
TryGetValue
�� %
(
��% &
piecePosition
��& 3
,
��3 4
out
��5 8
var
��9 < 
currentStarterPice
��= O
)
��O P
&&
��Q S 
currentStarterPice
��T f
!=
��g i
null
��j n
)
��n o
{
�� 
var
�� 
adjacentOffsets
�� '
=
��( )"
ObtainAdjacentPoints
��* >
(
��> ?
piecePosition
��? L
)
��L M
;
��M N
foreach
�� 
(
�� 
var
��  
offset
��! '
in
��( *
adjacentOffsets
��+ :
)
��: ;
{
�� 
if
�� 
(
�� 
!
�� 
board
�� "
.
��" #
ContainsKey
��# .
(
��. /
offset
��/ 5
)
��5 6
&&
��7 9
cellDictionary
��: H
.
��H I
TryGetValue
��I T
(
��T U
offset
��U [
,
��[ \
out
��] `
Polygon
��a h
cell
��i m
)
��m n
&&
��o q
!
��r s
checkedPositions��s �
.��� �
Contains��� �
(��� �
offset��� �
)��� �
)��� �
{
�� 
List
��  
<
��  !
Point
��! &
>
��& ''
adjacentColliderPositions
��( A
=
��B C+
obtaintAdjacentColliderPoints
��D a
(
��a b
offset
��b h
,
��h i
piecePosition
��j w
)
��w x
;
��x y
bool
��  !
isConnectedToColony
��! 4
=
��5 6'
adjacentColliderPositions
��7 P
.
��P Q
Any
��Q T
(
��T U
adj
��U X
=>
��Y [
board
��\ a
.
��a b
ContainsKey
��b m
(
��m n
adj
��n q
)
��q r
)
��r s
;
��s t
if
�� 
(
��  !
isConnectedToColony
��  3
)
��3 4
{
�� 
cell
��  $
.
��$ %
Fill
��% )
=
��* +
Brushes
��, 3
.
��3 4

LightGreen
��4 >
;
��> ?
cell
��  $
.
��$ %
	IsEnabled
��% .
=
��/ 0
true
��1 5
;
��5 6
cell
��  $
.
��$ %
	MouseDown
��% .
+=
��/ 1
Cell_MouseDown
��2 @
;
��@ A
checkedPositions
��  0
.
��0 1
Add
��1 4
(
��4 5
offset
��5 ;
)
��; <
;
��< =
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� -
HighlightAvailableStartingCells
�� 4
(
��4 5
)
��5 6
{
�� 	
ResetHighlights
�� 
(
�� 
)
�� 
;
�� 
var
�� 
checkedPositions
��  
=
��! "
new
��# &
HashSet
��' .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
if
�� 
(
�� 
numberOfTurn
�� 
==
�� 
$num
��  
&&
��! #
!
��$ %(
ValidateQueenPieceIsInGame
��% ?
(
��? @
)
��@ A
)
��A B
{
�� 
if
�� 
(
�� 
numberOfPlayer
�� !
==
��" $
$num
��% &
)
��& '
{
�� 
selectedPiece
�� !
=
��" #
player1Pieces
��$ 1
[
��1 2
$num
��2 3
]
��3 4
;
��4 5
}
�� 
else
�� 
{
�� 
selectedPiece
�� !
=
��" #
player2Pieces
��$ 1
[
��1 2
$num
��2 3
]
��3 4
;
��4 5
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
piecePosition
�� &
in
��' )
board
��* /
.
��/ 0
Keys
��0 4
)
��4 5
{
�� 
if
�� 
(
�� 
board
�� 
[
�� 
piecePosition
�� '
]
��' (
.
��( )

playerName
��) 3
==
��4 6"
UserProfileSingleton
��7 K
.
��K L
username
��L T
)
��T U
{
�� 
var
�� 
adjacentOffsets
�� '
=
��( )"
ObtainAdjacentPoints
��* >
(
��> ?
piecePosition
��? L
)
��L M
;
��M N
foreach
�� 
(
�� 
var
��  
offset
��! '
in
��( *
adjacentOffsets
��+ :
)
��: ;
{
�� 
if
�� 
(
�� 
!
�� 
board
�� "
.
��" #
ContainsKey
��# .
(
��. /
offset
��/ 5
)
��5 6
&&
��7 9
cellDictionary
��: H
.
��H I
TryGetValue
��I T
(
��T U
offset
��U [
,
��[ \
out
��] `
Polygon
��a h
cell
��i m
)
��m n
&&
��o q
!
��r s
checkedPositions��s �
.��� �
Contains��� �
(��� �
offset��� �
)��� �
)��� �
{
�� 
bool
��  !
isConnectedToColony
��! 4
=
��5 6"
ObtainAdjacentPoints
��7 K
(
��K L
offset
��L R
)
��R S
.
��S T
Any
��T W
(
��W X
adj
��X [
=>
��\ ^
board
��_ d
.
��d e
ContainsKey
��e p
(
��p q
adj
��q t
)
��t u
&&
��v x
board
��y ~
[
��~ 
adj�� �
]��� �
.��� �

playerName��� �
==��� �$
UserProfileSingleton��� �
.��� �
username��� �
)��� �
;��� �
bool
��  
isNearEnemy
��! ,
=
��- ."
ObtainAdjacentPoints
��/ C
(
��C D
offset
��D J
)
��J K
.
��K L
Any
��L O
(
��O P
adj
��P S
=>
��T V
board
��W \
.
��\ ]
ContainsKey
��] h
(
��h i
adj
��i l
)
��l m
&&
��n p
board
��q v
[
��v w
adj
��w z
]
��z {
.
��{ |

playerName��| �
!=��� �$
UserProfileSingleton��� �
.��� �
username��� �
)��� �
;��� �
if
�� 
(
��  !
isConnectedToColony
��  3
&&
��4 6
!
��7 8
isNearEnemy
��8 C
)
��C D
{
�� 
cell
��  $
.
��$ %
Fill
��% )
=
��* +
Brushes
��, 3
.
��3 4

LightGreen
��4 >
;
��> ?
cell
��  $
.
��$ %
	IsEnabled
��% .
=
��/ 0
true
��1 5
;
��5 6
cell
��  $
.
��$ %
	MouseDown
��% .
+=
��/ 1
Cell_MouseDown
��2 @
;
��@ A
checkedPositions
��  0
.
��0 1
Add
��1 4
(
��4 5
offset
��5 ;
)
��; <
;
��< =
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
bool
�� #
HasParallelIsollation
�� *
(
��* +
Point
��+ 0
position
��1 9
)
��9 :
{
�� 	
bool
��  
verificationResult
�� #
=
��$ %
true
��& *
;
��* +
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
var
�� 
occupiedAdjacent
��  
=
��! "
adjacentPoints
��# 1
.
��1 2
Where
��2 7
(
��7 8
adj
��8 ;
=>
��< >
board
��? D
.
��D E
ContainsKey
��E P
(
��P Q
adj
��Q T
)
��T U
)
��U V
.
��V W
ToList
��W ]
(
��] ^
)
��^ _
;
��_ `
if
�� 
(
�� 
occupiedAdjacent
�� 
.
��  
Count
��  %
<
��& '
$num
��( )
)
��) *
{
��  
verificationResult
�� "
=
��# $
false
��% *
;
��* +
}
�� 
else
�� 
{
�� 
HashSet
�� 
<
�� 
Point
�� 
>
�� 
visited
�� &
=
��' (
new
��) ,
HashSet
��- 4
<
��4 5
Point
��5 :
>
��: ;
(
��; <
)
��< =
;
��= >
Stack
�� 
<
�� 
Point
�� 
>
�� 
stack
�� "
=
��# $
new
��% (
Stack
��) .
<
��. /
Point
��/ 4
>
��4 5
(
��5 6
)
��6 7
;
��7 8
stack
�� 
.
�� 
Push
�� 
(
�� 
occupiedAdjacent
�� +
[
��+ ,
$num
��, -
]
��- .
)
��. /
;
��/ 0
visited
�� 
.
�� 
Add
�� 
(
�� 
occupiedAdjacent
�� ,
[
��, -
$num
��- .
]
��. /
)
��/ 0
;
��0 1
while
�� 
(
�� 
stack
�� 
.
�� 
Count
�� "
>
��# $
$num
��% &
)
��& '
{
�� 
var
�� 
current
�� 
=
��  !
stack
��" '
.
��' (
Pop
��( +
(
��+ ,
)
��, -
;
��- .
var
�� 
	neighbors
�� !
=
��" #"
ObtainAdjacentPoints
��$ 8
(
��8 9
current
��9 @
)
��@ A
;
��A B
foreach
�� 
(
�� 
var
��  
neighbor
��! )
in
��* ,
	neighbors
��- 6
)
��6 7
{
�� 
if
�� 
(
�� 
occupiedAdjacent
�� ,
.
��, -
Contains
��- 5
(
��5 6
neighbor
��6 >
)
��> ?
&&
��@ B
!
��C D
visited
��D K
.
��K L
Contains
��L T
(
��T U
neighbor
��U ]
)
��] ^
)
��^ _
{
�� 
visited
�� #
.
��# $
Add
��$ '
(
��' (
neighbor
��( 0
)
��0 1
;
��1 2
stack
�� !
.
��! "
Push
��" &
(
��& '
neighbor
��' /
)
��/ 0
;
��0 1
}
�� 
}
�� 
}
�� 
if
�� 
(
�� 
visited
�� 
.
�� 
Count
��  
!=
��! #
occupiedAdjacent
��$ 4
.
��4 5
Count
��5 :
)
��: ;
{
��  
verificationResult
�� &
=
��' (
true
��) -
;
��- .
}
�� 
else
�� 
{
��  
verificationResult
�� &
=
��' (
false
��) .
;
��. /
}
�� 
}
�� 
return
��  
verificationResult
�� %
;
��% &
}
�� 	
private
�� 
bool
�� $
IsContinouslyConnected
�� +
(
��+ ,
Point
��, 1
adjacent
��2 :
,
��: ;
Point
��< A
previousPosition
��B R
,
��R S
Point
��T Y
currentPosition
��Z i
)
��i j
{
�� 	
var
�� 
adjacentPoints
�� 
=
�� "
ObtainAdjacentPoints
��  4
(
��4 5
adjacent
��5 =
)
��= >
;
��> ?
return
�� 
adjacentPoints
��  
.
��  !
Any
��! $
(
��$ %
adj
��% (
=>
��) +
board
��, 1
.
��1 2
ContainsKey
��2 =
(
��= >
adj
��> A
)
��A B
&&
��C E"
ObtainAdjacentPoints
�� $
(
��$ %
adj
��% (
)
��( )
.
��) *
Contains
��* 2
(
��2 3
currentPosition
��3 B
)
��B C
&&
��D F"
ObtainAdjacentPoints
�� $
(
��$ %
adj
��% (
)
��( )
.
��) *
Contains
��* 2
(
��2 3
previousPosition
��3 C
)
��C D
)
��D E
;
��E F
;
��G H
}
�� 	
private
�� 
bool
�� 
IsNotSurrounded
�� $
(
��$ %
Point
��% *
position
��+ 3
)
��3 4
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
int
�� 
occupiedSides
�� 
=
�� 
adjacentPoints
��  .
.
��. /
Count
��/ 4
(
��4 5
adj
��5 8
=>
��9 ;
board
��< A
.
��A B
ContainsKey
��B M
(
��M N
adj
��N Q
)
��Q R
)
��R S
;
��S T
return
�� 
occupiedSides
��  
!=
��! #
$num
��$ %
;
��% &
}
�� 	
private
�� 
bool
�� 
IsConnectedToHive
�� &
(
��& '
Point
��' ,
position
��- 5
)
��5 6
{
�� 	
var
�� 
adjacentPoints
�� 
=
��  "
ObtainAdjacentPoints
��! 5
(
��5 6
position
��6 >
)
��> ?
;
��? @
bool
�� !
isConnectedToColony
�� $
=
��% &
adjacentPoints
��' 5
.
��5 6
Any
��6 9
(
��9 :
adj
��: =
=>
��> @
board
��A F
.
��F G
ContainsKey
��G R
(
��R S
adj
��S V
)
��V W
)
��W X
;
��X Y
return
�� !
isConnectedToColony
�� &
;
��& '
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� "
ObtainAdjacentPoints
�� 0
(
��0 1
Point
��1 6
piecePosition
��7 D
)
��D E
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
��' (
new
��) ,
List
��- 1
<
��1 2
Point
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
if
�� 
(
�� 
piecePosition
�� 
.
�� 
X
�� 
%
��  !
$num
��" #
==
��$ &
$num
��' (
)
��( )
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
-
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
-
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
-
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
+
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
}
�� 
else
�� 
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
-
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
+
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
+
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
,
��< =
piecePosition
��> K
.
��K L
Y
��L M
+
��N O
$num
��P Q
)
��Q R
)
��R S
;
��S T
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
piecePosition
��- :
.
��: ;
X
��; <
-
��= >
$num
��? @
,
��@ A
piecePosition
��B O
.
��O P
Y
��P Q
+
��R S
$num
��T U
)
��U V
)
��V W
;
��W X
}
�� 
return
�� 
adjacentPoints
�� !
;
��! "
}
�� 	
private
�� 
List
�� 
<
�� 
Point
�� 
>
�� +
obtaintAdjacentColliderPoints
�� 9
(
��9 :
Point
��: ?
offset
��@ F
,
��F G
Point
��H M
piecePosition
��N [
)
��[ \
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
��' (
new
��) ,
List
��- 1
<
��1 2
Point
��2 7
>
��7 8
(
��8 9
)
��9 :
;
��: ;
if
�� 
(
�� 
piecePosition
�� 
.
�� 
X
�� 
%
��  !
$num
��" #
==
��$ &
$num
��' (
)
��( )
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
+
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
+
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
+
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
-
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
}
�� 
else
�� 
{
�� 
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
+
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
-
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
-
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
,
��5 6
offset
��7 =
.
��= >
Y
��> ?
-
��@ A
$num
��B C
)
��C D
)
��D E
;
��E F
adjacentPoints
�� 
.
�� 
Add
�� "
(
��" #
new
��# &
Point
��' ,
(
��, -
offset
��- 3
.
��3 4
X
��4 5
+
��6 7
$num
��8 9
,
��9 :
offset
��; A
.
��A B
Y
��B C
-
��D E
$num
��F G
)
��G H
)
��H I
;
��I J
}
�� 
return
�� 
adjacentPoints
�� !
;
��! "
}
�� 	
private
�� 
PointCollection
�� !
CreateHexagonPoints
��  3
(
��3 4
double
��4 :
size
��; ?
)
��? @
{
�� 	
var
�� 
points
�� 
=
�� 
new
�� 
PointCollection
�� ,
(
��, -
)
��- .
;
��. /
for
�� 
(
�� 
int
�� 
i
�� 
=
�� 
$num
�� 
;
�� 
i
�� 
<
�� 
$num
��  !
;
��! "
i
��# $
++
��$ &
)
��& '
{
�� 
double
�� 
angle
�� 
=
�� 
(
��  
i
��  !
*
��" #
$num
��$ &
+
��' (
$num
��) +
)
��+ ,
*
��- .
Math
��/ 3
.
��3 4
PI
��4 6
/
��7 8
$num
��9 <
;
��< =
points
�� 
.
�� 
Add
�� 
(
�� 
new
�� 
Point
�� $
(
��$ %
size
��% )
*
��* +
Math
��, 0
.
��0 1
Cos
��1 4
(
��4 5
angle
��5 :
)
��: ;
,
��; <
size
��= A
*
��B C
Math
��D H
.
��H I
Sin
��I L
(
��L M
angle
��M R
)
��R S
)
��S T
)
��T U
;
��U V
}
�� 
return
�� 
points
�� 
;
�� 
}
�� 	
private
�� 
void
�� 
PlacePieceOnCell
�� %
(
��% &
Polygon
��& -
cell
��. 2
)
��2 3
{
�� 	
if
�� 
(
�� 
cell
�� 
!=
�� 
null
�� 
)
�� 
{
�� 
selectedPiece
�� 
.
�� 
Position
�� &
=
��' (
(
��) *
Point
��* /
)
��/ 0
cell
��0 4
.
��4 5
Tag
��5 8
;
��8 9
var
�� 

pieceImage
�� 
=
��  
new
��! $
Image
��% *
{
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
selectedPiece
��5 B
.
��B C
	ImagePath
��C L
,
��L M
UriKind
��N U
.
��U V
Relative
��V ^
)
��^ _
)
��_ `
,
��` a
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Tag
�� 
=
�� 
selectedPiece
�� '
,
��' (
}
�� 
;
�� 
foreach
�� 
(
�� 
var
�� 
polygon
�� $
in
��% '
GameBoardGrid
��( 5
.
��5 6
Children
��6 >
.
��> ?
OfType
��? E
<
��E F
Polygon
��F M
>
��M N
(
��N O
)
��O P
)
��P Q
{
�� 
polygon
�� 
.
�� 
	IsEnabled
�� %
=
��& '
false
��( -
;
��- .
}
�� 
double
�� 
hexX
�� 
=
�� 
Canvas
�� $
.
��$ %
GetLeft
��% ,
(
��, -
cell
��- 1
)
��1 2
;
��2 3
double
�� 
hexY
�� 
=
�� 
Canvas
�� $
.
��$ %
GetTop
��% +
(
��+ ,
cell
��, 0
)
��0 1
;
��1 2
double
�� 
pieceX
�� 
=
�� 
hexX
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualWidth
��- 8
-
��9 :

pieceImage
��; E
.
��E F
Width
��F K
)
��K L
/
��M N
$num
��O P
;
��P Q
double
�� 
pieceY
�� 
=
�� 
hexY
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualHeight
��- 9
-
��: ;

pieceImage
��< F
.
��F G
Height
��G M
)
��M N
/
��O P
$num
��Q R
;
��R S
Canvas
�� 
.
�� 
SetLeft
�� 
(
�� 

pieceImage
�� )
,
��) *
pieceX
��+ 1
)
��1 2
;
��2 3
Canvas
�� 
.
�� 
SetTop
�� 
(
�� 

pieceImage
�� (
,
��( )
pieceY
��* 0
)
��0 1
;
��1 2
GameBoardGrid
�� 
.
�� 
Children
�� &
.
��& '
Add
��' *
(
��* +

pieceImage
��+ 5
)
��5 6
;
��6 7
board
�� 
[
�� 
selectedPiece
�� #
.
��# $
Position
��$ ,
]
��, -
=
��. /
selectedPiece
��0 =
;
��= >#
RemovePieceFromPlayer
�� %
(
��% &
selectedPiece
��& 3
)
��3 4
;
��4 5'
SendPiecePositionToServer
�� )
(
��) *
selectedPiece
��* 7
)
��7 8
;
��8 9
lastPlacedCell
�� 
=
��  
cell
��! %
;
��% & 
isFirstPiecePlaced
�� "
=
��# $
true
��% )
;
��) *
selectedPiece
�� 
=
�� 
null
��  $
;
��$ %
ResetHighlights
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 	
private
�� 
void
�� +
UnlockPlacesWhereThereIsPiece
�� 2
(
��2 3
)
��3 4
{
�� 	
foreach
�� 
(
�� 
var
�� 
pieceInBoard
�� $
in
��% '
board
��( -
)
��- .
{
�� 
Point
�� 
placeToUnlock
�� #
=
��$ %
pieceInBoard
��& 2
.
��2 3
Key
��3 6
;
��6 7
if
�� 
(
�� 
cellDictionary
�� "
.
��" #
ContainsKey
��# .
(
��. /
placeToUnlock
��/ <
)
��< =
&&
��> @
pieceInBoard
��A M
.
��M N
Value
��N S
.
��S T

playerName
��T ^
==
��_ a"
UserProfileSingleton
��b v
.
��v w
username
��w 
)�� �
{
�� 
cellDictionary
�� "
[
��" #
placeToUnlock
��# 0
]
��0 1
.
��1 2
	IsEnabled
��2 ;
=
��< =
true
��> B
;
��B C
}
�� 
}
�� 
List
�� 
<
�� 
Image
�� 
>
�� 
imagesOnBoard
�� %
=
��& '
GameBoardGrid
��( 5
.
��5 6
Children
��6 >
.
��> ?
OfType
��? E
<
��E F
Image
��F K
>
��K L
(
��L M
)
��M N
.
��N O
ToList
��O U
(
��U V
)
��V W
;
��W X
foreach
�� 
(
�� 
Image
�� 
imageOnBoard
�� &
in
��' )
imagesOnBoard
��* 7
)
��7 8
{
�� 
	GamePiece
�� 
piece
�� 
=
��  !
(
��" #
	GamePiece
��# ,
)
��, -
imageOnBoard
��- 9
.
��9 :
Tag
��: =
;
��= >
if
�� 
(
�� 
piece
�� 
.
�� 

playerName
�� #
==
��$ &"
UserProfileSingleton
��' ;
.
��; <
username
��< D
)
��D E
{
�� 
imageOnBoard
��  
.
��  !
	IsEnabled
��! *
=
��+ ,
true
��- 1
;
��1 2
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� '
SendPiecePositionToServer
�� .
(
��. /
Logic
��/ 4
.
��4 5
	GamePiece
��5 >
	gamePiece
��? H
)
��H I
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� 
Piece
�� 

pieceMoved
��  *
=
��+ ,
new
��- 0
	HiveProxy
��1 :
.
��: ;
Piece
��; @
(
��@ A
)
��A B
{
�� 
name
�� 
=
�� 
	gamePiece
�� $
.
��$ %
Piece
��% *
.
��* +
Name
��+ /
,
��/ 0

playerName
�� 
=
��  
	gamePiece
��! *
.
��* +
Piece
��+ 0
.
��0 1

playerName
��1 ;
,
��; <
position
�� 
=
�� 
	gamePiece
�� (
.
��( )
Piece
��) .
.
��. /
Position
��/ 7
}
�� 
;
�� 
	HiveProxy
�� 
.
�� 
GamePice
�� "
gamePieceMoved
��# 1
=
��2 3
new
��4 7
	HiveProxy
��8 A
.
��A B
GamePice
��B J
(
��J K
)
��K L
{
�� 

playerName
�� 
=
��  
	gamePiece
��! *
.
��* +

playerName
��+ 5
,
��5 6
piece
�� 
=
�� 

pieceMoved
�� &
,
��& '
	imagePath
�� 
=
�� 
	gamePiece
��  )
.
��) *
	ImagePath
��* 3
,
��3 4
position
�� 
=
�� 
	gamePiece
�� (
.
��( )
Position
��) 1
,
��1 2
numberOfPiece
�� !
=
��" #
	gamePiece
��$ -
.
��- .
pieceNumber
��. 9
,
��9 :
}
�� 
;
�� 
UserSession
�� 
userSession
�� '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
	codeMatch
�� 
=
�� 
MatchSingleton
��  .
.
��. /
	codeMatch
��/ 8
}
�� 
;
�� 
gameManagerClient
�� !
.
��! "
	MovePiece
��" +
(
��+ ,
gamePieceMoved
��, :
,
��: ;
userSession
��< G
,
��G H
userSession
��I T
.
��T U
	codeMatch
��U ^
)
��^ _
;
��_ `
gameManagerClient
�� !
.
��! "
SetTurns
��" *
(
��* +
userSession
��+ 6
,
��6 7
userSession
��8 C
.
��C D
	codeMatch
��D M
)
��M N
;
��N O
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
LogError
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
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� #
RemovePieceFromPlayer
�� *
(
��* +
	GamePiece
��+ 4
piece
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
player1Pieces
�� 
.
�� 
Contains
�� &
(
��& '
piece
��' ,
)
��, -
)
��- .
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player1Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
==
��" $
piece
��% *
)
��* +
{
�� !
stckp_Player1Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
player2Pieces
�� "
.
��" #
Contains
��# +
(
��+ ,
piece
��, 1
)
��1 2
)
��2 3
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player2Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
==
��" $
piece
��% *
)
��* +
{
�� !
stckp_Player2Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� 
ResetHighlights
�� $
(
��$ %
)
��% &
{
�� 	
foreach
�� 
(
�� 
	UIElement
�� 
element
�� &
in
��' )
GameBoardGrid
��* 7
.
��7 8
Children
��8 @
)
��@ A
{
�� 
if
�� 
(
�� 
element
�� 
is
�� 
Polygon
�� &
cell
��' +
)
��+ ,
{
�� 
cell
�� 
.
�� 
Fill
�� 
=
�� 
Brushes
��  '
.
��' (
Transparent
��( 3
;
��3 4
cell
�� 
.
�� 
	MouseDown
�� "
-=
��# %
Cell_MouseDown
��& 4
;
��4 5
cell
�� 
.
�� 
	MouseDown
�� "
-=
��# %.
 PlacePieceThatIsInGame_MouseDown
��& F
;
��F G
}
�� 
}
�� 
foreach
�� 
(
�� 
var
�� 
cell
�� 
in
��  
cellDictionary
��! /
)
��/ 0
{
�� 
cell
�� 
.
�� 
Value
�� 
.
�� 
	IsEnabled
�� $
=
��% &
false
��' ,
;
��, -
}
�� 
}
�� 	
private
�� 
void
�� 
Image_MouseDown
�� $
(
��$ %
object
��% +
sender
��, 2
,
��2 3"
MouseButtonEventArgs
��4 H
e
��I J
)
��J K
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
if
�� 
(
�� 
DialogManager
�� 
.
�� *
ShowConfirmationMessageAlert
�� :
(
��: ;

Properties
��; E
.
��E F
	Resources
��F O
.
��O P1
#dialogManagerConfirmationLeaveMatch
��P s
)
��s t
)
��t u
{
�� 
if
�� 
(
�� "
UserProfileSingleton
�� '
.
��' (
	idAccount
��( 1
==
��2 4
	Constants
��5 >
.
��> ?
DEFAULT_GUEST_ID
��? O
)
��O P
{
�� #
DisconnectGuestPlayer
�� )
(
��) *
)
��* +
;
��+ ,
}
�� 
else
�� 
{
�� $
DisconnectNormalPlayer
�� *
(
��* +
)
��+ ,
;
��, -
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
DisconnectGuestPlayer
�� *
(
��* +
)
��+ ,
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
UserSessionManagerClient
�� 2&
userSessionManagerClient
��3 K
=
��L M
new
��N Q&
UserSessionManagerClient
��R j
(
��j k
)
��k l
;
��l m
UserSession
�� 
session
�� #
=
��$ %
new
��& )
UserSession
��* 5
(
��5 6
)
��6 7
{
�� 
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
	codeMatch
�� 
=
�� 
MatchSingleton
��  .
.
��. /
	codeMatch
��/ 8
,
��8 9
}
�� 
;
�� 
gameManagerClient
�� !
.
��! "
LeaveTheGame
��" .
(
��. /
session
��/ 6
,
��6 7
session
��8 ?
.
��? @
	codeMatch
��@ I
)
��I J
;
��J K&
userSessionManagerClient
�� (
.
��( )

Disconnect
��) 3
(
��3 4
session
��4 ;
,
��; <
false
��= B
)
��B C
;
��C D
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� $
DisconnectNormalPlayer
�� +
(
��+ ,
)
��, -
{
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� 
UserManagerClient
�� +
userManagerClient
��, =
=
��> ?
new
��@ C
UserManagerClient
��D U
(
��U V
)
��V W
;
��W X
	HiveProxy
�� 
.
�� &
LeaderBoardManagerClient
�� 2&
leaderBoardManagerClient
��3 K
=
��L M
new
��N Q&
LeaderBoardManagerClient
��R j
(
��j k
)
��k l
;
��l m
int
��  
resultModification
�� &
=
��' (
userManagerClient
��) :
.
��: ;'
UpdateMinusUserReputation
��; T
(
��T U"
UserProfileSingleton
��U i
.
��i j
username
��j r
,
��r s
$num
��t w
)
��w x
;
��x y
if
�� 
(
��  
resultModification
�� &
==
��' )
	Constants
��* 3
.
��3 4
SUCCES_OPERATION
��4 D
)
��D E
{
�� &
leaderBoardManagerClient
�� ,
.
��, -2
$UpdateLoserResultToPlayerLeaderBoard
��- Q
(
��Q R"
UserProfileSingleton
��R f
.
��f g
	idAccount
��g p
)
��p q
;
��q r
UserSession
�� 
session
��  '
=
��( )
new
��* -
UserSession
��. 9
(
��9 :
)
��: ;
{
�� 
	idAccount
�� !
=
��" #"
UserProfileSingleton
��$ 8
.
��8 9
	idAccount
��9 B
,
��B C
username
��  
=
��! ""
UserProfileSingleton
��# 7
.
��7 8
username
��8 @
,
��@ A
	codeMatch
�� !
=
��" #
MatchSingleton
��$ 2
.
��2 3
	codeMatch
��3 <
,
��< =
}
�� 
;
�� 
gameManagerClient
�� %
.
��% &
LeaveTheGame
��& 2
(
��2 3
session
��3 :
,
��: ;
session
��< C
.
��C D
	codeMatch
��D M
)
��M N
;
��N O
GoToMainView
��  
(
��  !
)
��! "
;
��" #
}
�� 
else
�� 
if
�� 
(
��  
resultModification
�� +
==
��, .
	Constants
��/ 8
.
��8 9
ERROR_OPERATION
��9 H
)
��H I
{
�� 
DialogManager
�� !
.
��! "#
ShowErrorMessageAlert
��" 7
(
��7 8

Properties
��8 B
.
��B C
	Resources
��C L
.
��L M!
dialogDataBaseError
��M `
)
��` a
;
��a b
}
�� 
}
�� 
catch
�� 
(
�� '
EndpointNotFoundException
�� ,
endPointException
��- >
)
��> ?
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
endPointException
��  1
)
��1 2
;
��2 3
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I%
dialogEndPointException
��I `
)
��` a
;
��a b
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
catch
�� 
(
�� 
TimeoutException
�� #
timeOutException
��$ 4
)
��4 5
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I)
dialogComunicationException
��I d
)
��d e
;
��e f
}
�� 
catch
�� 
(
�� $
CommunicationException
�� )$
communicationException
��* @
)
��@ A
{
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  $
communicationException
��  6
)
��6 7
;
��7 8
DialogManager
�� 
.
�� #
ShowErrorMessageAlert
�� 3
(
��3 4

Properties
��4 >
.
��> ?
	Resources
��? H
.
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
ReturnToLoginView
�� !
(
��! "
)
��" #
;
��# $
}
�� 
}
�� 	
private
�� 
void
�� 
GoToMainView
�� !
(
��! "
)
��" #
{
�� 	
MatchSingleton
�� 
.
�� 
Instance
�� #
.
��# $
ResetSingleton
��$ 2
(
��2 3
)
��3 4
;
��4 5
MainMenu
�� 
mainMenu
�� 
=
�� 
new
��  #
MainMenu
��$ ,
(
��, -
)
��- .
;
��. /
this
�� 
.
�� 
NavigationService
�� "
.
��" #
Navigate
��# +
(
��+ ,
mainMenu
��, 4
)
��4 5
;
��5 6
}
�� 	
public
�� 
void
�� #
ChargePlayerGameBoard
�� )
(
��) *

PlayerSide
��* 4
side
��5 9
)
��9 :
{
�� 	
if
�� 
(
�� 
side
�� 
.
�� 
	playerOne
�� 
)
�� 
{
�� 
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player1
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Bottom
��5 ;
)
��; <
;
��< =
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player2
��" /
,
��/ 0
Dock
��1 5
.
��5 6
Top
��6 9
)
��9 :
;
��: ;
img_ProfilePic1
�� 
.
��  
Source
��  &
=
��' (
new
��) ,
BitmapImage
��- 8
(
��8 9
new
��9 <
Uri
��= @
(
��@ A"
UserProfileSingleton
��A U
.
��U V

imageRoute
��V `
,
��` a
UriKind
��b i
.
��i j
Relative
��j r
)
��r s
)
��s t
;
��t u
txtbl_PlayerName1
�� !
.
��! "
Text
��" &
=
��' ("
UserProfileSingleton
��) =
.
��= >
username
��> F
;
��F G
stckp_Player2
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
numberOfPlayer
�� 
=
��  
$num
��! "
;
��" #
}
�� 
else
�� 
if
�� 
(
�� 
side
�� 
.
�� 
	playerTwo
�� #
)
��# $
{
�� 
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player2
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Bottom
��5 ;
)
��; <
;
��< =
	DockPanel
�� 
.
�� 
SetDock
�� !
(
��! "
stckp_Player1
��" /
,
��/ 0
Dock
��0 4
.
��4 5
Top
��5 8
)
��8 9
;
��9 :
stckp_Player1
�� 
.
�� 
	IsEnabled
�� '
=
��( )
false
��* /
;
��/ 0
img_ProfilePic2
�� 
.
��  
Source
��  &
=
��' (
new
��) ,
BitmapImage
��- 8
(
��8 9
new
��9 <
Uri
��= @
(
��@ A"
UserProfileSingleton
��A U
.
��U V

imageRoute
��V `
,
��` a
UriKind
��b i
.
��i j
Relative
��j r
)
��r s
)
��s t
;
��t u
txtbl_PlayerName2
�� !
.
��! "
Text
��" &
=
��' ("
UserProfileSingleton
��) =
.
��= >
username
��> F
;
��F G
numberOfPlayer
�� 
=
��  
$num
��! "
;
��" #
}
�� 
	DockPanel
�� 
	dockPanel
�� 
=
��  !
(
��" #
	DockPanel
��# ,
)
��, -
this
��- 1
.
��1 2
Content
��2 9
;
��9 :
	dockPanel
�� 
.
�� 
UpdateLayout
�� "
(
��" #
)
��# $
;
��$ %
}
�� 	
public
�� 
void
�� 
ReceivePieceMoved
�� %
(
��% &
	HiveProxy
��& /
.
��/ 0
GamePice
��0 8
piece
��9 >
)
��> ?
{
�� 	
Logic
�� 
.
�� 
Piece
�� 
pieceReceived
�� %
=
��& '%
CreateConcretePieceType
��( ?
(
��? @
piece
��@ E
)
��E F
;
��F G
Logic
�� 
.
�� 
	GamePiece
�� 
gamePieceReceived
�� -
=
��. /
new
��0 3
Logic
��4 9
.
��9 :
	GamePiece
��: C
(
��C D
)
��D E
{
�� 
Piece
�� 
=
�� 
pieceReceived
�� %
,
��% &

playerName
�� 
=
�� 
piece
�� "
.
��" #

playerName
��# -
,
��- .
Position
�� 
=
�� 
piece
��  
.
��  !
position
��! )
,
��) *
	ImagePath
�� 
=
�� 
piece
�� !
.
��! "
	imagePath
��" +
,
��+ ,
pieceNumber
�� 
=
�� 
piece
�� #
.
��# $
numberOfPiece
��$ 1
,
��1 2
}
�� 
;
�� 
gamePieceReceived
�� 
.
�� 
Piece
�� #
.
��# $
Position
��$ ,
=
��- .
piece
��/ 4
.
��4 5
piece
��5 :
.
��: ;
position
��; C
;
��C D
if
�� 
(
�� 
piece
�� 
!=
�� 
null
�� 
&&
��  
gamePieceReceived
��! 2
.
��2 3
Position
��3 ;
!=
��< >
null
��? C
)
��C D
{
�� 
	GamePiece
�� 

pieceToAdd
�� $
=
��% &
gamePieceReceived
��' 8
;
��8 9
Point
�� 
pointOfPieceToAdd
�� '
=
��( )
gamePieceReceived
��* ;
.
��; <
Position
��< D
;
��D E
Point
�� $
previousPositionPlaced
�� ,
=
��- .
gamePieceReceived
��/ @
.
��@ A
Piece
��A F
.
��F G
Position
��G O
;
��O P4
&RemovePieceReceiveFromPlayerStackPanel
�� 6
(
��6 7
gamePieceReceived
��7 H
)
��H I
;
��I J

pieceToAdd
�� 
.
�� 
Position
�� #
=
��$ %
pointOfPieceToAdd
��& 7
;
��7 8

pieceToAdd
�� 
.
�� 
Piece
��  
.
��  !
Position
��! )
=
��* +$
previousPositionPlaced
��, B
;
��B C(
UpdatePiecePositionOnBoard
�� *
(
��* +

pieceToAdd
��+ 5
)
��5 6
;
��6 7
}
�� 
}
�� 	
private
�� 
Logic
�� 
.
�� 
Piece
�� %
CreateConcretePieceType
�� 3
(
��3 4
	HiveProxy
��4 =
.
��= >
GamePice
��> F
piece
��G L
)
��L M
{
�� 	
Logic
�� 
.
�� 
Piece
�� 
pieceObtained
�� %
=
��& '
null
��( ,
;
��, -
string
�� 
typeOfPiece
�� 
=
��  
piece
��! &
.
��& '
piece
��' ,
.
��, -
name
��- 1
;
��1 2
switch
�� 
(
�� 
typeOfPiece
�� 
)
��  
{
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Queen
��( -
(
��- .
)
��. /
;
��/ 0
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Spider
��( .
(
��. /
)
��/ 0
;
��0 1
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Beetle
��( .
(
��. /
)
��/ 0
;
��0 1
break
�� 
;
�� 
case
�� 
$str
�� 
:
�� 
pieceObtained
�� !
=
��" #
new
��$ '
Ant
��( +
(
��+ ,
)
��, -
;
��- .
break
�� 
;
�� 
case
�� 
$str
�� "
:
��" #
pieceObtained
�� !
=
��" #
new
��$ '
Grasshopper
��( 3
(
��3 4
)
��4 5
;
��5 6
break
�� 
;
�� 
}
�� 
pieceObtained
�� 
.
�� 

playerName
�� $
=
��% &
piece
��' ,
.
��, -

playerName
��- 7
;
��7 8
return
�� 
pieceObtained
��  
;
��  !
}
�� 	
private
�� 
void
�� 4
&RemovePieceReceiveFromPlayerStackPanel
�� ;
(
��; <
	GamePiece
��< E
piece
��F K
)
��K L
{
�� 	
	GamePiece
�� 
pieceAuxiliar
�� #
=
��$ %
piece
��& +
;
��+ ,
pieceAuxiliar
�� 
.
�� 
Position
�� "
=
��# $
new
��% (
Point
��) .
(
��. /
-
��/ 0
$num
��0 1
,
��1 2
-
��3 4
$num
��4 5
)
��5 6
;
��6 7
if
�� 
(
�� 
player1Pieces
�� 
.
�� 
Contains
�� &
(
��& '
pieceAuxiliar
��' 4
)
��4 5
)
��5 6
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player1Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
tagPiece
��/ 7
&&
��8 :
tagPiece
��; C
.
��C D
Equals
��D J
(
��J K
pieceAuxiliar
��K X
)
��X Y
)
��Y Z
{
�� !
stckp_Player1Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
else
�� 
if
�� 
(
�� 
player2Pieces
�� "
.
��" #
Contains
��# +
(
��+ ,
pieceAuxiliar
��, 9
)
��9 :
)
��: ;
{
�� 
foreach
�� 
(
�� 
var
�� 
child
�� "
in
��# %!
stckp_Player2Pieces
��& 9
.
��9 :
Children
��: B
.
��B C
OfType
��C I
<
��I J
Image
��J O
>
��O P
(
��P Q
)
��Q R
)
��R S
{
�� 
if
�� 
(
�� 
child
�� 
.
�� 
Tag
�� !
is
��" $
	GamePiece
��% .
tagPiece
��/ 7
&&
��8 :
tagPiece
��; C
.
��C D
Equals
��D J
(
��J K
pieceAuxiliar
��K X
)
��X Y
)
��Y Z
{
�� !
stckp_Player2Pieces
�� +
.
��+ ,
Children
��, 4
.
��4 5
Remove
��5 ;
(
��; <
child
��< A
)
��A B
;
��B C
break
�� 
;
�� 
}
�� 
}
�� 
}
�� 
}
�� 	
private
�� 
void
�� (
UpdatePiecePositionOnBoard
�� /
(
��/ 0
	GamePiece
��0 9
piece
��: ?
)
��? @
{
�� 	
cellDictionary
�� 
.
�� 
TryGetValue
�� &
(
��& '
piece
��' ,
.
��, -
Position
��- 5
,
��5 6
out
��7 :
var
��; >
cell
��? C
)
��C D
;
��D E.
 PlacePieceReceivedOnCellToUpdate
�� ,
(
��, -
cell
��- 1
,
��1 2
piece
��3 8
)
��8 9
;
��9 :
}
�� 	
private
�� 
void
�� .
 PlacePieceReceivedOnCellToUpdate
�� 5
(
��5 6
Polygon
��6 =
cell
��> B
,
��B C
	GamePiece
��D M
piece
��N S
)
��S T
{
�� 	
if
�� 
(
�� 
cell
�� 
!=
�� 
null
�� 
&&
�� 
piece
�� $
!=
��% '
null
��( ,
)
��, -
{
�� 
Point
�� 
oldPosition
�� !
=
��" #
piece
��$ )
.
��) *
Piece
��* /
.
��/ 0
Position
��0 8
;
��8 9
var
�� 

pieceImage
�� 
=
��  
new
��! $
Image
��% *
{
�� 
Source
�� 
=
�� 
new
��  
BitmapImage
��! ,
(
��, -
new
��- 0
Uri
��1 4
(
��4 5
piece
��5 :
.
��: ;
	ImagePath
��; D
,
��D E
UriKind
��F M
.
��M N
Relative
��N V
)
��V W
)
��W X
,
��X Y
Width
�� 
=
�� 
$num
�� 
,
�� 
Height
�� 
=
�� 
$num
�� 
,
��  
Tag
�� 
=
�� 
piece
�� 
,
��  
}
�� 
;
�� 
double
�� 
hexX
�� 
=
�� 
Canvas
�� $
.
��$ %
GetLeft
��% ,
(
��, -
cell
��- 1
)
��1 2
;
��2 3
double
�� 
hexY
�� 
=
�� 
Canvas
�� $
.
��$ %
GetTop
��% +
(
��+ ,
cell
��, 0
)
��0 1
;
��1 2
double
�� 
pieceX
�� 
=
�� 
hexX
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualWidth
��- 8
-
��9 :

pieceImage
��; E
.
��E F
Width
��F K
)
��K L
/
��M N
$num
��O P
;
��P Q
double
�� 
pieceY
�� 
=
�� 
hexY
��  $
+
��% &
(
��' (
cell
��( ,
.
��, -
ActualHeight
��- 9
-
��: ;

pieceImage
��< F
.
��F G
Height
��G M
)
��M N
/
��O P
$num
��Q R
;
��R S
Canvas
�� 
.
�� 
SetLeft
�� 
(
�� 

pieceImage
�� )
,
��) *
pieceX
��+ 1
)
��1 2
;
��2 3
Canvas
�� 
.
�� 
SetTop
�� 
(
�� 

pieceImage
�� (
,
��( )
pieceY
��* 0
)
��0 1
;
��1 2
if
�� 
(
�� 
board
�� 
.
�� 
ContainsKey
�� %
(
��% &
piece
��& +
.
��+ ,
Piece
��, 1
.
��1 2
Position
��2 :
)
��: ;
)
��; <
{
�� !
UpdateReceivedPiece
�� '
(
��' (

pieceImage
��( 2
,
��2 3
oldPosition
��4 ?
)
��? @
;
��@ A
}
�� 
else
�� 
{
�� 
GameBoardGrid
�� !
.
��! "
Children
��" *
.
��* +
Add
��+ .
(
��. /

pieceImage
��/ 9
)
��9 :
;
��: ;
board
�� 
[
�� 
piece
�� 
.
��  
Position
��  (
]
��( )
=
��* +
piece
��, 1
;
��1 2
lastPlacedCell
�� "
=
��# $
cell
��% )
;
��) *
}
�� 
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
�� !
UpdateReceivedPiece
�� (
(
��( )
Image
��) .

pieceImage
��/ 9
,
��9 :
Point
��; @
oldPosition
��A L
)
��L M
{
�� 	
if
�� 
(
�� 
board
�� 
.
�� 
ContainsKey
�� !
(
��! "
oldPosition
��" -
)
��- .
)
��. /
{
�� 
board
�� 
.
�� 
Remove
�� 
(
�� 
oldPosition
�� (
)
��( )
;
��) *
}
�� 
Image
�� 
imageToRemove
�� 
=
��  !
GameBoardGrid
��" /
.
��/ 0
Children
��0 8
.
��8 9
OfType
��9 ?
<
��? @
Image
��@ E
>
��E F
(
��F G
)
��G H
.
��H I
Where
�	�	 
(
�	�	 
img
�	�	 
=>
�	�	 
img
�	�	  
.
�	�	  !
Tag
�	�	! $
is
�	�	% '
	GamePiece
�	�	( 1
	gamePiece
�	�	2 ;
&&
�	�	< >
	gamePiece
�	�	? H
.
�	�	H I
Piece
�	�	I N
.
�	�	N O
Position
�	�	O W
==
�	�	X Z
oldPosition
�	�	[ f
)
�	�	f g
.
�	�	g h
FirstOrDefault
�	�	h v
(
�	�	v w
)
�	�	w x
;
�	�	x y
GameBoardGrid
�	�	 
.
�	�	 
Children
�	�	 "
.
�	�	" #
Remove
�	�	# )
(
�	�	) *
imageToRemove
�	�	* 7
)
�	�	7 8
;
�	�	8 9
GameBoardGrid
�	�	 
.
�	�	 
Children
�	�	 "
.
�	�	" #
Add
�	�	# &
(
�	�	& '

pieceImage
�	�	' 1
)
�	�	1 2
;
�	�	2 3
	GamePiece
�	�	 

pieceToAdd
�	�	  
=
�	�	! "

pieceImage
�	�	# -
.
�	�	- .
Tag
�	�	. 1
as
�	�	2 4
	GamePiece
�	�	5 >
;
�	�	> ?
board
�	�	 
[
�	�	 

pieceToAdd
�	�	 
.
�	�	 
Position
�	�	 %
]
�	�	% &
=
�	�	' (

pieceToAdd
�	�	) 3
;
�	�	3 4
}
�	�	 	
public
�	�	 
void
�	�	 
ReceiveTurns
�	�	  
(
�	�	  !
bool
�	�	! %
isTurn
�	�	& ,
)
�	�	, -
{
�	�	 	
if
�	�	 
(
�	�	 
isTurn
�	�	 
)
�	�	 
{
�	�	 
txtbl_PlayerName
�	�	  
.
�	�	  !
Text
�	�	! %
=
�	�	& '"
UserProfileSingleton
�	�	( <
.
�	�	< =
username
�	�	= E
;
�	�	E F
if
�	�	 
(
�	�	 
numberOfPlayer
�	�	 !
==
�	�	" $
$num
�	�	% &
)
�	�	& '
{
�	�	 
stckp_Player1
�	�	 !
.
�	�	! "
	IsEnabled
�	�	" +
=
�	�	, -
true
�	�	. 2
;
�	�	2 3!
EnablePiecesOnBoard
�	�	 '
(
�	�	' (
)
�	�	( )
;
�	�	) *+
UnlockPlacesWhereThereIsPiece
�	�	 1
(
�	�	1 2
)
�	�	2 3
;
�	�	3 4
}
�	�	 
else
�	�	 
{
�	�	 
stckp_Player2
�	�	 !
.
�	�	! "
	IsEnabled
�	�	" +
=
�	�	, -
true
�	�	. 2
;
�	�	2 3+
UnlockPlacesWhereThereIsPiece
�	�	 1
(
�	�	1 2
)
�	�	2 3
;
�	�	3 4!
EnablePiecesOnBoard
�	�	 '
(
�	�	' (
)
�	�	( )
;
�	�	) *
}
�	�	 
numberOfTurn
�	�	 
++
�	�	 
;
�	�	 
}
�	�	 
else
�	�	 
{
�	�	 
for
�	�	 
(
�	�	 
int
�	�	 
indexUsersInMatch
�	�	 *
=
�	�	+ ,
$num
�	�	- .
;
�	�	. /
indexUsersInMatch
�	�	0 A
<
�	�	B C
usersInGame
�	�	D O
.
�	�	O P
Count
�	�	P U
;
�	�	U V
indexUsersInMatch
�	�	W h
++
�	�	h j
)
�	�	j k
{
�	�	 
if
�	�	 
(
�	�	 
usersInGame
�	�	 #
[
�	�	# $
indexUsersInMatch
�	�	$ 5
]
�	�	5 6
.
�	�	6 7
username
�	�	7 ?
!=
�	�	@ B"
UserProfileSingleton
�	�	C W
.
�	�	W X
username
�	�	X `
)
�	�	` a
{
�	�	 
txtbl_PlayerName
�	�	 (
.
�	�	( )
Text
�	�	) -
=
�	�	. /
usersInGame
�	�	0 ;
[
�	�	; <
indexUsersInMatch
�	�	< M
]
�	�	M N
.
�	�	N O
username
�	�	O W
;
�	�	W X
}
�	�	 
}
�	�	 
if
�	�	 
(
�	�	 
numberOfPlayer
�	�	 "
==
�	�	# %
$num
�	�	& '
)
�	�	' (
{
�	�	 
stckp_Player1
�	�	 !
.
�	�	! "
	IsEnabled
�	�	" +
=
�	�	, -
false
�	�	. 3
;
�	�	3 4!
EnablePiecesOnBoard
�	�	 '
(
�	�	' (
)
�	�	( )
;
�	�	) *
}
�	�	 
else
�	�	 
{
�	�	 
stckp_Player2
�	�	 !
.
�	�	! "
	IsEnabled
�	�	" +
=
�	�	, -
false
�	�	. 3
;
�	�	3 4!
EnablePiecesOnBoard
�	�	 '
(
�	�	' (
)
�	�	( )
;
�	�	) *
}
�	�	 "
DisablePiecesOnBoard
�	�	 $
(
�	�	$ %
)
�	�	% &
;
�	�	& '
}
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 !
EnablePiecesOnBoard
�	�	 (
(
�	�	( )
)
�	�	) *
{
�	�	 	
foreach
�	�	 
(
�	�	 
	UIElement
�	�	 
element
�	�	 &
in
�	�	' )
GameBoardGrid
�	�	* 7
.
�	�	7 8
Children
�	�	8 @
)
�	�	@ A
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
�	�	A J
)
�	�	J K
{
�	�	 
image
�	�	 
.
�	�	 
	IsEnabled
�	�	 #
=
�	�	$ %
true
�	�	& *
;
�	�	* +
image
�	�	 
.
�	�	 
	MouseDown
�	�	 #
+=
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
�	�	 "
DisablePiecesOnBoard
�	�	 )
(
�	�	) *
)
�	�	* +
{
�	�	 	
foreach
�	�	 
(
�	�	 
	UIElement
�	�	 
element
�	�	 &
in
�	�	' )
GameBoardGrid
�	�	* 7
.
�	�	7 8
Children
�	�	8 @
)
�	�	@ A
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
�	�	A J
)
�	�	J K
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
�	�	 	
public
�	�	 
void
�	�	 #
ReceivePlayersToMatch
�	�	 )
(
�	�	) *
UserSession
�	�	* 5
[
�	�	5 6
]
�	�	6 7
usersInMatch
�	�	8 D
)
�	�	D E
{
�	�	 	
usersInGame
�	�	 
=
�	�	 
usersInMatch
�	�	 &
.
�	�	& '
ToList
�	�	' -
(
�	�	- .
)
�	�	. /
;
�	�	/ 0
for
�	�	 
(
�	�	 
int
�	�	 
indexUsersInMatch
�	�	 %
=
�	�	& '
$num
�	�	( )
;
�	�	) *
indexUsersInMatch
�	�	* ;
<
�	�	< =
usersInGame
�	�	> I
.
�	�	I J
Count
�	�	J O
;
�	�	O P
indexUsersInMatch
�	�	P a
++
�	�	a c
)
�	�	c d
{
�	�	 
UserSession
�	�	 
user
�	�	  
=
�	�	! "
usersInGame
�	�	# .
[
�	�	. /
indexUsersInMatch
�	�	/ @
]
�	�	@ A
;
�	�	A B
Profile
�	�	 
profileUser
�	�	 #
=
�	�	$ %
GetUserProfile
�	�	& 4
(
�	�	4 5
user
�	�	5 9
)
�	�	9 :
;
�	�	: ;!
UpdatePlayerDisplay
�	�	 #
(
�	�	# $
user
�	�	$ (
,
�	�	( )
profileUser
�	�	* 5
)
�	�	5 6
;
�	�	6 7
}
�	�	 
}
�	�	 	
private
�	�	 
Profile
�	�	 
GetUserProfile
�	�	 &
(
�	�	& '
UserSession
�	�	' 2
user
�	�	3 7
)
�	�	7 8
{
�	�	 	
	HiveProxy
�	�	 
.
�	�	 
UserManagerClient
�	�	 '
userManagerClient
�	�	( 9
=
�	�	: ;
new
�	�	< ?
	HiveProxy
�	�	@ I
.
�	�	I J
UserManagerClient
�	�	J [
(
�	�	[ \
)
�	�	\ ]
;
�	�	] ^
Profile
�	�	 
profileUser
�	�	 
=
�	�	  !
userManagerClient
�	�	" 3
.
�	�	3 4&
GetUserProfileByUsername
�	�	4 L
(
�	�	L M
user
�	�	M Q
.
�	�	Q R
username
�	�	R Z
)
�	�	Z [
;
�	�	[ \
if
�	�	 
(
�	�	 
profileUser
�	�	 
.
�	�	 
idAccesAccount
�	�	 *
==
�	�	+ -
	Constants
�	�	. 7
.
�	�	7 8
ERROR_OPERATION
�	�	8 G
||
�	�	H J
user
�	�	K O
.
�	�	O P
	idAccount
�	�	P Y
==
�	�	Z \
	Constants
�	�	] f
.
�	�	f g
DEFAULT_GUEST_ID
�	�	g w
)
�	�	w x
{
�	�	 
profileUser
�	�	 
.
�	�	 
	imagePath
�	�	 %
=
�	�	& '
$str
�	�	( E
;
�	�	E F
}
�	�	 
return
�	�	 
profileUser
�	�	 
;
�	�	 
}
�	�	 	
private
�	�	 
void
�	�	 !
UpdatePlayerDisplay
�	�	 (
(
�	�	( )
UserSession
�	�	) 4
user
�	�	5 9
,
�	�	9 :
Profile
�	�	; B
profileUser
�	�	C N
)
�	�	N O
{
�	�	 	
usernamePlayer1
�	�	 
=
�	�	 
usersInGame
�	�	 )
[
�	�	) *
$num
�	�	* +
]
�	�	+ ,
.
�	�	, -
username
�	�	- 5
;
�	�	5 6
if
�	�	 
(
�	�	 $
IsPlayer1SlotAvailable
�	�	 &
(
�	�	& '
user
�	�	' +
)
�	�	+ ,
)
�	�	, -
{
�	�	 
txtbl_PlayerName1
�	�	 !
.
�	�	! "
Text
�	�	" &
=
�	�	' (
user
�	�	) -
.
�	�	- .
username
�	�	. 6
;
�	�	6 7
img_ProfilePic1
�	�	 
.
�	�	  
Source
�	�	  &
=
�	�	' (
new
�	�	) ,
BitmapImage
�	�	- 8
(
�	�	8 9
new
�	�	9 <
Uri
�	�	= @
(
�	�	@ A
profileUser
�	�	A L
.
�	�	L M
	imagePath
�	�	M V
,
�	�	V W
UriKind
�	�	X _
.
�	�	_ `
Relative
�	�	` h
)
�	�	h i
)
�	�	i j
;
�	�	j k
}
�	�	 
if
�	�	 
(
�	�	 
usersInGame
�	�	 
.
�	�	 
Count
�	�	 !
==
�	�	" $
$num
�	�	% &
)
�	�	& '
{
�	�	 
usernamePlayer2
�	�	 
=
�	�	  !
usersInGame
�	�	" -
[
�	�	- .
$num
�	�	. /
]
�	�	/ 0
.
�	�	0 1
username
�	�	1 9
;
�	�	9 :
if
�	�	 
(
�	�	 $
IsPlayer2SlotAvailable
�	�	 *
(
�	�	* +
user
�	�	+ /
)
�	�	/ 0
)
�	�	0 1
{
�	�	 
txtbl_PlayerName2
�	�	 %
.
�	�	% &
Text
�	�	& *
=
�	�	+ ,
user
�	�	- 1
.
�	�	1 2
username
�	�	2 :
;
�	�	: ;
img_ProfilePic2
�	�	 #
.
�	�	# $
Source
�	�	$ *
=
�	�	+ ,
new
�	�	- 0
BitmapImage
�	�	1 <
(
�	�	< =
new
�	�	= @
Uri
�	�	A D
(
�	�	D E
profileUser
�	�	E P
.
�	�	P Q
	imagePath
�	�	Q Z
,
�	�	Z [
UriKind
�	�	\ c
.
�	�	c d
Relative
�	�	d l
)
�	�	l m
)
�	�	m n
;
�	�	n o
}
�	�	 
}
�	�	 
LoadPlayerPieces
�	�	 
(
�	�	 !
stckp_Player1Pieces
�	�	 0
,
�	�	0 1
player1Pieces
�	�	2 ?
,
�	�	? @
usernamePlayer1
�	�	A P
)
�	�	P Q
;
�	�	Q R
LoadPlayerPieces
�	�	 
(
�	�	 !
stckp_Player2Pieces
�	�	 0
,
�	�	0 1
player2Pieces
�	�	2 ?
,
�	�	? @
usernamePlayer2
�	�	A P
)
�	�	P Q
;
�	�	Q R
}
�	�	 	
private
�	�	 
bool
�	�	 $
IsPlayer1SlotAvailable
�	�	 +
(
�	�	+ ,
UserSession
�	�	, 7
user
�	�	8 <
)
�	�	< =
{
�	�	 	
return
�	�	 
txtbl_PlayerName1
�	�	 $
.
�	�	$ %
Text
�	�	% )
==
�	�	* ,

Properties
�	�	- 7
.
�	�	7 8
	Resources
�	�	8 A
.
�	�	A B
txtbl_Player1
�	�	B O
&&
�	�	P R
txtbl_PlayerName2
�	�	 $
.
�	�	$ %
Text
�	�	% )
==
�	�	* ,"
UserProfileSingleton
�	�	- A
.
�	�	A B
username
�	�	B J
&&
�	�	K M
!
�	�	 
user
�	�	 
.
�	�	 
username
�	�	 !
.
�	�	! "
Equals
�	�	" (
(
�	�	( )
txtbl_PlayerName2
�	�	) :
.
�	�	: ;
Text
�	�	; ?
)
�	�	? @
;
�	�	@ A
}
�	�	 	
private
�	�	 
bool
�	�	 $
IsPlayer2SlotAvailable
�	�	 +
(
�	�	+ ,
UserSession
�	�	, 7
user
�	�	8 <
)
�	�	< =
{
�
�
 	
return
�
�
 
txtbl_PlayerName2
�
�
 $
.
�
�
$ %
Text
�
�
% )
==
�
�
* ,

Properties
�
�
- 7
.
�
�
7 8
	Resources
�
�
8 A
.
�
�
A B
txtbl_Player2
�
�
B O
&&
�
�
P R
txtbl_PlayerName1
�
�
 $
.
�
�
$ %
Text
�
�
% )
==
�
�
* ,"
UserProfileSingleton
�
�
- A
.
�
�
A B
username
�
�
B J
&&
�
�
K M
!
�
�
 
user
�
�
 
.
�
�
 
username
�
�
 !
.
�
�
! "
Equals
�
�
" (
(
�
�
( )
txtbl_PlayerName1
�
�
) :
.
�
�
: ;
Text
�
�
; ?
)
�
�
? @
;
�
�
@ A
}
�
�
 	
public
�
�
 
void
�
�
 .
 ReceivePlayerHasLeftNotification
�
�
 4
(
�
�
4 5
bool
�
�
5 9!
doPlayerLeftTheGame
�
�
: M
)
�
�
M N
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
D E
bool
�
�
 
exceptionAppear
�
�
  
=
�
�
! "
false
�
�
# (
;
�
�
( )
if
�
�
 
(
�
�
 !
doPlayerLeftTheGame
�
�
 #
)
�
�
# $
{
�
�
 
DialogManager
�
�
 
.
�
�
 %
ShowWarningMessageAlert
�
�
 5
(
�
�
5 6

Properties
�
�
6 @
.
�
�
@ A
	Resources
�
�
A J
.
�
�
J K'
dialogUserHasLeftTheMatch
�
�
K d
)
�
�
d e
;
�
�
e f
try
�
�
 
{
�
�
 
UserSession
�
�
 
userSession
�
�
  +
=
�
�
, -
new
�
�
. 1
UserSession
�
�
2 =
(
�
�
= >
)
�
�
> ?
{
�
�
 
username
�
�
  
=
�
�
! ""
UserProfileSingleton
�
�
# 7
.
�
�
7 8
username
�
�
8 @
,
�
�
@ A
	idAccount
�
�
 !
=
�
�
" #"
UserProfileSingleton
�
�
$ 8
.
�
�
8 9
	idAccount
�
�
9 B
,
�
�
B C
	codeMatch
�
�
 !
=
�
�
" #
MatchSingleton
�
�
$ 2
.
�
�
2 3
	codeMatch
�
�
3 <
}
�
�
 
;
�
�
 
if
�
�
 
(
�
�
 "
UserProfileSingleton
�
�
 ,
.
�
�
, -
	idAccount
�
�
- 6
!=
�
�
6 8
	Constants
�
�
8 A
.
�
�
A B
DEFAULT_GUEST_ID
�
�
B R
)
�
�
R S
{
�
�
 
	HiveProxy
�
�
 !
.
�
�
! "
UserManagerClient
�
�
" 3
userManagerClient
�
�
4 E
=
�
�
F G
new
�
�
H K
UserManagerClient
�
�
L ]
(
�
�
] ^
)
�
�
^ _
;
�
�
_ `
userManagerClient
�
�
 )
.
�
�
) *&
UpdatePlusUserReputation
�
�
* B
(
�
�
B C
userSession
�
�
C N
.
�
�
N O
username
�
�
O W
,
�
�
W X
$num
�
�
Y [
)
�
�
[ \
;
�
�
\ ]
}
�
�
 
gameManagerClient
�
�
 %
.
�
�
% &
LeaveTheGame
�
�
& 2
(
�
�
2 3
userSession
�
�
3 >
,
�
�
> ?
userSession
�
�
@ K
.
�
�
K L
	codeMatch
�
�
L U
)
�
�
U V
;
�
�
V W
}
�
�
 
catch
�
�
 
(
�
�
 '
EndpointNotFoundException
�
�
 0
endPointException
�
�
1 B
)
�
�
B C
{
�
�
 
logger
�
�
 
.
�
�
 
LogError
�
�
 #
(
�
�
# $
endPointException
�
�
$ 5
)
�
�
5 6
;
�
�
6 7
DialogManager
�
�
 !
.
�
�
! "#
ShowErrorMessageAlert
�
�
" 7
(
�
�
7 8

Properties
�
�
8 B
.
�
�
B C
	Resources
�
�
C L
.
�
�
L M%
dialogEndPointException
�
�
M d
)
�
�
d e
;
�
�
e f
exceptionAppear
�
�
 #
=
�
�
$ %
true
�
�
& *
;
�
�
* +
}
�
�
 
catch
�
�
 
(
�
�
 
TimeoutException
�
�
 '
timeOutException
�
�
( 8
)
�
�
8 9
{
�
�
 
logger
�
�
 
.
�
�
 
LogError
�
�
 #
(
�
�
# $
timeOutException
�
�
$ 4
)
�
�
4 5
;
�
�
5 6
DialogManager
�
�
 !
.
�
�
! "#
ShowErrorMessageAlert
�
�
" 7
(
�
�
7 8

Properties
�
�
8 B
.
�
�
B C
	Resources
�
�
C L
.
�
�
L M)
dialogComunicationException
�
�
M h
)
�
�
h i
;
�
�
i j
}
�
�
 
catch
�
�
 
(
�
�
 $
CommunicationException
�
�
 -$
communicationException
�
�
. D
)
�
�
D E
{
�
�
 
logger
�
�
 
.
�
�
 
LogError
�
�
 #
(
�
�
# $$
communicationException
�
�
$ :
)
�
�
: ;
;
�
�
; <
DialogManager
�
�
 !
.
�
�
! "#
ShowErrorMessageAlert
�
�
" 7
(
�
�
7 8

Properties
�
�
8 B
.
�
�
B C
	Resources
�
�
C L
.
�
�
L M$
dialogTimeOutException
�
�
M c
)
�
�
c d
;
�
�
d e
exceptionAppear
�
�
 #
=
�
�
$ %
true
�
�
& *
;
�
�
* +
}
�
�
 
if
�
�
 
(
�
�
 
exceptionAppear
�
�
 #
)
�
�
# $
{
�
�
 
ReturnToLoginView
�
�
 %
(
�
�
% &
)
�
�
& '
;
�
�
' (
}
�
�
 
else
�
�
 
{
�
�
 
if
�
�
 
(
�
�
 "
UserProfileSingleton
�
�
 ,
.
�
�
, -
	idAccount
�
�
- 6
==
�
�
7 9
	Constants
�
�
: C
.
�
�
C D
DEFAULT_GUEST_ID
�
�
D T
)
�
�
T U
{
�
�
 
ReturnToLoginView
�
�
 )
(
�
�
) *
)
�
�
* +
;
�
�
+ ,
}
�
�
 
else
�
�
 
{
�
�
 
GoToMainView
�
�
 $
(
�
�
$ %
)
�
�
% &
;
�
�
& '
}
�
�
 
}
�
�
 
}
�
�
 
}
�
�
 	
public
�
�
 
void
�
�
 
ReturnToLoginView
�
�
 %
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
 	
MatchSingleton
�
�
 
.
�
�
 
Instance
�
�
 #
.
�
�
# $
ResetSingleton
�
�
$ 2
(
�
�
2 3
)
�
�
3 4
;
�
�
4 5"
UserProfileSingleton
�
�
  
.
�
�
  !
Instance
�
�
! )
.
�
�
) *
ResetSingleton
�
�
* 8
(
�
�
8 9
)
�
�
9 :
;
�
�
: ;
	LoginView
�
�
 
	loginView
�
�
 
=
�
�
  !
new
�
�
" %
	LoginView
�
�
& /
(
�
�
/ 0
)
�
�
0 1
;
�
�
1 2
this
�
�
 
.
�
�
 
NavigationService
�
�
 "
.
�
�
" #
Navigate
�
�
# +
(
�
�
+ ,
	loginView
�
�
, 5
)
�
�
5 6
;
�
�
6 7
}
�
�
 	
}
�
�
 
}�
�
 �_
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
�� 
.
�� 
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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

hashToSHA1
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
}
�� 	
private
�� 
void
�� "
GenerateGuestProfile
�� )
(
��) *
)
��* +
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
DEFAULT_GUEST_ID
��* :
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
DEFAULT_GUEST_ID
��/ ?
,
��? @
	idProfile
�� 
=
�� 
	Constants
��  )
.
��) *
DEFAULT_GUEST_ID
��* :
,
��: ;
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
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
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
�� 	"
GenerateGuestProfile
��  
(
��  !
)
��! "
;
��" #
GameCodeView
�� 
gameCodeView
�� %
=
��& '
new
��( +
GameCodeView
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
gameCodeView
��, 8
)
��8 9
;
��9 :
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
�� 
void
�� &
BtnRecoverPassword_Click
�� -
(
��- .
object
��. 4
sender
��5 ;
,
��; <"
MouseButtonEventArgs
��= Q
e
��R S
)
��S T
{
�� 	$
VerifyEmailAndUsername
�� "$
verifyEmailAndUsername
��# 9
=
��: ;
new
��< ?$
VerifyEmailAndUsername
��@ V
(
��V W
)
��W X
;
��X Y
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
��+ ,$
verifyEmailAndUsername
��, B
)
��B C
;
��C D
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
)
��) *
;
��* +
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
}�� ��
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��) *
if
�� 
(
�� "
UserProfileSingleton
�� ,
.
��, -
	idAccount
��- 6
!=
��7 9
	Constants
��: C
.
��C D
DEFAULT_GUEST_ID
��D T
)
��T U
{
�� 
MatchSingleton
�� &
.
��& '
Instance
��' /
.
��/ 0
ResetSingleton
��0 >
(
��> ?
)
��? @
;
��@ A!
KickPlayerFromLobby
�� +
(
��+ ,
userSession
��, 7
,
��7 8
isKicked
��9 A
)
��A B
;
��B C'
RedirectRespectivePlayers
�� 1
(
��1 2
isKicked
��2 :
)
��: ;
;
��; <
}
�� 
else
�� 
{
�� 
MatchSingleton
�� &
.
��& '
Instance
��' /
.
��/ 0
ResetSingleton
��0 >
(
��> ?
)
��? @
;
��@ A!
KickPlayerFromLobby
�� +
(
��+ ,
userSession
��, 7
,
��7 8
isKicked
��9 A
)
��A B
;
��B C'
RedirectRespectivePlayers
�� 1
(
��1 2
isKicked
��2 :
)
��: ;
;
��; <
}
�� 
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
LogError
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
�� 
LogError
�� #
(
��# $
timeOutException
��$ 4
)
��4 5
;
��5 6
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
LogError
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
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��> N
)
��N O
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��D E
try
�� 
{
�� 
	HiveProxy
�� 
.
�� &
UserSessionManagerClient
�� 2&
userSessionManagerClient
��3 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \&
UserSessionManagerClient
��\ t
(
��t u
)
��u v
;
��v w
Profile
�� 
guestToDisconnect
�� )
=
��* +
new
��, /
Profile
��0 7
(
��7 8
)
��8 9
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
SUCCES_OPERATION
��= M
&&
��N P*
profileDisconnectionFromGame
��Q m
==
��n p
	Constants
��q z
.
��z {
SUCCES_OPERATION��{ �
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��+ ,
message
��- 4
)
��4 5
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
��< =
message
��> E
.
��E F
Length
��F L
;
��L M
indexListMessage
��N ^
++
��^ `
)
��` a
{
�� 
if
�� 
(
�� 
message
�� 
[
�� 
indexListMessage
�� ,
]
��, -
.
��- .
username
��. 6
.
��6 7
Equals
��7 =
(
��= >
userProfile
��> I
.
��I J
username
��J R
)
��R S
)
��S T
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
��/ 0
message
��0 7
[
��7 8
indexListMessage
��8 H
]
��H I
.
��I J
username
��J R
}
��R S
$str
��S U
{
��U V
message
��V ]
[
��] ^
indexListMessage
��^ n
]
��n o
.
��o p
text
��p t
}
��t u
$str
��u v
{
��v w
DateTime
��w 
.�� �
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
��/ 0
message
��0 7
[
��7 8
indexListMessage
��8 H
]
��H I
.
��I J
username
��J R
}
��R S
$str
��S U
{
��U V
message
��V ]
[
��] ^
indexListMessage
��^ n
]
��n o
.
��o p
text
��p t
}
��t u
$str
��u v
{
��v w
DateTime
��w 
.�� �
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
LogError
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
�� 
LogError
�� #
(
��# $
timeOutException
��$ 4
)
��4 5
;
��5 6
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
�� 
logger
�� 
.
�� 
LogError
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
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
}
�� 
txtb_MessageInput
�� !
.
��! "
Clear
��" '
(
��' (
)
��( )
;
��) *
txtb_CharCount
�� 
.
�� 
Text
�� #
=
��$ %
$str
��& -
;
��- .
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
SUCCES_OPERATION
��1 A
)
��A B
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
txtb_CharCount
�� 
.
�� 
Text
�� 
=
��  !
$"
��" $
{
��$ %
currentLength
��% 2
}
��2 3
$str
��3 7
"
��7 8
;
��8 9
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
DEFAULT_GUEST_ID
��: J
)
��J K
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
LogError
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
�� 
LogError
�� #
(
��# $
timeOutException
��$ 4
)
��4 5
;
��5 6
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
LogError
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
��L M$
dialogTimeOutException
��M c
)
��c d
;
��d e
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
userProfile
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
userProfile
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
LogError
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
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��D E$
lstv_ActiveFriendsList
�� "
.
��" #
Items
��# (
.
��( )
Clear
��) .
(
��. /
)
��/ 0
;
��0 1
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
�� 
userProfile
�� #
=
��$ %
new
��& )
Profile
��* 1
(
��1 2
)
��2 3
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
��Q R
userProfile
��R ]
)
��] ^
;
��^ _
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
�� $
lstv_ActiveFriendsList
�� *
.
��* +
Items
��+ 0
.
��0 1
Clear
��1 6
(
��6 7
)
��7 8
;
��8 9
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
�� $
lstv_ActiveFriendsList
�� .
.
��. /
Items
��/ 4
.
��4 5
Add
��5 8
(
��8 9
friends
��9 @
[
��@ A
indexFriends
��A M
]
��M N
)
��N O
;
��O P
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��6 7
users
��8 =
)
��= >
{
�� 	
usersInLobby
�� 
=
�� 
users
��  
.
��  !
ToList
��! '
(
��' (
)
��( )
;
��) *
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
,
��: ;
}
�� 
;
�� 
if
�� 
(
�� 
users
�� 
[
�� 
$num
�� 
]
�� 
.
�� 
	idAccount
�� "
==
��# %
-
��& '
$num
��' (
)
��( )
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
�� 
users
�� 
.
�� 
Length
�� !
==
��" $
$num
��% &
)
��& '
{
�� $
ChargeOnePlayerProfile
�� &
(
��& '
users
��' ,
[
��, -
$num
��- .
]
��. /
)
��/ 0
;
��0 1
}
�� 
else
�� 
if
�� 
(
�� 
users
�� 
.
�� 
Length
�� !
==
��" $
$num
��% &
)
��& '
{
�� %
ChargeTwoPlayersProfile
�� '
(
��' (
users
��( -
)
��- .
;
��. /
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
DEFAULT_GUEST_ID
��@ P
)
��P Q
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
�� 
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
}
�� 	
private
�� 
void
�� $
ChargeOnePlayerProfile
�� +
(
��+ ,
UserSession
��, 7
user
��8 <
)
��< =
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
DEFAULT_GUEST_ID
��4 D
)
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��% &$
lstv_ActiveFriendsList
��' =
.
��= >
Items
��> C
.
��C D
Cast
��D H
<
��H I
Friend
��I O
>
��O P
(
��P Q
)
��Q R
.
��R S
ToList
��S Y
(
��Y Z
)
��Z [
;
��[ \
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
�� $
lstv_ActiveFriendsList
�� *
.
��* +
Items
��+ 0
.
��0 1
Clear
��1 6
(
��6 7
)
��7 8
;
��8 9$
lstv_ActiveFriendsList
�� *
.
��* +
Items
��+ 0
.
��0 1
Add
��1 4
(
��4 5
foundedFriend
��5 B
)
��B C
;
��C D
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
�� 	
LoggerManager
�� 
logger
��  
=
��! "
new
��# &
LoggerManager
��' 4
(
��4 5
this
��5 9
.
��9 :
GetType
��: A
(
��A B
)
��B C
)
��C D
;
��D E
try
�� 
{
��  
lobbyManagerClient
�� "
.
��" #

StartMatch
��# -
(
��- .
matchLobbyCode
��. <
)
��< =
;
��= >
MatchCreator
�� 
matchCreator
�� )
=
��* +
new
��, /
MatchCreator
��0 <
(
��< =
)
��= >
{
�� 
idCreatorAccount
�� $
=
��% &"
UserProfileSingleton
��' ;
.
��; <
	idAccount
��< E
,
��E F
	codeMatch
�� 
=
�� 
matchLobbyCode
��  .
,
��. /

stateMatch
�� 
=
��  
$str
��! *
}
�� 
;
�� 
Profile
�� 
profile
�� 
=
��  !
new
��" %
Profile
��& -
(
��- .
)
��. /
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
}
�� 
;
�� 
UserSession
�� 
session
�� #
=
��$ %
new
��& )
UserSession
��* 5
(
��5 6
)
��6 7
{
�� 
username
�� 
=
�� "
UserProfileSingleton
�� 3
.
��3 4
username
��4 <
,
��< =
	codeMatch
�� 
=
�� 
matchLobbyCode
��  .
,
��. /
	idAccount
�� 
=
�� "
UserProfileSingleton
��  4
.
��4 5
	idAccount
��5 >
,
��> ?
}
�� 
;
�� '
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
DEFAULT_GUEST_ID
��; K
)
��K L
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
�� 
class
�� 
Friend
�� 
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
}�� ��
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
�� 
.
�� (
FriendRequestManagerClient
�� 0(
friendRequestManagerClient
��1 K
=
��L M
new
��N Q
	HiveProxy
��R [
.
��[ \(
FriendRequestManagerClient
��\ v
(
��v w
)
��w x
;
��x y
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
��D E 
lvw_FriendRequests
�� 
.
�� 
Items
�� $
.
��$ %
Clear
��% *
(
��* +
)
��+ ,
;
��, -
try
�� 
{
�� 
Profile
�� 
userProfile
�� #
=
��$ %
new
��& )
Profile
��* 1
(
��1 2
)
��2 3
{
�� 
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
��> ?
NO_DATA_MATCHES
��? N
)
��N O
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
ERROR_OPERATION
��J Y
)
��Y Z
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
�� 
if
�� 
(
�� $
friendRequestsObtained
�� /
.
��/ 0
Length
��0 6
>=
��7 9
	Constants
��: C
.
��C D
DATA_MATCHES
��D P
)
��P Q
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
��C D
NO_DATA_MATCHES
��D S
)
��S T
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
ERROR_OPERATION
��D S
)
��S T
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
LogError
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
�� 
logger
�� 
.
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
ERROR_OPERATION
��/ >
;
��> ?
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��0 @
)
��@ A
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
ERROR_OPERATION
��5 D
)
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��0 @
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
ERROR_OPERATION
��5 D
)
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��/ ?
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
ERROR_OPERATION
��4 C
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
SUCCES_OPERATION
��0 @
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
ERROR_OPERATION
��5 D
)
��D E
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
�� 
class
�� 
ProfileUser
�� !
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
�� 
nickname
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
�� 
class
�� 
FriendRequest
�� #
{
�� 	
public
�� 
int
�� 
	idAccount
��  
{
��! "
set
��# &
;
��& '
get
��( +
;
��+ ,
}
��- .
public
�� 
string
�� 
nickname
�� "
{
��# $
set
��% (
;
��( )
get
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
set
��) ,
;
��, -
get
��. 1
;
��1 2
}
��3 4
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
}�� ��
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
�� 
logger
�� 
.
�� 
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
ERROR_OPERATION
��- <
;
��< =
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
��0 1
DATA_MATCHES
��1 =
;
��= >
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
��0 1
NO_DATA_MATCHES
��1 @
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
)
��8 9
;
��9 :
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
}�� ��
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
�� 
bool
�� #
ValidateSamePasswords
�� *
(
��* +
)
��+ ,
{
�� 	
bool
�� 
samePasswords
�� 
=
��  
false
��! &
;
��& '
if
�� 
(
�� !
pwb_ConfirmPassword
�� #
.
��# $
Password
��$ ,
==
��- /
pwb_Password
��0 <
.
��< =
Password
��= E
)
��E F
{
�� 
samePasswords
�� 
=
�� 
true
��  $
;
��$ %
}
�� 
return
�� 
samePasswords
��  
;
��  !
}
�� 	
private
�� 
bool
�� (
ValidateExistingCredential
�� /
(
��/ 0
)
��0 1
{
�� 	
bool
��  
resultVerification
�� #
=
��$ %
false
��& +
;
��+ ,
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
��] ^
try
�� 
{
�� 
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
��> ?
DATA_MATCHES
��? K
)
��K L
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
��C D
NO_DATA_MATCHES
��D S
)
��S T
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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

hashToSHA1
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
SUCCES_OPERATION
��. >
)
��> ?
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
}
�� 
}
�� 	
private
�� 
void
�� !
BtnResendCode_Click
�� (
(
��( )
object
��) /
sender
��0 6
,
��6 7"
MouseButtonEventArgs
��8 L
e
��M N
)
��N O
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
�� ,
EmailVerificationManagerClient
�� 4&
emailVerificationManager
��5 M
=
��N O
new
��P S
	HiveProxy
��T ]
.
��] ^,
EmailVerificationManagerClient
��^ |
(
��| }
)
��} ~
;
��~ 
try
�� 
{
�� 
int
�� 
resultEmailSend
�� #
=
��$ %&
emailVerificationManager
��& >
.
��> ?#
SendVerificationEmail
��? T
(
��T U"
UserProfileSingleton
��U i
.
��i j
email
��j o
)
��o p
;
��p q
if
�� 
(
�� 
resultEmailSend
�� #
==
��$ &
	Constants
��' 0
.
��0 1
SUCCES_OPERATION
��1 A
)
��A B
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
��N O,
dialogEmailVerificationMessage
��O m
)
��m n
;
��n o
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
��L M$
dialogCouldntSendEmail
��M c
)
��c d
;
��d e
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
LogError
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
�� 
LogError
�� 
(
��  
timeOutException
��  0
)
��0 1
;
��1 2
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
LogError
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
��H I$
dialogTimeOutException
��I _
)
��_ `
;
��` a
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
} �g
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
$str	7 �
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
$num	} �
)
� �
)
� �
;
� �
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
$num	~ �
)
� �
)
� �
;
� �
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
TimeSpan	 �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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
;	 �
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
)	 �
)
� �
;
� �
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
)	 �
;
� �
private 
static 
Regex 

emailRegex '
=( )
new* -
Regex. 3
(3 4
$str	4 �
,
� �
RegexOptions
� �
.
� �
None
� �
,
� �
TimeSpan
� �
.
� �
FromMilliseconds
� �
(
� �
$num
� �
)
� �
)
� �
;
� �
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

emailRegex	MMw �
)
MM� �
)
MM� �
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
} �$
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
}77 �
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
} �
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
},, �
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
$str	l �
+
� �
$str )
,) *
$str* O
,O P
$strP q
,q r
$str	r �
+
� �
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
$str	f �
,
� �
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
}&& �
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
} �
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
} 
} �m
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
�� 
public
�� 

class
�� 
	GameBoard
�� 
{
�� 
private
�� 

Dictionary
�� 
<
�� 
Point
��  
,
��  !
Piece
��" '
>
��' (
board
��) .
=
��/ 0
new
��1 4

Dictionary
��5 ?
<
��? @
Point
��@ E
,
��E F
Piece
��G L
>
��L M
(
��M N
)
��N O
;
��O P
public
�� 
bool
�� 

PlacePiece
�� 
(
�� 
Point
�� $
position
��% -
,
��- .
Piece
��/ 4
piece
��5 :
)
��: ;
{
�� 	
if
�� 
(
�� 
!
�� 
piece
�� 
.
�� 
IsValidMove
�� "
(
��" #
piece
��# (
.
��( )
Position
��) 1
,
��1 2
position
��3 ;
,
��; <
board
��= B
)
��B C
)
��C D
return
��E K
false
��L Q
;
��Q R
board
�� 
[
�� 
position
�� 
]
�� 
=
�� 
piece
�� #
;
��# $
return
�� 
true
�� 
;
�� 
}
�� 	
public
�� 
bool
�� 
RemovePiece
�� 
(
��  
Point
��  %
position
��& .
)
��. /
{
�� 	
if
�� 
(
�� 
board
�� 
.
�� 
ContainsKey
�� !
(
��! "
position
��" *
)
��* +
)
��+ ,
{
�� 
board
�� 
.
�� 
Remove
�� 
(
�� 
position
�� %
)
��% &
;
��& '
return
�� 
true
�� 
;
�� 
}
�� 
return
�� 
false
�� 
;
�� 
}
�� 	
public
�� 
Piece
�� 

GetPieceAt
�� 
(
��  
Point
��  %
position
��& .
)
��. /
{
�� 	
return
�� 
board
�� 
.
�� 
ContainsKey
�� $
(
��$ %
position
��% -
)
��- .
?
��/ 0
board
��1 6
[
��6 7
position
��7 ?
]
��? @
:
��A B
null
��C G
;
��G H
}
�� 	
}
�� 
}�� �
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
}77 �

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