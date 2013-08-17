module UnrealScript.TribesGame.TrAnnouncer;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.Info;
import UnrealScript.TribesGame.TrPlayerController;

extern(C++) interface TrAnnouncer : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnnouncer")); }
	private static __gshared TrAnnouncer mDefaultProperties;
	@property final static TrAnnouncer DefaultProperties() { mixin(MGDPC("TrAnnouncer", "TrAnnouncer TribesGame.Default__TrAnnouncer")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mDestroyed;
			ScriptFunction mPostBeginPlay;
			ScriptFunction mPlayAnnouncement;
			ScriptFunction mAnnouncementFinished;
		}
		public @property static final
		{
			ScriptFunction Destroyed() { mixin(MGF("mDestroyed", "Function TribesGame.TrAnnouncer.Destroyed")); }
			ScriptFunction PostBeginPlay() { mixin(MGF("mPostBeginPlay", "Function TribesGame.TrAnnouncer.PostBeginPlay")); }
			ScriptFunction PlayAnnouncement() { mixin(MGF("mPlayAnnouncement", "Function TribesGame.TrAnnouncer.PlayAnnouncement")); }
			ScriptFunction AnnouncementFinished() { mixin(MGF("mAnnouncementFinished", "Function TribesGame.TrAnnouncer.AnnouncementFinished")); }
		}
	}
	@property final auto ref
	{
		ScriptArray!(SoundCue) m_QueuedAnnouncements() { mixin(MGPC("ScriptArray!(SoundCue)", 476)); }
		TrPlayerController m_PlayerOwner() { mixin(MGPC("TrPlayerController", 492)); }
		// ERROR: Unsupported object class 'ComponentProperty' for the property named 'm_CurrentAnnouncementAudioComponent'!
	}
final:
	void Destroyed()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Destroyed, cast(void*)0, cast(void*)0);
	}
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void PlayAnnouncement(SoundCue AnnouncementCue, bool bPlayRightNow)
	{
		ubyte params[8];
		params[] = 0;
		*cast(SoundCue*)params.ptr = AnnouncementCue;
		*cast(bool*)&params[4] = bPlayRightNow;
		(cast(ScriptObject)this).ProcessEvent(Functions.PlayAnnouncement, params.ptr, cast(void*)0);
	}
	void AnnouncementFinished(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* AC)
	{
		ubyte params[4];
		params[] = 0;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)params.ptr = AC;
		(cast(ScriptObject)this).ProcessEvent(Functions.AnnouncementFinished, params.ptr, cast(void*)0);
	}
}
