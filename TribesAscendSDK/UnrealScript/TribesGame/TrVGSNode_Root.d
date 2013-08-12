module UnrealScript.TribesGame.TrVGSNode_Root;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Root : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Root")); }
	private static __gshared TrVGSNode_Root mDefaultProperties;
	@property final static TrVGSNode_Root DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Root)("TrVGSNode_Root TribesGame.Default__TrVGSNode_Root")); }
}
