module UnrealScript.TribesGame.TrStreamManager;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface TrStreamManager : UObject
{
public extern(D):
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
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[58442], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool IsLiveAtIndex(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59357], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	ScriptString GetViewersAtIndex(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59359], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	ScriptString GetDescriptionAtIndex(int Index)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59367], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool HaveFeature()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59588], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	ScriptString GetFeatureName(int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[59590], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	bool IsStream(int Index)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61504], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	int GetTypeCountWatching(TrStreamManager.STREAMTYPE Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrStreamManager.STREAMTYPE*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61524], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	int GetTypeCount(TrStreamManager.STREAMTYPE Type)
	{
		ubyte params[8];
		params[] = 0;
		*cast(TrStreamManager.STREAMTYPE*)params.ptr = Type;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61526], params.ptr, cast(void*)0);
		return *cast(int*)&params[4];
	}
	ScriptString GetFeatureDescription(int Count)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Count;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[61533], params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[4];
	}
	int ViewerSort(TrStreamManager.GameStream A, TrStreamManager.GameStream B)
	{
		ubyte params[140];
		params[] = 0;
		*cast(TrStreamManager.GameStream*)params.ptr = A;
		*cast(TrStreamManager.GameStream*)&params[68] = B;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112931], params.ptr, cast(void*)0);
		return *cast(int*)&params[136];
	}
	void LoadStreams()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112945], cast(void*)0, cast(void*)0);
	}
	void GetStreamData()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112946], cast(void*)0, cast(void*)0);
	}
	void OpenStream(ScriptString pURL)
	{
		ubyte params[12];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112947], params.ptr, cast(void*)0);
	}
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112949], cast(void*)0, cast(void*)0);
	}
	void ViewStreamIndex(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112950], params.ptr, cast(void*)0);
	}
	void ViewVideoIndex(int Index)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = Index;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112952], params.ptr, cast(void*)0);
	}
	void StartTVTimer()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112954], cast(void*)0, cast(void*)0);
	}
	void UpdateStreams(bool bForce)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bForce;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112956], params.ptr, cast(void*)0);
	}
	void CheckForUpdate(bool bRunIfReady)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bRunIfReady;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112958], params.ptr, cast(void*)0);
	}
	void GetLatestNews()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112960], cast(void*)0, cast(void*)0);
	}
	void CompleteUpdate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[112963], cast(void*)0, cast(void*)0);
	}
}
