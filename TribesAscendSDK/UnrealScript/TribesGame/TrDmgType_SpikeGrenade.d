module UnrealScript.TribesGame.TrDmgType_SpikeGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDmgType_Explosive;

extern(C++) interface TrDmgType_SpikeGrenade : TrDmgType_Explosive
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDmgType_SpikeGrenade")); }
	private static __gshared TrDmgType_SpikeGrenade mDefaultProperties;
	@property final static TrDmgType_SpikeGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDmgType_SpikeGrenade)("TrDmgType_SpikeGrenade TribesGame.Default__TrDmgType_SpikeGrenade")); }
}
