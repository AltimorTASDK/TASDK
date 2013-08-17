module UnrealScript.TribesGame.GFxTrPage_GameTypeFilter;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_GameTypeFilter : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_GameTypeFilter")()); }
	private static __gshared GFxTrPage_GameTypeFilter mDefaultProperties;
	@property final static GFxTrPage_GameTypeFilter DefaultProperties() { mixin(MGDPC!(GFxTrPage_GameTypeFilter, "GFxTrPage_GameTypeFilter TribesGame.Default__GFxTrPage_GameTypeFilter")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mTakeAction;
			ScriptFunction mTakeFocus;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_GameTypeFilter.Initialize")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_GameTypeFilter.TakeAction")()); }
			ScriptFunction TakeFocus() { mixin(MGF!("mTakeFocus", "Function TribesGame.GFxTrPage_GameTypeFilter.TakeFocus")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_GameTypeFilter.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_GameTypeFilter.FillOption")()); }
			ScriptFunction CheckDescription() { mixin(MGF!("mCheckDescription", "Function TribesGame.GFxTrPage_GameTypeFilter.CheckDescription")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_GameTypeFilter.FillDescription")()); }
		}
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	int TakeAction(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeAction, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
	}
	int TakeFocus(int ActionIndex, GFxObject DataList)
	{
		ubyte params[12];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		*cast(GFxObject*)&params[4] = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.TakeFocus, params.ptr, cast(void*)0);
		return *cast(int*)&params[8];
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
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
}
