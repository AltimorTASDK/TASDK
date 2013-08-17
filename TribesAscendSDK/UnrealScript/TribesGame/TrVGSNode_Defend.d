module UnrealScript.TribesGame.TrVGSNode_Defend;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Defend : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Defend")); }
	private static __gshared TrVGSNode_Defend mDefaultProperties;
	@property final static TrVGSNode_Defend DefaultProperties() { mixin(MGDPC("TrVGSNode_Defend", "TrVGSNode_Defend TribesGame.Default__TrVGSNode_Defend")); }
}
