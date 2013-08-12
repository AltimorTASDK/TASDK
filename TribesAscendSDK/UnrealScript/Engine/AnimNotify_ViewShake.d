module UnrealScript.Engine.AnimNotify_ViewShake;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeSequence;
import UnrealScript.Engine.CameraShake;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.AnimNotify_Scripted;

extern(C++) interface AnimNotify_ViewShake : AnimNotify_Scripted
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.AnimNotify_ViewShake")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mNotify;
		public @property static final ScriptFunction Notify() { return mNotify ? mNotify : (mNotify = ScriptObject.Find!(ScriptFunction)("Function Engine.AnimNotify_ViewShake.Notify")); }
	}
	@property final
	{
		auto ref
		{
			// WARNING: Property 'ShakeParams' has the same name as a defined type!
			ScriptName BoneName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 132); }
			float ShakeRadius() { return *cast(float*)(cast(size_t)cast(void*)this + 128); }
			float FOVFrequency() { return *cast(float*)(cast(size_t)cast(void*)this + 120); }
			float FOVAmplitude() { return *cast(float*)(cast(size_t)cast(void*)this + 116); }
			Vector LocFrequency() { return *cast(Vector*)(cast(size_t)cast(void*)this + 104); }
			Vector LocAmplitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 92); }
			Vector RotFrequency() { return *cast(Vector*)(cast(size_t)cast(void*)this + 80); }
			Vector RotAmplitude() { return *cast(Vector*)(cast(size_t)cast(void*)this + 68); }
			float Duration() { return *cast(float*)(cast(size_t)cast(void*)this + 64); }
		}
		bool bUseBoneLocation() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x2) != 0; }
		bool bUseBoneLocation(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x2; } return val; }
		bool bDoControllerVibration() { return (*cast(uint*)(cast(size_t)cast(void*)this + 124) & 0x1) != 0; }
		bool bDoControllerVibration(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 124) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 124) &= ~0x1; } return val; }
	}
	final void Notify(Actor Owner, AnimNodeSequence AnimSeqInstigator)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Actor*)params.ptr = Owner;
		*cast(AnimNodeSequence*)&params[4] = AnimSeqInstigator;
		(cast(ScriptObject)this).ProcessEvent(Functions.Notify, params.ptr, cast(void*)0);
	}
}
