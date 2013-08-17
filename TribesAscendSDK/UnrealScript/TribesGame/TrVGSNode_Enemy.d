module UnrealScript.TribesGame.TrVGSNode_Enemy;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Enemy : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Enemy")()); }
	private static __gshared TrVGSNode_Enemy mDefaultProperties;
	@property final static TrVGSNode_Enemy DefaultProperties() { mixin(MGDPC!(TrVGSNode_Enemy, "TrVGSNode_Enemy TribesGame.Default__TrVGSNode_Enemy")()); }
}
