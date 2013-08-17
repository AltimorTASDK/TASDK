module UnrealScript.UTGame.UTSkelControl_CicadaEngine;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_CicadaEngine : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_CicadaEngine")()); }
	private static __gshared UTSkelControl_CicadaEngine mDefaultProperties;
	@property final static UTSkelControl_CicadaEngine DefaultProperties() { mixin(MGDPC!(UTSkelControl_CicadaEngine, "UTSkelControl_CicadaEngine UTGame.Default__UTSkelControl_CicadaEngine")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTickSkelControl;
		public @property static final ScriptFunction TickSkelControl() { mixin(MGF!("mTickSkelControl", "Function UTGame.UTSkelControl_CicadaEngine.TickSkelControl")()); }
	}
	@property final auto ref
	{
		int DesiredPitch() { mixin(MGPC!("int", 268)()); }
		float LastThrust() { mixin(MGPC!("float", 264)()); }
		float PitchTime() { mixin(MGPC!("float", 260)()); }
		float MaxVelocityPitchRateMultiplier() { mixin(MGPC!("float", 256)()); }
		float MinVelocity() { mixin(MGPC!("float", 252)()); }
		float MaxVelocity() { mixin(MGPC!("float", 248)()); }
		float PitchRate() { mixin(MGPC!("float", 244)()); }
		float BackPitch() { mixin(MGPC!("float", 240)()); }
		float ForwardPitch() { mixin(MGPC!("float", 236)()); }
	}
	final void TickSkelControl(float DeltaTime, 
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void* SkelComp)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		*cast(
// ERROR: Unknown object class 'Class Core.ComponentProperty'!
void**)&params[4] = SkelComp;
		(cast(ScriptObject)this).ProcessEvent(Functions.TickSkelControl, params.ptr, cast(void*)0);
	}
}
