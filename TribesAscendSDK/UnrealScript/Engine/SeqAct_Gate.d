module UnrealScript.Engine.SeqAct_Gate;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Gate : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Gate")); }
	private static __gshared SeqAct_Gate mDefaultProperties;
	@property final static SeqAct_Gate DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Gate)("SeqAct_Gate Engine.Default__SeqAct_Gate")); }
	@property final
	{
		auto ref
		{
			int CurrentCloseCount() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
			int AutoCloseCount() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
