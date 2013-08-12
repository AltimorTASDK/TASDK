module UnrealScript.Engine.InterpTrackInstMove;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInstMove : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstMove")); }
	private static __gshared InterpTrackInstMove mDefaultProperties;
	@property final static InterpTrackInstMove DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstMove)("InterpTrackInstMove Engine.Default__InterpTrackInstMove")); }
	@property final auto ref
	{
		UObject.Quat InitialQuat() { return *cast(UObject.Quat*)(cast(size_t)cast(void*)this + 160); }
		UObject.Matrix InitialTM() { return *cast(UObject.Matrix*)(cast(size_t)cast(void*)this + 96); }
		Rotator ResetRotation() { return *cast(Rotator*)(cast(size_t)cast(void*)this + 72); }
		Vector ResetLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 60); }
	}
}
