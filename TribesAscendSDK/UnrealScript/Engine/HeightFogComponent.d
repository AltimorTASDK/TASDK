module UnrealScript.Engine.HeightFogComponent;

import ScriptClasses;
import UnrealScript.Engine.ActorComponent;
import UnrealScript.Core.UObject;

extern(C++) interface HeightFogComponent : ActorComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.HeightFogComponent")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSetEnabled;
		public @property static final ScriptFunction SetEnabled() { return mSetEnabled ? mSetEnabled : (mSetEnabled = ScriptObject.Find!(ScriptFunction)("Function Engine.HeightFogComponent.SetEnabled")); }
	}
	@property final
	{
		auto ref
		{
			float StartDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 112); }
			float ExtinctionDistance() { return *cast(float*)(cast(size_t)cast(void*)this + 108); }
			UObject.Color LightColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 104); }
			float LightBrightness() { return *cast(float*)(cast(size_t)cast(void*)this + 100); }
			float Density() { return *cast(float*)(cast(size_t)cast(void*)this + 96); }
			float Height() { return *cast(float*)(cast(size_t)cast(void*)this + 92); }
		}
		bool bEnabled() { return (*cast(uint*)(cast(size_t)cast(void*)this + 88) & 0x1) != 0; }
		bool bEnabled(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 88) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 88) &= ~0x1; } return val; }
	}
	final void SetEnabled(bool bSetEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bSetEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
}
