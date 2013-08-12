module UnrealScript.Engine.SeqEvent_SeeDeath;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_SeeDeath : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_SeeDeath")); }
	private static __gshared SeqEvent_SeeDeath mDefaultProperties;
	@property final static SeqEvent_SeeDeath DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_SeeDeath)("SeqEvent_SeeDeath Engine.Default__SeqEvent_SeeDeath")); }
}
