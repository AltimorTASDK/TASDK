module UnrealScript.Engine.SeqAct_Interp;

import ScriptClasses;
import UnrealScript.Helpers;
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
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_Interp")); }
	private static __gshared SeqAct_Interp mDefaultProperties;
	@property final static SeqAct_Interp DefaultProperties() { mixin(MGDPC("SeqAct_Interp", "SeqAct_Interp Engine.Default__SeqAct_Interp")); }
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
			ScriptFunction AddPlayerToDirectorTracks() { mixin(MGF("mAddPlayerToDirectorTracks", "Function Engine.SeqAct_Interp.AddPlayerToDirectorTracks")); }
			ScriptFunction SetPosition() { mixin(MGF("mSetPosition", "Function Engine.SeqAct_Interp.SetPosition")); }
			ScriptFunction Stop() { mixin(MGF("mStop", "Function Engine.SeqAct_Interp.Stop")); }
			ScriptFunction Reset() { mixin(MGF("mReset", "Function Engine.SeqAct_Interp.Reset")); }
			ScriptFunction GetObjClassVersion() { mixin(MGF("mGetObjClassVersion", "Function Engine.SeqAct_Interp.GetObjClassVersion")); }
		}
	}
	struct CameraCutInfo
	{
		private ubyte __buffer__[16];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SeqAct_Interp.CameraCutInfo")); }
		@property final auto ref
		{
			float TimeStamp() { mixin(MGPS("float", 12)); }
			Vector Location() { mixin(MGPS("Vector", 0)); }
		}
	}
	struct SavedTransform
	{
		private ubyte __buffer__[24];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct Engine.SeqAct_Interp.SavedTransform")); }
		@property final auto ref
		{
			Rotator Rotation() { mixin(MGPS("Rotator", 12)); }
			Vector Location() { mixin(MGPS("Vector", 0)); }
		}
	}
	@property final
	{
		auto ref
		{
			float PlayRate() { mixin(MGPC("float", 368)); }
			float Position() { mixin(MGPC("float", 372)); }
			ScriptArray!(InterpGroupInst) GroupInst() { mixin(MGPC("ScriptArray!(InterpGroupInst)", 400)); }
			ScriptArray!(CoverLink) LinkedCover() { mixin(MGPC("ScriptArray!(CoverLink)", 384)); }
			ScriptArray!(SeqAct_Interp.CameraCutInfo) CameraCuts() { mixin(MGPC("ScriptArray!(SeqAct_Interp.CameraCutInfo)", 424)); }
			float TerminationTime() { mixin(MGPC("float", 436)); }
			int PreferredSplitScreenNum() { mixin(MGPC("int", 420)); }
			MatineeActor ReplicatedActor() { mixin(MGPC("MatineeActor", 416)); }
			ScriptClass ReplicatedActorClass() { mixin(MGPC("ScriptClass", 412)); }
			InterpData InterpDataVar() { mixin(MGPC("InterpData", 396)); }
			float ForceStartPosition() { mixin(MGPC("float", 376)); }
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SavedActorVisibilities'!
			// ERROR: Unsupported object class 'MapProperty' for the property named 'SavedActorTransforms'!
		}
		bool bReversePlayback() { mixin(MGBPC(380, 0x80)); }
		bool bReversePlayback(bool val) { mixin(MSBPC(380, 0x80)); }
		bool bNoResetOnRewind() { mixin(MGBPC(380, 0x20)); }
		bool bNoResetOnRewind(bool val) { mixin(MSBPC(380, 0x20)); }
		bool bRewindOnPlay() { mixin(MGBPC(380, 0x10)); }
		bool bRewindOnPlay(bool val) { mixin(MSBPC(380, 0x10)); }
		bool bIsPlaying() { mixin(MGBPC(380, 0x1)); }
		bool bIsPlaying(bool val) { mixin(MSBPC(380, 0x1)); }
		bool bPaused() { mixin(MGBPC(380, 0x2)); }
		bool bPaused(bool val) { mixin(MSBPC(380, 0x2)); }
		bool bShouldShowGore() { mixin(MGBPC(380, 0x4000)); }
		bool bShouldShowGore(bool val) { mixin(MSBPC(380, 0x4000)); }
		bool bIsSkippable() { mixin(MGBPC(380, 0x2000)); }
		bool bIsSkippable(bool val) { mixin(MSBPC(380, 0x2000)); }
		bool bSkipUpdateIfNotVisible() { mixin(MGBPC(380, 0x1000)); }
		bool bSkipUpdateIfNotVisible(bool val) { mixin(MSBPC(380, 0x1000)); }
		bool bClientSideOnly() { mixin(MGBPC(380, 0x800)); }
		bool bClientSideOnly(bool val) { mixin(MSBPC(380, 0x800)); }
		bool bDisableRadioFilter() { mixin(MGBPC(380, 0x400)); }
		bool bDisableRadioFilter(bool val) { mixin(MSBPC(380, 0x400)); }
		bool bForceStartPos() { mixin(MGBPC(380, 0x200)); }
		bool bForceStartPos(bool val) { mixin(MSBPC(380, 0x200)); }
		bool bInterpForPathBuilding() { mixin(MGBPC(380, 0x100)); }
		bool bInterpForPathBuilding(bool val) { mixin(MSBPC(380, 0x100)); }
		bool bRewindIfAlreadyPlaying() { mixin(MGBPC(380, 0x40)); }
		bool bRewindIfAlreadyPlaying(bool val) { mixin(MSBPC(380, 0x40)); }
		bool bLooping() { mixin(MGBPC(380, 0x8)); }
		bool bLooping(bool val) { mixin(MSBPC(380, 0x8)); }
		bool bIsBeingEdited() { mixin(MGBPC(380, 0x4)); }
		bool bIsBeingEdited(bool val) { mixin(MSBPC(380, 0x4)); }
	}
final:
	void AddPlayerToDirectorTracks(PlayerController PC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(PlayerController*)params.ptr = PC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AddPlayerToDirectorTracks, params.ptr, cast(void*)0);
	}
	void SetPosition(float NewPosition, bool* bJump = null)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = NewPosition;
		if (bJump !is null)
			*cast(bool*)&params[4] = *bJump;
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
