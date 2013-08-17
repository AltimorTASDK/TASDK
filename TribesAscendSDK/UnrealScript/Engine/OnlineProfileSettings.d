module UnrealScript.Engine.OnlineProfileSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlinePlayerStorage;
import UnrealScript.Engine.Settings;

extern(C++) interface OnlineProfileSettings : OnlinePlayerStorage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.OnlineProfileSettings")()); }
	private static __gshared OnlineProfileSettings mDefaultProperties;
	@property final static OnlineProfileSettings DefaultProperties() { mixin(MGDPC!(OnlineProfileSettings, "OnlineProfileSettings Engine.Default__OnlineProfileSettings")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetProfileSettingDefaultId;
			ScriptFunction mGetProfileSettingDefaultInt;
			ScriptFunction mGetProfileSettingDefaultFloat;
			ScriptFunction mSetToDefaults;
			ScriptFunction mAppendVersionToReadIds;
			ScriptFunction mModifyAvailableProfileSettings;
		}
		public @property static final
		{
			ScriptFunction GetProfileSettingDefaultId() { mixin(MGF!("mGetProfileSettingDefaultId", "Function Engine.OnlineProfileSettings.GetProfileSettingDefaultId")()); }
			ScriptFunction GetProfileSettingDefaultInt() { mixin(MGF!("mGetProfileSettingDefaultInt", "Function Engine.OnlineProfileSettings.GetProfileSettingDefaultInt")()); }
			ScriptFunction GetProfileSettingDefaultFloat() { mixin(MGF!("mGetProfileSettingDefaultFloat", "Function Engine.OnlineProfileSettings.GetProfileSettingDefaultFloat")()); }
			ScriptFunction SetToDefaults() { mixin(MGF!("mSetToDefaults", "Function Engine.OnlineProfileSettings.SetToDefaults")()); }
			ScriptFunction AppendVersionToReadIds() { mixin(MGF!("mAppendVersionToReadIds", "Function Engine.OnlineProfileSettings.AppendVersionToReadIds")()); }
			ScriptFunction ModifyAvailableProfileSettings() { mixin(MGF!("mModifyAvailableProfileSettings", "Function Engine.OnlineProfileSettings.ModifyAvailableProfileSettings")()); }
		}
	}
	enum EProfileSettingID : ubyte
	{
		PSI_Unknown = 0,
		PSI_ControllerVibration = 1,
		PSI_YInversion = 2,
		PSI_GamerCred = 3,
		PSI_GamerRep = 4,
		PSI_VoiceMuted = 5,
		PSI_VoiceThruSpeakers = 6,
		PSI_VoiceVolume = 7,
		PSI_GamerPictureKey = 8,
		PSI_GamerMotto = 9,
		PSI_GamerTitlesPlayed = 10,
		PSI_GamerAchievementsEarned = 11,
		PSI_GameDifficulty = 12,
		PSI_ControllerSensitivity = 13,
		PSI_PreferredColor1 = 14,
		PSI_PreferredColor2 = 15,
		PSI_AutoAim = 16,
		PSI_AutoCenter = 17,
		PSI_MovementControl = 18,
		PSI_RaceTransmission = 19,
		PSI_RaceCameraLocation = 20,
		PSI_RaceBrakeControl = 21,
		PSI_RaceAcceleratorControl = 22,
		PSI_GameCredEarned = 23,
		PSI_GameAchievementsEarned = 24,
		PSI_EndLiveIds = 25,
		PSI_ProfileVersionNum = 26,
		PSI_ProfileSaveCount = 27,
		PSI_MAX = 28,
	}
	enum EProfileDifficultyOptions : ubyte
	{
		PDO_Normal = 0,
		PDO_Easy = 1,
		PDO_Hard = 2,
		PDO_MAX = 3,
	}
	enum EProfileControllerSensitivityOptions : ubyte
	{
		PCSO_Medium = 0,
		PCSO_Low = 1,
		PCSO_High = 2,
		PCSO_MAX = 3,
	}
	enum EProfilePreferredColorOptions : ubyte
	{
		PPCO_None = 0,
		PPCO_Black = 1,
		PPCO_White = 2,
		PPCO_Yellow = 3,
		PPCO_Orange = 4,
		PPCO_Pink = 5,
		PPCO_Red = 6,
		PPCO_Purple = 7,
		PPCO_Blue = 8,
		PPCO_Green = 9,
		PPCO_Brown = 10,
		PPCO_Silver = 11,
		PPCO_MAX = 12,
	}
	enum EProfileAutoAimOptions : ubyte
	{
		PAAO_Off = 0,
		PAAO_On = 1,
		PAAO_MAX = 2,
	}
	enum EProfileAutoCenterOptions : ubyte
	{
		PACO_Off = 0,
		PACO_On = 1,
		PACO_MAX = 2,
	}
	enum EProfileMovementControlOptions : ubyte
	{
		PMCO_L_Thumbstick = 0,
		PMCO_R_Thumbstick = 1,
		PMCO_MAX = 2,
	}
	enum EProfileRaceTransmissionOptions : ubyte
	{
		PRTO_Auto = 0,
		PRTO_Manual = 1,
		PRTO_MAX = 2,
	}
	enum EProfileRaceCameraLocationOptions : ubyte
	{
		PRCLO_Behind = 0,
		PRCLO_Front = 1,
		PRCLO_Inside = 2,
		PRCLO_MAX = 3,
	}
	enum EProfileRaceBrakeControlOptions : ubyte
	{
		PRBCO_Trigger = 0,
		PRBCO_Button = 1,
		PRBCO_MAX = 2,
	}
	enum EProfileRaceAcceleratorControlOptions : ubyte
	{
		PRACO_Trigger = 0,
		PRACO_Button = 1,
		PRACO_MAX = 2,
	}
	enum EProfileYInversionOptions : ubyte
	{
		PYIO_Off = 0,
		PYIO_On = 1,
		PYIO_MAX = 2,
	}
	enum EProfileXInversionOptions : ubyte
	{
		PXIO_Off = 0,
		PXIO_On = 1,
		PXIO_MAX = 2,
	}
	enum EProfileOmniDirEvadeOptions : ubyte
	{
		PODI_Off = 0,
		PODI_On = 1,
		PODI_MAX = 2,
	}
	enum EProfileControllerVibrationToggleOptions : ubyte
	{
		PCVTO_Off = 0,
		PCVTO_IgnoreThis = 1,
		PCVTO_IgnoreThis2 = 2,
		PCVTO_On = 3,
		PCVTO_MAX = 4,
	}
	enum EProfileVoiceThruSpeakersOptions : ubyte
	{
		PVTSO_Off = 0,
		PVTSO_On = 1,
		PVTSO_Both = 2,
		PVTSO_MAX = 3,
	}
	@property final auto ref
	{
		ScriptArray!(int) ProfileSettingIds() { mixin(MGPC!(ScriptArray!(int), 100)()); }
		ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting) DefaultSettings() { mixin(MGPC!(ScriptArray!(OnlinePlayerStorage.OnlineProfileSetting), 112)()); }
		ScriptArray!(Settings.IdToStringMapping) OwnerMappings() { mixin(MGPC!(ScriptArray!(Settings.IdToStringMapping), 124)()); }
	}
final:
	bool GetProfileSettingDefaultId(int ProfileSettingId, ref int DefaultId, ref int ListIndex)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = DefaultId;
		*cast(int*)&params[8] = ListIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingDefaultId, params.ptr, cast(void*)0);
		*DefaultId = *cast(int*)&params[4];
		*ListIndex = *cast(int*)&params[8];
		return *cast(bool*)&params[12];
	}
	bool GetProfileSettingDefaultInt(int ProfileSettingId, ref int DefaultInt)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(int*)&params[4] = DefaultInt;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingDefaultInt, params.ptr, cast(void*)0);
		*DefaultInt = *cast(int*)&params[4];
		return *cast(bool*)&params[8];
	}
	bool GetProfileSettingDefaultFloat(int ProfileSettingId, ref float DefaultFloat)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ProfileSettingId;
		*cast(float*)&params[4] = DefaultFloat;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetProfileSettingDefaultFloat, params.ptr, cast(void*)0);
		*DefaultFloat = *cast(float*)&params[4];
		return *cast(bool*)&params[8];
	}
	void SetToDefaults()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetToDefaults, cast(void*)0, cast(void*)0);
	}
	void AppendVersionToReadIds()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.AppendVersionToReadIds, cast(void*)0, cast(void*)0);
	}
	void ModifyAvailableProfileSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyAvailableProfileSettings, cast(void*)0, cast(void*)0);
	}
}
