module UnrealScript.TribesGame.TrRegionSettings;

import ScriptClasses;
import UnrealScript.GameFramework.SeqAct_ModifyProperty;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface TrRegionSettings : GFxObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54608], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
	ScriptString LoadRegionSetting()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[54701], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetRegionName(int siteId)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = siteId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58570], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int GetRegionIdAtIndex(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60425], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetRegionIndexByName(ScriptString regionName)
	{
		ubyte params[16];
		params[] = 0;
		*cast(ScriptString*)params.ptr = regionName;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60435], params.ptr, cast(void*)0);
		return *cast(int*)&params[12];
	}
	void LoadRegions()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110496], cast(void*)0, cast(void*)0);
	}
	void SetPreferredSiteId(int siteId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = siteId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110497], params.ptr, cast(void*)0);
	}
	void LoadRegionLabels(GFxObject List)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = List;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110499], params.ptr, cast(void*)0);
	}
	void SetPreferredRegion(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110509], params.ptr, cast(void*)0);
	}
	void AddRegion(ScriptString regionName, int Id, bool bCustomOnly)
	{
		ubyte params[20];
		params[] = 0;
		*cast(ScriptString*)params.ptr = regionName;
		*cast(int*)&params[12] = Id;
		*cast(bool*)&params[16] = bCustomOnly;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110511], params.ptr, cast(void*)0);
	}
	void AddSetting(ScriptName regionName, int Id)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptName*)params.ptr = regionName;
		*cast(int*)&params[8] = Id;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[110517], params.ptr, cast(void*)0);
	}
}
