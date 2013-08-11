module UnrealScript.OnlineSubsystemMcts.MctsOnlineSettings;

import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface MctsOnlineSettings : OnlineGameSettings
{
public extern(D):
	enum PROPERTY_VIEW_MODE = 0x40000001;
}
