module UnrealScript.TribesGame.TrVGSNode_Flag;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Flag : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Flag")); }
	private static __gshared TrVGSNode_Flag mDefaultProperties;
	@property final static TrVGSNode_Flag DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Flag)("TrVGSNode_Flag TribesGame.Default__TrVGSNode_Flag")); }
}
