module UnrealScript.Engine.SeqAct_CameraShake;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Camera;
import UnrealScript.Engine.SequenceAction;

extern(C++) interface SeqAct_CameraShake : SequenceAction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SeqAct_CameraShake")()); }
	private static __gshared SeqAct_CameraShake mDefaultProperties;
	@property final static SeqAct_CameraShake DefaultProperties() { mixin(MGDPC!(SeqAct_CameraShake, "SeqAct_CameraShake Engine.Default__SeqAct_CameraShake")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetObjClassVersion;
		public @property static final ScriptFunction GetObjClassVersion() { mixin(MGF!("mGetObjClassVersion", "Function Engine.SeqAct_CameraShake.GetObjClassVersion")()); }
	}
	@property final
	{
		auto ref
		{
			Actor LocationActor() { mixin(MGPC!(Actor, 260)()); }
			CameraShake Shake() { mixin(MGPC!(CameraShake, 232)()); }
			float RadialShake_InnerRadius() { mixin(MGPC!(float, 244)()); }
			float RadialShake_OuterRadius() { mixin(MGPC!(float, 248)()); }
			float RadialShake_Falloff() { mixin(MGPC!(float, 252)()); }
			float ShakeScale() { mixin(MGPC!(float, 236)()); }
			Camera.ECameraAnimPlaySpace PlaySpace() { mixin(MGPC!(Camera.ECameraAnimPlaySpace, 256)()); }
		}
		bool bRadialShake() { mixin(MGBPC!(240, 0x2)()); }
		bool bRadialShake(bool val) { mixin(MSBPC!(240, 0x2)()); }
		bool bDoControllerVibration() { mixin(MGBPC!(240, 0x1)()); }
		bool bDoControllerVibration(bool val) { mixin(MSBPC!(240, 0x1)()); }
		bool bOrientTowardRadialEpicenter() { mixin(MGBPC!(240, 0x4)()); }
		bool bOrientTowardRadialEpicenter(bool val) { mixin(MSBPC!(240, 0x4)()); }
	}
	final static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
