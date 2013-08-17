module UnrealScript.Engine.CoverGroupRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface CoverGroupRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CoverGroupRenderingComponent")); }
	private static __gshared CoverGroupRenderingComponent mDefaultProperties;
	@property final static CoverGroupRenderingComponent DefaultProperties() { mixin(MGDPC("CoverGroupRenderingComponent", "CoverGroupRenderingComponent Engine.Default__CoverGroupRenderingComponent")); }
}
