module UnrealScript.TribesGame.TrVGSNode_SelfAttack;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfAttack : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_SelfAttack")); }
	private static __gshared TrVGSNode_SelfAttack mDefaultProperties;
	@property final static TrVGSNode_SelfAttack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_SelfAttack)("TrVGSNode_SelfAttack TribesGame.Default__TrVGSNode_SelfAttack")); }
}
