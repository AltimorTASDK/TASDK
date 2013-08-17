module UnrealScript.Engine.SeqAct_ToggleGodMode;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleGodMode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.SeqAct_ToggleGodMode")); }
	private static __gshared SeqAct_ToggleGodMode mDefaultProperties;
	@property final static SeqAct_ToggleGodMode DefaultProperties() { mixin(MGDPC("SeqAct_ToggleGodMode", "SeqAct_ToggleGodMode Engine.Default__SeqAct_ToggleGodMode")); }
}
