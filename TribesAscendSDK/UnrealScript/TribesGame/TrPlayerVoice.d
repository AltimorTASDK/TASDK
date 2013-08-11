module UnrealScript.TribesGame.TrPlayerVoice;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.TribesGame.TrVGSCommandList;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.TribesGame.TrPlayerController;
import UnrealScript.TribesGame.TrDevice;

extern(C++) interface TrPlayerVoice : TrDevice
{
	struct VGSCommandToVoiceMap
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 4); }
		private ubyte __Sound[4];
		public @property final auto ref TrVGSCommandList.VGSCommandType Command() { return *cast(TrVGSCommandList.VGSCommandType*)(cast(size_t)&this + 0); }
		private ubyte __Command[1];
	}
	struct VGSContextCommandToVoiceMap
	{
		public @property final auto ref SoundCue Sound() { return *cast(SoundCue*)(cast(size_t)&this + 8); }
		private ubyte __Sound[4];
		public @property final bool bIsEnemyLocation() { return (*cast(uint*)(cast(size_t)&this + 4) & 0x1) != 0; }
		public @property final bool bIsEnemyLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)&this + 4) |= 0x1; } else { *cast(uint*)(cast(size_t)&this + 4) &= ~0x1; } return val; }
		private ubyte __bIsEnemyLocation[4];
		public @property final auto ref TrVGSCommandList.EVGSContextLocation ContextLocation() { return *cast(TrVGSCommandList.EVGSContextLocation*)(cast(size_t)&this + 1); }
		private ubyte __ContextLocation[1];
		public @property final auto ref TrVGSCommandList.EVGSContextActor ContextActor() { return *cast(TrVGSCommandList.EVGSContextActor*)(cast(size_t)&this + 0); }
		private ubyte __ContextActor[1];
	}
	public @property final auto ref ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap) m_VGSCommandToVoiceMap() { return *cast(ScriptArray!(TrPlayerVoice.VGSCommandToVoiceMap)*)(cast(size_t)cast(void*)this + 2148); }
	public @property final auto ref ScriptArray!(SoundCue) m_VGSSampleMap() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 2160); }
	public @property final auto ref ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap) m_VGSContextCommandToVoiceMap() { return *cast(ScriptArray!(TrPlayerVoice.VGSContextCommandToVoiceMap)*)(cast(size_t)cast(void*)this + 2172); }
	final void PlaySoundEx(TrVGSCommandList.VGSCommandType Command, TrPlayerController TrPC, PlayerReplicationInfo InstigatorPRI)
	{
		ubyte params[9];
		params[] = 0;
		*cast(TrVGSCommandList.VGSCommandType*)params.ptr = Command;
		*cast(TrPlayerController*)&params[4] = TrPC;
		*cast(PlayerReplicationInfo*)&params[8] = InstigatorPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[101604], params.ptr, cast(void*)0);
	}
	final void PlaySoundContext(TrPlayerController TrPC, TrVGSCommandList.EVGSContextActor ContextActor, TrVGSCommandList.EVGSContextLocation ContextLocation, bool bEnemyLocation, PlayerReplicationInfo InstigatorPRI)
	{
		ubyte params[14];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		*cast(TrVGSCommandList.EVGSContextActor*)&params[4] = ContextActor;
		*cast(TrVGSCommandList.EVGSContextLocation*)&params[5] = ContextLocation;
		*cast(bool*)&params[8] = bEnemyLocation;
		*cast(PlayerReplicationInfo*)&params[12] = InstigatorPRI;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[101610], params.ptr, cast(void*)0);
	}
	final void PlayRandomSample(TrPlayerController TrPC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(TrPlayerController*)params.ptr = TrPC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[101618], params.ptr, cast(void*)0);
	}
}
