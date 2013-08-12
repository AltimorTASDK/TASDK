module UnrealScript.TribesGame.TrVGSNode_Taunt;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Taunt : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Taunt")); }
	private static __gshared TrVGSNode_Taunt mDefaultProperties;
	@property final static TrVGSNode_Taunt DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Taunt)("TrVGSNode_Taunt TribesGame.Default__TrVGSNode_Taunt")); }
}
