module UnrealScript.TribesGame.GFxTrPage_RegionSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_RegionSettings : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.GFxTrPage_RegionSettings")); }
	private static __gshared GFxTrPage_RegionSettings mDefaultProperties;
	@property final static GFxTrPage_RegionSettings DefaultProperties() { mixin(MGDPC("GFxTrPage_RegionSettings", "GFxTrPage_RegionSettings TribesGame.Default__GFxTrPage_RegionSettings")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mFillData;
			ScriptFunction mTakeAction;
			ScriptFunction mFillOption;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF("mInitialize", "Function TribesGame.GFxTrPage_RegionSettings.Initialize")); }
			ScriptFunction FillData() { mixin(MGF("mFillData", "Function TribesGame.GFxTrPage_RegionSettings.FillData")); }
			ScriptFunction TakeAction() { mixin(MGF("mTakeAction", "Function TribesGame.GFxTrPage_RegionSettings.TakeAction")); }
			ScriptFunction FillOption() { mixin(MGF("mFillOption", "Function TribesGame.GFxTrPage_RegionSettings.FillOption")); }
		}
	}
	@property final
	{
		auto ref
		{
			int CurrFilterIndex() { mixin(MGPC("int", 364)); }
			int CurrFilterSite() { mixin(MGPC("int", 360)); }
			int CurrRegion() { mixin(MGPC("int", 356)); }
		}
		bool bFilter() { mixin(MGBPC(368, 0x1)); }
		bool bFilter(bool val) { mixin(MSBPC(368, 0x1)); }
		bool bForceChoose() { mixin(MGBPC(368, 0x4)); }
		bool bForceChoose(bool val) { mixin(MSBPC(368, 0x4)); }
		bool bServer() { mixin(MGBPC(368, 0x2)); }
		bool bServer(bool val) { mixin(MSBPC(368, 0x2)); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
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
}
