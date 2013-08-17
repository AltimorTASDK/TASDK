module UnrealScript.Engine.InterpTrackMove;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackMove : InterpTrack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackMove")); }
	private static __gshared InterpTrackMove mDefaultProperties;
	@property final static InterpTrackMove DefaultProperties() { mixin(MGDPC("InterpTrackMove", "InterpTrackMove Engine.Default__InterpTrackMove")); }
	enum EInterpTrackMoveRotMode : ubyte
	{
		IMR_Keyframed = 0,
		IMR_LookAtGroup = 1,
		IMR_Ignore = 2,
		IMR_MAX = 3,
	}
	enum EInterpTrackMoveFrame : ubyte
	{
		IMF_World = 0,
		IMF_RelativeToInitial = 1,
		IMF_MAX = 2,
	}
	struct InterpLookupTrack
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackMove.InterpLookupTrack")); }
		@property final auto ref ScriptArray!(InterpTrackMove.InterpLookupPoint) Points() { mixin(MGPS("ScriptArray!(InterpTrackMove.InterpLookupPoint)", 0)); }
	}
	struct InterpLookupPoint
	{
		private ubyte __buffer__[12];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackMove.InterpLookupPoint")); }
		@property final auto ref
		{
			float Time() { mixin(MGPS("float", 8)); }
			ScriptName GroupName() { mixin(MGPS("ScriptName", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			InterpTrackMove.EInterpTrackMoveRotMode RotMode() { mixin(MGPC("InterpTrackMove.EInterpTrackMoveRotMode", 193)); }
			InterpTrackMove.EInterpTrackMoveFrame MoveFrame() { mixin(MGPC("InterpTrackMove.EInterpTrackMoveFrame", 192)); }
			float AngCurveTension() { mixin(MGPC("float", 184)); }
			float LinCurveTension() { mixin(MGPC("float", 180)); }
			ScriptName LookAtGroupName() { mixin(MGPC("ScriptName", 172)); }
			InterpTrackMove.InterpLookupTrack LookupTrack() { mixin(MGPC("InterpTrackMove.InterpLookupTrack", 160)); }
			UObject.InterpCurveVector EulerTrack() { mixin(MGPC("UObject.InterpCurveVector", 144)); }
			UObject.InterpCurveVector PosTrack() { mixin(MGPC("UObject.InterpCurveVector", 128)); }
		}
		bool bHide3DTrack() { mixin(MGBPC(188, 0x20)); }
		bool bHide3DTrack(bool val) { mixin(MSBPC(188, 0x20)); }
		bool bShowRotationOnCurveEd() { mixin(MGBPC(188, 0x10)); }
		bool bShowRotationOnCurveEd(bool val) { mixin(MSBPC(188, 0x10)); }
		bool bShowTranslationOnCurveEd() { mixin(MGBPC(188, 0x8)); }
		bool bShowTranslationOnCurveEd(bool val) { mixin(MSBPC(188, 0x8)); }
		bool bDisableMovement() { mixin(MGBPC(188, 0x4)); }
		bool bDisableMovement(bool val) { mixin(MSBPC(188, 0x4)); }
		bool bShowArrowAtKeys() { mixin(MGBPC(188, 0x2)); }
		bool bShowArrowAtKeys(bool val) { mixin(MSBPC(188, 0x2)); }
		bool bUseQuatInterpolation() { mixin(MGBPC(188, 0x1)); }
		bool bUseQuatInterpolation(bool val) { mixin(MSBPC(188, 0x1)); }
	}
}
