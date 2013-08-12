module UnrealScript.Engine.SeqAct_AssignController;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_AssignController : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.SeqAct_AssignController")); }
	private static __gshared SeqAct_AssignController mDefaultProperties;
	@property final static SeqAct_AssignController DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(SeqAct_AssignController)("SeqAct_AssignController Engine.Default__SeqAct_AssignController")); }
	@property final auto ref ScriptClass ControllerClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 232); }
}
