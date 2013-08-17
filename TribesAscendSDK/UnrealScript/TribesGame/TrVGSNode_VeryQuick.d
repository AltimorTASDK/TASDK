module UnrealScript.TribesGame.TrVGSNode_VeryQuick;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_VeryQuick : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrVGSNode_VeryQuick")()); }
	private static __gshared TrVGSNode_VeryQuick mDefaultProperties;
	@property final static TrVGSNode_VeryQuick DefaultProperties() { mixin(MGDPC!(TrVGSNode_VeryQuick, "TrVGSNode_VeryQuick TribesGame.Default__TrVGSNode_VeryQuick")()); }
}
