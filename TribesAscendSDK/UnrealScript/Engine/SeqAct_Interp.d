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
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_Interp")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mAddPlayerToDirectorTracks;
			ScriptFunction mSetPosition;
			ScriptFunction mStop;
			ScriptFunction mReset;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction AddPlayerToDirectorTracks() { return mAddPlayerToDirectorTracks ? mAddPlayerToDirectorTracks : (mAddPlayerToDirectorTracks = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Interp.AddPlayerToDirectorTracks")); }
			ScriptFunction SetPosition() { return mSetPosition ? mSetPosition : (mSetPosition = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Interp.SetPosition")); }
			ScriptFunction Stop() { return mStop ? mStop : (mStop = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Interp.Stop")); }
			ScriptFunction Reset() { return mReset ? mReset : (mReset = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Interp.Reset")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function Engine.SeqAct_Interp.GetObjClassVersion")); }
		}
	}
	struct CameraCutInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqAct_Interp.CameraCutInfo")); }
		@property final auto ref
		{
			float TimeStamp() { return *cast(float*)(cast(size_t)&this + 12); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	struct SavedTransform
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct Engine.SeqAct_Interp.SavedTransform")); }
		@property final auto ref
		{
			Rotator Rotation() { return *cast(Rotator*)(cast(size_t)&this + 12); }
			Vector Location() { return *cast(Vector*)(cast(size_t)&this + 0); }
		}
	}
	@property final
	{
		auto ref
		{
			float PlayRate() { return *cast(float*)(cast(size_t)cast(void*)this + 368); }
			float Position() { return *cast(float*)(cast(size_t)cast(void*)this + 372); }
			ScriptArray!(InterpGroupInst) GroupInst() { return *cast(ScriptArray!(InterpGroupInst)*)(cast(size_t)cast(void*)this + 400); }
			ScriptArray!(CoverLink) LinkedCover() { return *cast(ScriptArray!(CoverLink)*)(cast(size_t)cast(void*)this + 384); }
			ScriptArray!(SeqAct_Interp.CameraCutInfo) CameraCuts() { return *cast(ScriptArray!(SeqAct_Interp.CameraCutInfo)*)(cast(size_t)cast(void*)this + 424); }
			float TerminationTime() { return *cast(float*)(cast(size_t)cast(void*)this + 436); }
			int PreferredSplitScreenNum() { return *cast(int*)(cast(size_t)cast(void*)this + 420); }
			MatineeActor ReplicatedActor() { return *cast(MatineeActor*)(cast(size_t)cast(void*)this + 416); }
			ScriptClass ReplicatedActorClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 412); }
			// WARNING: Property 'InterpData' has the same name as a defined type!
			float ForceStartPosition() { return *cast(float*)(cast(size_t)cast(void*)this + 376); }
		}
		bool bReversePlayback() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x80) != 0; }
		bool bReversePlayback(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x80; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x80; } return val; }
		bool bNoResetOnRewind() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x20) != 0; }
		bool bNoResetOnRewind(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x20; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x20; } return val; }
		bool bRewindOnPlay() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x10) != 0; }
		bool bRewindOnPlay(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x10; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x10; } return val; }
		bool bIsPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1) != 0; }
		bool bIsPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1; } return val; }
		bool bPaused() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2) != 0; }
		bool bPaused(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2; } return val; }
		bool bShouldShowGore() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4000) != 0; }
		bool bShouldShowGore(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4000; } return val; }
		bool bIsSkippable() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x2000) != 0; }
		bool bIsSkippable(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x2000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x2000; } return val; }
		bool bSkipUpdateIfNotVisible() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x1000) != 0; }
		bool bSkipUpdateIfNotVisible(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x1000; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x1000; } return val; }
		bool bClientSideOnly() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x800) != 0; }
		bool bClientSideOnly(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x800; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x800; } return val; }
		bool bDisableRadioFilter() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x400) != 0; }
		bool bDisableRadioFilter(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x400; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x400; } return val; }
		bool bForceStartPos() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x200) != 0; }
		bool bForceStartPos(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x200; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x200; } return val; }
		bool bInterpForPathBuilding() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x100) != 0; }
		bool bInterpForPathBuilding(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x100; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x100; } return val; }
		bool bRewindIfAlreadyPlaying() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x40) != 0; }
		bool bRewindIfAlreadyPlaying(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x40; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x40; } return val; }
		bool bLooping() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x8) != 0; }
		bool bLooping(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x8; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x8; } return val; }
		bool bIsBeingEdited() { return (*cast(uint*)(cast(size_t)cast(void*)this + 380) & 0x4) != 0; }
		bool bIsBeingEdited(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 380) |= 0x4; } else { *cast(uint*)(cast(size_t)cast(void*)this + 380) &= ~0x4; } return val; }
	}
final:
	void AddPlayerToDirectorTracks(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPlayerToDirectorTracks, params.ptr, cast(void*)0);
	}
	void SetPosition(float NewPosition, bool bJump)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewPosition;
		*cast(bool*)&params[4] = bJump;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetPosition, params.ptr, cast(void*)0);
	}
	void Stop()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Stop, cast(void*)0, cast(void*)0);
	}
	void Reset()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Reset, cast(void*)0, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
