module UnrealScript.UDKBase.UDKAnimBlendByHoverboardTilt;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendBase;

extern(C++) interface UDKAnimBlendByHoverboardTilt : AnimNodeBlendBase
{
	public @property final auto ref ScriptName UpperBodyName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 268); }
	public @property final auto ref float TiltYScale() { return *cast(float*)(cast(size_t)cast(void*)this + 264); }
	public @property final auto ref float TiltDeadZone() { return *cast(float*)(cast(size_t)cast(void*)this + 260); }
	public @property final auto ref float TiltScale() { return *cast(float*)(cast(size_t)cast(void*)this + 256); }
	public @property final auto ref Vector UpVector() { return *cast(Vector*)(cast(size_t)cast(void*)this + 244); }
}
