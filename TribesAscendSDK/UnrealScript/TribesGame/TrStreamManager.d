module UnrealScript.TribesGame.TrStreamManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrStreamManager : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrStreamManager")); }
	private static __gshared TrStreamManager mDefaultProperties;
	@property final static TrStreamManager DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrStreamManager)("TrStreamManager TribesGame.Default__TrStreamManager")); }
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
			ScriptFunction GetTitleAtIndex() { return mGetTitleAtIndex ? mGetTitleAtIndex : (mGetTitleAtIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetTitleAtIndex")); }
			ScriptFunction IsLiveAtIndex() { return mIsLiveAtIndex ? mIsLiveAtIndex : (mIsLiveAtIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.IsLiveAtIndex")); }
			ScriptFunction GetViewersAtIndex() { return mGetViewersAtIndex ? mGetViewersAtIndex : (mGetViewersAtIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetViewersAtIndex")); }
			ScriptFunction GetDescriptionAtIndex() { return mGetDescriptionAtIndex ? mGetDescriptionAtIndex : (mGetDescriptionAtIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetDescriptionAtIndex")); }
			ScriptFunction HaveFeature() { return mHaveFeature ? mHaveFeature : (mHaveFeature = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.HaveFeature")); }
			ScriptFunction GetFeatureName() { return mGetFeatureName ? mGetFeatureName : (mGetFeatureName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetFeatureName")); }
			ScriptFunction IsStream() { return mIsStream ? mIsStream : (mIsStream = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.IsStream")); }
			ScriptFunction GetTypeCountWatching() { return mGetTypeCountWatching ? mGetTypeCountWatching : (mGetTypeCountWatching = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetTypeCountWatching")); }
			ScriptFunction GetTypeCount() { return mGetTypeCount ? mGetTypeCount : (mGetTypeCount = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetTypeCount")); }
			ScriptFunction GetFeatureDescription() { return mGetFeatureDescription ? mGetFeatureDescription : (mGetFeatureDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetFeatureDescription")); }
			ScriptFunction ViewerSort() { return mViewerSort ? mViewerSort : (mViewerSort = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.ViewerSort")); }
			ScriptFunction LoadStreams() { return mLoadStreams ? mLoadStreams : (mLoadStreams = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.LoadStreams")); }
			ScriptFunction GetStreamData() { return mGetStreamData ? mGetStreamData : (mGetStreamData = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetStreamData")); }
			ScriptFunction OpenStream() { return mOpenStream ? mOpenStream : (mOpenStream = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.OpenStream")); }
			ScriptFunction Initialize() { return mInitialize ? mInitialize : (mInitialize = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.Initialize")); }
			ScriptFunction ViewStreamIndex() { return mViewStreamIndex ? mViewStreamIndex : (mViewStreamIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.ViewStreamIndex")); }
			ScriptFunction ViewVideoIndex() { return mViewVideoIndex ? mViewVideoIndex : (mViewVideoIndex = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.ViewVideoIndex")); }
			ScriptFunction StartTVTimer() { return mStartTVTimer ? mStartTVTimer : (mStartTVTimer = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.StartTVTimer")); }
			ScriptFunction UpdateStreams() { return mUpdateStreams ? mUpdateStreams : (mUpdateStreams = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.UpdateStreams")); }
			ScriptFunction CheckForUpdate() { return mCheckForUpdate ? mCheckForUpdate : (mCheckForUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.CheckForUpdate")); }
			ScriptFunction GetLatestNews() { return mGetLatestNews ? mGetLatestNews : (mGetLatestNews = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.GetLatestNews")); }
			ScriptFunction CompleteUpdate() { return mCompleteUpdate ? mCompleteUpdate : (mCompleteUpdate = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrStreamManager.CompleteUpdate")); }
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
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrStreamManager.GameStream")); }
		@property final
		{
			auto ref
			{
				TrStreamManager.STREAMTYPE Type() { return *cast(TrStreamManager.STREAMTYPE*)(cast(size_t)&this + 4); }
				ScriptString Title() { return *cast(ScriptString*)(cast(size_t)&this + 8); }
				ScriptString Viewers() { return *cast(ScriptString*)(cast(size_t)&this + 32); }
				ScriptString Description() { return *cast(ScriptString*)(cast(size_t)&this + 56); }
				ScriptString ChannelName() { return *cast(ScriptString*)(cast(size_t)&this + 44); }
				ScriptString Stream() { return *cast(ScriptString*)(cast(size_t)&this + 20); }
			}
			bool bFeatured() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x2) != 0; }
			bool bFeatured(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x2; } return val; }
			bool bLive() { return (*cast(uint*)(cast(size_t)&this + 0) & 0x1) != 0; }
			bool bLive(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 0) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 0) &= ~0x1; } return val; }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(TrStreamManager.GameStream) Streams() { return *cast(ScriptArray!(TrStreamManager.GameStream)*)(cast(size_t)cast(void*)this + 164); }
			ScriptString StreamServer() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
			ScriptString StreamPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 140); }
			ScriptString StreamURL() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 128); }
			ScriptString WatchEnd() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 116); }
			ScriptString WatchStart() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 104); }
			ScriptString TokViewers() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 92); }
			ScriptString TokTitle() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 80); }
			ScriptString TokName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 68); }
			int NewsIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bUpdateReady() { return (*cast(uint*)(cast(size_t)cast(void*)this + 60) & 0x1) != 0; }
		bool bUpdateReady(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 60) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 60) &= ~0x1; } return val; }
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
	ScriptString GetFeatureName(int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Count;
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
	ScriptString GetFeatureDescription(int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Count;
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
	void UpdateStreams(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(Functions.UpdateStreams, params.ptr, cast(void*)0);
	}
	void CheckForUpdate(bool bRunIfReady)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRunIfReady;
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
