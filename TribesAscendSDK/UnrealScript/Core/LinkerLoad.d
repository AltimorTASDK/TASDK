module UnrealScript.Core.LinkerLoad;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Linker;

extern(C++) interface LinkerLoad : Linker
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.LinkerLoad")); }
	private static __gshared LinkerLoad mDefaultProperties;
	@property final static LinkerLoad DefaultProperties() { mixin(MGDPC("LinkerLoad", "LinkerLoad Core.Default__LinkerLoad")); }
}
