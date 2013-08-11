module UnrealScript.TribesGame.GFxTrPage_Main;

import ScriptClasses;
import UnrealScript.TribesGame.TrObject;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_Main : GFxTrPage
{
	enum EFEATURES : ubyte
	{
		FEA_GOLD = 0,
		FEA_DOTD = 1,
		FEA_BUNDLEA = 2,
		FEA_BUNDLEB = 3,
		FEA_BUNDLEC = 4,
		FEA_MAX = 5,
	}
	struct BundleData
	{
		// WARNING: Property 'Model' has the same name as a defined type!
		public @property final auto ref int LootId() { return *cast(int*)(cast(size_t)&this + 0); }
		private ubyte __LootId[4];
	}
	public @property final bool bSwingingCamera() { return (*cast(uint*)(cast(size_t)cast(void*)this + 376) & 0x1) != 0; }
	public @property final bool bSwingingCamera(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 376) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 376) &= ~0x1; } return val; }
	public @property final auto ref ScriptArray!(GFxTrPage_Main.BundleData) ActiveBundles() { return *cast(ScriptArray!(GFxTrPage_Main.BundleData)*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref ScriptString TabOffset() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref ScriptString QueueTimer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 380); }
	public @property final bool bAnimInit() { return (*cast(uint*)(cast(size_t)cast(void*)this + 376) & 0x2) != 0; }
	public @property final bool bAnimInit(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 376) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 376) &= ~0x2; } return val; }
	public @property final auto ref int FeatureSwapTime() { return *cast(int*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref int FeatureShowTime() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref int ActiveFeature() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int GoldDealId() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int NumQuit() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59502], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59508], params.ptr, cast(void*)0);
	}
	final int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59511], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final bool CheckPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59515], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final GFxObject FillPricing(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59520], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final int ModifyAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59525], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59530], params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59534], params.ptr, cast(void*)0);
	}
	final void CheckFeatures(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59536], params.ptr, cast(void*)0);
	}
	final GFxObject FillFeature()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59540], params.ptr, cast(void*)0);
		return *cast(GFxObject*)params.ptr;
	}
	final ScriptString FormatDealTime()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59569], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59580], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	final void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59595], cast(void*)0, cast(void*)0);
	}
	final void UpdateQueueTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59602], cast(void*)0, cast(void*)0);
	}
	final void StartDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59603], cast(void*)0, cast(void*)0);
	}
	final void UpdateDealTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59605], cast(void*)0, cast(void*)0);
	}
	final void CheckGoldDeal()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59607], cast(void*)0, cast(void*)0);
	}
	final bool NeedFeatureUpdate()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59611], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final ScriptString GetEquipTypeName(int Type)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59613], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
}
