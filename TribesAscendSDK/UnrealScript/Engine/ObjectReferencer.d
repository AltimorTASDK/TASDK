module UnrealScript.Engine.ObjectReferencer;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface ObjectReferencer : UObject
{
	public @property final auto ref ScriptArray!(UObject) ReferencedObjects() { return *cast(ScriptArray!(UObject)*)(cast(size_t)cast(void*)this + 60); }
}
