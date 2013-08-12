module UnrealScript.Engine.PhysicsLODVerticalEmitter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface PhysicsLODVerticalEmitter : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.PhysicsLODVerticalEmitter")); }
	@property final auto ref int ParticlePercentage() { return *cast(int*)(cast(size_t)cast(void*)this + 60); }
}
