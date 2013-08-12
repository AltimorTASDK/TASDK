module UnrealScript.Engine.SeqEvent_RigidBodyCollision;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_RigidBodyCollision : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_RigidBodyCollision")); }
	private static __gshared SeqEvent_RigidBodyCollision mDefaultProperties;
	@property final static SeqEvent_RigidBodyCollision DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_RigidBodyCollision)("SeqEvent_RigidBodyCollision Engine.Default__SeqEvent_RigidBodyCollision")); }
	@property final auto ref float MinCollisionVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
