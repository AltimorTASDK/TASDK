module UnrealScript.Engine.SeqAct_SetMaterial;

import ScriptClasses;
import UnrealScript.Engine.MaterialInterface;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetMaterial : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMaterial")); }
	@property final auto ref
	{
		int MaterialIndex() { return *cast(int*)(cast(size_t)cast(void*)this + 236); }
		MaterialInterface NewMaterial() { return *cast(MaterialInterface*)(cast(size_t)cast(void*)this + 232); }
	}
}
