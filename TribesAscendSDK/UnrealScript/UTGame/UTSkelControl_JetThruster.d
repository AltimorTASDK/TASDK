module UnrealScript.UTGame.UTSkelControl_JetThruster;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_JetThruster : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_JetThruster")()); }
	private static __gshared UTSkelControl_JetThruster mDefaultProperties;
	@property final static UTSkelControl_JetThruster DefaultProperties() { mixin(MGDPC!(UTSkelControl_JetThruster, "UTSkelControl_JetThruster UTGame.Default__UTSkelControl_JetThruster")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTickSkelControl;
		public @property static final ScriptFunction TickSkelControl() { mixin(MGF!("mTickSkelControl", "Function UTGame.UTSkelControl_JetThruster.TickSkelControl")()); }
	}
	@property final auto ref
	{
		float DesiredStrength() { mixin(MGPC!("float", 244)()); }
		float BlendRate() { mixin(MGPC!("float", 240)()); }
		float MaxForwardVelocity() { mixin(MGPC!("float", 236)()); }
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
