module UnrealScript.TribesGame.TrVideoSettings;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrVideoSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVideoSettings")); }
	private static __gshared TrVideoSettings mDefaultProperties;
	@property final static TrVideoSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVideoSettings)("TrVideoSettings TribesGame.Default__TrVideoSettings")); }
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
			ScriptFunction GetCurrentSettingValue() { return mGetCurrentSettingValue ? mGetCurrentSettingValue : (mGetCurrentSettingValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetCurrentSettingValue")); }
			ScriptFunction GetSmoothFramerateValue() { return mGetSmoothFramerateValue ? mGetSmoothFramerateValue : (mGetSmoothFramerateValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetSmoothFramerateValue")); }
			ScriptFunction GetAllowedResolutions() { return mGetAllowedResolutions ? mGetAllowedResolutions : (mGetAllowedResolutions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetAllowedResolutions")); }
			ScriptFunction ApplyVideoSettings() { return mApplyVideoSettings ? mApplyVideoSettings : (mApplyVideoSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.ApplyVideoSettings")); }
			ScriptFunction ChangeScreenType() { return mChangeScreenType ? mChangeScreenType : (mChangeScreenType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.ChangeScreenType")); }
			ScriptFunction ChangeResolution() { return mChangeResolution ? mChangeResolution : (mChangeResolution = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.ChangeResolution")); }
			ScriptFunction ChangeShadowDetail() { return mChangeShadowDetail ? mChangeShadowDetail : (mChangeShadowDetail = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.ChangeShadowDetail")); }
			ScriptFunction ChangeTextureDetail() { return mChangeTextureDetail ? mChangeTextureDetail : (mChangeTextureDetail = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.ChangeTextureDetail")); }
			ScriptFunction GetResolutions() { return mGetResolutions ? mGetResolutions : (mGetResolutions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetResolutions")); }
			ScriptFunction SetVSync() { return mSetVSync ? mSetVSync : (mSetVSync = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.SetVSync")); }
			ScriptFunction SetMotionBlur() { return mSetMotionBlur ? mSetMotionBlur : (mSetMotionBlur = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.SetMotionBlur")); }
			ScriptFunction LoadVideoSettings() { return mLoadVideoSettings ? mLoadVideoSettings : (mLoadVideoSettings = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.LoadVideoSettings")); }
			ScriptFunction AddVideoSettingToList() { return mAddVideoSettingToList ? mAddVideoSettingToList : (mAddVideoSettingToList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.AddVideoSettingToList")); }
			ScriptFunction LoadVideoResolutions() { return mLoadVideoResolutions ? mLoadVideoResolutions : (mLoadVideoResolutions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.LoadVideoResolutions")); }
			ScriptFunction LoadResolutions() { return mLoadResolutions ? mLoadResolutions : (mLoadResolutions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.LoadResolutions")); }
			ScriptFunction AddResolutionToList() { return mAddResolutionToList ? mAddResolutionToList : (mAddResolutionToList = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.AddResolutionToList")); }
			ScriptFunction GetSettingNameFromType() { return mGetSettingNameFromType ? mGetSettingNameFromType : (mGetSettingNameFromType = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetSettingNameFromType")); }
			ScriptFunction GetSettingTypeFromName() { return mGetSettingTypeFromName ? mGetSettingTypeFromName : (mGetSettingTypeFromName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.GetSettingTypeFromName")); }
			ScriptFunction CacheVideoSetting() { return mCacheVideoSetting ? mCacheVideoSetting : (mCacheVideoSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.CacheVideoSetting")); }
			ScriptFunction SetSmoothFramerateValue() { return mSetSmoothFramerateValue ? mSetSmoothFramerateValue : (mSetSmoothFramerateValue = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrVideoSettings.SetSmoothFramerateValue")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrVideoSettings.ResolutionData")); }
		@property final auto ref
		{
			int ResY() { return *cast(int*)(cast(size_t)&this + 4); }
			int ResX() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		int m_Cached_Resolution() { return *cast(int*)(cast(size_t)cast(void*)this + 156); }
		int m_VideoSettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 124); }
		GFxObject m_VideoSettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 132); }
		int m_ResolutionCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
		GFxObject m_ResolutionList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 128); }
		int m_Cached_ShadowDetail() { return *cast(int*)(cast(size_t)cast(void*)this + 136); }
		int m_Cached_TextureDetail() { return *cast(int*)(cast(size_t)cast(void*)this + 140); }
		int m_Cached_ScreenType() { return *cast(int*)(cast(size_t)cast(void*)this + 144); }
		int m_Cached_MotionBlur() { return *cast(int*)(cast(size_t)cast(void*)this + 148); }
		int m_Cached_VerticalSync() { return *cast(int*)(cast(size_t)cast(void*)this + 152); }
		int m_Cached_SmoothFramerate() { return *cast(int*)(cast(size_t)cast(void*)this + 160); }
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
	void GetAllowedResolutions(ScriptArray!(TrVideoSettings.ResolutionData)* ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr = *ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetAllowedResolutions, params.ptr, cast(void*)0);
		*ResolutionList = *cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr;
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
	void GetResolutions(ScriptArray!(TgPlayerProfile.PropertyPair)* ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr = *ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetResolutions, params.ptr, cast(void*)0);
		*ResolutionList = *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr;
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
