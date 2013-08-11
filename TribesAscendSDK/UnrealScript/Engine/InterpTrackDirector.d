module UnrealScript.Engine.InterpTrackDirector;

import ScriptClasses;
import UnrealScript.Engine.InterpTrack;

extern(C++) interface InterpTrackDirector : InterpTrack
{
public extern(D):
	struct DirectorTrackCut
	{
		private ubyte __buffer__[16];
	public extern(D):
		@property final auto ref
		{
			ScriptName TargetCamGroup() { return *cast(ScriptName*)(cast(size_t)&this + 8); }
			float TransitionTime() { return *cast(float*)(cast(size_t)&this + 4); }
			float Time() { return *cast(float*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		@property final auto ref ScriptArray!(InterpTrackDirector.DirectorTrackCut) CutTrack() { return *cast(ScriptArray!(InterpTrackDirector.DirectorTrackCut)*)(cast(size_t)cast(void*)this + 128); }
		bool bSimulateCameraCutsOnClients() { return (*cast(uint*)(cast(size_t)cast(void*)this + 140) & 0x1) != 0; }
		bool bSimulateCameraCutsOnClients(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 140) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 140) &= ~0x1; } return val; }
	}
}
