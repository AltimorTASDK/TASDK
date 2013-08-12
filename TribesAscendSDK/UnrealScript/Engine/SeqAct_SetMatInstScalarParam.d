module UnrealScript.Engine.SeqAct_SetMatInstScalarParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMatInstScalarParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMatInstScalarParam")); }
	private static __gshared SeqAct_SetMatInstScalarParam mDefaultProperties;
	@property final static SeqAct_SetMatInstScalarParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetMatInstScalarParam)("SeqAct_SetMatInstScalarParam Engine.Default__SeqAct_SetMatInstScalarParam")); }
	@property final auto ref
	{
		float ScalarValue() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 236); }
		MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	}
}
