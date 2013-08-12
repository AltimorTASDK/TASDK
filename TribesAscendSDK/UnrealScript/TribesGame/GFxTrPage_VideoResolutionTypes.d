module UnrealScript.TribesGame.GFxTrPage_VideoResolutionTypes;

import ScriptClasses;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoResolutionTypes : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_VideoResolutionTypes")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
		}
		public @property static final
		{
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoResolutionTypes.Initialize")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoResolutionTypes.SpecialAction")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoResolutionTypes.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_VideoResolutionTypes.FillOption")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.PropertyPair) AllResolutions() { return *cast(ScriptArray!(TgPlayerProfile.PropertyPair)*)(cast(size_t)cast(void*)this + 372); }
			ScriptArray!(GFxTrPage.ResolutionSet) FourByThreeGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 384); }
			ScriptArray!(GFxTrPage.ResolutionSet) SixteenByNineGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 396); }
			ScriptArray!(GFxTrPage.ResolutionSet) SixteenbyTenGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 408); }
			ScriptArray!(GFxTrPage.ResolutionSet) OtherGroup() { return *cast(ScriptArray!(GFxTrPage.ResolutionSet)*)(cast(size_t)cast(void*)this + 420); }
			int SixteenbyTen() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
			int SixteenByNine() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
			int FourByThree() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
		}
		bool bShowingSixteenbyTen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x4) != 0; }
		bool bShowingSixteenbyTen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x4; } return val; }
		bool bShowingSixteenByNine() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x2) != 0; }
		bool bShowingSixteenByNine(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x2; } return val; }
		bool bShowingFourByThree() { return (*cast(uint*)(cast(size_t)cast(void*)this + 368) & 0x1) != 0; }
		bool bShowingFourByThree(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 368) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 368) &= ~0x1; } return val; }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
