module UnrealScript.TribesGame.TrAttachment_Melee_DS;

import ScriptClasses;
import UnrealScript.TribesGame.TrAttachment_Melee;

extern(C++) interface TrAttachment_Melee_DS : TrAttachment_Melee
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAttachment_Melee_DS")); }
}
