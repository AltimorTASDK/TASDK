module UnrealScript.Engine.InterpTrackInstMove;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Core.UObject;

extern(C++) interface InterpTrackInstMove : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstMove")); }
	private static __gshared InterpTrackInstMove mDefaultProperties;
	@property final static InterpTrackInstMove DefaultProperties() { mixin(MGDPC("InterpTrackInstMove", "InterpTrackInstMove Engine.Default__InterpTrackInstMove")); }
	@property final auto ref
	{
		UObject.Quat InitialQuat() { mixin(MGPC("UObject.Quat", 160)); }
		UObject.Matrix InitialTM() { mixin(MGPC("UObject.Matrix", 96)); }
		Rotator ResetRotation() { mixin(MGPC("Rotator", 72)); }
		Vector ResetLocation() { mixin(MGPC("Vector", 60)); }
	}
}
