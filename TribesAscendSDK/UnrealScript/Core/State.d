module UnrealScript.Core.State;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Struct;

extern(C++) interface State : Struct
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.State")); }
	private static __gshared State mDefaultProperties;
	@property final static State DefaultProperties() { mixin(MGDPC("State", "State Core.Default__State")); }
}
