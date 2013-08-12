module UnrealScript.TribesGame.TrVGSNode_Warning;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Warning : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Warning")); }
	private static __gshared TrVGSNode_Warning mDefaultProperties;
	@property final static TrVGSNode_Warning DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Warning)("TrVGSNode_Warning TribesGame.Default__TrVGSNode_Warning")); }
}
