module UnrealScript.Engine.SeqAct_Interp;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Latent;
import UnrealScript.Engine.MatineeActor;
import UnrealScript.Engine.InterpGroupInst;
import UnrealScript.Engine.CoverLink;
import UnrealScript.Engine.PlayerController;
import UnrealScript.Engine.InterpData;

extern(C++) interface SeqAct_Interp : SeqAct_Latent
{
	struct CameraCutInfo
	{
		public @property final auto ref float TimeStamp() { return *cast(float*)(cast(size_t)&this + 12); }
		private ubyte __TimeStamp[4];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
	}
	struct SavedTransform
	{
		public @property final auto ref Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
		private ubyte __Rotation[12];
		public @property final auto ref Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		private ubyte __Location[12];
	}
	public @property final bool bReversePlayback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x80) != 0; }
	public @property final bool bReversePlayback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x80; } return val; }
	public @property final bool bNoResetOnRewind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x20) != 0; }
	public @property final bool bNoResetOnRewind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x20; } return val; }
	public @property final bool bRewindOnPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x10) != 0; }
	public @property final bool bRewindOnPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x10; } return val; }
	public @property final bool bIsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1) != 0; }
	public @property final bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1; } return val; }
	public @property final bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2) != 0; }
	public @property final bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2; } return val; }
	public @property final auto ref float PlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
	public @property final auto ref float Position() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref ScriptArray!(InterpGroupInst) GroupInst() { return *cast(ScriptArray!(InterpGroupInst)*)(cast(size_t)cast(void*)this + 400); }
	public @property final auto ref ScriptArray!(CoverLink) LinkedCover() { return *cast(ScriptArray!(CoverLink)*)(cast(size_t)cast(void*)this + 384); }
	public @property final auto ref ScriptArray!(SeqAct_Interp.CameraCutInfo) CameraCuts() { return *cast(ScriptArray!(SeqAct_Interp.CameraCutInfo)*)(cast(size_t)cast(void*)this + 424); }
	public @property final auto ref float TerminationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref int PreferredSplitScreenNum() { return *cast(int*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref MatineeActor ReplicatedActor() { return *cast(MatineeActor*)(cast(size_t)cast(void*)this + 416); }
	public @property final auto ref ScriptClass ReplicatedActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 412); }
	// WARNING: Property 'InterpData' has the same name as a defined type!
	public @property final bool bShouldShowGore() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4000) != 0; }
	public @property final bool bShouldShowGore(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4000; } return val; }
	public @property final bool bIsSkippable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2000) != 0; }
	public @property final bool bIsSkippable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2000; } return val; }
	public @property final bool bSkipUpdateIfNotVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1000) != 0; }
	public @property final bool bSkipUpdateIfNotVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1000; } return val; }
	public @property final bool bClientSideOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x800) != 0; }
	public @property final bool bClientSideOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x800; } return val; }
	public @property final bool bDisableRadioFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x400) != 0; }
	public @property final bool bDisableRadioFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x400; } return val; }
	public @property final bool bForceStartPos() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x200) != 0; }
	public @property final bool bForceStartPos(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x200; } return val; }
	public @property final bool bInterpForPathBuilding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x100) != 0; }
	public @property final bool bInterpForPathBuilding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x100; } return val; }
	public @property final bool bRewindIfAlreadyPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x40) != 0; }
	public @property final bool bRewindIfAlreadyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x40; } return val; }
	public @property final bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x8) != 0; }
	public @property final bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x8; } return val; }
	public @property final bool bIsBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4) != 0; }
	public @property final bool bIsBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4; } return val; }
	public @property final auto ref float ForceStartPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
	final void AddPlayerToDirectorTracks(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[7793], params.ptr, cast(void*)0);
	}
	final void SetPosition(float NewPosition, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewPosition;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25736], params.ptr, cast(void*)0);
	}
	final void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25739], cast(void*)0, cast(void*)0);
	}
	final void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25741], cast(void*)0, cast(void*)0);
	}
	final int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[25742], params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
