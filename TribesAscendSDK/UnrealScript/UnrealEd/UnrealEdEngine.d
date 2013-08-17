module UnrealScript.UnrealEd.UnrealEdEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.EditorEngine;

extern(C++) interface UnrealEdEngine : EditorEngine
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.UnrealEdEngine")); }
	private static __gshared UnrealEdEngine mDefaultProperties;
	@property final static UnrealEdEngine DefaultProperties() { mixin(MGDPC("UnrealEdEngine", "UnrealEdEngine UnrealEd.Default__UnrealEdEngine")); }
}
