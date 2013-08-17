module UnrealScript.TribesGame.TrVGSNode_Need;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Need : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Need")()); }
	private static __gshared TrVGSNode_Need mDefaultProperties;
	@property final static TrVGSNode_Need DefaultProperties() { mixin(MGDPC!(TrVGSNode_Need, "TrVGSNode_Need TribesGame.Default__TrVGSNode_Need")()); }
}
