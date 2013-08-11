module UnrealScript.TribesGame.GFxTrPage_Vehicle;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Vehicle : GFxTrPage
{
public extern(D):
	struct VehicleOption
	{
		private ubyte __buffer__[40];
	public extern(D):
		@property final auto ref
		{
			ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
			ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
			int MaxCount() { return *cast(int*)(cast(size_t)&this + 12); }
			int Count() { return *cast(int*)(cast(size_t)&this + 8); }
			int Icon() { return *cast(int*)(cast(size_t)&this + 4); }
			int Cost() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref
	{
		int PlayerCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		ScriptArray!(GFxTrPage_Vehicle.VehicleOption) VehicleOptions() { return *cast(ScriptArray!(GFxTrPage_Vehicle.VehicleOption)*)(cast(size_t)cast(void*)this + 360); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61332], cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61333], params.ptr, cast(void*)0);
	}
	void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61336], cast(void*)0, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61338], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	void AddOption(ScriptString ClassName, ScriptString DisplayName, int Cost, int Icon, int Count, int MaxCount)
	{
		ubyte params[40];
		params[] = 0;
		*cast(ScriptString*)params.ptr = ClassName;
		*cast(ScriptString*)&params[12] = DisplayName;
		*cast(int*)&params[24] = Cost;
		*cast(int*)&params[28] = Icon;
		*cast(int*)&params[32] = Count;
		*cast(int*)&params[36] = MaxCount;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61342], params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61350], params.ptr, cast(void*)0);
	}
	GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61352], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61357], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61362], cast(void*)0, cast(void*)0);
	}
}
