module UnrealScript.TribesGame.GFxTrPage_Vehicle;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Vehicle : GFxTrPage
{
	struct VehicleOption
	{
		public @property final auto ref ScriptString DisplayName() { return *cast(ScriptString*)(cast(size_t)&this + 28); }
		private ubyte __DisplayName[12];
		public @property final auto ref ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)&this + 16); }
		private ubyte __ClassName[12];
		public @property final auto ref int MaxCount() { return *cast(int*)(cast(size_t)&this + 12); }
		private ubyte __MaxCount[4];
		public @property final auto ref int Count() { return *cast(int*)(cast(size_t)&this + 8); }
		private ubyte __Count[4];
		public @property final auto ref int Icon() { return *cast(int*)(cast(size_t)&this + 4); }
		private ubyte __Icon[4];
		public @property final auto ref int Cost() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __Cost[4];
	}
	public @property final auto ref int PlayerCredits() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref ScriptArray!(GFxTrPage_Vehicle.VehicleOption) VehicleOptions() { return *cast(ScriptArray!(GFxTrPage_Vehicle.VehicleOption)*)(cast(size_t)cast(void*)this + 360); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61332], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61333], params.ptr, cast(void*)0);
	}
	final void ClearActions()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61336], cast(void*)0, cast(void*)0);
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61338], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void AddOption(ScriptString ClassName, ScriptString DisplayName, int Cost, int Icon, int Count, int MaxCount)
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
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61350], params.ptr, cast(void*)0);
	}
	final GFxObject FillOptions(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61352], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61357], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61362], cast(void*)0, cast(void*)0);
	}
}
