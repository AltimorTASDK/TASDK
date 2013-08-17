module UnrealScript.TribesGame.TrVGSNode_Attack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Attack : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Attack")()); }
	private static __gshared TrVGSNode_Attack mDefaultProperties;
	@property final static TrVGSNode_Attack DefaultProperties() { mixin(MGDPC!(TrVGSNode_Attack, "TrVGSNode_Attack TribesGame.Default__TrVGSNode_Attack")()); }
}
