module UnrealScript.Engine.InterpTrackDirector;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackDirector : InterpTrack
{
	struct DirectorTrackCut
	{
		public @property final auto ref ScriptName TargetCamGroup() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
		private ubyte __TargetCamGroup[8];
		public @property final auto ref float TransitionTime() { return *cast(float*)(cast(size_t)&this + 4); }
		private ubyte __TransitionTime[4];
		public @property final auto ref float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		private ubyte __Time[4];
	}
	public @property final auto ref ScriptArray!(InterpTrackDirector.DirectorTrackCut) CutTrack() { return *cast(ScriptArray!(InterpTrackDirector.DirectorTrackCut)*)(cast(size_t)cast(void*)this + 128); }
	public @property final bool bSimulateCameraCutsOnClients() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
	public @property final bool bSimulateCameraCutsOnClients(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
}
