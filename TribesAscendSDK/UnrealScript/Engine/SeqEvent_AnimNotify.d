module UnrealScript.Engine.SeqEvent_AnimNotify;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AnimNotify : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_AnimNotify")); }
	private static __gshared SeqEvent_AnimNotify mDefaultProperties;
	@property final static SeqEvent_AnimNotify DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_AnimNotify)("SeqEvent_AnimNotify Engine.Default__SeqEvent_AnimNotify")); }
	@property final auto ref ScriptName NotifyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 256); }
}
