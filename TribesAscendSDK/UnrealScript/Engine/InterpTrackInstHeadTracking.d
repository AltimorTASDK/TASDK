module UnrealScript.Engine.InterpTrackInstHeadTracking;

import ScriptClasses;
import UnrealScript.Engine.SkelControlLookAt;
import UnrealScript.Engine.InterpTrackInst;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.InterpTrackHeadTracking;

extern(C++) interface InterpTrackInstHeadTracking : InterpTrackInst
{
	struct ActorToLookAt
	{
		public @property final bool CurrentlyBeingLookedAt() { return (*cast(uint*)(cast(size_t)&this + 20) & 0x1) != 0; }
		public @property final bool CurrentlyBeingLookedAt(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 20) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 20) &= ~0x1; } return val; }
		private ubyte __CurrentlyBeingLookedAt[4];
		public @property final auto ref float StartTimeBeingLookedAt() { return *cast(float*)(cast(size_t)&this + 16); }
		private ubyte __StartTimeBeingLookedAt[4];
		public @property final auto ref float LastKnownDistance() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __LastKnownDistance[4];
		public @property final auto ref float EnteredTime() { return *cast(float*)(cast(size_t)&this + 8); }
		private ubyte __EnteredTime[4];
		public @property final auto ref float Rating() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __Rating[4];
		// WARNING: Property 'Actor' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(SkelControlLookAt) TrackControls() { return *cast(ScriptArray!(SkelControlLookAt)*)(cast(size_t)cast(void*)this + 128); }
	public @property final auto ref float LastUpdatePosition() { return *cast(float*)(cast(size_t)cast(void*)this + 140); }
	public @property final auto ref InterpTrackHeadTracking.EHeadTrackingAction Action() { return *cast(InterpTrackHeadTracking.EHeadTrackingAction*)(cast(size_t)cast(void*)this + 60); }
}
