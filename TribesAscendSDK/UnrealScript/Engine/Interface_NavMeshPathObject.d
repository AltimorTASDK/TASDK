module UnrealScript.Engine.Interface_NavMeshPathObject;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObject : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Interface_NavMeshPathObject")); }
	private static __gshared Interface_NavMeshPathObject mDefaultProperties;
	@property final static Interface_NavMeshPathObject DefaultProperties() { mixin(MGDPC("Interface_NavMeshPathObject", "Interface_NavMeshPathObject Engine.Default__Interface_NavMeshPathObject")); }
}
