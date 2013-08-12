module UnrealScript.Engine.AnimNodeAdditiveBlending;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlend;

extern(C++) interface AnimNodeAdditiveBlending : AnimNodeBlend
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeAdditiveBlending")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetBlendTarget;
		public @property static final ScriptFunction SetBlendTarget() { return mSetBlendTarget ? mSetBlendTarget : (mSetBlendTarget = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNodeAdditiveBlending.SetBlendTarget")); }
	}
	@property final
	{
		bool bPassThroughWhenNotRendered() { return (*cast(uint*)(cast(size_t)cast(void*)this + 260) & 0x1) != 0; }
		bool bPassThroughWhenNotRendered(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 260) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 260) &= ~0x1; } return val; }
	}
	final void SetBlendTarget(float BlendTarget, float BlendTime)
	{
		ubyte params[8];
		params[] = 0;
		*cast(float*)params.ptr = BlendTarget;
		*cast(float*)&params[4] = BlendTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetBlendTarget, params.ptr, cast(void*)0);
	}
}
