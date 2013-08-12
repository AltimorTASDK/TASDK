module UnrealScript.Engine.Interface_NavMeshPathObject;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObject : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Interface_NavMeshPathObject")); }
}
