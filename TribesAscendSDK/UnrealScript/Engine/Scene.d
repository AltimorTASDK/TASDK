module UnrealScript.Engine.Scene;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;

extern(C++) interface Scene : UObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Scene")); }
	private static __gshared Scene mDefaultProperties;
	@property final static Scene DefaultProperties() { mixin(MGDPC("Scene", "Scene Engine.Default__Scene")); }
	static struct Constants
	{
		enum SDPG_NumBits = 3;
	}
	enum EDetailMode : ubyte
	{
		DM_Low = 0,
		DM_Medium = 1,
		DM_High = 2,
		DM_MAX = 3,
	}
	enum ESceneDepthPriorityGroup : ubyte
	{
		SDPG_UnrealEdBackground = 0,
		SDPG_World = 1,
		SDPG_Foreground = 2,
		SDPG_UnrealEdForeground = 3,
		SDPG_PostProcess = 4,
		SDPG_MAX = 5,
	}
}
