module UnrealScript.TribesGame.TrVGSNode_Defend;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Defend : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Defend")); }
	private static __gshared TrVGSNode_Defend mDefaultProperties;
	@property final static TrVGSNode_Defend DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Defend)("TrVGSNode_Defend TribesGame.Default__TrVGSNode_Defend")); }
}
