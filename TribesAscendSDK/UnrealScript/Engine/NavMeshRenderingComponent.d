module UnrealScript.Engine.NavMeshRenderingComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NavMeshRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.NavMeshRenderingComponent")); }
	private static __gshared NavMeshRenderingComponent mDefaultProperties;
	@property final static NavMeshRenderingComponent DefaultProperties() { mixin(MGDPC("NavMeshRenderingComponent", "NavMeshRenderingComponent Engine.Default__NavMeshRenderingComponent")); }
}
