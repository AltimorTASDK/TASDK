module UnrealScript.TribesGame.TrSkelControl_SpinControl;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface TrSkelControl_SpinControl : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrSkelControl_SpinControl")()); }
	private static __gshared TrSkelControl_SpinControl mDefaultProperties;
	@property final static TrSkelControl_SpinControl DefaultProperties() { mixin(MGDPC!(TrSkelControl_SpinControl, "TrSkelControl_SpinControl TribesGame.Default__TrSkelControl_SpinControl")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSpin;
			ScriptFunction mSpinToTargetRotation;
		}
		public @property static final
		{
			ScriptFunction Spin() { mixin(MGF!("mSpin", "Function TribesGame.TrSkelControl_SpinControl.Spin")()); }
			ScriptFunction SpinToTargetRotation() { mixin(MGF!("mSpinToTargetRotation", "Function TribesGame.TrSkelControl_SpinControl.SpinToTargetRotation")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float m_fSpinDownTime() { mixin(MGPC!(float, 260)()); }
			float m_fSpinUpTime() { mixin(MGPC!(float, 256)()); }
			float m_TimeToInterpToTargetRotation() { mixin(MGPC!(float, 280)()); }
			Rotator m_TargetRotation() { mixin(MGPC!(Rotator, 268)()); }
			float m_fCurrentDegreesPerSecond() { mixin(MGPC!(float, 264)()); }
			Vector m_vAxis() { mixin(MGPC!(Vector, 240)()); }
			float m_fDegreesPerSecond() { mixin(MGPC!(float, 236)()); }
		}
		bool m_bRotateToTargetRotation() { mixin(MGBPC!(252, 0x10)()); }
		bool m_bRotateToTargetRotation(bool val) { mixin(MSBPC!(252, 0x10)()); }
		bool m_bSpinningDown() { mixin(MGBPC!(252, 0x8)()); }
		bool m_bSpinningDown(bool val) { mixin(MSBPC!(252, 0x8)()); }
		bool m_bSpinningUp() { mixin(MGBPC!(252, 0x4)()); }
		bool m_bSpinningUp(bool val) { mixin(MSBPC!(252, 0x4)()); }
		bool m_bIsSpinning() { mixin(MGBPC!(252, 0x2)()); }
		bool m_bIsSpinning(bool val) { mixin(MSBPC!(252, 0x2)()); }
		bool m_PreviewStartStop() { mixin(MGBPC!(252, 0x1)()); }
		bool m_PreviewStartStop(bool val) { mixin(MSBPC!(252, 0x1)()); }
	}
final:
	void Spin(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.Spin, params.ptr, cast(void*)0);
	}
	void SpinToTargetRotation(Rotator TargetRotation, float Time, bool bReset)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Rotator*)params.ptr = TargetRotation;
		*cast(float*)&params[12] = Time;
		*cast(bool*)&params[16] = bReset;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpinToTargetRotation, params.ptr, cast(void*)0);
	}
}
