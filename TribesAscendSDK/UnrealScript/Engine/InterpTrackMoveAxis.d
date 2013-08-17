module UnrealScript.Engine.InterpTrackMoveAxis;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.InterpTrackMove;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackMoveAxis : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackMoveAxis")); }
	private static __gshared InterpTrackMoveAxis mDefaultProperties;
	@property final static InterpTrackMoveAxis DefaultProperties() { mixin(MGDPC("InterpTrackMoveAxis", "InterpTrackMoveAxis Engine.Default__InterpTrackMoveAxis")); }
	enum EInterpMoveAxis : ubyte
	{
		AXIS_TranslationX = 0,
		AXIS_TranslationY = 1,
		AXIS_TranslationZ = 2,
		AXIS_RotationX = 3,
		AXIS_RotationY = 4,
		AXIS_RotationZ = 5,
		AXIS_MAX = 6,
	}
	@property final auto ref
	{
		InterpTrackMove.InterpLookupTrack LookupTrack() { mixin(MGPC("InterpTrackMove.InterpLookupTrack", 152)); }
		InterpTrackMoveAxis.EInterpMoveAxis MoveAxis() { mixin(MGPC("InterpTrackMoveAxis.EInterpMoveAxis", 148)); }
	}
}
