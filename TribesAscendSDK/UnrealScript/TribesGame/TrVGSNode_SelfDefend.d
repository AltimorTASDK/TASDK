module UnrealScript.TribesGame.TrVGSNode_SelfDefend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfDefend : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_SelfDefend")); }
	private static __gshared TrVGSNode_SelfDefend mDefaultProperties;
	@property final static TrVGSNode_SelfDefend DefaultProperties() { mixin(MGDPC("TrVGSNode_SelfDefend", "TrVGSNode_SelfDefend TribesGame.Default__TrVGSNode_SelfDefend")); }
}
