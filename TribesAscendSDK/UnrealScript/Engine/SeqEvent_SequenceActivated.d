module UnrealScript.Engine.SeqEvent_SequenceActivated;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SequenceActivated : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_SequenceActivated")); }
	private static __gshared SeqEvent_SequenceActivated mDefaultProperties;
	@property final static SeqEvent_SequenceActivated DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_SequenceActivated)("SeqEvent_SequenceActivated Engine.Default__SeqEvent_SequenceActivated")); }
	@property final auto ref ScriptString InputLabel() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 256); }
}
