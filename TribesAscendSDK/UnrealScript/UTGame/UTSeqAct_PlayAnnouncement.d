module UnrealScript.UTGame.UTSeqAct_PlayAnnouncement;

import ScriptClasses;
import UnrealScript.UDKBase.UDKPlayerController;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_PlayAnnouncement : SequenceAction
{
public extern(D):
	@property final auto ref UDKPlayerController.ObjectiveAnnouncementInfo Announcement() { return *cast(UDKPlayerController.ObjectiveAnnouncementInfo*)(cast(size_t)cast(void*)this + 232); }
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[49112], cast(void*)0, cast(void*)0);
	}
}
