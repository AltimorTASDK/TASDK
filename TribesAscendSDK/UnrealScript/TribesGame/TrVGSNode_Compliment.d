module UnrealScript.TribesGame.TrVGSNode_Compliment;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Compliment : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Compliment")); }
	private static __gshared TrVGSNode_Compliment mDefaultProperties;
	@property final static TrVGSNode_Compliment DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Compliment)("TrVGSNode_Compliment TribesGame.Default__TrVGSNode_Compliment")); }
}
