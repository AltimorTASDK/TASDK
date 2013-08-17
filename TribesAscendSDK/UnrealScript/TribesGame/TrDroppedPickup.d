module UnrealScript.TribesGame.TrDroppedPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDroppedPickup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Canvas;
import UnrealScript.TribesGame.TrCollisionProxy;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrPawn;
import UnrealScript.Engine.PlayerController;

extern(C++) interface TrDroppedPickup : UTDroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDroppedPickup")); }
	private static __gshared TrDroppedPickup mDefaultProperties;
	@property final static TrDroppedPickup DefaultProperties() { mixin(MGDPC("TrDroppedPickup", "TrDroppedPickup TribesGame.Default__TrDroppedPickup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDestroyed;
			ScriptFunction mGiveTo;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDoBounce;
			ScriptFunction mHitWall;
			ScriptFunction mOnCollisionProxyTouched;
			ScriptFunction mTick;
			ScriptFunction mPostRenderFor;
		}
		public @property static final
		{
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrDroppedPickup.Destroyed")); }
			ScriptFunction GiveTo() { mixin(MGF("mGiveTo", "Function TribesGame.TrDroppedPickup.GiveTo")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrDroppedPickup.PostBeginPlay")); }
			ScriptFunction DoBounce() { mixin(MGF("mDoBounce", "Function TribesGame.TrDroppedPickup.DoBounce")); }
			ScriptFunction HitWall() { mixin(MGF("mHitWall", "Function TribesGame.TrDroppedPickup.HitWall")); }
			ScriptFunction OnCollisionProxyTouched() { mixin(MGF("mOnCollisionProxyTouched", "Function TribesGame.TrDroppedPickup.OnCollisionProxyTouched")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function TribesGame.TrDroppedPickup.Tick")); }
			ScriptFunction PostRenderFor() { mixin(MGF("mPostRenderFor", "Function TribesGame.TrDroppedPickup.PostRenderFor")); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA("State TribesGame.TrDroppedPickup.Pickup")); }
	}
	@property final
	{
		auto ref
		{
			TrCollisionProxy m_CollisionProxy() { mixin(MGPC("TrCollisionProxy", 552)); }
			float m_fMarkerOpacity() { mixin(MGPC("float", 548)); }
			float m_fCurrentMarkerTime() { mixin(MGPC("float", 544)); }
			Rotator m_rMarkerRot() { mixin(MGPC("Rotator", 532)); }
			float m_fMarkerBlinkSpeed() { mixin(MGPC("float", 528)); }
			float m_fMarkerScale() { mixin(MGPC("float", 524)); }
			float m_fMarkerZOffset() { mixin(MGPC("float", 520)); }
			float m_PctAmmoToRefill() { mixin(MGPC("float", 516)); }
			SoundCue m_AmmoPickupSound() { mixin(MGPC("SoundCue", 512)); }
		}
		bool m_bHasHitObjective() { mixin(MGBPC(556, 0x1)); }
		bool m_bHasHitObjective(bool val) { mixin(MSBPC(556, 0x1)); }
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void GiveTo(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.GiveTo, params.ptr, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void DoBounce(Actor Other, Vector HitNormal)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(Vector*)&params[4] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.DoBounce, params.ptr, cast(void*)0);
	}
	void HitWall(Vector HitNormal, Actor Wall, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* WallComp)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = Wall;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[16] = WallComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.HitWall, params.ptr, cast(void*)0);
	}
	void OnCollisionProxyTouched(TrPawn TRP)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPawn*)params.ptr = TRP;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnCollisionProxyTouched, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
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
}
