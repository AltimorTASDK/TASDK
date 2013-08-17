module UnrealScript.Engine.SeqAct_AssignController;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AssignController : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_AssignController")()); }
	private static __gshared SeqAct_AssignController mDefaultProperties;
	@property final static SeqAct_AssignController DefaultProperties() { mixin(MGDPC!(SeqAct_AssignController, "SeqAct_AssignController Engine.Default__SeqAct_AssignController")()); }
	@property final auto ref ScriptClass ControllerClass() { mixin(MGPC!("ScriptClass", 232)()); }
}
