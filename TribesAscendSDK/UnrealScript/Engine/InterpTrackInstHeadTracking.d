module UnrealScript.Engine.InterpTrackInstHeadTracking;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpTrackHeadTracking;

extern(C++) interface InterpTrackInstHeadTracking : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.InterpTrackInstHeadTracking")); }
	private static __gshared InterpTrackInstHeadTracking mDefaultProperties;
	@property final static InterpTrackInstHeadTracking DefaultProperties() { mixin(MGDPC("InterpTrackInstHeadTracking", "InterpTrackInstHeadTracking Engine.Default__InterpTrackInstHeadTracking")); }
	struct ActorToLookAt
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.InterpTrackInstHeadTracking.ActorToLookAt")); }
		@property final
		{
			auto ref
			{
				float StartTimeBeingLookedAt() { mixin(MGPS("float", 16)); }
				float LastKnownDistance() { mixin(MGPS("float", 12)); }
				float EnteredTime() { mixin(MGPS("float", 8)); }
				float Rating() { mixin(MGPS("float", 4)); }
				Actor ActorVar() { mixin(MGPS("Actor", 0)); }
			}
			bool CurrentlyBeingLookedAt() { mixin(MGBPS(20, 0x1)); }
			bool CurrentlyBeingLookedAt(bool val) { mixin(MSBPS(20, 0x1)); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SkelControlLookAt) TrackControls() { mixin(MGPC("ScriptArray!(SkelControlLookAt)", 128)); }
		float LastUpdatePosition() { mixin(MGPC("float", 140)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'Mesh'!
		// ERROR: Unsupported object class 'MapProperty' for the property named 'CurrentActorMap'!
		InterpTrackHeadTracking.EHeadTrackingAction Action() { mixin(MGPC("InterpTrackHeadTracking.EHeadTrackingAction", 60)); }
	}
}
