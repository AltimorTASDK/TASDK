module UnrealScript.TribesGame.TrVGSNode_Respond;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Respond : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Respond")); }
	private static __gshared TrVGSNode_Respond mDefaultProperties;
	@property final static TrVGSNode_Respond DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Respond)("TrVGSNode_Respond TribesGame.Default__TrVGSNode_Respond")); }
}
