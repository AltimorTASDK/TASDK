module UnrealScript.Engine.SeqEvent_ProjectileLanded;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ProjectileLanded : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_ProjectileLanded")); }
	private static __gshared SeqEvent_ProjectileLanded mDefaultProperties;
	@property final static SeqEvent_ProjectileLanded DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_ProjectileLanded)("SeqEvent_ProjectileLanded Engine.Default__SeqEvent_ProjectileLanded")); }
	@property final auto ref float MaxDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
}
