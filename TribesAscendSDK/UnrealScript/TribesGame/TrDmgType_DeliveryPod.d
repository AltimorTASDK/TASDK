module UnrealScript.TribesGame.TrDmgType_DeliveryPod;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDmgType_Base;

extern(C++) interface TrDmgType_DeliveryPod : TrDmgType_Base
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDmgType_DeliveryPod")()); }
	private static __gshared TrDmgType_DeliveryPod mDefaultProperties;
	@property final static TrDmgType_DeliveryPod DefaultProperties() { mixin(MGDPC!(TrDmgType_DeliveryPod, "TrDmgType_DeliveryPod TribesGame.Default__TrDmgType_DeliveryPod")()); }
}
