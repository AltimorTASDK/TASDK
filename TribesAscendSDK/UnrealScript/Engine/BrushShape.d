module UnrealScript.Engine.BrushShape;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Brush;

extern(C++) interface BrushShape : Brush
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.BrushShape")()); }
	private static __gshared BrushShape mDefaultProperties;
	@property final static BrushShape DefaultProperties() { mixin(MGDPC!(BrushShape, "BrushShape Engine.Default__BrushShape")()); }
}
