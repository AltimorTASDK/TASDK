module UnrealScript.Engine.SeqAct_ToggleCinematicMode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleCinematicMode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ToggleCinematicMode")); }
	private static __gshared SeqAct_ToggleCinematicMode mDefaultProperties;
	@property final static SeqAct_ToggleCinematicMode DefaultProperties() { mixin(MGDPC("SeqAct_ToggleCinematicMode", "SeqAct_ToggleCinematicMode Engine.Default__SeqAct_ToggleCinematicMode")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mActivated;
		public @property static final ScriptFunction Activated() { mixin(MGF("mActivated", "Function Engine.SeqAct_ToggleCinematicMode.Activated")); }
	}
	@property final
	{
		bool bHidePlayer() { mixin(MGBPC(232, 0x4)); }
		bool bHidePlayer(bool val) { mixin(MSBPC(232, 0x4)); }
		bool bHideHUD() { mixin(MGBPC(232, 0x10)); }
		bool bHideHUD(bool val) { mixin(MSBPC(232, 0x10)); }
		bool bDisableMovement() { mixin(MGBPC(232, 0x1)); }
		bool bDisableMovement(bool val) { mixin(MSBPC(232, 0x1)); }
		bool bDisableTurning() { mixin(MGBPC(232, 0x2)); }
		bool bDisableTurning(bool val) { mixin(MSBPC(232, 0x2)); }
		bool bDisableInput() { mixin(MGBPC(232, 0x8)); }
		bool bDisableInput(bool val) { mixin(MSBPC(232, 0x8)); }
		bool bDroppedPickups() { mixin(MGBPC(232, 0x40)); }
		bool bDroppedPickups(bool val) { mixin(MSBPC(232, 0x40)); }
		bool bDeadBodies() { mixin(MGBPC(232, 0x20)); }
		bool bDeadBodies(bool val) { mixin(MSBPC(232, 0x20)); }
	}
	final void Activated()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Activated, cast(void*)0, cast(void*)0);
	}
}
