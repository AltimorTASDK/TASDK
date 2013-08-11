module UnrealScript.Engine.AnimNotify_CameraEffect;

import ScriptClasses;
import UnrealScript.Engine.AnimNotify;

extern(C++) interface AnimNotify_CameraEffect : AnimNotify
{
	public @property final auto ref ScriptClass CameraLensEffect() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 64); }
}
