module UnrealScript.Engine.Interface_NavMeshPathObject;

import ScriptClasses;
import UnrealScript.Core.UInterface;

extern(C++) interface Interface_NavMeshPathObject : UInterface
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Interface_NavMeshPathObject")); }
	private static __gshared Interface_NavMeshPathObject mDefaultProperties;
	@property final static Interface_NavMeshPathObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(Interface_NavMeshPathObject)("Interface_NavMeshPathObject Engine.Default__Interface_NavMeshPathObject")); }
}
