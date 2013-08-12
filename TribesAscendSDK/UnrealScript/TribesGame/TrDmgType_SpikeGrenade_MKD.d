module UnrealScript.TribesGame.TrDmgType_SpikeGrenade_MKD;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_SpikeGrenade_MKD : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SpikeGrenade_MKD")); }
	private static __gshared TrDmgType_SpikeGrenade_MKD mDefaultProperties;
	@property final static TrDmgType_SpikeGrenade_MKD DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SpikeGrenade_MKD)("TrDmgType_SpikeGrenade_MKD TribesGame.Default__TrDmgType_SpikeGrenade_MKD")); }
}
