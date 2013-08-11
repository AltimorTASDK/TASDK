module UnrealScript.Engine.InterpTrackInstMove;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInstMove : InterpTrackInst
{
public extern(D):
	@property final auto ref
	{
		UObject.Quat InitialQuat() { return *cast(UObject.Quat*)(cast(size_t)cast(void*)this + 160); }
		UObject.Matrix InitialTM() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 96); }
		Rotator ResetRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 72); }
		Vector ResetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
	}
}
