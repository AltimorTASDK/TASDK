module UnrealScript.Engine.PathRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface PathRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.PathRenderingComponent")); }
	private static __gshared PathRenderingComponent mDefaultProperties;
	@property final static PathRenderingComponent DefaultProperties() { mixin(MGDPC("PathRenderingComponent", "PathRenderingComponent Engine.Default__PathRenderingComponent")); }
}
