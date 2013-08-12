module UnrealScript.TribesGame.TrVGSNode_Base;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Base : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Base")); }
	private static __gshared TrVGSNode_Base mDefaultProperties;
	@property final static TrVGSNode_Base DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Base)("TrVGSNode_Base TribesGame.Default__TrVGSNode_Base")); }
}
