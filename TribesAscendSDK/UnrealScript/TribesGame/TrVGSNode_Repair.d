module UnrealScript.TribesGame.TrVGSNode_Repair;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Repair : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Repair")); }
	private static __gshared TrVGSNode_Repair mDefaultProperties;
	@property final static TrVGSNode_Repair DefaultProperties() { mixin(MGDPC("TrVGSNode_Repair", "TrVGSNode_Repair TribesGame.Default__TrVGSNode_Repair")); }
}
