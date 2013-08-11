module UnrealScript.TribesGame.GFxTrPage_VideoResolutionTypes;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoResolutionTypes : GFxTrPage
{
	public @property final auto ref ScriptArray!(TgPlayerProfile.PropertyPair) AllResolutions() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ScriptArray!(GFxTrPage.ResolutionSet) FourByThreeGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(GFxTrPage.ResolutionSet) SixteenByNineGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptArray!(GFxTrPage.ResolutionSet) SixteenbyTenGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 408); }
	public @property final auto ref ScriptArray!(GFxTrPage.ResolutionSet) OtherGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 420); }
	public @property final bool bShowingSixteenbyTen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x4) != 0; }
	public @property final bool bShowingSixteenbyTen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x4; } return val; }
	public @property final bool bShowingSixteenByNine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x2) != 0; }
	public @property final bool bShowingSixteenByNine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x2; } return val; }
	public @property final bool bShowingFourByThree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x1) != 0; }
	public @property final bool bShowingFourByThree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x1; } return val; }
	public @property final auto ref int SixteenbyTen() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref int SixteenByNine() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
	public @property final auto ref int FourByThree() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
	final void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61422], cast(void*)0, cast(void*)0);
	}
	final void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61427], params.ptr, cast(void*)0);
	}
	final void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61432], params.ptr, cast(void*)0);
	}
	final GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61434], params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
