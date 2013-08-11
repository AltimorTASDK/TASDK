module UnrealScript.TribesGame.GFxTrPage_Game;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Game : GFxTrPage
{
public extern(D):
	@property final
	{
		auto ref
		{
			ScriptString strExitMatch() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 424); }
			ScriptString strManageServers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 412); }
			ScriptString strSettings() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 400); }
			ScriptString strStore() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 388); }
			ScriptString strSocial() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 376); }
			ScriptString strParty() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 364); }
			int TeamLoadoutNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bRemovePartyTemp() { return (*cast(uint*)(cast(size_t)cast(void*)this + 360) & 0x1) != 0; }
		bool bRemovePartyTemp(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 360) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 360) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59050], cast(void*)0, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59051], params.ptr, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59054], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59058], params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59060], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void PushModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59079], cast(void*)0, cast(void*)0);
	}
	void HelpButton(int ActionIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59086], params.ptr, cast(void*)0);
	}
}
