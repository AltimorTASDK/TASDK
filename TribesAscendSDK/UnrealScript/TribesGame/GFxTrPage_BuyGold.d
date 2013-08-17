module UnrealScript.TribesGame.GFxTrPage_BuyGold;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_BuyGold : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_BuyGold")()); }
	private static __gshared GFxTrPage_BuyGold mDefaultProperties;
	@property final static GFxTrPage_BuyGold DefaultProperties() { mixin(MGDPC!(GFxTrPage_BuyGold, "GFxTrPage_BuyGold TribesGame.Default__GFxTrPage_BuyGold")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mFillData;
			ScriptFunction mTakeAction;
			ScriptFunction mFillOption;
			ScriptFunction mShowModel;
		}
		public @property static final
		{
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_BuyGold.FillData")()); }
			ScriptFunction TakeAction() { mixin(MGF!("mTakeAction", "Function TribesGame.GFxTrPage_BuyGold.TakeAction")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_BuyGold.FillOption")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_BuyGold.ShowModel")()); }
		}
	}
final:
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
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
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
}
