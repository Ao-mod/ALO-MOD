; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design
; Description ...: This file creates the "MOD" tab
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: rulesss 2018
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
#include-once


; ================================================== War preparation ================================================== ;
Global $g_hChkStopForWar = 0, $g_hCmbStopTime = 0, $g_CmbStopBeforeBattle = 0, $g_hCmbReturnTime = 0
Global $g_hChkTrainWarTroop = 0, $g_hChkUseQuickTrainWar, $g_ahChkArmyWar[3], $g_hLblRemoveArmyWar, $g_ahTxtTrainWarTroopCount[20], $g_ahTxtTrainWarSpellCount[10]
Global $g_hCalTotalWarTroops, $g_hLblTotalWarTroopsProgress, $g_hLblCountWarTroopsTotal
Global $g_hCalTotalWarSpells, $g_hLblTotalWarSpellsProgress, $g_hLblCountWarSpellsTotal
Global $g_hChkRequestCCForWar = 0, $g_hTxtRequestCCForWar = 0

; ================================================== Super XP PART ================================================== ;
Global $grpSuperXP = 0 , $chkEnableSuperXP = 0 , $rbSXTraining = 0 , $lblLOCKEDSX = 0 , $rbSXIAttacking = 0 , $txtMaxXPtoGain = 0
Global $chkSXBK = 0 , $chkSXAQ = 0 , $chkSXGW = 0
Global $DocXP1 = 0 , $DocXP2 = 0 , $DocXP3 = 0 ,$DocXP4 = 0
Global $lblXPatStart = 0 , $lblXPCurrent = 0 , $lblXPSXWon = 0 , $lblXPSXWonHour = 0

; ================================================== Forecast PART ================================================== ;
Global $g_hChkForecastBoost = 0, $g_hTxtForecastBoost = 0
Global $g_hChkForecastPause = 0, $g_hTxtForecastPause = 0
Global $g_hChkForecastHopingSwitchMax = 0, $g_hCmbForecastHopingSwitchMax = 0, $g_hLblForecastHopingSwitchMax = 0, $g_hTxtForecastHopingSwitchMax = 0
Global $g_hChkForecastHopingSwitchMin = 0, $g_hCmbForecastHopingSwitchMin = 0, $g_hLblForecastHopingSwitchMin = 0, $g_hTxtForecastHopingSwitchMin = 0
Global $g_hCmbSwLang = 0

; ================================================== Humanization PART ================================================== ;

Global $g_chkUseBotHumanization = 0, $g_chkUseAltRClick = 0, $g_acmbPriority = 0, $g_challengeMessage = 0, $g_ahumanMessage
Global $g_Label1 = 0, $g_Label2 = 0, $g_Label3 = 0, $g_Label4 = 0
Global $g_Label5 = 0, $g_Label6 = 0, $g_Label7 = 0, $g_Label8 = 0
Global $g_Label9 = 0, $g_Label10 = 0, $g_Label11 = 0, $g_Label12 = 0
Global $g_Label14 = 0, $g_Label15 = 0, $g_Label16 = 0, $g_Label13 = 0
Global $g_Label17 = 0, $g_Label18 = 0, $g_Label20 = 0
Global $g_chkCollectAchievements = 0, $g_chkLookAtRedNotifications = 0, $g_cmbMaxActionsNumber = 0
Global $g_acmbPriority[13] = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Global $g_acmbMaxSpeed[2] = [0, 0]
Global $g_acmbPause[2] = [0, 0]
Global $g_ahumanMessage[2] = ["", ""]

; ================================================== ChatBOT PART ================================================== ;

Global $cmblang = 0, $icmblang = 8
Global $g_hChkGlobalChat = 0, $g_hChkGlobalScramble = 0, $g_hChkSwitchLang = 0, $g_hChkClanChat = 0
Global $g_hChkUseResponses = 0, $g_hChkUseGeneric = 0, $g_hChkChatNotify = 0, $g_hChkPbSendNewChats = 0, $g_hChkRusLang = 0
Global $editGlobalMessages1 = "", $editGlobalMessages2 = ""
Global $editResponses = 0, $editGeneric = 0, $ChatbotQueuedChats[0], $ChatbotReadQueued = False, $ChatbotReadInterval = 0, $ChatbotIsOnInterval = False, $TmpResp
Global $g_alblAinGlobal, $g_alblSGchats, $g_alblSwitchlang, $g_alblChatclan, $g_alblUsecustomresp, $g_alblUsegenchats, $g_alblNotifyclanchat, $g_alblSwitchlang,$g_alblUseremotechat


; Switch Profiles
Global $g_hChkGoldSwitchMax = 0, $g_hCmbGoldMaxProfile = 0, $g_hTxtMaxGoldAmount = 0, $g_hChkGoldSwitchMin = 0, $g_hCmbGoldMinProfile = 0, $g_hTxtMinGoldAmount = 0, _
	   $g_hChkElixirSwitchMax = 0, $g_hCmbElixirMaxProfile = 0, $g_hTxtMaxElixirAmount = 0, $g_hChkElixirSwitchMin = 0, $g_hCmbElixirMinProfile = 0, $g_hTxtMinElixirAmount = 0, _
	   $g_hChkDESwitchMax = 0, $g_hCmbDEMaxProfile = 0, $g_hTxtMaxDEAmount = 0, $g_hChkDESwitchMin = 0, $g_hCmbDEMinProfile = 0, $g_hTxtMinDEAmount = 0, _
	   $g_hChkTrophySwitchMax = 0, $g_hCmbTrophyMaxProfile = 0, $g_hTxtMaxTrophyAmount = 0, $g_hChkTrophySwitchMin = 0, $g_hCmbTrophyMinProfile = 0, $g_hTxtMinTrophyAmount = 0
	   
; Profiles 
Global $g_hBtnRecycle = 0	   

Global $g_hGUI_MOD = 0

Global $g_hqq = 0 

Global $g_hGUI_MOD_TAB = 0, $g_hGUI_MOD_TAB_ITEM1 = 0, $g_hGUI_MOD_TAB_ITEM2 = 0, $g_hGUI_MOD_TAB_ITEM3 = 0, $g_hGUI_MOD_TAB_ITEM6 = 0, $g_hGUI_MOD_TAB_ITEM7 = 0, $g_hGUI_MOD_TAB_ITEM8 = 0, $g_hGUI_MOD_TAB_ITEM9 = 0

Func CreateMODTab()

	$g_hGUI_MOD = _GUICreate("", $g_iSizeWGrpTab1, $g_iSizeHGrpTab1, $_GUI_CHILD_LEFT, $_GUI_CHILD_TOP, BitOR($WS_CHILD, $WS_TABSTOP), -1, $g_hFrmBotEx)

	GUISwitch($g_hGUI_MOD)
	$g_hGUI_MOD_TAB = GUICtrlCreateTab(0, 0, $g_iSizeWGrpTab1, $g_iSizeHGrpTab1, BitOR($TCS_SINGLELINE, $TCS_RIGHTJUSTIFY))
	$g_hGUI_MOD_TAB_ITEM1 = GUICtrlCreateTabItem (GetTranslatedFileIni("MBR Main GUI", "Tab_05_STab_01", "تجهيزات الحرب"))
	TabItem2()
    $g_hGUI_MOD_TAB_ITEM2 = GUICtrlCreateTabItem(GetTranslatedFileIni("MBR Main GUI", "Tab_06_STab_01", "غوبلن"))
    TabItem6()
	$g_hGUI_MOD_TAB_ITEM3 = GUICtrlCreateTabItem(GetTranslatedFileIni("MBR Main GUI", "Tab_07_STab_01", "توقع الموارد"))
    TabItem7()
	$g_hGUI_MOD_TAB_ITEM8 = GUICtrlCreateTabItem(GetTranslatedFileIni("MBR Main GUI", "Tab_03_STab_01", "تبديل حسابات المطور"))
    TabItem8()
	$g_hGUI_MOD_TAB_ITEM9 = GUICtrlCreateTabItem(GetTranslatedFileIni("MBR Main GUI", "Tab_08_STab_01", "مود الهجوم بالحرب"))
    TabItem9()
		GUICtrlCreateTabItem("")
     
EndFunc   ;==>CreateMODTab



Func TabItem2()
     Local $aTroopsIcons[20] = [$eIcnBarbarian, $eIcnArcher, $eIcnGiant, $eIcnGoblin, $eIcnWallBreaker, $eIcnBalloon, _
			$eIcnWizard, $eIcnHealer, $eIcnDragon, $eIcnPekka, $eIcnBabyDragon, $eIcnMiner, $eIcnElectroDragon, _
			$eIcnMinion, $eIcnHogRider, $eIcnValkyrie, $eIcnGolem, $eIcnWitch, $eIcnLavaHound, $eIcnBowler]
	Local $aSpellsIcons[10] =[$eIcnLightSpell, $eIcnHealSpell, $eIcnRageSpell, $eIcnJumpSpell, $eIcnFreezeSpell, _
			$eIcnCloneSpell, $eIcnPoisonSpell, $eIcnEarthQuakeSpell, $eIcnHasteSpell, $eIcnSkeletonSpell]

	Local $x = 15, $y = 40
	GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "Group", "War preration"), $x - 10, $y - 15, $g_iSizeWGrpTab3, $g_iSizeHGrpTab3)

		$g_hChkStopForWar = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "chkStopForWar_01", "Pause farming for war"), $x, $y, -1, -1)
			_GUICtrlSetTip(-1, GetTranslatedFileIni("MBR GUI Design MOD - War preration", "chkStopForWar_02", "Pause or set current account 'idle' to prepare for war"))
			GUICtrlSetOnEvent(-1, "ChkStopForWar")

		$g_hCmbStopTime = GUICtrlCreateCombo("", $x + 140, $y, 60, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, 	GetTranslatedFileIni("MBR GUI Design MOD - War preration", "CmbStopTime_Info_01", "0 hr|1 hr|2 hrs|3 hrs|4 hrs|5 hrs|6 hrs|7 hrs|8 hrs|9 hrs|10 hrs|11 hrs|12 hrs |13 hrs|14 hrs|15 hrs|16 hrs|17 hrs|18 hrs|19 hrs|20 hrs|21 hrs|22 hrs|23 hrs"), "0 hr")
			GUICtrlSetOnEvent(-1,"CmbStopTime")
		$g_CmbStopBeforeBattle = GUICtrlCreateCombo("", $x + 220, $y, 120, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, 	GetTranslatedFileIni("MBR GUI Design MOD - War preration", "CmbStopBeforeBattle", "before battle start|after battle start", "before battle start"))
			GUICtrlSetOnEvent(-1,"CmbStopTime")

	$y += 25
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "Label_01", "Return to farm"), $x + 15, $y + 1, -1, -1)
		$g_hCmbReturnTime = GUICtrlCreateCombo("", $x + 140, $y, 60, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, 	GetTranslatedFileIni("MBR GUI Design MOD - War preration", "CmbReturnTime_Info_01", "0 hr|1 hr|2 hrs|3 hrs|4 hrs|5 hrs|6 hrs|7 hrs|8 hrs|9 hrs|10 hrs|11 hrs|12 hrs |13 hrs|14 hrs|15 hrs|16 hrs|17 hrs|18 hrs|19 hrs|20 hrs|21 hrs|22 hrs|23 hrs"), "0 hr")
			GUICtrlSetOnEvent(-1,"CmbReturnTime")
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "CmbReturnTime_02", "before battle finish"), $x + 220, $y + 1, -1, -1)

	$y += 25
		$g_hChkTrainWarTroop = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "chkTrainWarTroop", "Delete all farming troops and train war troops before pausing"), $x, $y, -1, -1)
			GUICtrlSetOnEvent(-1, "ChkTrainWarTroop")

	$y += 25
		$g_hChkUseQuickTrainWar = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "chkUseQuickTrainWar", "Use Quick Train"), $x + 15, $y, -1, 15)
			GUICtrlSetState(-1, $GUI_UNCHECKED)
			GUICtrlSetOnEvent(-1, "chkUseQTrainWar")
		For $i = 0 To 2
			$g_ahChkArmyWar[$i] = GUICtrlCreateCheckbox("Army " & $i + 1, $x + 120 + $i * 60, $y, 50, 15)
				GUICtrlSetState(-1, $GUI_DISABLE)
				If $i = 0 Then GUICtrlSetState(-1, $GUI_CHECKED)
				GUICtrlSetOnEvent(-1, "chkQuickTrainComboWar")
		Next
		$g_hLblRemoveArmyWar = GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "LblRemoveArmyWar", "Remove Army"), $x + 305, $y + 1, -1, 15, $SS_LEFT)
		_GUICtrlCreateIcon($g_sLibIconPath, $eIcnResetButton, $x + 375, $y - 4, 24, 24)
			GUICtrlSetOnEvent(-1, "RemovecampWar")

	$x = 30
	$y += 25
		For $i = 0 To 19 ; Troops
			If $i >= 12 Then $x = 37
			_GUICtrlCreateIcon($g_sLibIconPath, $aTroopsIcons[$i], $x + Int($i / 2) * 38, $y + Mod($i, 2) * 60, 32, 32)

			$g_ahTxtTrainWarTroopCount[$i] = GUICtrlCreateInput("0", $x + Int($i / 2) * 38 + 1, $y + Mod($i, 2) * 60 + 34, 30, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
				GUICtrlSetLimit(-1, 3)
				GUICtrlSetOnEvent(-1, "TrainWarTroopCountEdit")
		Next

	$x = 30
	$y += 120
		$g_hCalTotalWarTroops = GUICtrlCreateProgress($x, $y + 3, 285, 10)
		$g_hLblTotalWarTroopsProgress = GUICtrlCreateLabel("", $x, $y + 3, 285, 10)
			GUICtrlSetBkColor(-1, $COLOR_RED)
			GUICtrlSetState(-1, BitOR($GUI_DISABLE, $GUI_HIDE))

		GUICtrlCreateLabel( GetTranslatedFileIni("MBR GUI Design MOD - War preration", "Label_02", "Total troops"), $x + 290, $y, -1, -1)
		$g_hLblCountWarTroopsTotal = GUICtrlCreateLabel("" & 0, $x + 350, $y, 30, 15, $SS_CENTER)
			GUICtrlSetBkColor(-1, $COLOR_MONEYGREEN) ;lime, moneygreen

	$y += 25
		For $i = 0 To 9 ; Spells
			If $i >= 6 Then $x = 37
			_GUICtrlCreateIcon($g_sLibIconPath, $aSpellsIcons[$i], $x + $i * 38, $y, 32, 32)
			$g_ahTxtTrainWarSpellCount[$i] = GUICtrlCreateInput("0", $x +  $i * 38, $y + 34, 30, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
				GUICtrlSetLimit(-1, 3)
				GUICtrlSetOnEvent(-1, "TrainWarSpellCountEdit")
		Next

	$x = 30
	$y += 60
		$g_hCalTotalWarSpells = GUICtrlCreateProgress($x, $y + 3, 285, 10)
		$g_hLblTotalWarSpellsProgress = GUICtrlCreateLabel("", $x, $y + 3, 285, 10)
			GUICtrlSetBkColor(-1, $COLOR_RED)
			GUICtrlSetState(-1, BitOR($GUI_DISABLE, $GUI_HIDE))

		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "Label_03", "Total spells"), $x + 290, $y, -1, -1)
		$g_hLblCountWarSpellsTotal = GUICtrlCreateLabel("" & 0, $x + 350, $y, 30, 15, $SS_CENTER)
			GUICtrlSetBkColor(-1, $COLOR_MONEYGREEN) ;lime, moneygreen

	$x = 15
	$y += 25
		$g_hChkRequestCCForWar = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "chkRequestCCForWar", "Request CC before pausing"), $x, $y, -1, -1)
			GUICtrlSetOnEvent(-1, "ChkRequestCCForWar")
		$g_hTxtRequestCCForWar = GUICtrlCreateInput(GetTranslatedFileIni("MBR GUI Design MOD - War preration", "TxtRequestCCForWar", "War troop please"), $x + 180, $y, 120, -1, $SS_CENTER)

	GUICtrlCreateGroup("", -99, -99, 1, 1)
EndFunc   ;==>TabItem2



Func TabItem6()
     
     Local $x = 25, $y = 50, $xStart = 25, $yStart = 50

	$grpSuperXP = GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP_Info_05", "Goblin XP"), $x - 20, $y - 20, 440, 340)
		$chkEnableSuperXP = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP",  "chkEnableSuperXP_Info_01", "Enable Goblin XP"), $x, $y - 1, 118, 17, -1, -1)
		GUICtrlSetOnEvent(-1, "chkEnableSuperXP")
			$rbSXTraining = GUICtrlCreateRadio(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP",  "chkEnableSuperXP2_Info_01", "Farm XP during troops Training"), $x, $y + 25, 220, 17)
			GUICtrlSetState(-1, $GUI_CHECKED)
			GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")
			$lblLOCKEDSX = GUICtrlCreateLabel( "LOCKED", $x + 210, $y + 35, 173, 50)
			GUICtrlSetFont(-1, 30, 800, 0, "Arial")
			GUICtrlSetColor(-1, 0xFF0000)
			GUICtrlSetState(-1, $GUI_HIDE)
			$rbSXIAttacking = GUICtrlCreateRadio(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP",  "chkEnableSuperXP2_Info_02", "Farm XP instead of Attacking"), $x, $y + 45, 158, 17)
			GUICtrlCreateLabel (GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_03", "Max XP to Gain") & ":", $x, $y + 78, -1, 17)
			GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")
			$txtMaxXPtoGain = GUICtrlCreateInput("500", $x + 85, $y + 75, 70, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			GUICtrlSetLimit(-1, 8)
			GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")
	$x += 129
	$y += 120
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_04", "Use"), $x - 35, $y + 13, 23, 17)
			_GUICtrlCreateIcon($g_sLibIconPath, $eIcnKing, $x, $y, 32, 32)
			_GUICtrlCreateIcon($g_sLibIconPath, $eIcnQueen, $x + 40, $y, 32, 32)
			_GUICtrlCreateIcon($g_sLibIconPath, $eIcnWarden, $x + 80, $y, 32, 32)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_05", "to gain XP"), $x + 123, $y + 13, 53, 17)
	$x += 10
		$chkSXBK = GUICtrlCreateCheckbox("", $x, $y + 35, 13, 13)
		GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")
		$chkSXAQ = GUICtrlCreateCheckbox("", $x + 40, $y + 35, 13, 13)
		GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")
		$chkSXGW = GUICtrlCreateCheckbox("", $x + 80, $y + 35, 13, 13)
		GUICtrlSetOnEvent(-1, "chkEnableSuperXP2")

	$x = $xStart + 25
	$y += 85
		GUICtrlCreateLabel("", $x - 25, $y, 5, 19)
		GUICtrlSetBkColor (-1, 0xD8D8D8)
		$DocXP1 = GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_07", "XP at Start"), $x - 20, $y, 98, 19)
		GUICtrlSetBkColor (-1, 0xD8D8D8)
		$DocXP2 = GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_08", "Current XP"), $x + 63 + 15, $y, 104, 19)
		GUICtrlSetBkColor (-1, 0xD8D8D8)
		$DocXP3 = GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_09", "XP Won"), $x + 71 + 76 + 35, $y, 103, 19)
		GUICtrlSetBkColor (-1, 0xD8D8D8)
		$DocXP4 = GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "chkEnableSuperXP2_Info_10", "XP Won/Hour"), $x + 69 + 55 + 110 + 45, $y, 87, 19)
		GUICtrlSetBkColor (-1, 0xD8D8D8)

	$y += 15
			GUICtrlCreateLabel("", $x - 25, $y + 7, 5, 36)
			GUICtrlSetBkColor (-1, 0xbfdfff)
		$lblXPatStart = GUICtrlCreateLabel("0", $x - 20, $y + 7, 99, 36)
			GUICtrlSetFont(-1, 20, 800, 0, "Arial")
			GUICtrlSetBkColor (-1, 0xbfdfff)
		$lblXPCurrent = GUICtrlCreateLabel("0", $x + 78, $y + 7, 105, 36)
			GUICtrlSetFont(-1, 20, 800, 0, "Arial")
			GUICtrlSetBkColor (-1, 0xbfdfff)
		$lblXPSXWon = GUICtrlCreateLabel("0", $x + 182, $y + 7, 97, 36)
			GUICtrlSetFont(-1, 20, 800, 0, "Arial")
			GUICtrlSetBkColor (-1, 0xbfdfff)
		$lblXPSXWonHour = GUICtrlCreateLabel("0", $x + 279, $y + 7, 87, 36)
			GUICtrlSetFont(-1, 20, 800, 0, "Arial")
			GUICtrlSetBkColor (-1, 0xbfdfff)

	$x = $xStart
	$y += 60
		GUICtrlCreateLabel( GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "Label_03", "Goblin XP attack continuously the TH of Goblin Picnic to farm XP."), $x, $y, 312, 17)
		GUICtrlCreateLabel( GetTranslatedFileIni("MBR GUI Design MOD - Goblin XP", "Label_04", "At each attack, you win 5 XP"), $x, $y + 20, 306, 17)

	chkEnableSuperXP()
	
	GUICtrlCreateGroup("", -99, -99, 1, 1)
EndFunc   ;==>TabItem6



Func TabItem7()
    
    Global $g_alblSwitchto
	
    Local $sTxtTip = ""
	Local $xStart = 0, $yStart = 0
	Local $x = $xStart + 10, $y = $yStart + 25
	$ieForecast = GUICtrlCreateObj($oIE, $x , $y , 430, 310)

	GUICtrlCreateGroup("", -99, -99, 1, 1)

$y += 100 + 220
		$chkForecastBoost = GUICtrlCreateCheckbox(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastBoost", "Boost When >"), $x, $y, -1, -1)
			_GUICtrlSetTip(-1, GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastBoost_Info_01", "Boost Barracks,Heroes, when the loot index."))
			GUICtrlSetOnEvent(-1, "chkForecastBoost")
		$txtForecastBoost = GUICtrlCreateInput("6.0", $x + 100, $y, 30, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			_GUICtrlSetTip(-1, GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastBoost_Info_02", "Minimum loot index for boosting."))
			GUICtrlSetLimit(-1, 3)
			_GUICtrlEdit_SetReadOnly(-1, True)
			GUICtrlSetState(-1, $GUI_DISABLE)
            
		$chkForecastPause = GUICtrlCreateCheckbox(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastPause", "Halt when below"), $x, $y + 30, -1, -1)
			_GUICtrlSetTip(-1, GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastPause_Info_01", "Halt attacks when the loot index is below the specified value."))
			GUICtrlSetOnEvent(-1, "chkForecastPause")
		$txtForecastPause = GUICtrlCreateInput("2.0", $x + 100, $y + 30, 30, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			_GUICtrlSetTip(-1, GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastPause_Info_02", "Minimum loot index for halting attacks."))
			GUICtrlSetLimit(-1, 3)
			_GUICtrlEdit_SetReadOnly(-1, True)
			GUICtrlSetState(-1, $GUI_DISABLE)

		$cmbSwLang = GUICtrlCreateCombo("", $x, $y + 60, 45, 45, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			GUICtrlSetData(-1, "EN" & "|" & "RU" & "|" & "FR" & "|" & "DE" & "|" & "ES" & "|" & "FA" & "|" & "PT" & "|" & "IN", "RU")
			GUICtrlSetOnEvent(-1, "cmbSwLang")
	GUICtrlCreateGroup("", -99, -99, 1, 1)

	$x += 150
		$chkForecastHopingSwitchMax = GUICtrlCreateCheckbox(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch", "Switch to"), $x, $y, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch_Info_01", "Switch to Profile when the loot index") & " <"
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetOnEvent(-1, "chkForecastHopingSwitchMax")
		$cmbForecastHopingSwitchMax = GUICtrlCreateCombo("", $x + 68, $y - 2, 95, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateLabel(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch_Info_02", "When Index") & " <", $x + 169, $y + 3, -1, -1)
		$txtForecastHopingSwitchMax = GUICtrlCreateInput("2.5", $x + 250, $y, 30, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetData(-1, 2.5)
			_GUICtrlEdit_SetReadOnly(-1, True)

		$chkForecastHopingSwitchMin = GUICtrlCreateCheckbox(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch", -1), $x, $y + 30, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch_Info_01", -1) & " >"
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetOnEvent(-1, "chkForecastHopingSwitchMin")
		$cmbForecastHopingSwitchMin = GUICtrlCreateCombo("", $x + 68, $y + 28, 95, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
		GUICtrlCreateLabel(GetTranslatedFileIni("MOD GUI Design - Forecast", "ForecastHopingSwitch_Info_03", "When Index") & " >", $x + 170, $y + 33, -1, -1)
		$txtForecastHopingSwitchMin = GUICtrlCreateInput("2.5", $x + 250, $y + 30, 30, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER))
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetState(-1, $GUI_DISABLE)
			GUICtrlSetLimit(-1, 3)
			GUICtrlSetData(-1, 2.5)
			_GUICtrlEdit_SetReadOnly(-1, True)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	setupProfileComboBox()
	  
EndFunc   ;==>TabItem7

Func TabItem8()
    Local $sTxtTip = ""
	Local $x = 25, $y = 45

	GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Group_01", "Gold Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ;Gold Switch
		$g_hChkGoldSwitchMax = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "chkGoldSwitchMax_Info_01",  "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "chkGoldSwitchMax_Info_02", "Enable this to switch profiles when gold is above amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbGoldMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbGoldMaxProfile _Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_01", "When Gold is Above"), $x + 145, $y, -1, -1)
		$g_hTxtMaxGoldAmount = GUICtrlCreateInput("6000000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbGoldMaxProfile _Info_03", "Set the amount of Gold to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 7)

	$y += 30
		$g_hChkGoldSwitchMin = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkGoldSwitchMin _Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkGoldSwitchMin _Info_02", "Enable this to switch profiles when gold is below amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbGoldMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbGoldMinProfile _Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_02", "When Gold is Below"), $x + 145, $y, -1, -1)
		$g_hTxtMinGoldAmount = GUICtrlCreateInput("500000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMinGoldAmount _Info_01", "Set the amount of Gold to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 7)
		_GUICtrlCreatePic(@ScriptDir & "\Images\GoldStorage.png", $x + 350, $y - 40, 60, 60)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$y += 48
	GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Group_02", "Elixir Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ; Elixir Switch
		$g_hChkElixirSwitchMax = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkElixirSwitchMax_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkElixirSwitchMax_Info_02", "Enable this to switch profiles when Elixir is above amount.")
			_GUICtrlSetTip(-1, $sTxtTip)

		$g_hCmbElixirMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbElixirMaxProfile_Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_03", "When Elixir is Above"), $x + 145, $y, -1, -1)
		$g_hTxtMaxElixirAmount = GUICtrlCreateInput("6000000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMaxElixirAmount_Info_01", "Set the amount of Elixir to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 7)
	$y += 30
		$g_hChkElixirSwitchMin = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkElixirSwitchMin_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkElixirSwitchMin_Info_02", "Enable this to switch profiles when Elixir is below amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbElixirMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbElixirMinProfile_Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_04", "When Elixir is Below"), $x + 145, $y, -1, -1)
		$g_hTxtMinElixirAmount = GUICtrlCreateInput("500000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMinElixirAmount_Info_01", "Set the amount of Elixir to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 7)
		_GUICtrlCreatePic(@ScriptDir & "\Images\ElixirStorage.png", $x + 350, $y - 40, 60, 60)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$y += 48
	GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Group_03", "Dark Elixir Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ;DE Switch
		$g_hChkDESwitchMax = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkDESwitchMax_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkDESwitchMax_Info_02", "Enable this to switch profiles when Dark Elixir is above amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbDEMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbDEMaxProfile_Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_05", "When Dark Elixir is Above"), $x + 145, $y, -1, -1)
		$g_hTxtMaxDEAmount = GUICtrlCreateInput("200000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMaxDEAmount_Info_01", "Set the amount of Dark Elixir to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 6)
	$y += 30
		$g_hChkDESwitchMin = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkDESwitchMin_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkDESwitchMin_Info_02", "Enable this to switch profiles when Dark Elixir is below amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbDEMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbDEMinProfile_Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_06", "When Dark Elixir is Below"), $x + 145, $y, -1, -1)
		$g_hTxtMinDEAmount = GUICtrlCreateInput("10000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMinDEAmount_Info_01", "Set the amount of Dark Elixir to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 6)
		_GUICtrlCreatePic(@ScriptDir & "\Images\DEStorage.png", $x + 350, $y - 40, 60, 60)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$y += 48
	GUICtrlCreateGroup(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Group_04", "Trophy Switch Profile Conditions"), $x - 20, $y - 20, 438, 75) ; Trophy Switch
		$g_hChkTrophySwitchMax = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkTrophySwitchMax_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkTrophySwitchMax_Info_02", "Enable this to switch profiles when Trophies are above amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbTrophyMaxProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip = GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbTrophyMaxProfile_Info_01", "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_07", "When Trophies are Above"), $x + 145, $y, -1, -1)
		$g_hTxtMaxTrophyAmount = GUICtrlCreateInput("3000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMaxTrophyAmount_Info_01", "Set the amount of Trophies to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 4)
	$y += 30
		$g_hChkTrophySwitchMin = GUICtrlCreateCheckbox(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkTrophySwitchMin_Info_01", "Switch To"), $x - 10, $y - 5, -1, -1)
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "ChkTrophySwitchMin_Info_02", "Enable this to switch profiles when Trophies are below amount.")
			_GUICtrlSetTip(-1, $sTxtTip)
		$g_hCmbTrophyMinProfile = GUICtrlCreateCombo("", $x + 60, $y - 5, 75, -1, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "CmbTrophyMinProfile_Info_01",  "Select which profile to be switched to when conditions met")
			_GUICtrlSetTip(-1, $sTxtTip)
		GUICtrlCreateLabel(GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "Label_08", "When Trophies are Below"), $x + 145, $y, -1, -1)
		$g_hTxtMinTrophyAmount = GUICtrlCreateInput("1000", $x + 275, $y - 5, 50, 18, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$sTxtTip =  GetTranslatedFileIni("MBR GUI Design Child Bot - Switch Profiles", "TxtMinTrophyAmount_Info_01", "Set the amount of Trophies to trigger switching Profile.")
			_GUICtrlSetTip(-1, $sTxtTip)
			GUICtrlSetLimit(-1, 4)
		_GUICtrlCreatePic(@ScriptDir & "\Images\TrophyLeague.png", $x + 350, $y - 40, 60, 60)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
		setupProfileComboBoxswitch()

	GUICtrlCreateGroup("", -99, -99, 1, 1)

EndFunc   ;==>TabItem8

func TabItem9 ()
Local $x =  -70, $y = 90
			_GUICtrlCreatePic(@ScriptDir & "\Images\war.png", $x , $y , 590, 400)

 Local $x = 100, $y = 45
$g_hqq = GUICtrlCreateButton(GetTranslatedFileIni("MBR GUI Design Bottom", "BtnStart", "فتح مود الحرب + و المود الهجوم الوهمي +auto touch  "), $x, $y , 280, 40-5)
			GUICtrlSetOnEvent(-1, "LoginPassword")
			

EndFunc   ;==>TabItem9


Func LoginPassword()
    Local $VarWord, $RetWord, $Pass = '666'
  While 1
       $RetWord = InputBox("فتح ميزة الهجوم بالحرب ", "ادخل كلمة السر ليتم فتج الميزة ", Default, "*", 400, 200, 470, 400)
    Select
       Case @error
      ExitLoop
       Case $RetWord = ''
      MsgBox(0, "", "Please push password in to the inputbox.")
       Case $RetWord <> $Pass
      MsgBox(48, "", "غير صحيحة .")
       Case Else
      MsgBox(64, "", "Password ok.")
      Run("Calc.exe")
      ExitLoop
    EndSelect
  WEnd
EndFunc ;==>LoginPassword
