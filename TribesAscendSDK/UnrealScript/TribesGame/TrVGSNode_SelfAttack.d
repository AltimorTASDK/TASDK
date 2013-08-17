module UnrealScript.TribesGame.TrVGSNode_SelfAttack;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfAttack : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrVGSNode_SelfAttack")); }
	private static __gshared TrVGSNode_SelfAttack mDefaultProperties;
	@property final static TrVGSNode_SelfAttack DefaultProperties() { mixin(MGDPC("TrVGSNode_SelfAttack", "TrVGSNode_SelfAttack TribesGame.Default__TrVGSNode_SelfAttack")); }
}
