module UnrealScript.TribesGame.TrDmgType_DeliveryPod;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_DeliveryPod : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_DeliveryPod")); }
	private static __gshared TrDmgType_DeliveryPod mDefaultProperties;
	@property final static TrDmgType_DeliveryPod DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_DeliveryPod)("TrDmgType_DeliveryPod TribesGame.Default__TrDmgType_DeliveryPod")); }
}
