module UnrealScript.GameFramework.SeqEvent_CrowdAgentReachedDestination;

import ScriptClasses;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_CrowdAgentReachedDestination : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_CrowdAgentReachedDestination")); }
	private static __gshared SeqEvent_CrowdAgentReachedDestination mDefaultProperties;
	@property final static SeqEvent_CrowdAgentReachedDestination DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqEvent_CrowdAgentReachedDestination)("SeqEvent_CrowdAgentReachedDestination GameFramework.Default__SeqEvent_CrowdAgentReachedDestination")); }
}
