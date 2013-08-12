module UnrealScript.Engine.LocalPlayer;

import ScriptClasses;
import UnrealScript.Engine.OnlineSubsystem;
import UnrealScript.Engine.Player;
import UnrealScript.Engine.PostProcessVolume;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.PostProcessChain;
import UnrealScript.Engine.TranslationContext;
import UnrealScript.Engine.GameViewportClient;

extern(C++) interface LocalPlayer : Player
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.LocalPlayer")); }
	private static __gshared LocalPlayer mDefaultProperties;
	@property final static LocalPlayer DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(LocalPlayer)("LocalPlayer Engine.Default__LocalPlayer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpawnPlayActor;
			ScriptFunction mSendSplitJoin;
			ScriptFunction mGetActorVisibility;
			ScriptFunction mOverridePostProcessSettings;
			ScriptFunction mClearPostProcessSettingsOverride;
			ScriptFunction mSetControllerId;
			ScriptFunction mGetTranslationContext;
			ScriptFunction mInsertPostProcessingChain;
			ScriptFunction mRemovePostProcessingChain;
			ScriptFunction mRemoveAllPostProcessingChains;
			ScriptFunction mGetPostProcessChain;
			ScriptFunction mTouchPlayerPostProcessChain;
			ScriptFunction mDeProject;
			ScriptFunction mGetUniqueNetId;
			ScriptFunction mGetNickname;
		}
		public @property static final
		{
			ScriptFunction SpawnPlayActor() { return mSpawnPlayActor ? mSpawnPlayActor : (mSpawnPlayActor = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.SpawnPlayActor")); }
			ScriptFunction SendSplitJoin() { return mSendSplitJoin ? mSendSplitJoin : (mSendSplitJoin = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.SendSplitJoin")); }
			ScriptFunction GetActorVisibility() { return mGetActorVisibility ? mGetActorVisibility : (mGetActorVisibility = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.GetActorVisibility")); }
			ScriptFunction OverridePostProcessSettings() { return mOverridePostProcessSettings ? mOverridePostProcessSettings : (mOverridePostProcessSettings = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.OverridePostProcessSettings")); }
			ScriptFunction ClearPostProcessSettingsOverride() { return mClearPostProcessSettingsOverride ? mClearPostProcessSettingsOverride : (mClearPostProcessSettingsOverride = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.ClearPostProcessSettingsOverride")); }
			ScriptFunction SetControllerId() { return mSetControllerId ? mSetControllerId : (mSetControllerId = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.SetControllerId")); }
			ScriptFunction GetTranslationContext() { return mGetTranslationContext ? mGetTranslationContext : (mGetTranslationContext = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.GetTranslationContext")); }
			ScriptFunction InsertPostProcessingChain() { return mInsertPostProcessingChain ? mInsertPostProcessingChain : (mInsertPostProcessingChain = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.InsertPostProcessingChain")); }
			ScriptFunction RemovePostProcessingChain() { return mRemovePostProcessingChain ? mRemovePostProcessingChain : (mRemovePostProcessingChain = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.RemovePostProcessingChain")); }
			ScriptFunction RemoveAllPostProcessingChains() { return mRemoveAllPostProcessingChains ? mRemoveAllPostProcessingChains : (mRemoveAllPostProcessingChains = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.RemoveAllPostProcessingChains")); }
			ScriptFunction GetPostProcessChain() { return mGetPostProcessChain ? mGetPostProcessChain : (mGetPostProcessChain = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.GetPostProcessChain")); }
			ScriptFunction TouchPlayerPostProcessChain() { return mTouchPlayerPostProcessChain ? mTouchPlayerPostProcessChain : (mTouchPlayerPostProcessChain = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.TouchPlayerPostProcessChain")); }
			ScriptFunction DeProject() { return mDeProject ? mDeProject : (mDeProject = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.DeProject")); }
			ScriptFunction GetUniqueNetId() { return mGetUniqueNetId ? mGetUniqueNetId : (mGetUniqueNetId = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.GetUniqueNetId")); }
			ScriptFunction GetNickname() { return mGetNickname ? mGetNickname : (mGetNickname = ScriptObject.Find!(ScriptFunction)("Function Engine.LocalPlayer.GetNickname")); }
		}
	}
	struct PostProcessSettingsOverride
	{
		private ubyte __buffer__[244];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LocalPlayer.PostProcessSettingsOverride")); }
		@property final
		{
			auto ref
			{
				float BlendStartTime() { return *cast(float*)(cast(size_t)&this + 240); }
				float BlendOutDuration() { return *cast(float*)(cast(size_t)&this + 236); }
				float BlendInDuration() { return *cast(float*)(cast(size_t)&this + 232); }
				float CurrentBlendOutTime() { return *cast(float*)(cast(size_t)&this + 228); }
				float CurrentBlendInTime() { return *cast(float*)(cast(size_t)&this + 224); }
				// WARNING: Property 'Settings' has the same name as a defined type!
			}
			bool bBlendingOut() { return (*cast(uint*)(cast(size_t)&this + 220) & 0x2) != 0; }
			bool bBlendingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 220) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 220) &= ~0x2; } return val; }
			bool bBlendingIn() { return (*cast(uint*)(cast(size_t)&this + 220) & 0x1) != 0; }
			bool bBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 220) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 220) &= ~0x1; } return val; }
		}
	}
	struct CurrentPostProcessVolumeInfo
	{
		private ubyte __buffer__[232];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LocalPlayer.CurrentPostProcessVolumeInfo")); }
		@property final auto ref
		{
			float LastBlendTime() { return *cast(float*)(cast(size_t)&this + 228); }
			float BlendStartTime() { return *cast(float*)(cast(size_t)&this + 224); }
			PostProcessVolume LastVolumeUsed() { return *cast(PostProcessVolume*)(cast(size_t)&this + 220); }
			PostProcessVolume.PostProcessSettings LastSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)&this + 0); }
		}
	}
	struct SynchronizedActorVisibilityHistory
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.LocalPlayer.SynchronizedActorVisibilityHistory")); }
		@property final auto ref
		{
			UObject.Pointer CriticalSection() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
			// WARNING: Property 'State' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			int ControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
			GameViewportClient ViewportClient() { return *cast(GameViewportClient*)(cast(size_t)cast(void*)this + 100); }
			UObject.Vector2D Size() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 112); }
			UObject.Vector2D Origin() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 104); }
			ScriptArray!(PostProcessChain) PlayerPostProcessChains() { return *cast(ScriptArray!(PostProcessChain)*)(cast(size_t)cast(void*)this + 124); }
			ScriptArray!(LocalPlayer.PostProcessSettingsOverride) ActivePPOverrides() { return *cast(ScriptArray!(LocalPlayer.PostProcessSettingsOverride)*)(cast(size_t)cast(void*)this + 624); }
			TranslationContext TagContext() { return *cast(TranslationContext*)(cast(size_t)cast(void*)this + 656); }
			ScriptString LastMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 640); }
			UObject.EAspectRatioAxisConstraint AspectRatioAxisConstraint() { return *cast(UObject.EAspectRatioAxisConstraint*)(cast(size_t)cast(void*)this + 636); }
			LocalPlayer.CurrentPostProcessVolumeInfo LevelPPInfo() { return *cast(LocalPlayer.CurrentPostProcessVolumeInfo*)(cast(size_t)cast(void*)this + 392); }
			LocalPlayer.CurrentPostProcessVolumeInfo CurrentPPInfo() { return *cast(LocalPlayer.CurrentPostProcessVolumeInfo*)(cast(size_t)cast(void*)this + 160); }
			Vector LastViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
			LocalPlayer.SynchronizedActorVisibilityHistory ActorVisibilityHistory() { return *cast(LocalPlayer.SynchronizedActorVisibilityHistory*)(cast(size_t)cast(void*)this + 140); }
			UObject.Pointer ViewState() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 136); }
			PostProcessChain PlayerPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 120); }
		}
		bool bSentSplitJoin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
		bool bSentSplitJoin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
		bool bWantToResetToMapDefaultPP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
		bool bWantToResetToMapDefaultPP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
	}
final:
	bool SpawnPlayActor(ScriptString pURL, ScriptString* OutError)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(ScriptString*)&params[12] = *OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPlayActor, params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	void SendSplitJoin()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SendSplitJoin, cast(void*)0, cast(void*)0);
	}
	bool GetActorVisibility(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetActorVisibility, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void OverridePostProcessSettings(PostProcessVolume.PostProcessSettings OverrideSettings, float BlendInTime)
	{
		ubyte params[224];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = OverrideSettings;
		*cast(float*)&params[220] = BlendInTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePostProcessSettings, params.ptr, cast(void*)0);
	}
	void ClearPostProcessSettingsOverride(float BlendOutTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = BlendOutTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearPostProcessSettingsOverride, params.ptr, cast(void*)0);
	}
	void SetControllerId(int NewControllerId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewControllerId;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetControllerId, params.ptr, cast(void*)0);
	}
	TranslationContext GetTranslationContext()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetTranslationContext, params.ptr, cast(void*)0);
		return *cast(TranslationContext*)params.ptr;
	}
	bool InsertPostProcessingChain(PostProcessChain InChain, int InIndex, bool bInClone)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PostProcessChain*)params.ptr = InChain;
		*cast(int*)&params[4] = InIndex;
		*cast(bool*)&params[8] = bInClone;
		(cast(ScriptObject)this).ProcessEvent(Functions.InsertPostProcessingChain, params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	bool RemovePostProcessingChain(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemovePostProcessingChain, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	bool RemoveAllPostProcessingChains()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.RemoveAllPostProcessingChains, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	PostProcessChain GetPostProcessChain(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetPostProcessChain, params.ptr, cast(void*)0);
		return *cast(PostProcessChain*)&params[4];
	}
	void TouchPlayerPostProcessChain()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.TouchPlayerPostProcessChain, cast(void*)0, cast(void*)0);
	}
	void DeProject(UObject.Vector2D RelativeScreenPos, Vector* WorldOrigin, Vector* WorldDirection)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = RelativeScreenPos;
		*cast(Vector*)&params[8] = *WorldOrigin;
		*cast(Vector*)&params[20] = *WorldDirection;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeProject, params.ptr, cast(void*)0);
		*WorldOrigin = *cast(Vector*)&params[8];
		*WorldDirection = *cast(Vector*)&params[20];
	}
	OnlineSubsystem.UniqueNetId GetUniqueNetId()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetUniqueNetId, params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
	}
	ScriptString GetNickname()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetNickname, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
