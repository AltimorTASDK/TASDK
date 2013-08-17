module UnrealScript.UTGame.UTCTFFlag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;

extern(C++) interface UTCTFFlag : UTCarriedObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTCTFFlag")); }
	private static __gshared UTCTFFlag mDefaultProperties;
	@property final static UTCTFFlag DefaultProperties() { mixin(MGDPC("UTCTFFlag", "UTCTFFlag UTGame.Default__UTCTFFlag")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mTick;
			ScriptFunction mOnBaseChainChanged;
			ScriptFunction mShouldMinimapRenderFor;
			ScriptFunction mClientReturnedHome;
			ScriptFunction mSetHolder;
			ScriptFunction mValidHolder;
			ScriptFunction mSameTeamTouch;
			ScriptFunction mCustomRespawnEffects;
			ScriptFunction mbringUpBrightOff;
			ScriptFunction mCustomFadeOutEffects;
			ScriptFunction mDrop;
			ScriptFunction mSetFlagPropertiesToStationaryFlagState;
			ScriptFunction mSetFlagDynamicLightToNotBeDynamic;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF("mReplicatedEvent", "Function UTGame.UTCTFFlag.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function UTGame.UTCTFFlag.PostBeginPlay")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function UTGame.UTCTFFlag.Tick")); }
			ScriptFunction OnBaseChainChanged() { mixin(MGF("mOnBaseChainChanged", "Function UTGame.UTCTFFlag.OnBaseChainChanged")); }
			ScriptFunction ShouldMinimapRenderFor() { mixin(MGF("mShouldMinimapRenderFor", "Function UTGame.UTCTFFlag.ShouldMinimapRenderFor")); }
			ScriptFunction ClientReturnedHome() { mixin(MGF("mClientReturnedHome", "Function UTGame.UTCTFFlag.ClientReturnedHome")); }
			ScriptFunction SetHolder() { mixin(MGF("mSetHolder", "Function UTGame.UTCTFFlag.SetHolder")); }
			ScriptFunction ValidHolder() { mixin(MGF("mValidHolder", "Function UTGame.UTCTFFlag.ValidHolder")); }
			ScriptFunction SameTeamTouch() { mixin(MGF("mSameTeamTouch", "Function UTGame.UTCTFFlag.SameTeamTouch")); }
			ScriptFunction CustomRespawnEffects() { mixin(MGF("mCustomRespawnEffects", "Function UTGame.UTCTFFlag.CustomRespawnEffects")); }
			ScriptFunction bringUpBrightOff() { mixin(MGF("mbringUpBrightOff", "Function UTGame.UTCTFFlag.bringUpBrightOff")); }
			ScriptFunction CustomFadeOutEffects() { mixin(MGF("mCustomFadeOutEffects", "Function UTGame.UTCTFFlag.CustomFadeOutEffects")); }
			ScriptFunction Drop() { mixin(MGF("mDrop", "Function UTGame.UTCTFFlag.Drop")); }
			ScriptFunction SetFlagPropertiesToStationaryFlagState() { mixin(MGF("mSetFlagPropertiesToStationaryFlagState", "Function UTGame.UTCTFFlag.SetFlagPropertiesToStationaryFlagState")); }
			ScriptFunction SetFlagDynamicLightToNotBeDynamic() { mixin(MGF("mSetFlagDynamicLightToNotBeDynamic", "Function UTGame.UTCTFFlag.SetFlagDynamicLightToNotBeDynamic")); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTCTFFlag.Home")); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State UTGame.UTCTFFlag.Dropped")); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { mixin(MGPC("ScriptArray!(MaterialInstanceConstant)", 776)); }
			float LastLocationPingTime() { mixin(MGPC("float", 820)); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SuccessfulCaptureSystem'!
			Vector HoverboardingClothVelClamp() { mixin(MGPC("Vector", 800)); }
			Vector RunningClothVelClamp() { mixin(MGPC("Vector", 788)); }
			ParticleSystem RespawnEffect() { mixin(MGPC("ParticleSystem", 768)); }
		}
		bool bWasClothEnabled() { mixin(MGBPC(772, 0x10)); }
		bool bWasClothEnabled(bool val) { mixin(MSBPC(772, 0x10)); }
		bool bRespawning() { mixin(MGBPC(772, 0x8)); }
		bool bRespawning(bool val) { mixin(MSBPC(772, 0x8)); }
		bool bFadingOut() { mixin(MGBPC(772, 0x4)); }
		bool bFadingOut(bool val) { mixin(MSBPC(772, 0x4)); }
		bool bBringDownFromBright() { mixin(MGBPC(772, 0x2)); }
		bool bBringDownFromBright(bool val) { mixin(MSBPC(772, 0x2)); }
		bool bBringUpBright() { mixin(MGBPC(772, 0x1)); }
		bool bBringUpBright(bool val) { mixin(MSBPC(772, 0x1)); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void OnBaseChainChanged()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBaseChainChanged, cast(void*)0, cast(void*)0);
	}
	bool ShouldMinimapRenderFor(PlayerController PC)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldMinimapRenderFor, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ClientReturnedHome()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientReturnedHome, cast(void*)0, cast(void*)0);
	}
	void SetHolder(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetHolder, params.ptr, cast(void*)0);
	}
	bool ValidHolder(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ValidHolder, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void SameTeamTouch(Controller C)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Controller*)params.ptr = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.SameTeamTouch, params.ptr, cast(void*)0);
	}
	void CustomRespawnEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomRespawnEffects, cast(void*)0, cast(void*)0);
	}
	void bringUpBrightOff()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.bringUpBrightOff, cast(void*)0, cast(void*)0);
	}
	void CustomFadeOutEffects()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CustomFadeOutEffects, cast(void*)0, cast(void*)0);
	}
	void Drop(Controller* Killer = null, bool* bNoThrow = null)
	{
		ubyte params[8];
		params[] = 0;
		if (Killer !is null)
			*cast(Controller*)params.ptr = *Killer;
		if (bNoThrow !is null)
			*cast(bool*)&params[4] = *bNoThrow;
		(cast(ScriptObject)this).ProcessEvent(Functions.Drop, params.ptr, cast(void*)0);
	}
	void SetFlagPropertiesToStationaryFlagState()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagPropertiesToStationaryFlagState, cast(void*)0, cast(void*)0);
	}
	void SetFlagDynamicLightToNotBeDynamic()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.SetFlagDynamicLightToNotBeDynamic, cast(void*)0, cast(void*)0);
	}
}
