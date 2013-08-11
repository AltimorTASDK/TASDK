module UnrealScript.Engine.InterpTrackFloatParticleParam;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackFloatParticleParam : InterpTrackFloatBase
{
public extern(D):
	@property final auto ref ScriptName ParamName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
