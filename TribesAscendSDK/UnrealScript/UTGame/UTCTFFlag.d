module UnrealScript.UTGame.UTCTFFlag;

import ScriptClasses;
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
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTCTFFlag")); }
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
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.PostBeginPlay")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.Tick")); }
			ScriptFunction OnBaseChainChanged() { return mOnBaseChainChanged ? mOnBaseChainChanged : (mOnBaseChainChanged = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.OnBaseChainChanged")); }
			ScriptFunction ShouldMinimapRenderFor() { return mShouldMinimapRenderFor ? mShouldMinimapRenderFor : (mShouldMinimapRenderFor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.ShouldMinimapRenderFor")); }
			ScriptFunction ClientReturnedHome() { return mClientReturnedHome ? mClientReturnedHome : (mClientReturnedHome = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.ClientReturnedHome")); }
			ScriptFunction SetHolder() { return mSetHolder ? mSetHolder : (mSetHolder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.SetHolder")); }
			ScriptFunction ValidHolder() { return mValidHolder ? mValidHolder : (mValidHolder = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.ValidHolder")); }
			ScriptFunction SameTeamTouch() { return mSameTeamTouch ? mSameTeamTouch : (mSameTeamTouch = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.SameTeamTouch")); }
			ScriptFunction CustomRespawnEffects() { return mCustomRespawnEffects ? mCustomRespawnEffects : (mCustomRespawnEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.CustomRespawnEffects")); }
			ScriptFunction bringUpBrightOff() { return mbringUpBrightOff ? mbringUpBrightOff : (mbringUpBrightOff = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.bringUpBrightOff")); }
			ScriptFunction CustomFadeOutEffects() { return mCustomFadeOutEffects ? mCustomFadeOutEffects : (mCustomFadeOutEffects = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.CustomFadeOutEffects")); }
			ScriptFunction Drop() { return mDrop ? mDrop : (mDrop = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.Drop")); }
			ScriptFunction SetFlagPropertiesToStationaryFlagState() { return mSetFlagPropertiesToStationaryFlagState ? mSetFlagPropertiesToStationaryFlagState : (mSetFlagPropertiesToStationaryFlagState = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.SetFlagPropertiesToStationaryFlagState")); }
			ScriptFunction SetFlagDynamicLightToNotBeDynamic() { return mSetFlagDynamicLightToNotBeDynamic ? mSetFlagDynamicLightToNotBeDynamic : (mSetFlagDynamicLightToNotBeDynamic = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTCTFFlag.SetFlagDynamicLightToNotBeDynamic")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
			float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			ParticleSystem RespawnEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 768); }
		}
		bool bWasClothEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x10) != 0; }
		bool bWasClothEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x10; } return val; }
		bool bRespawning() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x8) != 0; }
		bool bRespawning(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x8; } return val; }
		bool bFadingOut() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x4) != 0; }
		bool bFadingOut(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x4; } return val; }
		bool bBringDownFromBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x2) != 0; }
		bool bBringDownFromBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x2; } return val; }
		bool bBringUpBright() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x1) != 0; }
		bool bBringUpBright(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x1; } return val; }
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
	void Drop(Controller Killer, bool bNoThrow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Controller*)params.ptr = Killer;
		*cast(bool*)&params[4] = bNoThrow;
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
