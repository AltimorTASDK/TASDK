module UnrealScript.Engine.SeqEvent_AISeeEnemy;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AISeeEnemy : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_AISeeEnemy")); }
	@property final auto ref float MaxSightDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
