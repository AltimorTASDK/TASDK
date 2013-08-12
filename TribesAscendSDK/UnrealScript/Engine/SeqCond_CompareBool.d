module UnrealScript.Engine.SeqCond_CompareBool;

import ScriptClasses;
import UnrealScript.Engine.SequenceCondition;

extern(C++) interface SeqCond_CompareBool : SequenceCondition
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqCond_CompareBool")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqCond_CompareBool.GetObjClassVersion")); }
	}
	@property final
	{
		bool bResult() { return (*cast(uint*)(cast(size_t)cast(void*)this + 208) & 0x1) != 0; }
		bool bResult(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 208) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 208) &= ~0x1; } return val; }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
