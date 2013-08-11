module UnrealScript.TribesGame.TrVideoSettings;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrVideoSettings : GFxObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61372], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetSmoothFramerateValue()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61451], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	void GetAllowedResolutions(ScriptArray!(TrVideoSettings.ResolutionData)* ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr = *ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115534], params.ptr, cast(void*)0);
		*ResolutionList = *cast(ScriptArray!(TrVideoSettings.ResolutionData)*)params.ptr;
	}
	void ApplyVideoSettings()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115537], cast(void*)0, cast(void*)0);
	}
	void ChangeScreenType(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115538], params.ptr, cast(void*)0);
	}
	void ChangeResolution(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115540], params.ptr, cast(void*)0);
	}
	void ChangeShadowDetail(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115542], params.ptr, cast(void*)0);
	}
	void ChangeTextureDetail(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115544], params.ptr, cast(void*)0);
	}
	void GetResolutions(ScriptArray!(TgPlayerProfile.PropertyPair)* ResolutionList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr = *ResolutionList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115546], params.ptr, cast(void*)0);
		*ResolutionList = *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)params.ptr;
	}
	void SetVSync(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115549], params.ptr, cast(void*)0);
	}
	void SetMotionBlur(bool bEnable)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnable;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115551], params.ptr, cast(void*)0);
	}
	void LoadVideoSettings(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115553], params.ptr, cast(void*)0);
	}
	void AddVideoSettingToList(ScriptString SettingName, int val)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = SettingName;
		*cast(int*)&params[12] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115560], params.ptr, cast(void*)0);
	}
	void LoadVideoResolutions(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115564], params.ptr, cast(void*)0);
	}
	void LoadResolutions(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115566], params.ptr, cast(void*)0);
	}
	void AddResolutionToList(ScriptString Resolution)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = Resolution;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115574], params.ptr, cast(void*)0);
	}
	ScriptString GetSettingNameFromType(TrVideoSettings.EVideoSettingType Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(TrVideoSettings.EVideoSettingType*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115577], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	TrVideoSettings.EVideoSettingType GetSettingTypeFromName(ScriptString val)
	{
		ubyte params[13];
		params[] = 0;
		*cast(ScriptString*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115580], params.ptr, cast(void*)0);
		return *cast(TrVideoSettings.EVideoSettingType*)&params[12];
	}
	void CacheVideoSetting(int Index, int val)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		*cast(int*)&params[4] = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115583], params.ptr, cast(void*)0);
	}
	void SetSmoothFramerateValue(int val)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = val;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[115593], params.ptr, cast(void*)0);
	}
}
