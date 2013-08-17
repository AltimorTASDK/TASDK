module UnrealScript.TribesGame.TrVGSNode_Root;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Root : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Root")()); }
	private static __gshared TrVGSNode_Root mDefaultProperties;
	@property final static TrVGSNode_Root DefaultProperties() { mixin(MGDPC!(TrVGSNode_Root, "TrVGSNode_Root TribesGame.Default__TrVGSNode_Root")()); }
}
