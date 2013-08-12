module UnrealScript.Engine.SeqAct_SetFloat;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetFloat : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetFloat")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetFloat.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptArray!(float) Value() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 236); }
		float Target() { return *cast(float*)(cast(size_t)cast(void*)this + 232); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
