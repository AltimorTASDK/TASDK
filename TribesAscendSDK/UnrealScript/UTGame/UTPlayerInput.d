module UnrealScript.UTGame.UTPlayerInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.UDKBase.UDKPlayerInput;

extern(C++) interface UTPlayerInput : UDKPlayerInput
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTPlayerInput")); }
	private static __gshared UTPlayerInput mDefaultProperties;
	@property final static UTPlayerInput DefaultProperties() { mixin(MGDPC("UTPlayerInput", "UTPlayerInput UTGame.Default__UTPlayerInput")); }
	@property final
	{
		auto ref
		{
			Actor.EDoubleClickDir ForcedDoubleClick() { mixin(MGPC("Actor.EDoubleClickDir", 996)); }
			float LastDuckTime() { mixin(MGPC("float", 988)); }
		}
		bool bHoldDuck() { mixin(MGBPC(992, 0x1)); }
		bool bHoldDuck(bool val) { mixin(MSBPC(992, 0x1)); }
	}
}
