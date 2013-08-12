module UnrealScript.TribesGame.TrVGSNode_Target;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Target : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Target")); }
	private static __gshared TrVGSNode_Target mDefaultProperties;
	@property final static TrVGSNode_Target DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Target)("TrVGSNode_Target TribesGame.Default__TrVGSNode_Target")); }
}
