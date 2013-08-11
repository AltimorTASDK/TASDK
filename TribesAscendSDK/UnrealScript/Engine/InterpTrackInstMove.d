module UnrealScript.Engine.InterpTrackInstMove;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInstMove : InterpTrackInst
{
	public @property final auto ref UObject.Quat InitialQuat() { return *cast(UObject.Quat*)(cast(size_t)cast(void*)this + 160); }
	public @property final auto ref UObject.Matrix InitialTM() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 96); }
	public @property final auto ref Rotator ResetRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 72); }
	public @property final auto ref Vector ResetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
}
