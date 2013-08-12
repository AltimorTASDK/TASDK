module UnrealScript.Engine.SeqVar_Named;

import ScriptClasses;
import UnrealScript.Engine.SequenceVariable;

extern(C++) interface SeqVar_Named : SequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Named")); }
	private static __gshared SeqVar_Named mDefaultProperties;
	@property final static SeqVar_Named DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqVar_Named)("SeqVar_Named Engine.Default__SeqVar_Named")); }
	@property final
	{
		auto ref
		{
			ScriptName FindVarName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 152); }
			ScriptClass ExpectedType() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 148); }
		}
		bool bStatusIsOk() { return (*cast(uint*)(cast(size_t)cast(void*)this + 160) & 0x1) != 0; }
		bool bStatusIsOk(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 160) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 160) &= ~0x1; } return val; }
	}
}
