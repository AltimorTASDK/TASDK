module UnrealScript.TribesGame.TrVGSNode_SelfUpgrade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfUpgrade : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_SelfUpgrade")()); }
	private static __gshared TrVGSNode_SelfUpgrade mDefaultProperties;
	@property final static TrVGSNode_SelfUpgrade DefaultProperties() { mixin(MGDPC!(TrVGSNode_SelfUpgrade, "TrVGSNode_SelfUpgrade TribesGame.Default__TrVGSNode_SelfUpgrade")()); }
}
