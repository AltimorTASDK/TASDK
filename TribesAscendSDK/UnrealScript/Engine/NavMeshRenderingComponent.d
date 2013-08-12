module UnrealScript.Engine.NavMeshRenderingComponent;

import ScriptClasses;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface NavMeshRenderingComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.NavMeshRenderingComponent")); }
	private static __gshared NavMeshRenderingComponent mDefaultProperties;
	@property final static NavMeshRenderingComponent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(NavMeshRenderingComponent)("NavMeshRenderingComponent Engine.Default__NavMeshRenderingComponent")); }
}
