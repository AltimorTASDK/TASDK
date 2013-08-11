module UnrealScript.Core.Exporter;

import ScriptClasses;
import UnrealScript.Core.UObject;

extern(C++) interface Exporter : UObject
{
public extern(D):
	@property final auto ref
	{
		ScriptArray!(ScriptString) FormatExtension() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 64); }
		ScriptArray!(ScriptString) FormatDescription() { return *cast(ScriptArray!(ScriptString)*)(cast(size_t)cast(void*)this + 76); }
	}
}
