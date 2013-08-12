module UnrealScript.TribesGame.TrSeqAct_RefreshInventory;

import ScriptClasses;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface TrSeqAct_RefreshInventory : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrSeqAct_RefreshInventory")); }
}
