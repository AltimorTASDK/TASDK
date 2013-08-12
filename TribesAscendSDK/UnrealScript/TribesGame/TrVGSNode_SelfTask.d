module UnrealScript.TribesGame.TrVGSNode_SelfTask;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfTask : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_SelfTask")); }
	private static __gshared TrVGSNode_SelfTask mDefaultProperties;
	@property final static TrVGSNode_SelfTask DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_SelfTask)("TrVGSNode_SelfTask TribesGame.Default__TrVGSNode_SelfTask")); }
}
