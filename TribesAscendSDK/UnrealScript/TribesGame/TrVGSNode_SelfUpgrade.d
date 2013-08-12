module UnrealScript.TribesGame.TrVGSNode_SelfUpgrade;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfUpgrade : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_SelfUpgrade")); }
	private static __gshared TrVGSNode_SelfUpgrade mDefaultProperties;
	@property final static TrVGSNode_SelfUpgrade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_SelfUpgrade)("TrVGSNode_SelfUpgrade TribesGame.Default__TrVGSNode_SelfUpgrade")); }
}
