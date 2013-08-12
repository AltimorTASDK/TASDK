module UnrealScript.Engine.SeqAct_Destroy;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_Destroy : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Destroy")); }
	private static __gshared SeqAct_Destroy mDefaultProperties;
	@property final static SeqAct_Destroy DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_Destroy)("SeqAct_Destroy Engine.Default__SeqAct_Destroy")); }
	@property final
	{
		@property final auto ref ScriptArray!(ScriptClass) IgnoreBasedClasses() { return *cast(ScriptArray!(ScriptClass)*)(cast(size_t)cast(void*)this + 236); }
		bool bDestroyBasedActors() { return (*cast(uint*)(cast(size_t)cast(void*)this + 232) & 0x1) != 0; }
		bool bDestroyBasedActors(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 232) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 232) &= ~0x1; } return val; }
	}
}
