module UnrealScript.UTGame.UTDroppedItemPickup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTDroppedPickup;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Controller;

extern(C++) interface UTDroppedItemPickup : UTDroppedPickup
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTDroppedItemPickup")()); }
	private static __gshared UTDroppedItemPickup mDefaultProperties;
	@property final static UTDroppedItemPickup DefaultProperties() { mixin(MGDPC!(UTDroppedItemPickup, "UTDroppedItemPickup UTGame.Default__UTDroppedItemPickup")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mBotDesireability;
			ScriptFunction mSetPickupMesh;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mDestroyed;
			ScriptFunction mDroppedFrom;
			ScriptFunction mPickedUpBy;
		}
		public @property static final
		{
			ScriptFunction BotDesireability() { mixin(MGF!("mBotDesireability", "Function UTGame.UTDroppedItemPickup.BotDesireability")()); }
			ScriptFunction SetPickupMesh() { mixin(MGF!("mSetPickupMesh", "Function UTGame.UTDroppedItemPickup.SetPickupMesh")()); }
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTDroppedItemPickup.PostBeginPlay")()); }
			ScriptFunction Destroyed() { mixin(MGF!("mDestroyed", "Function UTGame.UTDroppedItemPickup.Destroyed")()); }
			ScriptFunction DroppedFrom() { mixin(MGF!("mDroppedFrom", "Function UTGame.UTDroppedItemPickup.DroppedFrom")()); }
			ScriptFunction PickedUpBy() { mixin(MGF!("mPickedUpBy", "Function UTGame.UTDroppedItemPickup.PickedUpBy")()); }
		}
	}
	@property final auto ref
	{
		SoundCue PickupSound() { mixin(MGPC!("SoundCue", 516)()); }
		float MaxDesireability() { mixin(MGPC!("float", 512)()); }
	}
final:
	float BotDesireability(Pawn Bot, Controller C)
	{
		ubyte params[12];
		params[] = 0;
		*cast(Pawn*)params.ptr = Bot;
		*cast(Controller*)&params[4] = C;
		(cast(ScriptObject)this).ProcessEvent(Functions.BotDesireability, params.ptr, cast(void*)0);
		return *cast(float*)&params[8];
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
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void DroppedFrom(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.DroppedFrom, params.ptr, cast(void*)0);
	}
	void PickedUpBy(Pawn P)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = P;
		(cast(ScriptObject)this).ProcessEvent(Functions.PickedUpBy, params.ptr, cast(void*)0);
	}
}
