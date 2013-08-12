module UnrealScript.Engine.SeqAct_ToggleGodMode;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_ToggleGodMode : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_ToggleGodMode")); }
	private static __gshared SeqAct_ToggleGodMode mDefaultProperties;
	@property final static SeqAct_ToggleGodMode DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_ToggleGodMode)("SeqAct_ToggleGodMode Engine.Default__SeqAct_ToggleGodMode")); }
}
