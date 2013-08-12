module UnrealScript.TribesGame.TrRegionSettings;

import ScriptClasses;
import UnrealScript.GameFramework.SeqAct_ModifyProperty;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrRegionSettings : GFxObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrRegionSettings")); }
	private static __gshared TrRegionSettings mDefaultProperties;
	@property final static TrRegionSettings DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrRegionSettings)("TrRegionSettings TribesGame.Default__TrRegionSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetPreferredSiteId;
			ScriptFunction mLoadRegionSetting;
			ScriptFunction mGetRegionName;
			ScriptFunction mGetRegionIdAtIndex;
			ScriptFunction mGetRegionIndexByName;
			ScriptFunction mLoadRegions;
			ScriptFunction mSetPreferredSiteId;
			ScriptFunction mLoadRegionLabels;
			ScriptFunction mSetPreferredRegion;
			ScriptFunction mAddRegion;
			ScriptFunction mAddSetting;
		}
		public @property static final
		{
			ScriptFunction GetPreferredSiteId() { return mGetPreferredSiteId ? mGetPreferredSiteId : (mGetPreferredSiteId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.GetPreferredSiteId")); }
			ScriptFunction LoadRegionSetting() { return mLoadRegionSetting ? mLoadRegionSetting : (mLoadRegionSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.LoadRegionSetting")); }
			ScriptFunction GetRegionName() { return mGetRegionName ? mGetRegionName : (mGetRegionName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.GetRegionName")); }
			ScriptFunction GetRegionIdAtIndex() { return mGetRegionIdAtIndex ? mGetRegionIdAtIndex : (mGetRegionIdAtIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.GetRegionIdAtIndex")); }
			ScriptFunction GetRegionIndexByName() { return mGetRegionIndexByName ? mGetRegionIndexByName : (mGetRegionIndexByName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.GetRegionIndexByName")); }
			ScriptFunction LoadRegions() { return mLoadRegions ? mLoadRegions : (mLoadRegions = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.LoadRegions")); }
			ScriptFunction SetPreferredSiteId() { return mSetPreferredSiteId ? mSetPreferredSiteId : (mSetPreferredSiteId = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.SetPreferredSiteId")); }
			ScriptFunction LoadRegionLabels() { return mLoadRegionLabels ? mLoadRegionLabels : (mLoadRegionLabels = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.LoadRegionLabels")); }
			ScriptFunction SetPreferredRegion() { return mSetPreferredRegion ? mSetPreferredRegion : (mSetPreferredRegion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.SetPreferredRegion")); }
			ScriptFunction AddRegion() { return mAddRegion ? mAddRegion : (mAddRegion = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.AddRegion")); }
			ScriptFunction AddSetting() { return mAddSetting ? mAddSetting : (mAddSetting = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrRegionSettings.AddSetting")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SeqAct_ModifyProperty.PropertyInfo) AvailableRegions() { return *cast(ScriptArray!(SeqAct_ModifyProperty.PropertyInfo)*)(cast(size_t)cast(void*)this + 128); }
		GFxObject m_RegionSettingsList() { return *cast(GFxObject*)(cast(size_t)cast(void*)this + 124); }
		int m_RegionSettingsCount() { return *cast(int*)(cast(size_t)cast(void*)this + 120); }
	}
final:
	int GetPreferredSiteId()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPreferredSiteId, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString LoadRegionSetting()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadRegionSetting, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetRegionName(int siteId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = siteId;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegionName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int GetRegionIdAtIndex(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegionIdAtIndex, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetRegionIndexByName(ScriptString regionName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = regionName;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetRegionIndexByName, params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void LoadRegions()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadRegions, cast(void*)0, cast(void*)0);
	}
	void SetPreferredSiteId(int siteId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = siteId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPreferredSiteId, params.ptr, cast(void*)0);
	}
	void LoadRegionLabels(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadRegionLabels, params.ptr, cast(void*)0);
	}
	void SetPreferredRegion(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPreferredRegion, params.ptr, cast(void*)0);
	}
	void AddRegion(ScriptString regionName, int Id, bool bCustomOnly)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = regionName;
		*cast(int*)&params[12] = Id;
		*cast(bool*)&params[16] = bCustomOnly;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddRegion, params.ptr, cast(void*)0);
	}
	void AddSetting(ScriptName regionName, int Id)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = regionName;
		*cast(int*)&params[8] = Id;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddSetting, params.ptr, cast(void*)0);
	}
}
