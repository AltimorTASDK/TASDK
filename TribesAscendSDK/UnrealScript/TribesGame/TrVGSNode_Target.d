module UnrealScript.TribesGame.TrVGSNode_Target;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Target : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_Target")()); }
	private static __gshared TrVGSNode_Target mDefaultProperties;
	@property final static TrVGSNode_Target DefaultProperties() { mixin(MGDPC!(TrVGSNode_Target, "TrVGSNode_Target TribesGame.Default__TrVGSNode_Target")()); }
}
