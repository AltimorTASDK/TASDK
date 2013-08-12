module UnrealScript.Engine.SeqEvent_Death;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_Death : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_Death")); }
	private static __gshared SeqEvent_Death mDefaultProperties;
	@property final static SeqEvent_Death DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_Death)("SeqEvent_Death Engine.Default__SeqEvent_Death")); }
}
