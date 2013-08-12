module UnrealScript.UTGame.UTSeqAct_AIStartFireAt;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface UTSeqAct_AIStartFireAt : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSeqAct_AIStartFireAt")); }
	private static __gshared UTSeqAct_AIStartFireAt mDefaultProperties;
	@property final static UTSeqAct_AIStartFireAt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSeqAct_AIStartFireAt)("UTSeqAct_AIStartFireAt UTGame.Default__UTSeqAct_AIStartFireAt")); }
	@property final auto ref ubyte ForcedFireMode() { return *cast(ubyte*)(cast(size_t)cast(void*)this + 232); }
}
