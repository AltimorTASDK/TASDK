module UnrealScript.TribesGame.TrAnnouncer;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrAnnouncer : Info
{
	public @property final auto ref ScriptArray!(SoundCue) m_QueuedAnnouncements() { return *cast(ScriptArray!(SoundCue)*)(cast(size_t)cast(void*)this + 476); }
	public @property final auto ref TrPlayerController m_PlayerOwner() { return *cast(TrPlayerController*)(cast(size_t)cast(void*)this + 492); }
	final void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66546], cast(void*)0, cast(void*)0);
	}
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66547], cast(void*)0, cast(void*)0);
	}
	final void PlayAnnouncement(SoundCue AnnouncementCue, bool bPlayRightNow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = AnnouncementCue;
		*cast(bool*)&params[4] = bPlayRightNow;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66548], params.ptr, cast(void*)0);
	}
	final void AnnouncementFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'~
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[66551], params.ptr, cast(void*)0);
	}
}
