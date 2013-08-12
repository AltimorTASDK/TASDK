module UnrealScript.Engine.SeqAct_SetDamageInstigator;

import ScriptClasses;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_SetDamageInstigator : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_SetDamageInstigator")); }
	private static __gshared SeqAct_SetDamageInstigator mDefaultProperties;
	@property final static SeqAct_SetDamageInstigator DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_SetDamageInstigator)("SeqAct_SetDamageInstigator Engine.Default__SeqAct_SetDamageInstigator")); }
	@property final auto ref Actor DamageInstigator() { return *cast(Actor*)(cast(size_t)cast(void*)this + 232); }
}
