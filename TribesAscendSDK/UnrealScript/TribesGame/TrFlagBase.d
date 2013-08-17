module UnrealScript.TribesGame.TrFlagBase;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrFlagBase")()); }
	private static __gshared TrFlagBase mDefaultProperties;
	@property final static TrFlagBase DefaultProperties() { mixin(MGDPC!(TrFlagBase, "TrFlagBase TribesGame.Default__TrFlagBase")()); }
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
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrFlagBase.ReplicatedEvent")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrFlagBase.PostBeginPlay")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrFlagBase.Tick")()); }
			ScriptFunction OnBaseChainChanged() { mixin(MGF!("mOnBaseChainChanged", "Function TribesGame.TrFlagBase.OnBaseChainChanged")()); }
			ScriptFunction ShouldMinimapRenderFor() { mixin(MGF!("mShouldMinimapRenderFor", "Function TribesGame.TrFlagBase.ShouldMinimapRenderFor")()); }
			ScriptFunction ClientReturnedHome() { mixin(MGF!("mClientReturnedHome", "Function TribesGame.TrFlagBase.ClientReturnedHome")()); }
			ScriptFunction SetHolder() { mixin(MGF!("mSetHolder", "Function TribesGame.TrFlagBase.SetHolder")()); }
			ScriptFunction ValidHolder() { mixin(MGF!("mValidHolder", "Function TribesGame.TrFlagBase.ValidHolder")()); }
			ScriptFunction SameTeamTouch() { mixin(MGF!("mSameTeamTouch", "Function TribesGame.TrFlagBase.SameTeamTouch")()); }
			ScriptFunction CustomRespawnEffects() { mixin(MGF!("mCustomRespawnEffects", "Function TribesGame.TrFlagBase.CustomRespawnEffects")()); }
			ScriptFunction bringUpBrightOff() { mixin(MGF!("mbringUpBrightOff", "Function TribesGame.TrFlagBase.bringUpBrightOff")()); }
			ScriptFunction CustomFadeOutEffects() { mixin(MGF!("mCustomFadeOutEffects", "Function TribesGame.TrFlagBase.CustomFadeOutEffects")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function TribesGame.TrFlagBase.Landed")()); }
			ScriptFunction EncroachedBy() { mixin(MGF!("mEncroachedBy", "Function TribesGame.TrFlagBase.EncroachedBy")()); }
			ScriptFunction Drop() { mixin(MGF!("mDrop", "Function TribesGame.TrFlagBase.Drop")()); }
			ScriptFunction SetFlagPropertiesToStationaryFlagState() { mixin(MGF!("mSetFlagPropertiesToStationaryFlagState", "Function TribesGame.TrFlagBase.SetFlagPropertiesToStationaryFlagState")()); }
			ScriptFunction SetFlagDynamicLightToNotBeDynamic() { mixin(MGF!("mSetFlagDynamicLightToNotBeDynamic", "Function TribesGame.TrFlagBase.SetFlagDynamicLightToNotBeDynamic")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrFlagBase.Destroyed")()); }
			ScriptFunction PostRenderFor() { mixin(MGF!("mPostRenderFor", "Function TribesGame.TrFlagBase.PostRenderFor")()); }
			ScriptFunction DisplayDebug() { mixin(MGF!("mDisplayDebug", "Function TribesGame.TrFlagBase.DisplayDebug")()); }
			ScriptFunction GetSpectatorName() { mixin(MGF!("mGetSpectatorName", "Function TribesGame.TrFlagBase.GetSpectatorName")()); }
			ScriptFunction GetSpectatorDescription() { mixin(MGF!("mGetSpectatorDescription", "Function TribesGame.TrFlagBase.GetSpectatorDescription")()); }
			ScriptFunction OnCollisionProxyTouched() { mixin(MGF!("mOnCollisionProxyTouched", "Function TribesGame.TrFlagBase.OnCollisionProxyTouched")()); }
		}
	}
	static struct Home
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagBase.Home")()); }
	}
	static struct Held
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagBase.Held")()); }
	}
	static struct Dropped
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrFlagBase.Dropped")()); }
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(MaterialInstanceConstant) MICArray() { mixin(MGPC!("ScriptArray!(MaterialInstanceConstant)", 776)()); }
			float m_fRageRadius() { mixin(MGPC!("float", 928)()); }
			float m_fDamageMomentumDampingWhileFalling() { mixin(MGPC!("float", 924)()); }
			int m_nDropFlagPingThreshold() { mixin(MGPC!("int", 920)()); }
			float m_fTeammatePassMaxDistanceSq() { mixin(MGPC!("float", 916)()); }
			int m_nNumBounces() { mixin(MGPC!("int", 912)()); }
			int m_nNumBouncesBeforeSlide() { mixin(MGPC!("int", 908)()); }
			float m_fIgnoreSameTeamTouch() { mixin(MGPC!("float", 904)()); }
			MaterialInstanceConstant m_MarkerMIC() { mixin(MGPC!("MaterialInstanceConstant", 900)()); }
			TrCollisionProxy m_CollisionProxyLevel3() { mixin(MGPC!("TrCollisionProxy", 896)()); }
			TrCollisionProxy m_CollisionProxyLevel2() { mixin(MGPC!("TrCollisionProxy", 892)()); }
			TrCollisionProxy m_CollisionProxyLevel1() { mixin(MGPC!("TrCollisionProxy", 888)()); }
			float m_fBounceDampingPercent() { mixin(MGPC!("float", 884)()); }
			float m_fForwardThrowVelocity() { mixin(MGPC!("float", 880)()); }
			float m_fInheritVelocityPct() { mixin(MGPC!("float", 876)()); }
			int m_TimeAwaySeconds() { mixin(MGPC!("int", 872)()); }
			Vector LastCameraPos() { mixin(MGPC!("Vector", 860)()); }
			Vector LastCameraDir() { mixin(MGPC!("Vector", 848)()); }
			Vector LastScreenLoc() { mixin(MGPC!("Vector", 836)()); }
			float m_FlagIconAlpha() { mixin(MGPC!("float", 832)()); }
			float m_fFriction() { mixin(MGPC!("float", 828)()); }
			float m_fMass() { mixin(MGPC!("float", 824)()); }
			float LastLocationPingTime() { mixin(MGPC!("float", 820)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'LightEnvironment'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'SuccessfulCaptureSystem'!
			Vector HoverboardingClothVelClamp() { mixin(MGPC!("Vector", 800)()); }
			Vector RunningClothVelClamp() { mixin(MGPC!("Vector", 788)()); }
			ParticleSystem RespawnEffect() { mixin(MGPC!("ParticleSystem", 768)()); }
		}
		bool m_bPassToTeammatesEnabled() { mixin(MGBPC!(772, 0x80)()); }
		bool m_bPassToTeammatesEnabled(bool val) { mixin(MSBPC!(772, 0x80)()); }
		bool m_bBounceSlideEnabled() { mixin(MGBPC!(772, 0x40)()); }
		bool m_bBounceSlideEnabled(bool val) { mixin(MSBPC!(772, 0x40)()); }
		bool bWasFlagReturned() { mixin(MGBPC!(772, 0x20)()); }
		bool bWasFlagReturned(bool val) { mixin(MSBPC!(772, 0x20)()); }
		bool bWasClothEnabled() { mixin(MGBPC!(772, 0x10)()); }
		bool bWasClothEnabled(bool val) { mixin(MSBPC!(772, 0x10)()); }
		bool bRespawning() { mixin(MGBPC!(772, 0x8)()); }
		bool bRespawning(bool val) { mixin(MSBPC!(772, 0x8)()); }
		bool bFadingOut() { mixin(MGBPC!(772, 0x4)()); }
		bool bFadingOut(bool val) { mixin(MSBPC!(772, 0x4)()); }
		bool bBringDownFromBright() { mixin(MGBPC!(772, 0x2)()); }
		bool bBringDownFromBright(bool val) { mixin(MSBPC!(772, 0x2)()); }
		bool bBringUpBright() { mixin(MGBPC!(772, 0x1)()); }
		bool bBringUpBright(bool val) { mixin(MSBPC!(772, 0x1)()); }
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
	void DisplayDebug(HUD pHUD, ref float out_YL, ref float out_YPos)
	{
		ubyte params[12];
		params[] = 0;
		*cast(HUD*)params.ptr = pHUD;
		*cast(float*)&params[4] = out_YL;
		*cast(float*)&params[8] = out_YPos;
		(cast(ScriptObject)this).ProcessEvent(Functions.DisplayDebug, params.ptr, cast(void*)0);
		out_YL = *cast(float*)&params[4];
		out_YPos = *cast(float*)&params[8];
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
