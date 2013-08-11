module UnrealScript.Engine.K2Output;

import ScriptClasses;
import UnrealScript.Engine.K2Connector;
import UnrealScript.Engine.K2Input;

extern(C++) interface K2Output : K2Connector
{
public extern(D):
	@property final auto ref ScriptArray!(K2Input) ToInputs() { return *cast(ScriptArray!(K2Input)*)(cast(size_t)cast(void*)this + 80); }
}
