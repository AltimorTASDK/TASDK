module UnrealScript.UTGame.UTMutator_SuperBerserk;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_SuperBerserk : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTMutator_SuperBerserk")); }
	private static __gshared UTMutator_SuperBerserk mDefaultProperties;
	@property final static UTMutator_SuperBerserk DefaultProperties() { mixin(MGDPC("UTMutator_SuperBerserk", "UTMutator_SuperBerserk UTGame.Default__UTMutator_SuperBerserk")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mModifyPlayer;
			ScriptFunction mCheckReplacement;
		}
		public @property static final
		{
			ScriptFunction ModifyPlayer() { mixin(MGF("mModifyPlayer", "Function UTGame.UTMutator_SuperBerserk.ModifyPlayer")); }
			ScriptFunction CheckReplacement() { mixin(MGF("mCheckReplacement", "Function UTGame.UTMutator_SuperBerserk.CheckReplacement")); }
		}
	}
final:
	void ModifyPlayer(Pawn Other)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.ModifyPlayer, params.ptr, cast(void*)0);
	}
	bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReplacement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
