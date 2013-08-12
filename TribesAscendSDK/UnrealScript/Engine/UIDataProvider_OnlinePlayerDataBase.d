module UnrealScript.Engine.UIDataProvider_OnlinePlayerDataBase;

import ScriptClasses;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Engine.UIDataProvider;

extern(C++) interface UIDataProvider_OnlinePlayerDataBase : UIDataProvider
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.UIDataProvider_OnlinePlayerDataBase")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnRegister;
			ScriptFunction mOnUnregister;
		}
		public @property static final
		{
			ScriptFunction OnRegister() { return mOnRegister ? mOnRegister : (mOnRegister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerDataBase.OnRegister")); }
			ScriptFunction OnUnregister() { return mOnUnregister ? mOnUnregister : (mOnUnregister = ScriptObject.Find!(ScriptFunction)("Function Engine.UIDataProvider_OnlinePlayerDataBase.OnUnregister")); }
		}
	}
	@property final auto ref int PlayerControllerId() { return *cast(int*)(cast(size_t)cast(void*)this + 88); }
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
