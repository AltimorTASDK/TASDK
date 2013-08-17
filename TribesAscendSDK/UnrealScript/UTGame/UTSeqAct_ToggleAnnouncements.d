module UnrealScript.UTGame.UTSeqAct_ToggleAnnouncements;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_ToggleAnnouncements : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class UTGame.UTSeqAct_ToggleAnnouncements")); }
	private static __gshared UTSeqAct_ToggleAnnouncements mDefaultProperties;
	@property final static UTSeqAct_ToggleAnnouncements DefaultProperties() { mixin(MGDPC("UTSeqAct_ToggleAnnouncements", "UTSeqAct_ToggleAnnouncements UTGame.Default__UTSeqAct_ToggleAnnouncements")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function UTGame.UTSeqAct_ToggleAnnouncements.Activated")); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
