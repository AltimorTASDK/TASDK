module UnrealScript.OnlineSubsystemMcts.MctsOnlineSettings;

import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface MctsOnlineSettings : OnlineGameSettings
{
	public static immutable auto PROPERTY_VIEW_MODE = 0x40000001;
}
