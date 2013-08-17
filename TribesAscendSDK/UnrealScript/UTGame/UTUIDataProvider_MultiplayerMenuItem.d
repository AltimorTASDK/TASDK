module UnrealScript.UTGame.UTUIDataProvider_MultiplayerMenuItem;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTUIResourceDataProvider;

extern(C++) interface UTUIDataProvider_MultiplayerMenuItem : UTUIResourceDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTUIDataProvider_MultiplayerMenuItem")()); }
	private static __gshared UTUIDataProvider_MultiplayerMenuItem mDefaultProperties;
	@property final static UTUIDataProvider_MultiplayerMenuItem DefaultProperties() { mixin(MGDPC!(UTUIDataProvider_MultiplayerMenuItem, "UTUIDataProvider_MultiplayerMenuItem UTGame.Default__UTUIDataProvider_MultiplayerMenuItem")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mShouldBeFiltered;
		public @property static final ScriptFunction ShouldBeFiltered() { mixin(MGF!("mShouldBeFiltered", "Function UTGame.UTUIDataProvider_MultiplayerMenuItem.ShouldBeFiltered")()); }
	}
	@property final
	{
		@property final auto ref ScriptString Description() { mixin(MGPC!(ScriptString, 152)()); }
		bool bRequiresOnlineAccess() { mixin(MGBPC!(164, 0x1)()); }
		bool bRequiresOnlineAccess(bool val) { mixin(MSBPC!(164, 0x1)()); }
	}
	final bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
