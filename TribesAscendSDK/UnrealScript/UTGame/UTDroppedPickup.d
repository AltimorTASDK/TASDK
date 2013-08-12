module UnrealScript.UTGame.UTDroppedPickup;

import ScriptClasses;
import UnrealScript.Engine.DroppedPickup;
import UnrealScript.Engine.Actor;

extern(C++) interface UTDroppedPickup : DroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTDroppedPickup")); }
	private static __gshared UTDroppedPickup mDefaultProperties;
	@property final static UTDroppedPickup DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTDroppedPickup)("UTDroppedPickup UTGame.Default__UTDroppedPickup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPreBeginPlay;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mSetPickupParticles;
			ScriptFunction mLanded;
		}
		public @property static final
		{
			ScriptFunction PreBeginPlay() { return mPreBeginPlay ? mPreBeginPlay : (mPreBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDroppedPickup.PreBeginPlay")); }
			ScriptFunction SetPickupMesh() { return mSetPickupMesh ? mSetPickupMesh : (mSetPickupMesh = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDroppedPickup.SetPickupMesh")); }
			ScriptFunction SetPickupParticles() { return mSetPickupParticles ? mSetPickupParticles : (mSetPickupParticles = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDroppedPickup.SetPickupParticles")); }
			ScriptFunction Landed() { return mLanded ? mLanded : (mLanded = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTDroppedPickup.Landed")); }
		}
	}
	@property final
	{
		@property final auto ref float StartScale() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
		bool bPickupable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
		bool bPickupable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	}
final:
	void PreBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PreBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetPickupMesh(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewPickupMesh)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewPickupMesh;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupMesh, params.ptr, cast(void*)0);
	}
	void SetPickupParticles(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* NewPickupParticles)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = NewPickupParticles;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPickupParticles, params.ptr, cast(void*)0);
	}
	void Landed(Vector HitNormal, Actor FloorActor)
	{
		ubyte params[16];
		params[] = 0;
		*cast(Vector*)params.ptr = HitNormal;
		*cast(Actor*)&params[12] = FloorActor;
		(cast(ScriptObject)this).ProcessEvent(Functions.Landed, params.ptr, cast(void*)0);
	}
}
