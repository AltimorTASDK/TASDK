module UnrealScript.TribesGame.TrVGSNode_Upgrade;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Upgrade : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Upgrade")()); }
	private static __gshared TrVGSNode_Upgrade mDefaultProperties;
	@property final static TrVGSNode_Upgrade DefaultProperties() { mixin(MGDPC!(TrVGSNode_Upgrade, "TrVGSNode_Upgrade TribesGame.Default__TrVGSNode_Upgrade")()); }
}
