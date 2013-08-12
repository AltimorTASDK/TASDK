module UnrealScript.TribesGame.TrDmgType_DeliveryPod;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_DeliveryPod : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_DeliveryPod")); }
}
