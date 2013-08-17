module UnrealScript.Engine.SeqAct_AttachToEvent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToEvent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_AttachToEvent")); }
	private static __gshared SeqAct_AttachToEvent mDefaultProperties;
	@property final static SeqAct_AttachToEvent DefaultProperties() { mixin(MGDPC("SeqAct_AttachToEvent", "SeqAct_AttachToEvent Engine.Default__SeqAct_AttachToEvent")); }
	@property final
	{
		bool bPreferController() { mixin(MGBPC(232, 0x1)); }
		bool bPreferController(bool val) { mixin(MSBPC(232, 0x1)); }
	}
}
