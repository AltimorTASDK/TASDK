module UnrealScript.Engine.StaticMeshComponentFactory;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.MeshComponentFactory;
import UnrealScript.Engine.StaticMesh;

extern(C++) interface StaticMeshComponentFactory : MeshComponentFactory
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.StaticMeshComponentFactory")); }
	private static __gshared StaticMeshComponentFactory mDefaultProperties;
	@property final static StaticMeshComponentFactory DefaultProperties() { mixin(MGDPC("StaticMeshComponentFactory", "StaticMeshComponentFactory Engine.Default__StaticMeshComponentFactory")); }
	@property final auto ref StaticMesh StaticMeshVar() { mixin(MGPC("StaticMesh", 76)); }
}
