module UnrealScript.TribesGame.TrVGSNode_Respond;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Respond : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Respond")); }
	private static __gshared TrVGSNode_Respond mDefaultProperties;
	@property final static TrVGSNode_Respond DefaultProperties() { mixin(MGDPC("TrVGSNode_Respond", "TrVGSNode_Respond TribesGame.Default__TrVGSNode_Respond")); }
}
