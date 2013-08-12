module UnrealScript.TribesGame.TrVGSNode_Upgrade;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Upgrade : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Upgrade")); }
	private static __gshared TrVGSNode_Upgrade mDefaultProperties;
	@property final static TrVGSNode_Upgrade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Upgrade)("TrVGSNode_Upgrade TribesGame.Default__TrVGSNode_Upgrade")); }
}
