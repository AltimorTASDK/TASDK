module UnrealScript.Engine.SeqAct_SetMatInstTexParam;

import ScriptClasses;
import UnrealScript.Engine.MaterialInstanceConstant;
import UnrealScript.Engine.SequenceAction;
import UnrealScript.Engine.Texture;

extern(C++) interface SeqAct_SetMatInstTexParam : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetMatInstTexParam")); }
	private static __gshared SeqAct_SetMatInstTexParam mDefaultProperties;
	@property final static SeqAct_SetMatInstTexParam DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetMatInstTexParam)("SeqAct_SetMatInstTexParam Engine.Default__SeqAct_SetMatInstTexParam")); }
	@property final auto ref
	{
		ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 240); }
		Texture NewTexture() { return *cast(Texture*)(cast(size_t)cast(void*)this + 236); }
		MaterialInstanceConstant MatInst() { return *cast(MaterialInstanceConstant*)(cast(size_t)cast(void*)this + 232); }
	}
}
