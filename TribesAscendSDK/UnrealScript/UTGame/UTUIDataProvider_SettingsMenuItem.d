module UnrealScript.UTGame.UTUIDataProvider_SettingsMenuItem;

import ScriptClasses;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_SettingsMenuItem : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTUIDataProvider_SettingsMenuItem")); }
	private static __gshared UTUIDataProvider_SettingsMenuItem mDefaultProperties;
	@property final static UTUIDataProvider_SettingsMenuItem DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTUIDataProvider_SettingsMenuItem)("UTUIDataProvider_SettingsMenuItem UTGame.Default__UTUIDataProvider_SettingsMenuItem")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeFiltered;
		public @property static final ScriptFunction ShouldBeFiltered() { return mShouldBeFiltered ? mShouldBeFiltered : (mShouldBeFiltered = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTUIDataProvider_SettingsMenuItem.ShouldBeFiltered")); }
	}
	@property final
	{
		@property final auto ref ScriptString Description() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 152); }
		bool bFrontEndOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 164) & 0x1) != 0; }
		bool bFrontEndOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 164) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 164) &= ~0x1; } return val; }
	}
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
