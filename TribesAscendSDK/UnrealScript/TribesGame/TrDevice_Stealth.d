module UnrealScript.TribesGame.TrDevice_Stealth;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_Stealth : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Stealth")()); }
	private static __gshared TrDevice_Stealth mDefaultProperties;
	@property final static TrDevice_Stealth DefaultProperties() { mixin(MGDPC!(TrDevice_Stealth, "TrDevice_Stealth TribesGame.Default__TrDevice_Stealth")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mPostBeginPlay;
		public @property static final ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function TribesGame.TrDevice_Stealth.PostBeginPlay")()); }
	}
	@property final auto ref float m_fPulseSpeedThreshold() { mixin(MGPC!("float", 2168)()); }
	final void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
}
