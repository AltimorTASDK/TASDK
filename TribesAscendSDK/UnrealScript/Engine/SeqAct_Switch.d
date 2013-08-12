module UnrealScript.Engine.SeqAct_Switch;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Switch : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Switch")); }
	private static __gshared SeqAct_Switch mDefaultProperties;
	@property final static SeqAct_Switch DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Switch)("SeqAct_Switch Engine.Default__SeqAct_Switch")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(int) Indices() { return *cast(ScriptArray!(int)*)(cast(size_t)cast(void*)this + 244); }
			int IncrementAmount() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
			int LinkCount() { return *cast(int*)(cast(size_t)cast(void*)this + 232); }
		}
		bool bAutoDisableLinks() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x2) != 0; }
		bool bAutoDisableLinks(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x2; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 240) & 0x1) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 240) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 240) &= ~0x1; } return val; }
	}
}
