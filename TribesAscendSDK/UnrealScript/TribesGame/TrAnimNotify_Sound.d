module UnrealScript.TribesGame.TrAnimNotify_Sound;

import ScriptClasses;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_Sound;

extern(C++) interface TrAnimNotify_Sound : AnimNotify_Sound
{
	struct DeviceOverride
	{
		public @property final auto ref ScriptClass DeviceClass() { return *cast(ScriptClass*)(cast(size_t)&this + 4); }
		private ubyte __DeviceClass[4];
		// WARNING: Property 'SoundCue' has the same name as a defined type!
	}
	public @property final auto ref ScriptArray!(TrAnimNotify_Sound.DeviceOverride) m_DeviceOverrides() { return *cast(ScriptArray!(TrAnimNotify_Sound.DeviceOverride)*)(cast(size_t)cast(void*)this + 92); }
	public @property final auto ref ScriptClass m_PreviewDeviceClass() { return *cast(ScriptClass*)(cast(size_t)cast(void*)this + 104); }
}
