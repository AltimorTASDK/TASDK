module UnrealScript.Engine.InterpTrackLinearColorProp;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackLinearColorBase;

extern(C++) interface InterpTrackLinearColorProp : InterpTrackLinearColorBase
{
	public @property final auto ref ScriptName PropertyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 148); }
}
