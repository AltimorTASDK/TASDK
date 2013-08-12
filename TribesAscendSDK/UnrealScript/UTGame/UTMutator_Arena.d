module UnrealScript.UTGame.UTMutator_Arena;

import ScriptClasses;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_Arena : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTMutator_Arena")); }
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
			ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_Arena.PostBeginPlay")); }
			ScriptFunction CheckReplacement() { return mCheckReplacement ? mCheckReplacement : (mCheckReplacement = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_Arena.CheckReplacement")); }
			ScriptFunction ModifyPlayer() { return mModifyPlayer ? mModifyPlayer : (mModifyPlayer = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTMutator_Arena.ModifyPlayer")); }
		}
	}
	@property final auto ref ScriptString ArenaWeaponClassPath() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 496); }
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
