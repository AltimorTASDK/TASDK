module UnrealScript.Engine.SeqAct_RangeSwitch;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_RangeSwitch : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_RangeSwitch")); }
	private static __gshared SeqAct_RangeSwitch mDefaultProperties;
	@property final static SeqAct_RangeSwitch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_RangeSwitch)("SeqAct_RangeSwitch Engine.Default__SeqAct_RangeSwitch")); }
	struct SwitchRange
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqAct_RangeSwitch.SwitchRange")); }
		@property final auto ref
		{
			int Max() { return *cast(int*)(cast(size_t)&this + 4); }
			int Min() { return *cast(int*)(cast(size_t)&this + 0); }
		}
	}
	@property final auto ref ScriptArray!(SeqAct_RangeSwitch.SwitchRange) Ranges() { return *cast(ScriptArray!(SeqAct_RangeSwitch.SwitchRange)*)(cast(size_t)cast(void*)this + 232); }
}
