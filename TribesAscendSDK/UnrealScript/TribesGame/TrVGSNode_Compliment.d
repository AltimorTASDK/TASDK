module UnrealScript.TribesGame.TrVGSNode_Compliment;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Compliment : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Compliment")); }
	private static __gshared TrVGSNode_Compliment mDefaultProperties;
	@property final static TrVGSNode_Compliment DefaultProperties() { mixin(MGDPC("TrVGSNode_Compliment", "TrVGSNode_Compliment TribesGame.Default__TrVGSNode_Compliment")); }
}
