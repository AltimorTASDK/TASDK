module UnrealScript.Engine.InterpTrackColorProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackVectorBase;

extern(C++) interface InterpTrackColorProp : InterpTrackVectorBase
{
	public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
