module UnrealScript.TribesGame.TrFlagBase;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.Controller;
import UnrealScript.Engine.Canvas;
import UnrealScript.UTGame.UTCarriedObject;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.ParticleSystem;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.HUD;

extern(C++) interface TrFlagBase : UTCarriedObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrFlagBase")); }
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
			ScriptFunction mLanded;
			ScriptFunction mEncroachedBy;
			ScriptFunction mDrop;
			ScriptFunction mSetFlagPropertiesToStationaryFlagState;
			ScriptFunction mSetFlagDynamicLightToNotBeDynamic;
			ScriptFunction mDestroyed;
			ScriptFunction mPostRenderFor;
			ScriptFunction mDisplayDebug;
			ScriptFunction mGetSpectatorName;
			ScriptFunction mGetSpectatorDescription;
			ScriptFunction mOnCollisionProxyTouched;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.ReplicatedEvent")); }
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.PostBeginPlay")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.Tick")); }
			ScriptFunction OnBaseChainChanged() { return mOnBaseChainChanged ? mOnBaseChainChanged : (mOnBaseChainChanged = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.OnBaseChainChanged")); }
			ScriptFunction ShouldMinimapRenderFor() { return mShouldMinimapRenderFor ? mShouldMinimapRenderFor : (mShouldMinimapRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.ShouldMinimapRenderFor")); }
			ScriptFunction ClientReturnedHome() { return mClientReturnedHome ? mClientReturnedHome : (mClientReturnedHome = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.ClientReturnedHome")); }
			ScriptFunction SetHolder() { return mSetHolder ? mSetHolder : (mSetHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.SetHolder")); }
			ScriptFunction ValidHolder() { return mValidHolder ? mValidHolder : (mValidHolder = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.ValidHolder")); }
			ScriptFunction SameTeamTouch() { return mSameTeamTouch ? mSameTeamTouch : (mSameTeamTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.SameTeamTouch")); }
			ScriptFunction CustomRespawnEffects() { return mCustomRespawnEffects ? mCustomRespawnEffects : (mCustomRespawnEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.CustomRespawnEffects")); }
			ScriptFunction bringUpBrightOff() { return mbringUpBrightOff ? mbringUpBrightOff : (mbringUpBrightOff = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.bringUpBrightOff")); }
			ScriptFunction CustomFadeOutEffects() { return mCustomFadeOutEffects ? mCustomFadeOutEffects : (mCustomFadeOutEffects = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.CustomFadeOutEffects")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.Landed")); }
			ScriptFunction EncroachedBy() { return mEncroachedBy ? mEncroachedBy : (mEncroachedBy = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.EncroachedBy")); }
			ScriptFunction Drop() { return mDrop ? mDrop : (mDrop = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.Drop")); }
			ScriptFunction SetFlagPropertiesToStationaryFlagState() { return mSetFlagPropertiesToStationaryFlagState ? mSetFlagPropertiesToStationaryFlagState : (mSetFlagPropertiesToStationaryFlagState = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.SetFlagPropertiesToStationaryFlagState")); }
			ScriptFunction SetFlagDynamicLightToNotBeDynamic() { return mSetFlagDynamicLightToNotBeDynamic ? mSetFlagDynamicLightToNotBeDynamic : (mSetFlagDynamicLightToNotBeDynamic = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.SetFlagDynamicLightToNotBeDynamic")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.Destroyed")); }
			ScriptFunction PostRenderFor() { return mPostRenderFor ? mPostRenderFor : (mPostRenderFor = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.PostRenderFor")); }
			ScriptFunction DisplayDebug() { return mDisplayDebug ? mDisplayDebug : (mDisplayDebug = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.DisplayDebug")); }
			ScriptFunction GetSpectatorName() { return mGetSpectatorName ? mGetSpectatorName : (mGetSpectatorName = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.GetSpectatorName")); }
			ScriptFunction GetSpectatorDescription() { return mGetSpectatorDescription ? mGetSpectatorDescription : (mGetSpectatorDescription = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.GetSpectatorDescription")); }
			ScriptFunction OnCollisionProxyTouched() { return mOnCollisionProxyTouched ? mOnCollisionProxyTouched : (mOnCollisionProxyTouched = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrFlagBase.OnCollisionProxyTouched")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { return *cast(ScriptArray!(MaterialInstanceConstant)*)(cast(size_t)cast(void*)this + 776); }
			float m_fRageRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 928); }
			float m_fDamageMomentumDampingWhileFalling() { return *cast(float*)(cast(size_t)cast(void*)this + 924); }
			int m_nDropFlagPingThreshold() { return *cast(int*)(cast(size_t)cast(void*)this + 920); }
			float m_fTeammatePassMaxDistanceSq() { return *cast(float*)(cast(size_t)cast(void*)this + 916); }
			int m_nNumBounces() { return *cast(int*)(cast(size_t)cast(void*)this + 912); }
			int m_nNumBouncesBeforeSlide() { return *cast(int*)(cast(size_t)cast(void*)this + 908); }
			float m_fIgnoreSameTeamTouch() { return *cast(float*)(cast(size_t)cast(void*)this + 904); }
			MaterialInstanceConstant m_MarkerMIC() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 900); }
			TrCollisionProxy m_CollisionProxyLevel3() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 896); }
			TrCollisionProxy m_CollisionProxyLevel2() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 892); }
			TrCollisionProxy m_CollisionProxyLevel1() { return *cast(TrCollisionProxy*)(cast(size_t)cast(void*)this + 888); }
			float m_fBounceDampingPercent() { return *cast(float*)(cast(size_t)cast(void*)this + 884); }
			float m_fForwardThrowVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 880); }
			float m_fInheritVelocityPct() { return *cast(float*)(cast(size_t)cast(void*)this + 876); }
			int m_TimeAwaySeconds() { return *cast(int*)(cast(size_t)cast(void*)this + 872); }
			Vector LastCameraPos() { return *cast(Vector*)(cast(size_t)cast(void*)this + 860); }
			Vector LastCameraDir() { return *cast(Vector*)(cast(size_t)cast(void*)this + 848); }
			Vector LastScreenLoc() { return *cast(Vector*)(cast(size_t)cast(void*)this + 836); }
			float m_FlagIconAlpha() { return *cast(float*)(cast(size_t)cast(void*)this + 832); }
			float m_fFriction() { return *cast(float*)(cast(size_t)cast(void*)this + 828); }
			float m_fMass() { return *cast(float*)(cast(size_t)cast(void*)this + 824); }
			float LastLocationPingTime() { return *cast(float*)(cast(size_t)cast(void*)this + 820); }
			Vector HoverboardingClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 800); }
			Vector RunningClothVelClamp() { return *cast(Vector*)(cast(size_t)cast(void*)this + 788); }
			ParticleSystem RespawnEffect() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 768); }
		}
		bool m_bPassToTeammatesEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x80) != 0; }
		bool m_bPassToTeammatesEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x80; } return val; }
		bool m_bBounceSlideEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x40) != 0; }
		bool m_bBounceSlideEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x40; } return val; }
		bool bWasFlagReturned() { return (*cast(uint*)(cast(size_t)cast(void*)this + 772) & 0x20) != 0; }
		bool bWasFlagReturned(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 772) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 772) &= ~0x20; } return val; }
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
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
	void EncroachedBy(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.EncroachedBy, params.ptr, cast(void*)0);
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
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostRenderFor(PlayerController PC, Canvas pCanvas, Vector CameraPosition, Vector CameraDir)
	{
		ubyte params[32];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		*cast(Canvas*)&params[4] = pCanvas;
		*cast(Vector*)&params[8] = CameraPosition;
		*cast(Vector*)&params[20] = CameraDir;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRenderFor, params.ptr, cast(void*)0);
	}
	void DisplayDebug(HUD pHUD, float* out_YL, float* out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = *out_YL;
		*cast(float*)&params[8] = *out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		*out_YL = *cast(float*)&params[4];
		*out_YPos = *cast(float*)&params[8];
	}
	ScriptString GetSpectatorName()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorName, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	ScriptString GetSpectatorDescription()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetSpectatorDescription, params.ptr, cast(void*)0);
		return *cast(ScriptString*)params.ptr;
	}
	void OnCollisionProxyTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCollisionProxyTouched, params.ptr, cast(void*)0);
	}
}
