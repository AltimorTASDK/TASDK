module UnrealScript.UTGame.UTMutator_NoPowerups;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.UTGame.UTMutator;

extern(C++) interface UTMutator_NoPowerups : UTMutator
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTMutator_NoPowerups")); }
	private static __gshared UTMutator_NoPowerups mDefaultProperties;
	@property final static UTMutator_NoPowerups DefaultProperties() { mixin(MGDPC("UTMutator_NoPowerups", "UTMutator_NoPowerups UTGame.Default__UTMutator_NoPowerups")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckReplacement;
		public @property static final ScriptFunction CheckReplacement() { mixin(MGF("mCheckReplacement", "Function UTGame.UTMutator_NoPowerups.CheckReplacement")); }
	}
	final bool CheckReplacement(Actor Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckReplacement, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
