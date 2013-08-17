module UnrealScript.TribesGame.TrVGSNode_Flag;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Flag : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Flag")()); }
	private static __gshared TrVGSNode_Flag mDefaultProperties;
	@property final static TrVGSNode_Flag DefaultProperties() { mixin(MGDPC!(TrVGSNode_Flag, "TrVGSNode_Flag TribesGame.Default__TrVGSNode_Flag")()); }
}
