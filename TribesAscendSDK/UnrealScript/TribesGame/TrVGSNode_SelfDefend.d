module UnrealScript.TribesGame.TrVGSNode_SelfDefend;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfDefend : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_SelfDefend")); }
	private static __gshared TrVGSNode_SelfDefend mDefaultProperties;
	@property final static TrVGSNode_SelfDefend DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_SelfDefend)("TrVGSNode_SelfDefend TribesGame.Default__TrVGSNode_SelfDefend")); }
}
