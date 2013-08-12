module UnrealScript.Engine.RigidBodyBase;

import ScriptClasses;
import UnrealScript.Engine.Actor;

extern(C++) interface RigidBodyBase : Actor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RigidBodyBase")); }
	private static __gshared RigidBodyBase mDefaultProperties;
	@property final static RigidBodyBase DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(RigidBodyBase)("RigidBodyBase Engine.Default__RigidBodyBase")); }
}
