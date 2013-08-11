module UnrealScript.TribesGame.GFxTrPage_RegionSettings;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_RegionSettings : GFxTrPage
{
public extern(D):
	@property final
	{
		auto ref
		{
			int CurrFilterIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int CurrFilterSite() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int CurrRegion() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x1) != 0; }
		bool bFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x1; } return val; }
		bool bForceChoose() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x4) != 0; }
		bool bForceChoose(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x4; } return val; }
		bool bServer() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x2) != 0; }
		bool bServer(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x2; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60419], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60420], params.ptr, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60427], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60437], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
