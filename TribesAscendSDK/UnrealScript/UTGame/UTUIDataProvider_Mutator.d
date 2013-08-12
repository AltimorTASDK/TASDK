module UnrealScript.UTGame.UTUIDataProvider_Mutator;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_Mutator : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_Mutator")); }
	private static __gshared UTUIDataProvider_Mutator mDefaultProperties;
	@property final static UTUIDataProvider_Mutator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_Mutator)("UTUIDataProvider_Mutator UTGame.Default__UTUIDataProvider_Mutator")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldBeFiltered;
			ScriptFunction mSupportsCurrentGameMode;
		}
		public @property static final
		{
			ScriptFunction ShouldBeFiltered() { return mShouldBeFiltered ? mShouldBeFiltered : (mShouldBeFiltered = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTUIDataProvider_Mutator.ShouldBeFiltered")); }
			ScriptFunction SupportsCurrentGameMode() { return mSupportsCurrentGameMode ? mSupportsCurrentGameMode : (mSupportsCurrentGameMode = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTUIDataProvider_Mutator.SupportsCurrentGameMode")); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptString ClassName() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
			ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 164); }
			ScriptString GroupNames() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 176); }
			ScriptArray!(ScriptString) SupportedGameTypes() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 188); }
		}
		bool bOfficialMutator() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x2) != 0; }
		bool bOfficialMutator(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x2; } return val; }
		bool bStandaloneOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 200) & 0x1) != 0; }
		bool bStandaloneOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 200) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 200) &= ~0x1; } return val; }
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
