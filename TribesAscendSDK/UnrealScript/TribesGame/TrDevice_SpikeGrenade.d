module UnrealScript.TribesGame.TrDevice_SpikeGrenade;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_AutoFire;

extern(C++) interface TrDevice_SpikeGrenade : TrDevice_AutoFire
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_SpikeGrenade")); }
	private static __gshared TrDevice_SpikeGrenade mDefaultProperties;
	@property final static TrDevice_SpikeGrenade DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_SpikeGrenade)("TrDevice_SpikeGrenade TribesGame.Default__TrDevice_SpikeGrenade")); }
}
