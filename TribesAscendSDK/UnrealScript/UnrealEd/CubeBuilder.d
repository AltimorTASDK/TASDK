module UnrealScript.UnrealEd.CubeBuilder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UnrealEd.BrushBuilder;

extern(C++) interface CubeBuilder : BrushBuilder
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UnrealEd.CubeBuilder")); }
	private static __gshared CubeBuilder mDefaultProperties;
	@property final static CubeBuilder DefaultProperties() { mixin(MGDPC("CubeBuilder", "CubeBuilder UnrealEd.Default__CubeBuilder")); }
}
