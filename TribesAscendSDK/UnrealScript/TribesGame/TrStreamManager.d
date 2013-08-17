module UnrealScript.TribesGame.TrStreamManager;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface TrStreamManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrStreamManager")()); }
	private static __gshared TrStreamManager mDefaultProperties;
	@property final static TrStreamManager DefaultProperties() { mixin(MGDPC!(TrStreamManager, "TrStreamManager TribesGame.Default__TrStreamManager")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetTitleAtIndex;
			ScriptFunction mIsLiveAtIndex;
			ScriptFunction mGetViewersAtIndex;
			ScriptFunction mGetDescriptionAtIndex;
			ScriptFunction mHaveFeature;
			ScriptFunction mGetFeatureName;
			ScriptFunction mIsStream;
			ScriptFunction mGetTypeCountWatching;
			ScriptFunction mGetTypeCount;
			ScriptFunction mGetFeatureDescription;
			ScriptFunction mViewerSort;
			ScriptFunction mLoadStreams;
			ScriptFunction mGetStreamData;
			ScriptFunction mOpenStream;
			ScriptFunction mInitialize;
			ScriptFunction mViewStreamIndex;
			ScriptFunction mViewVideoIndex;
			ScriptFunction mStartTVTimer;
			ScriptFunction mUpdateStreams;
			ScriptFunction mCheckForUpdate;
			ScriptFunction mGetLatestNews;
			ScriptFunction mCompleteUpdate;
		}
		public @property static final
		{
			ScriptFunction GetTitleAtIndex() { mixin(MGF!("mGetTitleAtIndex", "Function TribesGame.TrStreamManager.GetTitleAtIndex")()); }
			ScriptFunction IsLiveAtIndex() { mixin(MGF!("mIsLiveAtIndex", "Function TribesGame.TrStreamManager.IsLiveAtIndex")()); }
			ScriptFunction GetViewersAtIndex() { mixin(MGF!("mGetViewersAtIndex", "Function TribesGame.TrStreamManager.GetViewersAtIndex")()); }
			ScriptFunction GetDescriptionAtIndex() { mixin(MGF!("mGetDescriptionAtIndex", "Function TribesGame.TrStreamManager.GetDescriptionAtIndex")()); }
			ScriptFunction HaveFeature() { mixin(MGF!("mHaveFeature", "Function TribesGame.TrStreamManager.HaveFeature")()); }
			ScriptFunction GetFeatureName() { mixin(MGF!("mGetFeatureName", "Function TribesGame.TrStreamManager.GetFeatureName")()); }
			ScriptFunction IsStream() { mixin(MGF!("mIsStream", "Function TribesGame.TrStreamManager.IsStream")()); }
			ScriptFunction GetTypeCountWatching() { mixin(MGF!("mGetTypeCountWatching", "Function TribesGame.TrStreamManager.GetTypeCountWatching")()); }
			ScriptFunction GetTypeCount() { mixin(MGF!("mGetTypeCount", "Function TribesGame.TrStreamManager.GetTypeCount")()); }
			ScriptFunction GetFeatureDescription() { mixin(MGF!("mGetFeatureDescription", "Function TribesGame.TrStreamManager.GetFeatureDescription")()); }
			ScriptFunction ViewerSort() { mixin(MGF!("mViewerSort", "Function TribesGame.TrStreamManager.ViewerSort")()); }
			ScriptFunction LoadStreams() { mixin(MGF!("mLoadStreams", "Function TribesGame.TrStreamManager.LoadStreams")()); }
			ScriptFunction GetStreamData() { mixin(MGF!("mGetStreamData", "Function TribesGame.TrStreamManager.GetStreamData")()); }
			ScriptFunction OpenStream() { mixin(MGF!("mOpenStream", "Function TribesGame.TrStreamManager.OpenStream")()); }
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.TrStreamManager.Initialize")()); }
			ScriptFunction ViewStreamIndex() { mixin(MGF!("mViewStreamIndex", "Function TribesGame.TrStreamManager.ViewStreamIndex")()); }
			ScriptFunction ViewVideoIndex() { mixin(MGF!("mViewVideoIndex", "Function TribesGame.TrStreamManager.ViewVideoIndex")()); }
			ScriptFunction StartTVTimer() { mixin(MGF!("mStartTVTimer", "Function TribesGame.TrStreamManager.StartTVTimer")()); }
			ScriptFunction UpdateStreams() { mixin(MGF!("mUpdateStreams", "Function TribesGame.TrStreamManager.UpdateStreams")()); }
			ScriptFunction CheckForUpdate() { mixin(MGF!("mCheckForUpdate", "Function TribesGame.TrStreamManager.CheckForUpdate")()); }
			ScriptFunction GetLatestNews() { mixin(MGF!("mGetLatestNews", "Function TribesGame.TrStreamManager.GetLatestNews")()); }
			ScriptFunction CompleteUpdate() { mixin(MGF!("mCompleteUpdate", "Function TribesGame.TrStreamManager.CompleteUpdate")()); }
		}
	}
	enum STREAMTYPE : ubyte
	{
		VST_NONE = 0,
		VST_HIREZ = 1,
		VST_TWITCH = 2,
		VST_TRAINING = 3,
		VST_COMMUNITY = 4,
		VST_NEWS = 5,
		VST_MAX = 6,
	}
	struct GameStream
	{
		private ubyte __buffer__[68];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct TribesGame.TrStreamManager.GameStream")()); }
		@property final
		{
			auto ref
			{
				TrStreamManager.STREAMTYPE Type() { mixin(MGPS!("TrStreamManager.STREAMTYPE", 4)()); }
				ScriptString Title() { mixin(MGPS!("ScriptString", 8)()); }
				ScriptString Viewers() { mixin(MGPS!("ScriptString", 32)()); }
				ScriptString Description() { mixin(MGPS!("ScriptString", 56)()); }
				ScriptString ChannelName() { mixin(MGPS!("ScriptString", 44)()); }
				ScriptString Stream() { mixin(MGPS!("ScriptString", 20)()); }
			}
			bool bFeatured() { mixin(MGBPS!(0, 0x2)()); }
			bool bFeatured(bool val) { mixin(MSBPS!(0, 0x2)()); }
			bool bLive() { mixin(MGBPS!(0, 0x1)()); }
			bool bLive(bool val) { mixin(MSBPS!(0, 0x1)()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrStreamManager.GameStream) Streams() { mixin(MGPC!("ScriptArray!(TrStreamManager.GameStream)", 164)()); }
			// ERROR: Unsupported object class 'DelegateProperty' for the property named '__ViewerSort__Delegate'!
			ScriptString StreamServer() { mixin(MGPC!("ScriptString", 152)()); }
			ScriptString StreamPath() { mixin(MGPC!("ScriptString", 140)()); }
			ScriptString StreamURL() { mixin(MGPC!("ScriptString", 128)()); }
			ScriptString WatchEnd() { mixin(MGPC!("ScriptString", 116)()); }
			ScriptString WatchStart() { mixin(MGPC!("ScriptString", 104)()); }
			ScriptString TokViewers() { mixin(MGPC!("ScriptString", 92)()); }
			ScriptString TokTitle() { mixin(MGPC!("ScriptString", 80)()); }
			ScriptString TokName() { mixin(MGPC!("ScriptString", 68)()); }
			int NewsIndex() { mixin(MGPC!("int", 64)()); }
		}
		bool bUpdateReady() { mixin(MGBPC!(60, 0x1)()); }
		bool bUpdateReady(bool val) { mixin(MSBPC!(60, 0x1)()); }
	}
final:
	ScriptString GetTitleAtIndex(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTitleAtIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool IsLiveAtIndex(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsLiveAtIndex, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetViewersAtIndex(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetViewersAtIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetDescriptionAtIndex(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetDescriptionAtIndex, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool HaveFeature()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.HaveFeature, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetFeatureName(int* Count = null)
	{
		ubyte params[16];
		params[] = 0;
		if (Count !is null)
			*cast(int*)params.ptr = *Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFeatureName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool IsStream(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsStream, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetTypeCountWatching(TrStreamManager.STREAMTYPE Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrStreamManager.STREAMTYPE*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTypeCountWatching, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetTypeCount(TrStreamManager.STREAMTYPE Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrStreamManager.STREAMTYPE*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTypeCount, params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	ScriptString GetFeatureDescription(int* Count = null)
	{
		ubyte params[16];
		params[] = 0;
		if (Count !is null)
			*cast(int*)params.ptr = *Count;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetFeatureDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int ViewerSort(TrStreamManager.GameStream A, TrStreamManager.GameStream B)
	{
		ubyte params[140];
		params[] = 0;
		*cast(TrStreamManager.GameStream*)params.ptr = A;
		*cast(TrStreamManager.GameStream*)&params[68] = B;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewerSort, params.ptr, cast(void*)0);
		return *cast(int*)&params[136];
	}
	void LoadStreams()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.LoadStreams, cast(void*)0, cast(void*)0);
	}
	void GetStreamData()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GetStreamData, cast(void*)0, cast(void*)0);
	}
	void OpenStream(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(Functions.OpenStream, params.ptr, cast(void*)0);
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void ViewStreamIndex(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewStreamIndex, params.ptr, cast(void*)0);
	}
	void ViewVideoIndex(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(Functions.ViewVideoIndex, params.ptr, cast(void*)0);
	}
	void StartTVTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.StartTVTimer, cast(void*)0, cast(void*)0);
	}
	void UpdateStreams(bool* bForce = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bForce !is null)
			*cast(bool*)params.ptr = *bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStreams, params.ptr, cast(void*)0);
	}
	void CheckForUpdate(bool* bRunIfReady = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bRunIfReady !is null)
			*cast(bool*)params.ptr = *bRunIfReady;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckForUpdate, params.ptr, cast(void*)0);
	}
	void GetLatestNews()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.GetLatestNews, cast(void*)0, cast(void*)0);
	}
	void CompleteUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CompleteUpdate, cast(void*)0, cast(void*)0);
	}
}
