module UnrealScript.TribesGame.TrVGSNode_SelfRepair;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_SelfRepair : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_SelfRepair")); }
	private static __gshared TrVGSNode_SelfRepair mDefaultProperties;
	@property final static TrVGSNode_SelfRepair DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_SelfRepair)("TrVGSNode_SelfRepair TribesGame.Default__TrVGSNode_SelfRepair")); }
}
