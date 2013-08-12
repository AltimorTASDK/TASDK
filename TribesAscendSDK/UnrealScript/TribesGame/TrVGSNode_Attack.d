module UnrealScript.TribesGame.TrVGSNode_Attack;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Attack : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Attack")); }
	private static __gshared TrVGSNode_Attack mDefaultProperties;
	@property final static TrVGSNode_Attack DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Attack)("TrVGSNode_Attack TribesGame.Default__TrVGSNode_Attack")); }
}
