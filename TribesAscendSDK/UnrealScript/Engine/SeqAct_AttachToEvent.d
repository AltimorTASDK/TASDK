module UnrealScript.Engine.SeqAct_AttachToEvent;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AttachToEvent : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AttachToEvent")); }
	private static __gshared SeqAct_AttachToEvent mDefaultProperties;
	@property final static SeqAct_AttachToEvent DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_AttachToEvent)("SeqAct_AttachToEvent Engine.Default__SeqAct_AttachToEvent")); }
	@property final
	{
		bool bPreferController() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bPreferController(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
