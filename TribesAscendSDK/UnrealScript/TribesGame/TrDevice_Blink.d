module UnrealScript.TribesGame.TrDevice_Blink;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_Pack;

extern(C++) interface TrDevice_Blink : TrDevice_Pack
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_Blink")()); }
	private static __gshared TrDevice_Blink mDefaultProperties;
	@property final static TrDevice_Blink DefaultProperties() { mixin(MGDPC!(TrDevice_Blink, "TrDevice_Blink TribesGame.Default__TrDevice_Blink")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mGetBlinkImpulse;
			ScriptFunction mToggleActivate;
			ScriptFunction mOnBlink;
		}
		public @property static final
		{
			ScriptFunction GetBlinkImpulse() { mixin(MGF!("mGetBlinkImpulse", "Function TribesGame.TrDevice_Blink.GetBlinkImpulse")()); }
			ScriptFunction ToggleActivate() { mixin(MGF!("mToggleActivate", "Function TribesGame.TrDevice_Blink.ToggleActivate")()); }
			ScriptFunction OnBlink() { mixin(MGF!("mOnBlink", "Function TribesGame.TrDevice_Blink.OnBlink")()); }
		}
	}
	@property final auto ref
	{
		float m_fMinZImpulse() { mixin(MGPC!("float", 2180)()); }
		float m_fPowerPoolCost() { mixin(MGPC!("float", 2184)()); }
		float m_fSpeedCapThresholdStart() { mixin(MGPC!("float", 2200)()); }
		float m_fSpeedCapPct() { mixin(MGPC!("float", 2204)()); }
		float m_fSpeedCapThreshold() { mixin(MGPC!("float", 2196)()); }
		float m_fLastActivationTimestamp() { mixin(MGPC!("float", 2192)()); }
		float m_fCooldownTime() { mixin(MGPC!("float", 2188)()); }
		Vector m_vBlinkImpulse() { mixin(MGPC!("Vector", 2168)()); }
	}
final:
	Vector GetBlinkImpulse()
	{
		ubyte params[12];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.GetBlinkImpulse, params.ptr, cast(void*)0);
		return *cast(Vector*)params.ptr;
	}
	void ToggleActivate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleActivate, cast(void*)0, cast(void*)0);
	}
	void OnBlink(float PercentEffectiveness)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = PercentEffectiveness;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnBlink, params.ptr, cast(void*)0);
	}
}
