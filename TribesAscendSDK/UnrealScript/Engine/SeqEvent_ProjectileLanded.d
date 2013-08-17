module UnrealScript.Engine.SeqEvent_ProjectileLanded;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_ProjectileLanded : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_ProjectileLanded")()); }
	private static __gshared SeqEvent_ProjectileLanded mDefaultProperties;
	@property final static SeqEvent_ProjectileLanded DefaultProperties() { mixin(MGDPC!(SeqEvent_ProjectileLanded, "SeqEvent_ProjectileLanded Engine.Default__SeqEvent_ProjectileLanded")()); }
	@property final auto ref float MaxDistance() { mixin(MGPC!(float, 256)()); }
}
