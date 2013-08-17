module UnrealScript.TribesGame.TrTripActor;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrTripActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrTripActor")()); }
	private static __gshared TrTripActor mDefaultProperties;
	@property final static TrTripActor DefaultProperties() { mixin(MGDPC!(TrTripActor, "TrTripActor TribesGame.Default__TrTripActor")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mReplicatedEvent;
			ScriptFunction mCreateTripComponent;
			ScriptFunction mClientCreateVisualEffect;
			ScriptFunction mDestroyNotify;
			ScriptFunction mDestroyed;
			ScriptFunction mInitializeTripPhysics;
			ScriptFunction mGoToSleep;
			ScriptFunction mTick;
			ScriptFunction mTouch;
		}
		public @property static final
		{
			ScriptFunction ReplicatedEvent() { mixin(MGF!("mReplicatedEvent", "Function TribesGame.TrTripActor.ReplicatedEvent")()); }
			ScriptFunction CreateTripComponent() { mixin(MGF!("mCreateTripComponent", "Function TribesGame.TrTripActor.CreateTripComponent")()); }
			ScriptFunction ClientCreateVisualEffect() { mixin(MGF!("mClientCreateVisualEffect", "Function TribesGame.TrTripActor.ClientCreateVisualEffect")()); }
			ScriptFunction DestroyNotify() { mixin(MGF!("mDestroyNotify", "Function TribesGame.TrTripActor.DestroyNotify")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function TribesGame.TrTripActor.Destroyed")()); }
			ScriptFunction InitializeTripPhysics() { mixin(MGF!("mInitializeTripPhysics", "Function TribesGame.TrTripActor.InitializeTripPhysics")()); }
			ScriptFunction GoToSleep() { mixin(MGF!("mGoToSleep", "Function TribesGame.TrTripActor.GoToSleep")()); }
			ScriptFunction Tick() { mixin(MGF!("mTick", "Function TribesGame.TrTripActor.Tick")()); }
			ScriptFunction Touch() { mixin(MGF!("mTouch", "Function TribesGame.TrTripActor.Touch")()); }
		}
	}
	static struct TripAwake
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrTripActor.TripAwake")()); }
	}
	static struct TripSleep
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State TribesGame.TrTripActor.TripSleep")()); }
	}
	@property final
	{
		auto ref
		{
			float m_fSleepTime() { mixin(MGPC!("float", 492)()); }
			Actor r_Left() { mixin(MGPC!("Actor", 476)()); }
			Actor r_Right() { mixin(MGPC!("Actor", 480)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_TripComponent'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_pscLaserEffect'!
			ParticleSystem m_LaserTemplate() { mixin(MGPC!("ParticleSystem", 520)()); }
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'm_RightNotifier'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'm_LeftNotifier'!
			// ERROR: Unsupported object class 'InterfaceProperty' for the property named 'm_DestroyNotifier'!
			float r_fSleepEndTime() { mixin(MGPC!("float", 488)()); }
		}
		bool m_bRequiresTwoNotifiers() { mixin(MGBPC!(484, 0x4)()); }
		bool m_bRequiresTwoNotifiers(bool val) { mixin(MSBPC!(484, 0x4)()); }
		bool r_bIsInitialized() { mixin(MGBPC!(484, 0x2)()); }
		bool r_bIsInitialized(bool val) { mixin(MSBPC!(484, 0x2)()); }
		bool r_bIsPowered() { mixin(MGBPC!(484, 0x1)()); }
		bool r_bIsPowered(bool val) { mixin(MSBPC!(484, 0x1)()); }
	}
final:
	void ReplicatedEvent(ScriptName VarName)
	{
		ubyte params[8];
		params[] = 0;
		*cast(ScriptName*)params.ptr = VarName;
		(cast(ScriptObject)this).ProcessEvent(Functions.ReplicatedEvent, params.ptr, cast(void*)0);
	}
	void CreateTripComponent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CreateTripComponent, cast(void*)0, cast(void*)0);
	}
	void ClientCreateVisualEffect()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClientCreateVisualEffect, cast(void*)0, cast(void*)0);
	}
	void DestroyNotify(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* Notifier)
	{
		ubyte params[8];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = Notifier;
		(cast(ScriptObject)this).ProcessEvent(Functions.DestroyNotify, params.ptr, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void InitializeTripPhysics(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* Left, 
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void* Right)
	{
		ubyte params[16];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)params.ptr = Left;
		*cast(
// ERROR: Unknown object class 'Class Core.InterfaceProperty'!
void**)&params[8] = Right;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitializeTripPhysics, params.ptr, cast(void*)0);
	}
	void GoToSleep(bool* bIsPowered = null)
	{
		ubyte params[4];
		params[] = 0;
		if (bIsPowered !is null)
			*cast(bool*)params.ptr = *bIsPowered;
		(cast(ScriptObject)this).ProcessEvent(Functions.GoToSleep, params.ptr, cast(void*)0);
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void Touch(Actor Other, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* OtherComp, Vector HitLocation, Vector HitNormal)
	{
		ubyte params[32];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = OtherComp;
		*cast(Vector*)&params[8] = HitLocation;
		*cast(Vector*)&params[20] = HitNormal;
		(cast(ScriptObject)this).ProcessEvent(Functions.Touch, params.ptr, cast(void*)0);
	}
}
