module UnrealScript.TribesGame.TrDevice_StealthLightSpinfusor;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Spinfusor;

extern(C++) interface TrDevice_StealthLightSpinfusor : TrDevice_Spinfusor
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_StealthLightSpinfusor")); }
	private static __gshared TrDevice_StealthLightSpinfusor mDefaultProperties;
	@property final static TrDevice_StealthLightSpinfusor DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_StealthLightSpinfusor)("TrDevice_StealthLightSpinfusor TribesGame.Default__TrDevice_StealthLightSpinfusor")); }
}
