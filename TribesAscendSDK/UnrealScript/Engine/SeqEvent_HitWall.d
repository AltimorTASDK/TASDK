module UnrealScript.Engine.SeqEvent_HitWall;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_HitWall : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqEvent_HitWall")); }
	private static __gshared SeqEvent_HitWall mDefaultProperties;
	@property final static SeqEvent_HitWall DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_HitWall)("SeqEvent_HitWall Engine.Default__SeqEvent_HitWall")); }
}
