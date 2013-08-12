module UnrealScript.Engine.SeqAct_CastToInt;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_CastToInt : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_CastToInt")); }
	private static __gshared SeqAct_CastToInt mDefaultProperties;
	@property final static SeqAct_CastToInt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_CastToInt)("SeqAct_CastToInt Engine.Default__SeqAct_CastToInt")); }
	@property final
	{
		auto ref
		{
			int IntResult() { return *cast(int*)(cast(size_t)cast(void*)this + 240); }
			float Value() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
		}
		bool bTruncate() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bTruncate(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
