module UnrealScript.TribesGame.TrVGSNode_SelfRepair;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfRepair : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_SelfRepair")); }
	private static __gshared TrVGSNode_SelfRepair mDefaultProperties;
	@property final static TrVGSNode_SelfRepair DefaultProperties() { mixin(MGDPC("TrVGSNode_SelfRepair", "TrVGSNode_SelfRepair TribesGame.Default__TrVGSNode_SelfRepair")); }
}
