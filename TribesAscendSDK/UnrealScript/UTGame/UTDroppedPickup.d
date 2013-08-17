module UnrealScript.UTGame.UTDroppedPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.DroppedPickup;
import UnrealScript.Engine.Actor;

extern(C++) interface UTDroppedPickup : DroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDroppedPickup")()); }
	private static __gshared UTDroppedPickup mDefaultProperties;
	@property final static UTDroppedPickup DefaultProperties() { mixin(MGDPC!(UTDroppedPickup, "UTDroppedPickup UTGame.Default__UTDroppedPickup")()); }
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
			ScriptFunction PreBeginPlay() { mixin(MGF!("mPreBeginPlay", "Function UTGame.UTDroppedPickup.PreBeginPlay")()); }
			ScriptFunction SetPickupMesh() { mixin(MGF!("mSetPickupMesh", "Function UTGame.UTDroppedPickup.SetPickupMesh")()); }
			ScriptFunction SetPickupParticles() { mixin(MGF!("mSetPickupParticles", "Function UTGame.UTDroppedPickup.SetPickupParticles")()); }
			ScriptFunction Landed() { mixin(MGF!("mLanded", "Function UTGame.UTDroppedPickup.Landed")()); }
		}
	}
	static struct Pickup
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTDroppedPickup.Pickup")()); }
	}
	static struct FadeOut
	{
		private static __gshared ScriptState mStaticClass;
		@property final static ScriptState StaticClass() { mixin(MGSCSA!("State UTGame.UTDroppedPickup.FadeOut")()); }
	}
	@property final
	{
		auto ref
		{
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'MyLightEnvironment'!
			float StartScale() { mixin(MGPC!(float, 500)()); }
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupParticles'!
			// ERROR: Unsupported object class 'ComponentProperty' for the property named 'PickupMesh'!
		}
		bool bPickupable() { mixin(MGBPC!(504, 0x1)()); }
		bool bPickupable(bool val) { mixin(MSBPC!(504, 0x1)()); }
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
