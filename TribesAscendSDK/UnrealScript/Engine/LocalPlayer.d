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
	struct PostProcessSettingsOverride
	{
		public @property final auto ref float BlendStartTime() { return *cast(float*)(cast(size_t)&this + 240); }
		private ubyte __BlendStartTime[4];
		public @property final auto ref float BlendOutDuration() { return *cast(float*)(cast(size_t)&this + 236); }
		private ubyte __BlendOutDuration[4];
		public @property final auto ref float BlendInDuration() { return *cast(float*)(cast(size_t)&this + 232); }
		private ubyte __BlendInDuration[4];
		public @property final auto ref float CurrentBlendOutTime() { return *cast(float*)(cast(size_t)&this + 228); }
		private ubyte __CurrentBlendOutTime[4];
		public @property final auto ref float CurrentBlendInTime() { return *cast(float*)(cast(size_t)&this + 224); }
		private ubyte __CurrentBlendInTime[4];
		public @property final bool bBlendingOut() { return (*cast(uint*)(cast(size_t)&this + 220) & 0x2) != 0; }
		public @property final bool bBlendingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 220) |= 0x2; } else { *cast(uint*)(cast(size_t)&this + 220) &= ~0x2; } return val; }
		private ubyte __bBlendingOut[4];
		public @property final bool bBlendingIn() { return (*cast(uint*)(cast(size_t)&this + 220) & 0x1) != 0; }
		public @property final bool bBlendingIn(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 220) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 220) &= ~0x1; } return val; }
		private ubyte __bBlendingIn[4];
		// WARNING: Property 'Settings' has the same name as a defined type!
	}
	struct CurrentPostProcessVolumeInfo
	{
		public @property final auto ref float LastBlendTime() { return *cast(float*)(cast(size_t)&this + 228); }
		private ubyte __LastBlendTime[4];
		public @property final auto ref float BlendStartTime() { return *cast(float*)(cast(size_t)&this + 224); }
		private ubyte __BlendStartTime[4];
		public @property final auto ref PostProcessVolume LastVolumeUsed() { return *cast(PostProcessVolume*)(cast(size_t)&this + 220); }
		private ubyte __LastVolumeUsed[4];
		public @property final auto ref PostProcessVolume.PostProcessSettings LastSettings() { return *cast(PostProcessVolume.PostProcessSettings*)(cast(size_t)&this + 0); }
		private ubyte __LastSettings[220];
	}
	struct SynchronizedActorVisibilityHistory
	{
		public @property final auto ref UObject.Pointer CriticalSection() { return *cast(UObject.Pointer*)(cast(size_t)&this + 4); }
		private ubyte __CriticalSection[4];
		// WARNING: Property 'State' has the same name as a defined type!
	}
	public @property final auto ref int ControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref GameViewportClient ViewportClient() { return *cast(GameViewportClient*)(cast(size_t)cast(void*)this + 100); }
	public @property final auto ref UObject.Vector2D Size() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 112); }
	public @property final auto ref UObject.Vector2D Origin() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 104); }
	public @property final auto ref ScriptArray!(PostProcessChain) PlayerPostProcessChains() { return *cast(ScriptArray!(PostProcessChain)*)(cast(size_t)cast(void*)this + 124); }
	public @property final auto ref ScriptArray!(LocalPlayer.PostProcessSettingsOverride) ActivePPOverrides() { return *cast(ScriptArray!(LocalPlayer.PostProcessSettingsOverride)*)(cast(size_t)cast(void*)this + 624); }
	public @property final auto ref TranslationContext TagContext() { return *cast(TranslationContext*)(cast(size_t)cast(void*)this + 656); }
	public @property final bool bSentSplitJoin() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x2) != 0; }
	public @property final bool bSentSplitJoin(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x2; } return val; }
	public @property final bool bWantToResetToMapDefaultPP() { return (*cast(uint*)(cast(size_t)cast(void*)this + 652) & 0x1) != 0; }
	public @property final bool bWantToResetToMapDefaultPP(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 652) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 652) &= ~0x1; } return val; }
	public @property final auto ref ScriptString LastMap() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 640); }
	public @property final auto ref UObject.EAspectRatioAxisConstraint AspectRatioAxisConstraint() { return *cast(UObject.EAspectRatioAxisConstraint*)(cast(size_t)cast(void*)this + 636); }
	public @property final auto ref LocalPlayer.CurrentPostProcessVolumeInfo LevelPPInfo() { return *cast(LocalPlayer.CurrentPostProcessVolumeInfo*)(cast(size_t)cast(void*)this + 392); }
	public @property final auto ref LocalPlayer.CurrentPostProcessVolumeInfo CurrentPPInfo() { return *cast(LocalPlayer.CurrentPostProcessVolumeInfo*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref Vector LastViewLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 148); }
	public @property final auto ref LocalPlayer.SynchronizedActorVisibilityHistory ActorVisibilityHistory() { return *cast(LocalPlayer.SynchronizedActorVisibilityHistory*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref UObject.Pointer ViewState() { return *cast(UObject.Pointer*)(cast(size_t)cast(void*)this + 136); }
	public @property final auto ref PostProcessChain PlayerPostProcess() { return *cast(PostProcessChain*)(cast(size_t)cast(void*)this + 120); }
	final bool SpawnPlayActor(ScriptString URL, ScriptString* OutError)
	{
		ubyte params[28];
		params[] = 0;
		*cast(ScriptString*)params.ptr = URL;
		*cast(ScriptString*)&params[12] = *OutError;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17915], params.ptr, cast(void*)0);
		*OutError = *cast(ScriptString*)&params[12];
		return *cast(bool*)&params[24];
	}
	final void SendSplitJoin()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[17918], cast(void*)0, cast(void*)0);
	}
	final bool GetActorVisibility(Actor TestActor)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = TestActor;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19507], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final void OverridePostProcessSettings(PostProcessVolume.PostProcessSettings OverrideSettings, float BlendInTime)
	{
		ubyte params[224];
		params[] = 0;
		*cast(PostProcessVolume.PostProcessSettings*)params.ptr = OverrideSettings;
		*cast(float*)&params[220] = BlendInTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19510], params.ptr, cast(void*)0);
	}
	final void ClearPostProcessSettingsOverride(float BlendOutTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = BlendOutTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19513], params.ptr, cast(void*)0);
	}
	final void SetControllerId(int NewControllerId)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewControllerId;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19515], params.ptr, cast(void*)0);
	}
	final TranslationContext GetTranslationContext()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19519], params.ptr, cast(void*)0);
		return *cast(TranslationContext*)params.ptr;
	}
	final bool InsertPostProcessingChain(PostProcessChain InChain, int InIndex, bool bInClone)
	{
		ubyte params[16];
		params[] = 0;
		*cast(PostProcessChain*)params.ptr = InChain;
		*cast(int*)&params[4] = InIndex;
		*cast(bool*)&params[8] = bInClone;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19521], params.ptr, cast(void*)0);
		return *cast(bool*)&params[12];
	}
	final bool RemovePostProcessingChain(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19526], params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	final bool RemoveAllPostProcessingChains()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19529], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final PostProcessChain GetPostProcessChain(int InIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = InIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19531], params.ptr, cast(void*)0);
		return *cast(PostProcessChain*)&params[4];
	}
	final void TouchPlayerPostProcessChain()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19534], cast(void*)0, cast(void*)0);
	}
	final void DeProject(UObject.Vector2D RelativeScreenPos, Vector* WorldOrigin, Vector* WorldDirection)
	{
		ubyte params[32];
		params[] = 0;
		*cast(UObject.Vector2D*)params.ptr = RelativeScreenPos;
		*cast(Vector*)&params[8] = *WorldOrigin;
		*cast(Vector*)&params[20] = *WorldDirection;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19535], params.ptr, cast(void*)0);
		*WorldOrigin = *cast(Vector*)&params[8];
		*WorldDirection = *cast(Vector*)&params[20];
	}
	final OnlineSubsystem.UniqueNetId GetUniqueNetId()
	{
		ubyte params[8];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19539], params.ptr, cast(void*)0);
		return *cast(OnlineSubsystem.UniqueNetId*)params.ptr;
	}
	final ScriptString GetNickname()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[19543], params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
}
