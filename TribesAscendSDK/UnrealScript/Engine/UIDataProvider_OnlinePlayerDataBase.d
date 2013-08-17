module UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerDataBase : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.UIDataProvider_OnlinePlayerDataBase")); }
	private static __gshared UIDataProvider_OnlinePlayerDataBase mDefaultProperties;
	@property final static UIDataProvider_OnlinePlayerDataBase DefaultProperties() { mixin(MGDPC("UIDataProvider_OnlinePlayerDataBase", "UIDataProvider_OnlinePlayerDataBase Engine.Default__UIDataProvider_OnlinePlayerDataBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
		}
		public @property static final
		{
			ScriptFunction OnRegister() { mixin(MGF("mOnRegister", "Function Engine.UIDataProvider_OnlinePlayerDataBase.OnRegister")); }
			ScriptFunction OnUnregister() { mixin(MGF("mOnUnregister", "Function Engine.UIDataProvider_OnlinePlayerDataBase.OnUnregister")); }
		}
	}
	@property final auto ref int PlayerControllerId() { mixin(MGPC("int", 88)); }
final:
	void OnRegister(LocalPlayer InPlayer)
	{
		ubyte params[4];
		params[] = 0;
		*cast(LocalPlayer*)params.ptr = InPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnRegister, params.ptr, cast(void*)0);
	}
	void OnUnregister()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnUnregister, cast(void*)0, cast(void*)0);
	}
}
