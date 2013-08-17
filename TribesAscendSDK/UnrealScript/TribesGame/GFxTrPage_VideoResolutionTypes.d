module UnrealScript.TribesGame.GFxTrPage_VideoResolutionTypes;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.PlatformCommon.TgPlayerProfile;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_VideoResolutionTypes : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_VideoResolutionTypes")()); }
	private static __gshared GFxTrPage_VideoResolutionTypes mDefaultProperties;
	@property final static GFxTrPage_VideoResolutionTypes DefaultProperties() { mixin(MGDPC!(GFxTrPage_VideoResolutionTypes, "GFxTrPage_VideoResolutionTypes TribesGame.Default__GFxTrPage_VideoResolutionTypes")()); }
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
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_VideoResolutionTypes.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_VideoResolutionTypes.SpecialAction")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_VideoResolutionTypes.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_VideoResolutionTypes.FillOption")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TgPlayerProfile.PropertyPair) AllResolutions() { mixin(MGPC!("ScriptArray!(TgPlayerProfile.PropertyPair)", 372)()); }
			ScriptArray!(GFxTrPage.ResolutionSet) FourByThreeGroup() { mixin(MGPC!("ScriptArray!(GFxTrPage.ResolutionSet)", 384)()); }
			ScriptArray!(GFxTrPage.ResolutionSet) SixteenByNineGroup() { mixin(MGPC!("ScriptArray!(GFxTrPage.ResolutionSet)", 396)()); }
			ScriptArray!(GFxTrPage.ResolutionSet) SixteenbyTenGroup() { mixin(MGPC!("ScriptArray!(GFxTrPage.ResolutionSet)", 408)()); }
			ScriptArray!(GFxTrPage.ResolutionSet) OtherGroup() { mixin(MGPC!("ScriptArray!(GFxTrPage.ResolutionSet)", 420)()); }
			int SixteenbyTen() { mixin(MGPC!("int", 364)()); }
			int SixteenByNine() { mixin(MGPC!("int", 360)()); }
			int FourByThree() { mixin(MGPC!("int", 356)()); }
		}
		bool bShowingSixteenbyTen() { mixin(MGBPC!(368, 0x4)()); }
		bool bShowingSixteenbyTen(bool val) { mixin(MSBPC!(368, 0x4)()); }
		bool bShowingSixteenByNine() { mixin(MGBPC!(368, 0x2)()); }
		bool bShowingSixteenByNine(bool val) { mixin(MSBPC!(368, 0x2)()); }
		bool bShowingFourByThree() { mixin(MGBPC!(368, 0x1)()); }
		bool bShowingFourByThree(bool val) { mixin(MSBPC!(368, 0x1)()); }
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
