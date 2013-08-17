module UnrealScript.TribesGame.TrVGSNode_Global;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Global : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Global")()); }
	private static __gshared TrVGSNode_Global mDefaultProperties;
	@property final static TrVGSNode_Global DefaultProperties() { mixin(MGDPC!(TrVGSNode_Global, "TrVGSNode_Global TribesGame.Default__TrVGSNode_Global")()); }
}
