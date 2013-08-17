module UnrealScript.Engine.SeqEvent_Console;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;

extern(C++) interface SeqEvent_Console : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_Console")()); }
	private static __gshared SeqEvent_Console mDefaultProperties;
	@property final static SeqEvent_Console DefaultProperties() { mixin(MGDPC!(SeqEvent_Console, "SeqEvent_Console Engine.Default__SeqEvent_Console")()); }
	@property final auto ref
	{
		ScriptString EventDesc() { mixin(MGPC!("ScriptString", 264)()); }
		ScriptName ConsoleEventName() { mixin(MGPC!("ScriptName", 256)()); }
	}
}
