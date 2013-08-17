module UnrealScript.UTGame.UTUIDataProvider_MapInfo;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UDKBase.UDKUIDataProvider_MapInfo;

extern(C++) interface UTUIDataProvider_MapInfo : UDKUIDataProvider_MapInfo
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTUIDataProvider_MapInfo")); }
	private static __gshared UTUIDataProvider_MapInfo mDefaultProperties;
	@property final static UTUIDataProvider_MapInfo DefaultProperties() { mixin(MGDPC("UTUIDataProvider_MapInfo", "UTUIDataProvider_MapInfo UTGame.Default__UTUIDataProvider_MapInfo")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldBeFiltered;
			ScriptFunction mSupportedByCurrentGameMode;
		}
		public @property static final
		{
			ScriptFunction ShouldBeFiltered() { mixin(MGF("mShouldBeFiltered", "Function UTGame.UTUIDataProvider_MapInfo.ShouldBeFiltered")); }
			ScriptFunction SupportedByCurrentGameMode() { mixin(MGF("mSupportedByCurrentGameMode", "Function UTGame.UTUIDataProvider_MapInfo.SupportedByCurrentGameMode")); }
		}
	}
final:
	bool ShouldBeFiltered()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldBeFiltered, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	bool SupportedByCurrentGameMode()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.SupportedByCurrentGameMode, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
