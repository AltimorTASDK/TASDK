module UnrealScript.UnrealEd.BrushBuilder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface BrushBuilder : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UnrealEd.BrushBuilder")()); }
	private static __gshared BrushBuilder mDefaultProperties;
	@property final static BrushBuilder DefaultProperties() { mixin(MGDPC!(BrushBuilder, "BrushBuilder UnrealEd.Default__BrushBuilder")()); }
}
