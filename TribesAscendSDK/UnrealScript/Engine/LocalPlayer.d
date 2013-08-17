module UnrealScript.Engine.LocalPlayer;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.LocalPlayer")()); }
	private static __gshared LocalPlayer mDefaultProperties;
	@property final static LocalPlayer DefaultProperties() { mixin(MGDPC!(LocalPlayer, "LocalPlayer Engine.Default__LocalPlayer")()); }
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
			ScriptFunction SpawnPlayActor() { mixin(MGF!("mSpawnPlayActor", "Function Engine.LocalPlayer.SpawnPlayActor")()); }
			ScriptFunction SendSplitJoin() { mixin(MGF!("mSendSplitJoin", "Function Engine.LocalPlayer.SendSplitJoin")()); }
			ScriptFunction GetActorVisibility() { mixin(MGF!("mGetActorVisibility", "Function Engine.LocalPlayer.GetActorVisibility")()); }
			ScriptFunction OverridePostProcessSettings() { mixin(MGF!("mOverridePostProcessSettings", "Function Engine.LocalPlayer.OverridePostProcessSettings")()); }
			ScriptFunction ClearPostProcessSettingsOverride() { mixin(MGF!("mClearPostProcessSettingsOverride", "Function Engine.LocalPlayer.ClearPostProcessSettingsOverride")()); }
			ScriptFunction SetControllerId() { mixin(MGF!("mSetControllerId", "Function Engine.LocalPlayer.SetControllerId")()); }
			ScriptFunction GetTranslationContext() { mixin(MGF!("mGetTranslationContext", "Function Engine.LocalPlayer.GetTranslationContext")()); }
			ScriptFunction InsertPostProcessingChain() { mixin(MGF!("mInsertPostProcessingChain", "Function Engine.LocalPlayer.InsertPostProcessingChain")()); }
			ScriptFunction RemovePostProcessingChain() { mixin(MGF!("mRemovePostProcessingChain", "Function Engine.LocalPlayer.RemovePostProcessingChain")()); }
			ScriptFunction RemoveAllPostProcessingChains() { mixin(MGF!("mRemoveAllPostProcessingChains", "Function Engine.LocalPlayer.RemoveAllPostProcessingChains")()); }
			ScriptFunction GetPostProcessChain() { mixin(MGF!("mGetPostProcessChain", "Function Engine.LocalPlayer.GetPostProcessChain")()); }
			ScriptFunction TouchPlayerPostProcessChain() { mixin(MGF!("mTouchPlayerPostProcessChain", "Function Engine.LocalPlayer.TouchPlayerPostProcessChain")()); }
			ScriptFunction DeProject() { mixin(MGF!("mDeProject", "Function Engine.LocalPlayer.DeProject")()); }
			ScriptFunction GetUniqueNetId() { mixin(MGF!("mGetUniqueNetId", "Function Engine.LocalPlayer.GetUniqueNetId")()); }
			ScriptFunction GetNickname() { mixin(MGF!("mGetNickname", "Function Engine.LocalPlayer.GetNickname")()); }
		}
	}
	struct PostProcessSettingsOverride
	{
		private ubyte __buffer__[244];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LocalPlayer.PostProcessSettingsOverride")()); }
		@property final
		{
			auto ref
			{
				float BlendStartTime() { mixin(MGPS!("float", 240)()); }
				float BlendOutDuration() { mixin(MGPS!("float", 236)()); }
				float BlendInDuration() { mixin(MGPS!("float", 232)()); }
				float CurrentBlendOutTime() { mixin(MGPS!("float", 228)()); }
				float CurrentBlendInTime() { mixin(MGPS!("float", 224)()); }
				// WARNING: Property 'Settings' has the same name as a defined type!
			}
			bool bBlendingOut() { mixin(MGBPS!(220, 0x2)()); }
			bool bBlendingOut(bool val) { mixin(MSBPS!(220, 0x2)()); }
			bool bBlendingIn() { mixin(MGBPS!(220, 0x1)()); }
			bool bBlendingIn(bool val) { mixin(MSBPS!(220, 0x1)()); }
		}
	}
	struct CurrentPostProcessVolumeInfo
	{
		private ubyte __buffer__[232];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LocalPlayer.CurrentPostProcessVolumeInfo")()); }
		@property final auto ref
		{
			float LastBlendTime() { mixin(MGPS!("float", 228)()); }
			float BlendStartTime() { mixin(MGPS!("float", 224)()); }
			PostProcessVolume LastVolumeUsed() { mixin(MGPS!("PostProcessVolume", 220)()); }
			PostProcessVolume.PostProcessSettings LastSettings() { mixin(MGPS!("PostProcessVolume.PostProcessSettings", 0)()); }
		}
	}
	struct SynchronizedActorVisibilityHistory
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS!("ScriptStruct Engine.LocalPlayer.SynchronizedActorVisibilityHistory")()); }
		@property final auto ref
		{
			UObject.Pointer CriticalSection() { mixin(MGPS!("UObject.Pointer", 4)()); }
			// WARNING: Property 'State' has the same name as a defined type!
		}
	}
	@property final
	{
		auto ref
		{
			int ControllerId() { mixin(MGPC!("int", 96)()); }
			GameViewportClient ViewportClient() { mixin(MGPC!("GameViewportClient", 100)()); }
			UObject.Vector2D Size() { mixin(MGPC!("UObject.Vector2D", 112)()); }
			UObject.Vector2D Origin() { mixin(MGPC!("UObject.Vector2D", 104)()); }
			ScriptArray!(PostProcessChain) PlayerPostProcessChains() { mixin(MGPC!("ScriptArray!(PostProcessChain)", 124)()); }
			ScriptArray!(LocalPlayer.PostProcessSettingsOverride) ActivePPOverrides() { mixin(MGPC!("ScriptArray!(LocalPlayer.PostProcessSettingsOverride)", 624)()); }
			TranslationContext TagContext() { mixin(MGPC!("TranslationContext", 656)()); }
			ScriptString LastMap() { mixin(MGPC!("ScriptString", 640)()); }
			UObject.EAspectRatioAxisConstraint AspectRatioAxisConstraint() { mixin(MGPC!("UObject.EAspectRatioAxisConstraint", 636)()); }
			LocalPlayer.CurrentPostProcessVolumeInfo LevelPPInfo() { mixin(MGPC!("LocalPlayer.CurrentPostProcessVolumeInfo", 392)()); }
			LocalPlayer.CurrentPostProcessVolumeInfo CurrentPPInfo() { mixin(MGPC!("LocalPlayer.CurrentPostProcessVolumeInfo", 160)()); }
			Vector LastViewLocation() { mixin(MGPC!("Vector", 148)()); }
			LocalPlayer.SynchronizedActorVisibilityHistory ActorVisibilityHistory() { mixin(MGPC!("LocalPlayer.SynchronizedActorVisibilityHistory", 140)()); }
			UObject.Pointer ViewState() { mixin(MGPC!("UObject.Pointer", 136)()); }
			PostProcessChain PlayerPostProcess() { mixin(MGPC!("PostProcessChain", 120)()); }
		}
		bool bSentSplitJoin() { mixin(MGBPC!(652, 0x2)()); }
		bool bSentSplitJoin(bool val) { mixin(MSBPC!(652, 0x2)()); }
		bool bWantToResetToMapDefaultPP() { mixin(MGBPC!(652, 0x1)()); }
		bool bWantToResetToMapDefaultPP(bool val) { mixin(MSBPC!(652, 0x1)()); }
	}
final:
	bool SpawnPlayActor(ScriptString pURL, ref ScriptString OutError)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = pURL;
		*cast(ScriptString*)&params[12] = OutError;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpawnPlayActor, params.ptr, cast(void*)0);
		OutError = *cast(ScriptString*)&params[12];
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
	void OverridePostProcessSettings(PostProcessVolume.PostProcessSettings OverrideSettings, float* BlendInTime = null)
	{
		ubyte params[224];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = OverrideSettings;
		if (BlendInTime !is null)
			*cast(float*)&params[220] = *BlendInTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.OverridePostProcessSettings, params.ptr, cast(void*)0);
	}
	void ClearPostProcessSettingsOverride(float* BlendOutTime = null)
	{
		ubyte params[4];
		params[] = 0;
		if (BlendOutTime !is null)
			*cast(float*)params.ptr = *BlendOutTime;
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
	void DeProject(UObject.Vector2D RelativeScreenPos, ref Vector WorldOrigin, ref Vector WorldDirection)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = RelativeScreenPos;
		*cast(Vector*)&params[8] = WorldOrigin;
		*cast(Vector*)&params[20] = WorldDirection;
		(cast(ScriptObject)this).ProcessEvent(Functions.DeProject, params.ptr, cast(void*)0);
		WorldOrigin = *cast(Vector*)&params[8];
		WorldDirection = *cast(Vector*)&params[20];
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
