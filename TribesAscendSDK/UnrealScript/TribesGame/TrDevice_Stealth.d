module UnrealScript.TribesGame.TrDevice_Stealth;

import ScriptClasses;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_Stealth : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrDevice_Stealth")); }
	private static __gshared TrDevice_Stealth mDefaultProperties;
	@property final static TrDevice_Stealth DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(TrDevice_Stealth)("TrDevice_Stealth TribesGame.Default__TrDevice_Stealth")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { return mPostBeginPlay ? mPostBeginPlay : (mPostBeginPlay = ScriptObject.Find!(ScriptFunction)("Function TribesGame.TrDevice_Stealth.PostBeginPlay")); }
	}
	@property final auto ref float m_fPulseSpeedThreshold() { return *cast(float*)(cast(size_t)cast(void*)this + 2168); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
