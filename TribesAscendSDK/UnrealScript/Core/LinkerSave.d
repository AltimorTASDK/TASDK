module UnrealScript.Core.LinkerSave;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.Linker;

extern(C++) interface LinkerSave : Linker
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Core.LinkerSave")); }
	private static __gshared LinkerSave mDefaultProperties;
	@property final static LinkerSave DefaultProperties() { mixin(MGDPC("LinkerSave", "LinkerSave Core.Default__LinkerSave")); }
}
