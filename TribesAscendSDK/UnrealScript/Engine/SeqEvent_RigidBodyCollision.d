module UnrealScript.Engine.SeqEvent_RigidBodyCollision;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_RigidBodyCollision : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_RigidBodyCollision")()); }
	private static __gshared SeqEvent_RigidBodyCollision mDefaultProperties;
	@property final static SeqEvent_RigidBodyCollision DefaultProperties() { mixin(MGDPC!(SeqEvent_RigidBodyCollision, "SeqEvent_RigidBodyCollision Engine.Default__SeqEvent_RigidBodyCollision")()); }
	@property final auto ref float MinCollisionVelocity() { mixin(MGPC!("float", 256)()); }
}
