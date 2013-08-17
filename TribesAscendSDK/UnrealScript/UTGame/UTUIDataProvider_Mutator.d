module UnrealScript.UTGame.UTUIDataProvider_Mutator;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Mutator : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_Mutator")()); }
	private static __gshared UTUIDataProvider_Mutator mDefaultProperties;
	@property final static UTUIDataProvider_Mutator DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_Mutator, "UTUIDataProvider_Mutator UTGame.Default__UTUIDataProvider_Mutator")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldBeFiltered;
			ScriptFunction mSupportsCurrentGameMode;
		}
		public @property static final
		{
			ScriptFunction ShouldBeFiltered() { mixin(MGF!("mShouldBeFiltered", "Function UTGame.UTUIDataProvider_Mutator.ShouldBeFiltered")()); }
			ScriptFunction SupportsCurrentGameMode() { mixin(MGF!("mSupportsCurrentGameMode", "Function UTGame.UTUIDataProvider_Mutator.SupportsCurrentGameMode")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString ClassName() { mixin(MGPC!(ScriptString, 152)()); }
			ScriptString Description() { mixin(MGPC!(ScriptString, 164)()); }
			ScriptString GroupNames() { mixin(MGPC!(ScriptString, 176)()); }
			ScriptArray!(ScriptString) SupportedGameTypes() { mixin(MGPC!(ScriptArray!(ScriptString), 188)()); }
		}
		bool bOfficialMutator() { mixin(MGBPC!(200, 0x2)()); }
		bool bOfficialMutator(bool val) { mixin(MSBPC!(200, 0x2)()); }
		bool bStandaloneOnly() { mixin(MGBPC!(200, 0x1)()); }
		bool bStandaloneOnly(bool val) { mixin(MSBPC!(200, 0x1)()); }
	}
final:
	bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SupportsCurrentGameMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SupportsCurrentGameMode, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
