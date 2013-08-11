module UnrealScript.TribesGame.GFxTrPage_ServerActions;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerActions : GFxTrPage
{
public extern(D):
	@property final
	{
		auto ref
		{
			int PopupNum() { return *cast(int*)(cast(size_t)cast(void*)this + 380); }
			int BanPlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 376); }
			int KickPlayerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
			int GotoMapServerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
			int KillServerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int DisableServerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int EnableServerNum() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bPopup() { return (*cast(uint*)(cast(size_t)cast(void*)this + 384) & 0x1) != 0; }
		bool bPopup(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 384) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 384) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60538], cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60539], params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60541], params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60543], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60549], params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60566], params.ptr, cast(void*)0);
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60581], params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60585], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[60589], cast(void*)0, cast(void*)0);
	}
}
