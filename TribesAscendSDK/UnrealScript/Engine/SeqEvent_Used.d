module UnrealScript.Engine.SeqEvent_Used;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Engine.Texture2D;

extern(C++) interface SeqEvent_Used : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqEvent_Used")()); }
	private static __gshared SeqEvent_Used mDefaultProperties;
	@property final static SeqEvent_Used DefaultProperties() { mixin(MGDPC!(SeqEvent_Used, "SeqEvent_Used Engine.Default__SeqEvent_Used")()); }
	@property final
	{
		auto ref
		{
			float InteractDistance() { mixin(MGPC!(float, 260)()); }
			ScriptArray!(ScriptClass) ClassProximityTypes() { mixin(MGPC!(ScriptArray!(ScriptClass), 280)()); }
			ScriptArray!(ScriptClass) IgnoredClassProximityTypes() { mixin(MGPC!(ScriptArray!(ScriptClass), 292)()); }
			Texture2D InteractIcon() { mixin(MGPC!(Texture2D, 276)()); }
			ScriptString InteractText() { mixin(MGPC!(ScriptString, 264)()); }
		}
		bool bAimToInteract() { mixin(MGBPC!(256, 0x1)()); }
		bool bAimToInteract(bool val) { mixin(MSBPC!(256, 0x1)()); }
	}
}
