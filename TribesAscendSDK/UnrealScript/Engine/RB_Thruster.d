module UnrealScript.Engine.RB_Thruster;

import ScriptClasses;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.RigidBodyBase;

extern(C++) interface RB_Thruster : RigidBodyBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.RB_Thruster")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mOnToggle;
		public @property static final ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.RB_Thruster.OnToggle")); }
	}
	@property final
	{
		@property final auto ref float ThrustStrength() { return *cast(float*)(cast(size_t)cast(void*)this + 480); }
		bool bThrustEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 476) & 0x1) != 0; }
		bool bThrustEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 476) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 476) &= ~0x1; } return val; }
	}
	final void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
