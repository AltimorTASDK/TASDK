module UnrealScript.Engine.AnimNodeBlendBySpeed;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeBlendList;

extern(C++) interface AnimNodeBlendBySpeed : AnimNodeBlendList
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNodeBlendBySpeed")); }
	private static __gshared AnimNodeBlendBySpeed mDefaultProperties;
	@property final static AnimNodeBlendBySpeed DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(AnimNodeBlendBySpeed)("AnimNodeBlendBySpeed Engine.Default__AnimNodeBlendBySpeed")); }
	@property final
	{
		auto ref
		{
			ScriptArray!(float) Constraints() { return *cast(ScriptArray!(float)*)(cast(size_t)cast(void*)this + 296); }
			float BlendDelayRemaining() { return *cast(float*)(cast(size_t)cast(void*)this + 320); }
			float BlendDownDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 316); }
			float BlendUpDelay() { return *cast(float*)(cast(size_t)cast(void*)this + 312); }
			float BlendDownPerc() { return *cast(float*)(cast(size_t)cast(void*)this + 292); }
			float BlendDownTime() { return *cast(float*)(cast(size_t)cast(void*)this + 288); }
			float BlendUpTime() { return *cast(float*)(cast(size_t)cast(void*)this + 284); }
			int LastChannel() { return *cast(int*)(cast(size_t)cast(void*)this + 280); }
			float Speed() { return *cast(float*)(cast(size_t)cast(void*)this + 276); }
		}
		bool bUseAcceleration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 308) & 0x1) != 0; }
		bool bUseAcceleration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 308) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 308) &= ~0x1; } return val; }
	}
}
