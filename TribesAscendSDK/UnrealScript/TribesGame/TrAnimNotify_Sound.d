module UnrealScript.TribesGame.TrAnimNotify_Sound;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SoundCue;
import UnrealScript.Engine.AnimNotify_Sound;

extern(C++) interface TrAnimNotify_Sound : AnimNotify_Sound
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrAnimNotify_Sound")); }
	private static __gshared TrAnimNotify_Sound mDefaultProperties;
	@property final static TrAnimNotify_Sound DefaultProperties() { mixin(MGDPC("TrAnimNotify_Sound", "TrAnimNotify_Sound TribesGame.Default__TrAnimNotify_Sound")); }
	struct DeviceOverride
	{
		private ubyte __buffer__[8];
	public extern(D):
		private static __gshared ScriptStruct mStaticClass;
		@property final static ScriptStruct StaticClass() { mixin(MGSCS("ScriptStruct TribesGame.TrAnimNotify_Sound.DeviceOverride")); }
		@property final auto ref
		{
			ScriptClass DeviceClass() { mixin(MGPS("ScriptClass", 4)); }
			// WARNING: Property 'SoundCue' has the same name as a defined type!
		}
	}
	@property final auto ref
	{
		ScriptArray!(TrAnimNotify_Sound.DeviceOverride) m_DeviceOverrides() { mixin(MGPC("ScriptArray!(TrAnimNotify_Sound.DeviceOverride)", 92)); }
		ScriptClass m_PreviewDeviceClass() { mixin(MGPC("ScriptClass", 104)); }
	}
}
