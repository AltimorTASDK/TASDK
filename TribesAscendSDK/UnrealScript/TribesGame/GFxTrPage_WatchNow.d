module UnrealScript.TribesGame.GFxTrPage_WatchNow;

import ScriptClasses;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_WatchNow : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.GFxTrPage_WatchNow")); }
	private static __gshared GFxTrPage_WatchNow mDefaultProperties;
	@property final static GFxTrPage_WatchNow DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(GFxTrPage_WatchNow)("GFxTrPage_WatchNow TribesGame.Default__GFxTrPage_WatchNow")); }
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
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.Initialize")); }
			ScriptFunction ShowModel() { return mShowModel ? mShowModel : (mShowModel = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.ShowModel")); }
			ScriptFunction SpecialAction() { return mSpecialAction ? mSpecialAction : (mSpecialAction = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.SpecialAction")); }
			ScriptFunction UpdateStreams() { return mUpdateStreams ? mUpdateStreams : (mUpdateStreams = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.UpdateStreams")); }
			ScriptFunction FillData() { return mFillData ? mFillData : (mFillData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.FillData")); }
			ScriptFunction FillOption() { return mFillOption ? mFillOption : (mFillOption = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.FillOption")); }
			ScriptFunction FillDescription() { return mFillDescription ? mFillDescription : (mFillDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.FillDescription")); }
			ScriptFunction IsFeatured() { return mIsFeatured ? mIsFeatured : (mIsFeatured = ScriptObject.Find!(ScriptFunction)("Function TribesGame.GFxTrPage_WatchNow.IsFeatured")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(int) FeaturedNums() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 420); }
		ScriptString strCmntyVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 408); }
		ScriptString strTrainVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 396); }
		ScriptString strHiRezVideos() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 384); }
		ScriptString strLiveStreams() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 372); }
		int NumCmntyVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 368); }
		int NumTrainVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 364); }
		int NumHiRezVideos() { return *cast(int*)(cast(size_t)cast(void*)this + 360); }
		int NumLiveStreams() { return *cast(int*)(cast(size_t)cast(void*)this + 356); }
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
