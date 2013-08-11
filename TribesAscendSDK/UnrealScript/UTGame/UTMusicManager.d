module UnrealScript.UTGame.UTMusicManager;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.UTGame.UTPlayerController;
import UnrealScript.Engine.Info;

extern(C++) interface UTMusicManager : Info
{
	enum EMusicState : ubyte
	{
		MST_Ambient = 0,
		MST_Tension = 1,
		MST_Suspense = 2,
		MST_Action = 3,
		MST_Victory = 4,
		MST_MAX = 5,
	}
	public @property final auto ref float MusicStartTime() { return *cast(float*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref int LastBeat() { return *cast(int*)(cast(size_t)cast(void*)this + 480); }
	public @property final auto ref UTMusicManager.EMusicState CurrentState() { return *cast(UTMusicManager.EMusicState*)(cast(size_t)cast(void*)this + 512); }
	public @property final auto ref float MusicVolume() { return *cast(float*)(cast(size_t)cast(void*)this + 496); }
	public @property final auto ref UTPlayerController PlayerOwner() { return *cast(UTPlayerController*)(cast(size_t)cast(void*)this + 492); }
	public @property final auto ref float CurrTempo() { return *cast(float*)(cast(size_t)cast(void*)this + 484); }
	public @property final auto ref float CurrFadeFactor() { return *cast(float*)(cast(size_t)cast(void*)this + 488); }
	public @property final auto ref int PendingEvent() { return *cast(int*)(cast(size_t)cast(void*)this + 516); }
	public @property final auto ref float PendingEventPlayTime() { return *cast(float*)(cast(size_t)cast(void*)this + 520); }
	public @property final auto ref float PendingEventDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 524); }
	public @property final bool bPendingAction() { return (*cast(uint*)(cast(size_t)cast(void*)this + 504) & 0x1) != 0; }
	public @property final bool bPendingAction(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 504) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 504) &= ~0x1; } return val; }
	public @property final auto ref float LastActionEventTime() { return *cast(float*)(cast(size_t)cast(void*)this + 500); }
	public @property final auto ref float StingerVolumeMultiplier() { return *cast(float*)(cast(size_t)cast(void*)this + 508); }
	final bool AlreadyInActionMusic()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[36812], params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48511], cast(void*)0, cast(void*)0);
	}
	final void StartMusic()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48512], cast(void*)0, cast(void*)0);
	}
	final void IntroFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48522], params.ptr, cast(void*)0);
	}
	final 
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* CreateNewTrack(SoundCue MusicCue)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = MusicCue;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48525], params.ptr, cast(void*)0);
		return *cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)&params[4];
	}
	final void MusicEvent(int NewEventIndex)
	{
		ubyte params[4];
		params[] = 0;
		*cast(int*)params.ptr = NewEventIndex;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48529], params.ptr, cast(void*)0);
	}
	final void ProcessMusicEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48536], cast(void*)0, cast(void*)0);
	}
	final void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48541], params.ptr, cast(void*)0);
	}
	final void ChangeTrack(UTMusicManager.EMusicState NewState)
	{
		ubyte params[1];
		params[] = 0;
		*cast(UTMusicManager.EMusicState*)params.ptr = NewState;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[48546], params.ptr, cast(void*)0);
	}
}
