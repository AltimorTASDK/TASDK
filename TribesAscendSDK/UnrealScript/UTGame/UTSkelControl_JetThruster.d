module UnrealScript.UTGame.UTSkelControl_JetThruster;

import ScriptClasses;
import UnrealScript.Engine.SkelControlSingleBone;

extern(C++) interface UTSkelControl_JetThruster : SkelControlSingleBone
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSkelControl_JetThruster")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mTickSkelControl;
		public @property static final ScriptFunction TickSkelControl() { return mTickSkelControl ? mTickSkelControl : (mTickSkelControl = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSkelControl_JetThruster.TickSkelControl")); }
	}
	@property final auto ref
	{
		float DesiredStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 244); }
		float BlendRate() { return *cast(float*)(cast(size_t)cast(void*)this + 240); }
		float MaxForwardVelocity() { return *cast(float*)(cast(size_t)cast(void*)this + 236); }
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
