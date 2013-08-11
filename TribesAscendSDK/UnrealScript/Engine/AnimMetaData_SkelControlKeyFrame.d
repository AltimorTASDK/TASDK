module UnrealScript.Engine.AnimMetaData_SkelControlKeyFrame;

import ScriptClasses;
import UnrealScript.Engine.AnimSequence;
import UnrealScript.Engine.AnimMetaData_SkelControl;

extern(C++) interface AnimMetaData_SkelControlKeyFrame : AnimMetaData_SkelControl
{
	public @property final auto ref ScriptArray!(AnimSequence.TimeModifier) KeyFrames() { return *cast(ScriptArray!(AnimSequence.TimeModifier)*)(cast(size_t)cast(void*)this + 84); }
}
