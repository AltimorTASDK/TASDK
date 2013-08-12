module UnrealScript.Engine.InterpTrackInstHeadTracking;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpTrackHeadTracking;

extern(C++) interface InterpTrackInstHeadTracking : InterpTrackInst
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.InterpTrackInstHeadTracking")); }
	private static __gshared InterpTrackInstHeadTracking mDefaultProperties;
	@property final static InterpTrackInstHeadTracking DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(InterpTrackInstHeadTracking)("InterpTrackInstHeadTracking Engine.Default__InterpTrackInstHeadTracking")); }
	struct ActorToLookAt
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.InterpTrackInstHeadTracking.ActorToLookAt")); }
		@property final
		{
			auto ref
			{
				float StartTimeBeingLookedAt() { return *cast(float*)(cast(size_t)&this + 16); }
				float LastKnownDistance() { return *cast(float*)(cast(size_t)&this + 12); }
				float EnteredTime() { return *cast(float*)(cast(size_t)&this + 8); }
				float Rating() { return *cast(float*)(cast(size_t)&this + 4); }
				// WARNING: Property 'Actor' has the same name as a defined type!
			}
			bool CurrentlyBeingLookedAt() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
			bool CurrentlyBeingLookedAt(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SkelControlLookAt) TrackControls() { return *cast(ScriptArray!(SkelControlLookAt)*)(cast(size_t)cast(void*)this + 128); }
		float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
		InterpTrackHeadTracking.EHeadTrackingAction Action() { return *cast(InterpTrackHeadTracking.EHeadTrackingAction*)(cast(size_t)cast(void*)this + 60); }
	}
}
