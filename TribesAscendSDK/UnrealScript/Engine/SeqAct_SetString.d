module UnrealScript.Engine.SeqAct_SetString;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetString : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetString")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetString.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		ScriptString Value() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 244); }
		ScriptString Target() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 232); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
