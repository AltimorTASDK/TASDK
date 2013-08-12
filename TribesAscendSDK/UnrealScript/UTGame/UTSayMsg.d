module UnrealScript.UTGame.UTSayMsg;

import ScriptClasses;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.PlayerReplicationInfo;

extern(C++) interface UTSayMsg : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UTGame.UTSayMsg")); }
	private static __gshared UTSayMsg mDefaultProperties;
	@property final static UTSayMsg DefaultProperties() { return mDefaultProperties ? mDefaultProperties : (mDefaultProperties = ScriptObject.Find!(UTSayMsg)("UTSayMsg UTGame.Default__UTSayMsg")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetConsoleColor;
		public @property static final ScriptFunction GetConsoleColor() { return mGetConsoleColor ? mGetConsoleColor : (mGetConsoleColor = ScriptObject.Find!(ScriptFunction)("Function UTGame.UTSayMsg.GetConsoleColor")); }
	}
	@property final auto ref
	{
		UObject.Color BlueTeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 104); }
		UObject.Color RedTeamColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 100); }
	}
	final static UObject.Color GetConsoleColor(PlayerReplicationInfo RelatedPRI_1)
	{
		ubyte params[8];
		params[] = 0;
		*cast(PlayerReplicationInfo*)params.ptr = RelatedPRI_1;
		StaticClass.ProcessEvent(Functions.GetConsoleColor, params.ptr, cast(void*)0);
		return *cast(UObject.Color*)&params[4];
	}
}
