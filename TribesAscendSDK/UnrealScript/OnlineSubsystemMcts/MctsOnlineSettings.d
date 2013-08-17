module UnrealScript.OnlineSubsystemMcts.MctsOnlineSettings;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface MctsOnlineSettings : OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class OnlineSubsystemMcts.MctsOnlineSettings")); }
	private static __gshared MctsOnlineSettings mDefaultProperties;
	@property final static MctsOnlineSettings DefaultProperties() { mixin(MGDPC("MctsOnlineSettings", "MctsOnlineSettings OnlineSubsystemMcts.Default__MctsOnlineSettings")); }
	static struct Constants
	{
		enum PROPERTY_VIEW_MODE = 0x40000001;
	}
}
