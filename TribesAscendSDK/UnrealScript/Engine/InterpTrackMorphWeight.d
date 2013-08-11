module UnrealScript.Engine.InterpTrackMorphWeight;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackMorphWeight : InterpTrackFloatBase
{
public extern(D):
	@property final auto ref ScriptName MorphNodeName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
