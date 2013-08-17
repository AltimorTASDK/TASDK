module UnrealScript.UTGame.UTKillZVolume;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.PhysicsVolume;
import UnrealScript.Engine.Actor;

extern(C++) interface UTKillZVolume : PhysicsVolume
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTKillZVolume")); }
	private static __gshared UTKillZVolume mDefaultProperties;
	@property final static UTKillZVolume DefaultProperties() { mixin(MGDPC("UTKillZVolume", "UTKillZVolume UTGame.Default__UTKillZVolume")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mActorEnteredVolume;
			ScriptFunction mPawnEnteredVolume;
			ScriptFunction mTouch;
			ScriptFunction mKillActor;
		}
		public @property static final
		{
			ScriptFunction ActorEnteredVolume() { mixin(MGF("mActorEnteredVolume", "Function UTGame.UTKillZVolume.ActorEnteredVolume")); }
			ScriptFunction PawnEnteredVolume() { mixin(MGF("mPawnEnteredVolume", "Function UTGame.UTKillZVolume.PawnEnteredVolume")); }
			ScriptFunction Touch() { mixin(MGF("mTouch", "Function UTGame.UTKillZVolume.Touch")); }
			ScriptFunction KillActor() { mixin(MGF("mKillActor", "Function UTGame.UTKillZVolume.KillActor")); }
		}
	}
	// WARNING: Property 'KillZDamageType' has the same name as a defined type!
final:
	void ActorEnteredVolume(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ActorEnteredVolume, params.ptr, cast(void*)0);
	}
	void PawnEnteredVolume(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.PawnEnteredVolume, params.ptr, cast(void*)0);
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
	void KillActor(Actor Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.KillActor, params.ptr, cast(void*)0);
	}
}
