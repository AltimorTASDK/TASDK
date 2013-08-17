module UnrealScript.Engine.RB_ConstraintDrawComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;
import UnrealScript.Engine.MaterialInterface;

extern(C++) interface RB_ConstraintDrawComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.RB_ConstraintDrawComponent")); }
	private static __gshared RB_ConstraintDrawComponent mDefaultProperties;
	@property final static RB_ConstraintDrawComponent DefaultProperties() { mixin(MGDPC("RB_ConstraintDrawComponent", "RB_ConstraintDrawComponent Engine.Default__RB_ConstraintDrawComponent")); }
	@property final auto ref MaterialInterface LimitMaterial() { mixin(MGPC("MaterialInterface", 488)); }
}
