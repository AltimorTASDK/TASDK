module UnrealScript.Engine.SeqAct_SetObject;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.SeqAct_SetSequenceVariable;

extern(C++) interface SeqAct_SetObject : SeqAct_SetSequenceVariable
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetObject")); }
	private static __gshared SeqAct_SetObject mDefaultProperties;
	@property final static SeqAct_SetObject DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetObject)("SeqAct_SetObject Engine.Default__SeqAct_SetObject")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_SetObject.GetObjClassVersion")); }
	}
	@property final auto ref
	{
		UObject Value() { return *cast(UObject*)(cast(size_t)cast(void*)this + 236); }
		UObject DefaultValue() { return *cast(UObject*)(cast(size_t)cast(void*)this + 232); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
