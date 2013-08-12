module UnrealScript.Engine.SeqVar_Character;

import ScriptClasses;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Character : SeqVar_Object
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqVar_Character")); }
	@property final auto ref ScriptClass PawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 176); }
}
