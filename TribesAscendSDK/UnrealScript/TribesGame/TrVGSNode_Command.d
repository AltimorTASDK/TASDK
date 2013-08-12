module UnrealScript.TribesGame.TrVGSNode_Command;

import ScriptClasses;
import UnrealScript.TribesGame.TrVGSNode;

extern(C++) interface TrVGSNode_Command : TrVGSNode
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrVGSNode_Command")); }
	private static __gshared TrVGSNode_Command mDefaultProperties;
	@property final static TrVGSNode_Command DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrVGSNode_Command)("TrVGSNode_Command TribesGame.Default__TrVGSNode_Command")); }
}
