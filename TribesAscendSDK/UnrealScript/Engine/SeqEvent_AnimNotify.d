module UnrealScript.Engine.SeqEvent_AnimNotify;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_AnimNotify : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqEvent_AnimNotify")); }
	private static __gshared SeqEvent_AnimNotify mDefaultProperties;
	@property final static SeqEvent_AnimNotify DefaultProperties() { mixin(MGDPC("SeqEvent_AnimNotify", "SeqEvent_AnimNotify Engine.Default__SeqEvent_AnimNotify")); }
	@property final auto ref ScriptName NotifyName() { mixin(MGPC("ScriptName", 256)); }
}
