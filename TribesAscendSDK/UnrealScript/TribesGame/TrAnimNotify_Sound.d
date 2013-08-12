module UnrealScript.TribesGame.TrAnimNotify_Sound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_Sound;

extern(C++) interface TrAnimNotify_Sound : AnimNotify_Sound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class TribesGame.TrAnimNotify_Sound")); }
	struct DeviceOverride
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptStruct)("ScriptStruct TribesGame.TrAnimNotify_Sound.DeviceOverride")); }
		@property final auto ref
		{
			ScriptClass DeviceClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrAnimNotify_Sound.DeviceOverride) m_DeviceOverrides() { return *cast(ScriptArray!(TrAnimNotify_Sound.DeviceOverride)*)(cast(size_t)cast(void*)this + 92); }
		ScriptClass m_PreviewDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
	}
}
