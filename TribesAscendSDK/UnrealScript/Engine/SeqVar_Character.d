module UnrealScript.Engine.SeqVar_Character;

import ScriptClasses;
import UnrealScript.Engine.SeqVar_Object;

extern(C++) interface SeqVar_Character : SeqVar_Object
{
	public @property final auto ref ScriptClass PawnClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 176); }
}
