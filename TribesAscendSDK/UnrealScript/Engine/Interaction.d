module UnrealScript.Engine.Interaction;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;

extern(C++) interface Interaction : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.Interaction")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnReceivedNativeInputKey;
			ScriptFunction mOnInitialize;
			ScriptFunction mOnReceivedNativeInputChar;
			ScriptFunction mOnReceivedNativeInputAxis;
			ScriptFunction mTick;
			ScriptFunction mPostRender;
			ScriptFunction mInit;
			ScriptFunction mInitialized;
			ScriptFunction mNotifyGameSessionEnded;
			ScriptFunction mNotifyPlayerAdded;
			ScriptFunction mNotifyPlayerRemoved;
		}
		public @property static final
		{
			ScriptFunction OnReceivedNativeInputKey() { return mOnReceivedNativeInputKey ? mOnReceivedNativeInputKey : (mOnReceivedNativeInputKey = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.OnReceivedNativeInputKey")); }
			ScriptFunction OnInitialize() { return mOnInitialize ? mOnInitialize : (mOnInitialize = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.OnInitialize")); }
			ScriptFunction OnReceivedNativeInputChar() { return mOnReceivedNativeInputChar ? mOnReceivedNativeInputChar : (mOnReceivedNativeInputChar = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.OnReceivedNativeInputChar")); }
			ScriptFunction OnReceivedNativeInputAxis() { return mOnReceivedNativeInputAxis ? mOnReceivedNativeInputAxis : (mOnReceivedNativeInputAxis = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.OnReceivedNativeInputAxis")); }
			ScriptFunction Tick() { return mTick ? mTick : (mTick = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.Tick")); }
			ScriptFunction PostRender() { return mPostRender ? mPostRender : (mPostRender = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.PostRender")); }
			ScriptFunction Init() { return mInit ? mInit : (mInit = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.Init")); }
			ScriptFunction Initialized() { return mInitialized ? mInitialized : (mInitialized = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.Initialized")); }
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.NotifyGameSessionEnded")); }
			ScriptFunction NotifyPlayerAdded() { return mNotifyPlayerAdded ? mNotifyPlayerAdded : (mNotifyPlayerAdded = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.NotifyPlayerAdded")); }
			ScriptFunction NotifyPlayerRemoved() { return mNotifyPlayerRemoved ? mNotifyPlayerRemoved : (mNotifyPlayerRemoved = ScriptObject.Find!(ScriptFunction)("Function Engine.Interaction.NotifyPlayerRemoved")); }
		}
	}
final:
	bool OnReceivedNativeInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent EventType, float AmountDepressed, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = EventType;
		*cast(float*)&params[16] = AmountDepressed;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedNativeInputKey, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void OnInitialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.OnInitialize, cast(void*)0, cast(void*)0);
	}
	bool OnReceivedNativeInputChar(int ControllerId, ScriptString Unicode)
	{
		ubyte params[20];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptString*)&params[4] = Unicode;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedNativeInputChar, params.ptr, cast(void*)0);
		return *cast(bool*)&params[16];
	}
	bool OnReceivedNativeInputAxis(int ControllerId, ScriptName Key, float Delta, float DeltaTime, bool bGamepad)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(float*)&params[12] = Delta;
		*cast(float*)&params[16] = DeltaTime;
		*cast(bool*)&params[20] = bGamepad;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnReceivedNativeInputAxis, params.ptr, cast(void*)0);
		return *cast(bool*)&params[24];
	}
	void Tick(float DeltaTime)
	{
		ubyte params[4];
		params[] = 0;
		*cast(float*)params.ptr = DeltaTime;
		(cast(ScriptObject)this).ProcessEvent(Functions.Tick, params.ptr, cast(void*)0);
	}
	void PostRender(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.PostRender, params.ptr, cast(void*)0);
	}
	void Init()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Init, cast(void*)0, cast(void*)0);
	}
	void Initialized()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialized, cast(void*)0, cast(void*)0);
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
	}
	void NotifyPlayerAdded(int PlayerIndex, LocalPlayer AddedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = AddedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerAdded, params.ptr, cast(void*)0);
	}
	void NotifyPlayerRemoved(int PlayerIndex, LocalPlayer RemovedPlayer)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PlayerIndex;
		*cast(LocalPlayer*)&params[4] = RemovedPlayer;
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyPlayerRemoved, params.ptr, cast(void*)0);
	}
}
