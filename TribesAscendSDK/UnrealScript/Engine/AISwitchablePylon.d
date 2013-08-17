module UnrealScript.Engine.AISwitchablePylon;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Pylon;

extern(C++) interface AISwitchablePylon : Pylon
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AISwitchablePylon")()); }
	private static __gshared AISwitchablePylon mDefaultProperties;
	@property final static AISwitchablePylon DefaultProperties() { mixin(MGDPC!(AISwitchablePylon, "AISwitchablePylon Engine.Default__AISwitchablePylon")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mPostBeginPlay;
			ScriptFunction mSetEnabled;
			ScriptFunction mIsEnabled;
		}
		public @property static final
		{
			ScriptFunction PostBeginPlay() { mixin(MGF!("mPostBeginPlay", "Function Engine.AISwitchablePylon.PostBeginPlay")()); }
			ScriptFunction SetEnabled() { mixin(MGF!("mSetEnabled", "Function Engine.AISwitchablePylon.SetEnabled")()); }
			ScriptFunction IsEnabled() { mixin(MGF!("mIsEnabled", "Function Engine.AISwitchablePylon.IsEnabled")()); }
		}
	}
	@property final
	{
		bool bOpen() { mixin(MGBPC!(832, 0x1)()); }
		bool bOpen(bool val) { mixin(MSBPC!(832, 0x1)()); }
	}
final:
	void PostBeginPlay()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.PostBeginPlay, cast(void*)0, cast(void*)0);
	}
	void SetEnabled(bool bEnabled)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bEnabled;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetEnabled, params.ptr, cast(void*)0);
	}
	bool IsEnabled()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.IsEnabled, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
}
