module UnrealScript.UTGame.UTSkelControl_Oscillate;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_Oscillate : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UTGame.UTSkelControl_Oscillate")()); }
	private static __gshared UTSkelControl_Oscillate mDefaultProperties;
	@property final static UTSkelControl_Oscillate DefaultProperties() { mixin(MGDPC!(UTSkelControl_Oscillate, "UTSkelControl_Oscillate UTGame.Default__UTSkelControl_Oscillate")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTickSkelControl;
		public @property static final ScriptFunction TickSkelControl() { mixin(MGF!("mTickSkelControl", "Function UTGame.UTSkelControl_Oscillate.TickSkelControl")()); }
	}
	@property final
	{
		auto ref
		{
			float CurrentTime() { mixin(MGPC!("float", 252)()); }
			float Period() { mixin(MGPC!("float", 248)()); }
			Vector MaxDelta() { mixin(MGPC!("Vector", 236)()); }
		}
		bool bReverseDirection() { mixin(MGBPC!(256, 0x1)()); }
		bool bReverseDirection(bool val) { mixin(MSBPC!(256, 0x1)()); }
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
