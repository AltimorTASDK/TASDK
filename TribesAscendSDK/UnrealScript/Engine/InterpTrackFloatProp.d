module UnrealScript.Engine.InterpTrackFloatProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatProp : InterpTrackFloatBase
{
public extern(D):
	@property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
