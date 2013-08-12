module UnrealScript.TribesGame.TrVGSNode_Self;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Self : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Self")); }
	private static __gshared TrVGSNode_Self mDefaultProperties;
	@property final static TrVGSNode_Self DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Self)("TrVGSNode_Self TribesGame.Default__TrVGSNode_Self")); }
}
