module UnrealScript.UTGame.UTUIDataProvider_SettingsMenuItem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_SettingsMenuItem : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_SettingsMenuItem")()); }
	private static __gshared UTUIDataProvider_SettingsMenuItem mDefaultProperties;
	@property final static UTUIDataProvider_SettingsMenuItem DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_SettingsMenuItem, "UTUIDataProvider_SettingsMenuItem UTGame.Default__UTUIDataProvider_SettingsMenuItem")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeFiltered;
		public @property static final ScriptFunction ShouldBeFiltered() { mixin(MGF!("mShouldBeFiltered", "Function UTGame.UTUIDataProvider_SettingsMenuItem.ShouldBeFiltered")()); }
	}
	@property final
	{
		@property final auto ref ScriptString Description() { mixin(MGPC!(ScriptString, 152)()); }
		bool bFrontEndOnly() { mixin(MGBPC!(164, 0x1)()); }
		bool bFrontEndOnly(bool val) { mixin(MSBPC!(164, 0x1)()); }
	}
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
