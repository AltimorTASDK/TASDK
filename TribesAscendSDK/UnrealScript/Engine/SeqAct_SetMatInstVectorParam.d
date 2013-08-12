module UnrealScript.Engine.SeqAct_SetMatInstVectorParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstVectorParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMatInstVectorParam")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetMatInstVectorParam.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		UObject.LinearColor VectorValue() { return *cast(UObject.LinearColor*)(cast(size_t)cast(void*)this + 244); }
		ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
		MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
