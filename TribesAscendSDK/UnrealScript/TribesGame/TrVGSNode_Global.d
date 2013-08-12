module UnrealScript.TribesGame.TrVGSNode_Global;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Global : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Global")); }
	private static __gshared TrVGSNode_Global mDefaultProperties;
	@property final static TrVGSNode_Global DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Global)("TrVGSNode_Global TribesGame.Default__TrVGSNode_Global")); }
}
