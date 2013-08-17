module UnrealScript.TribesGame.GFxTrPage_WatchNow;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_WatchNow : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_WatchNow")()); }
	private static __gshared GFxTrPage_WatchNow mDefaultProperties;
	@property final static GFxTrPage_WatchNow DefaultProperties() { mixin(MGDPC!(GFxTrPage_WatchNow, "GFxTrPage_WatchNow TribesGame.Default__GFxTrPage_WatchNow")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mShowModel;
			ScriptFunction mSpecialAction;
			ScriptFunction mUpdateStreams;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mFillDescription;
			ScriptFunction mIsFeatured;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_WatchNow.Initialize")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_WatchNow.ShowModel")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_WatchNow.SpecialAction")()); }
			ScriptFunction UpdateStreams() { mixin(MGF!("mUpdateStreams", "Function TribesGame.GFxTrPage_WatchNow.UpdateStreams")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_WatchNow.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_WatchNow.FillOption")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_WatchNow.FillDescription")()); }
			ScriptFunction IsFeatured() { mixin(MGF!("mIsFeatured", "Function TribesGame.GFxTrPage_WatchNow.IsFeatured")()); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) FeaturedNums() { mixin(MGPC!("ScriptArray!(int)", 420)()); }
		ScriptString strCmntyVideos() { mixin(MGPC!("ScriptString", 408)()); }
		ScriptString strTrainVideos() { mixin(MGPC!("ScriptString", 396)()); }
		ScriptString strHiRezVideos() { mixin(MGPC!("ScriptString", 384)()); }
		ScriptString strLiveStreams() { mixin(MGPC!("ScriptString", 372)()); }
		int NumCmntyVideos() { mixin(MGPC!("int", 368)()); }
		int NumTrainVideos() { mixin(MGPC!("int", 364)()); }
		int NumHiRezVideos() { mixin(MGPC!("int", 360)()); }
		int NumLiveStreams() { mixin(MGPC!("int", 356)()); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void UpdateStreams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStreams, cast(void*)0, cast(void*)0);
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
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	bool IsFeatured(int Num)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Num;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsFeatured, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
