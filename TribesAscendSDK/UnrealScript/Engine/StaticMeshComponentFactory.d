module UnrealScript.Engine.StaticMeshComponentFactory;

import ScriptClasses;
import UnrealScript.Engine.MeshComponentFactory;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface StaticMeshComponentFactory : MeshComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.StaticMeshComponentFactory")); }
	// WARNING: Property 'StaticMesh' has the same name as a defined type!
}
