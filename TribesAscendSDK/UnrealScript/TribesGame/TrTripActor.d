module UnrealScript.TribesGame.TrTripActor;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.ParticleSystem;

extern(C++) interface TrTripActor : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrTripActor")); }
	private static __gshared TrTripActor mDefaultProperties;
	@property final static TrTripActor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrTripActor)("TrTripActor TribesGame.Default__TrTripActor")); }
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
			ScriptFunction ReplicatedEvent() { return mReplicatedEvent ? mReplicatedEvent : (mReplicatedEvent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.ReplicatedEvent")); }
			ScriptFunction CreateTripComponent() { return mCreateTripComponent ? mCreateTripComponent : (mCreateTripComponent = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.CreateTripComponent")); }
			ScriptFunction ClientCreateVisualEffect() { return mClientCreateVisualEffect ? mClientCreateVisualEffect : (mClientCreateVisualEffect = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.ClientCreateVisualEffect")); }
			ScriptFunction DestroyNotify() { return mDestroyNotify ? mDestroyNotify : (mDestroyNotify = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.DestroyNotify")); }
			ScriptFunction Destroyed() { return mDestroyed ? mDestroyed : (mDestroyed = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.Destroyed")); }
			ScriptFunction InitializeTripPhysics() { return mInitializeTripPhysics ? mInitializeTripPhysics : (mInitializeTripPhysics = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.InitializeTripPhysics")); }
			ScriptFunction GoToSleep() { return mGoToSleep ? mGoToSleep : (mGoToSleep = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.GoToSleep")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.Tick")); }
			ScriptFunction Touch() { return mTouch ? mTouch : (mTouch = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrTripActor.Touch")); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fSleepTime() { return *cast(float*)(cast(size_t)cast(void*)this + 492); }
			Actor r_Left() { return *cast(Actor*)(cast(size_t)cast(void*)this + 476); }
			Actor r_Right() { return *cast(Actor*)(cast(size_t)cast(void*)this + 480); }
			ParticleSystem m_LaserTemplate() { return *cast(ParticleSystem*)(cast(size_t)cast(void*)this + 520); }
			float r_fSleepEndTime() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
		}
		bool m_bRequiresTwoNotifiers() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x4) != 0; }
		bool m_bRequiresTwoNotifiers(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x4; } return val; }
		bool r_bIsInitialized() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x2) != 0; }
		bool r_bIsInitialized(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x2; } return val; }
		bool r_bIsPowered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 484) & 0x1) != 0; }
		bool r_bIsPowered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 484) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 484) &= ~0x1; } return val; }
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
	void GoToSleep(bool bIsPowered)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bIsPowered;
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
