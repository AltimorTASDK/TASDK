module UnrealScript.TribesGame.TrVGSNode_Taunt;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Taunt : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_Taunt")); }
	private static __gshared TrVGSNode_Taunt mDefaultProperties;
	@property final static TrVGSNode_Taunt DefaultProperties() { mixin(MGDPC("TrVGSNode_Taunt", "TrVGSNode_Taunt TribesGame.Default__TrVGSNode_Taunt")); }
}
