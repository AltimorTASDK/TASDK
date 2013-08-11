module UnrealScript.Engine.InterpTrackSkelControlScale;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackSkelControlScale : InterpTrackFloatBase
{
	public @property final auto ref ScriptName SkelControlName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
