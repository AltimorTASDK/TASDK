module UnrealScript.OnlineSubsystemMcts.MctsOnlineSettings;

import ScriptClasses;
import UnrealScript.Engine.OnlineGameSettings;

extern(C++) interface MctsOnlineSettings : OnlineGameSettings
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class OnlineSubsystemMcts.MctsOnlineSettings")); }
	static struct Constants
	{
		enum PROPERTY_VIEW_MODE = 0x40000001;
	}
}
