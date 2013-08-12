module UnrealScript.Engine.SeqAct_AddRemoveFaceFXAnimSet;

import ScriptClasses;
import UnrealScript.Engine.FaceFXAnimSet;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AddRemoveFaceFXAnimSet : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AddRemoveFaceFXAnimSet")); }
	private static __gshared SeqAct_AddRemoveFaceFXAnimSet mDefaultProperties;
	@property final static SeqAct_AddRemoveFaceFXAnimSet DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_AddRemoveFaceFXAnimSet)("SeqAct_AddRemoveFaceFXAnimSet Engine.Default__SeqAct_AddRemoveFaceFXAnimSet")); }
	@property final auto ref ScriptArray!(FaceFXAnimSet) FaceFXAnimSets() { return *cast(ScriptArray!(FaceFXAnimSet)*)(cast(size_t)cast(void*)this + 232); }
}
