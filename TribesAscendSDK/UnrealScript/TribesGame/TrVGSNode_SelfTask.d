module UnrealScript.TribesGame.TrVGSNode_SelfTask;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfTask : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_SelfTask")); }
	private static __gshared TrVGSNode_SelfTask mDefaultProperties;
	@property final static TrVGSNode_SelfTask DefaultProperties() { mixin(MGDPC("TrVGSNode_SelfTask", "TrVGSNode_SelfTask TribesGame.Default__TrVGSNode_SelfTask")); }
}
