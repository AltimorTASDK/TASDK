module UnrealScript.Engine.SeqAct_ToggleInput;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;

extern(C++) interface SeqAct_ToggleInput : SeqAct_Toggle
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ToggleInput")); }
	private static __gshared SeqAct_ToggleInput mDefaultProperties;
	@property final static SeqAct_ToggleInput DefaultProperties() { mixin(MGDPC("SeqAct_ToggleInput", "SeqAct_ToggleInput Engine.Default__SeqAct_ToggleInput")); }
	@property final
	{
		bool bToggleMovement() { mixin(MGBPC(232, 0x1)); }
		bool bToggleMovement(bool val) { mixin(MSBPC(232, 0x1)); }
		bool bToggleTurning() { mixin(MGBPC(232, 0x2)); }
		bool bToggleTurning(bool val) { mixin(MSBPC(232, 0x2)); }
	}
}
