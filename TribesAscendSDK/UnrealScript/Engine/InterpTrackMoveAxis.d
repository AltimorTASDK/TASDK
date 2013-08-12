module UnrealScript.Engine.InterpTrackMoveAxis;

import ScriptClasses;
import UnrealScript.Engine.InterpTrackMove;
import UnrealScript.Engine.InterpTrackFloatBase;

extern(C++) interface InterpTrackMoveAxis : InterpTrackFloatBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackMoveAxis")); }
	private static __gshared InterpTrackMoveAxis mDefaultProperties;
	@property final static InterpTrackMoveAxis DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackMoveAxis)("InterpTrackMoveAxis Engine.Default__InterpTrackMoveAxis")); }
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
		InterpTrackMove.InterpLookupTrack LookupTrack() { return *cast(InterpTrackMove.InterpLookupTrack*)(cast(size_t)cast(void*)this + 152); }
		InterpTrackMoveAxis.EInterpMoveAxis MoveAxis() { return *cast(InterpTrackMoveAxis.EInterpMoveAxis*)(cast(size_t)cast(void*)this + 148); }
	}
}
