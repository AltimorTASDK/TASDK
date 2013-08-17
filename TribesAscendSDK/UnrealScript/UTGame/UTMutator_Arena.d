module UnrealScript.UTGame.UTMutator_Arena;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_Arena : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTMutator_Arena")()); }
	private static __gshared UTMutator_Arena mDefaultProperties;
	@property final static UTMutator_Arena DefaultProperties() { mixin(MGDPC!(UTMutator_Arena, "UTMutator_Arena UTGame.Default__UTMutator_Arena")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mCheckReplacement;
			ScriptFunction mModifyPlayer;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function UTGame.UTMutator_Arena.PostBeginPlay")()); }
			ScriptFunction CheckReplacement() { mixin(MGF!("mCheckReplacement", "Function UTGame.UTMutator_Arena.CheckReplacement")()); }
			ScriptFunction ModifyPlayer() { mixin(MGF!("mModifyPlayer", "Function UTGame.UTMutator_Arena.ModifyPlayer")()); }
		}
	}
	@property final auto ref ScriptString ArenaWeaponClassPath() { mixin(MGPC!(ScriptString, 496)()); }
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReplacement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
	void ModifyPlayer(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPlayer, params.ptr, cast(void*)0);
	}
}
