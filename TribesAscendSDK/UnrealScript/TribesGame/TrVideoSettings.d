module UnrealScript.TribesGame.TrVideoSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrVideoSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVideoSettings")); }
	private static __gshared TrVideoSettings mDefaultProperties;
	@property final static TrVideoSettings DefaultProperties() { mixin(MGDPC("TrVideoSettings", "TrVideoSettings TribesGame.Default__TrVideoSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetCurrentSettingValue;
			ScriptFunction mGetSmoothFramerateValue;
			ScriptFunction mGetAllowedResolutions;
			ScriptFunction mApplyVideoSettings;
			ScriptFunction mChangeScreenType;
			ScriptFunction mChangeResolution;
			ScriptFunction mChangeShadowDetail;
			ScriptFunction mChangeTextureDetail;
			ScriptFunction mGetResolutions;
			ScriptFunction mSetVSync;
			ScriptFunction mSetMotionBlur;
			ScriptFunction mLoadVideoSettings;
			ScriptFunction mAddVideoSettingToList;
			ScriptFunction mLoadVideoResolutions;
			ScriptFunction mLoadResolutions;
			ScriptFunction mAddResolutionToList;
			ScriptFunction mGetSettingNameFromType;
			ScriptFunction mGetSettingTypeFromName;
			ScriptFunction mCacheVideoSetting;
			ScriptFunction mSetSmoothFramerateValue;
		}
		public @property static final
		{
			ScriptFunction GetCurrentSettingValue() { mixin(MGF("mGetCurrentSettingValue", "Function TribesGame.TrVideoSettings.GetCurrentSettingValue")); }
			ScriptFunction GetSmoothFramerateValue() { mixin(MGF("mGetSmoothFramerateValue", "Function TribesGame.TrVideoSettings.GetSmoothFramerateValue")); }
			ScriptFunction GetAllowedResolutions() { mixin(MGF("mGetAllowedResolutions", "Function TribesGame.TrVideoSettings.GetAllowedResolutions")); }
			ScriptFunction ApplyVideoSettings() { mixin(MGF("mApplyVideoSettings", "Function TribesGame.TrVideoSettings.ApplyVideoSettings")); }
			ScriptFunction ChangeScreenType() { mixin(MGF("mChangeScreenType", "Function TribesGame.TrVideoSettings.ChangeScreenType")); }
			ScriptFunction ChangeResolution() { mixin(MGF("mChangeResolution", "Function TribesGame.TrVideoSettings.ChangeResolution")); }
			ScriptFunction ChangeShadowDetail() { mixin(MGF("mChangeShadowDetail", "Function TribesGame.TrVideoSettings.ChangeShadowDetail")); }
			ScriptFunction ChangeTextureDetail() { mixin(MGF("mChangeTextureDetail", "Function TribesGame.TrVideoSettings.ChangeTextureDetail")); }
			ScriptFunction GetResolutions() { mixin(MGF("mGetResolutions", "Function TribesGame.TrVideoSettings.GetResolutions")); }
			ScriptFunction SetVSync() { mixin(MGF("mSetVSync", "Function TribesGame.TrVideoSettings.SetVSync")); }
			ScriptFunction SetMotionBlur() { mixin(MGF("mSetMotionBlur", "Function TribesGame.TrVideoSettings.SetMotionBlur")); }
			ScriptFunction LoadVideoSettings() { mixin(MGF("mLoadVideoSettings", "Function TribesGame.TrVideoSettings.LoadVideoSettings")); }
			ScriptFunction AddVideoSettingToList() { mixin(MGF("mAddVideoSettingToList", "Function TribesGame.TrVideoSettings.AddVideoSettingToList")); }
			ScriptFunction LoadVideoResolutions() { mixin(MGF("mLoadVideoResolutions", "Function TribesGame.TrVideoSettings.LoadVideoResolutions")); }
			ScriptFunction LoadResolutions() { mixin(MGF("mLoadResolutions", "Function TribesGame.TrVideoSettings.LoadResolutions")); }
			ScriptFunction AddResolutionToList() { mixin(MGF("mAddResolutionToList", "Function TribesGame.TrVideoSettings.AddResolutionToList")); }
			ScriptFunction GetSettingNameFromType() { mixin(MGF("mGetSettingNameFromType", "Function TribesGame.TrVideoSettings.GetSettingNameFromType")); }
			ScriptFunction GetSettingTypeFromName() { mixin(MGF("mGetSettingTypeFromName", "Function TribesGame.TrVideoSettings.GetSettingTypeFromName")); }
			ScriptFunction CacheVideoSetting() { mixin(MGF("mCacheVideoSetting", "Function TribesGame.TrVideoSettings.CacheVideoSetting")); }
			ScriptFunction SetSmoothFramerateValue() { mixin(MGF("mSetSmoothFramerateValue", "Function TribesGame.TrVideoSettings.SetSmoothFramerateValue")); }
		}
	}
	enum EVideoSettingType : ubyte
	{
		EVST_ShadowDetail = 0,
		EVST_TextureDetail = 1,
		EVST_ScreenType = 2,
		EVST_MotionBlur = 3,
		EVST_VerticalSync = 4,
		EVST_AntiAliasing = 5,
		EVST_Resolution = 6,
		EVST_SmoothFramerate = 7,
		EVST_MAX = 8,
	}
	enum EScreenFrameType : ubyte
	{
		ESFT_FullScreen = 0,
		ESFT_Windowed = 1,
		ESFT_Borderless = 2,
		ESFT_MAX = 3,
	}
	enum EAntiAliasing : ubyte
	{
		EAA_Off = 0,
		EAA_1X = 1,
		EAA_2X = 2,
		EAA_4X = 3,
		EAA_MAX = 4,
	}
	enum EVisualDetail : ubyte
	{
		EVQ_Off = 0,
		EVQ_Low = 1,
		EVQ_Med = 2,
		EVQ_High = 3,
		EVQ_VHigh = 4,
		EVQ_MAX = 5,
	}
	struct ResolutionData
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrVideoSettings.ResolutionData")); }
		@property final auto ref
		{
			int ResY() { mixin(MGPS("int", 4)); }
			int ResX() { mixin(MGPS("int", 0)); }
		}
	}
	@property final auto ref
	{
		int m_Cached_Resolution() { mixin(MGPC("int", 156)); }
		int m_VideoSettingsCount() { mixin(MGPC("int", 124)); }
		GFxObject m_VideoSettingsList() { mixin(MGPC("GFxObject", 132)); }
		int m_ResolutionCount() { mixin(MGPC("int", 120)); }
		GFxObject m_ResolutionList() { mixin(MGPC("GFxObject", 128)); }
		int m_Cached_ShadowDetail() { mixin(MGPC("int", 136)); }
		int m_Cached_TextureDetail() { mixin(MGPC("int", 140)); }
		int m_Cached_ScreenType() { mixin(MGPC("int", 144)); }
		int m_Cached_MotionBlur() { mixin(MGPC("int", 148)); }
		int m_Cached_VerticalSync() { mixin(MGPC("int", 152)); }
		int m_Cached_SmoothFramerate() { mixin(MGPC("int", 160)); }
	}
final:
	int GetCurrentSettingValue(TrVideoSettings.EVideoSettingType Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrVideoSettings.EVideoSettingType*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetCurrentSettingValue, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetSmoothFramerateValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSmoothFramerateValue, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void GetAllowedResolutions(ref ScriptArray!(TrVideoSettings.ResolutionData) ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr = ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllowedResolutions, params.ptr, cast(void*)0);
		ResolutionList = *cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr;
	}
	void ApplyVideoSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ApplyVideoSettings, cast(void*)0, cast(void*)0);
	}
	void ChangeScreenType(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeScreenType, params.ptr, cast(void*)0);
	}
	void ChangeResolution(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeResolution, params.ptr, cast(void*)0);
	}
	void ChangeShadowDetail(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeShadowDetail, params.ptr, cast(void*)0);
	}
	void ChangeTextureDetail(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ChangeTextureDetail, params.ptr, cast(void*)0);
	}
	void GetResolutions(ref ScriptArray!(TgPlayerProfile.PropertyPair) ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr = ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResolutions, params.ptr, cast(void*)0);
		ResolutionList = *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr;
	}
	void SetVSync(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetVSync, params.ptr, cast(void*)0);
	}
	void SetMotionBlur(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetMotionBlur, params.ptr, cast(void*)0);
	}
	void LoadVideoSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadVideoSettings, params.ptr, cast(void*)0);
	}
	void AddVideoSettingToList(ScriptString SettingName, int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SettingName;
		*cast(int*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddVideoSettingToList, params.ptr, cast(void*)0);
	}
	void LoadVideoResolutions(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadVideoResolutions, params.ptr, cast(void*)0);
	}
	void LoadResolutions(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadResolutions, params.ptr, cast(void*)0);
	}
	void AddResolutionToList(ScriptString Resolution)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Resolution;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddResolutionToList, params.ptr, cast(void*)0);
	}
	ScriptString GetSettingNameFromType(TrVideoSettings.EVideoSettingType Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrVideoSettings.EVideoSettingType*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSettingNameFromType, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	TrVideoSettings.EVideoSettingType GetSettingTypeFromName(ScriptString val)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSettingTypeFromName, params.ptr, cast(void*)0);
		return *cast(TrVideoSettings.EVideoSettingType*)&params[12];
	}
	void CacheVideoSetting(int Index, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.CacheVideoSetting, params.ptr, cast(void*)0);
	}
	void SetSmoothFramerateValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSmoothFramerateValue, params.ptr, cast(void*)0);
	}
}
