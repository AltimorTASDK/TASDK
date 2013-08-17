module UnrealScript.Engine.Interaction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.LocalPlayer;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.UIRoot;

extern(C++) interface Interaction : UIRoot
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Interaction")); }
	private static __gshared Interaction mDefaultProperties;
	@property final static Interaction DefaultProperties() { mixin(MGDPC("Interaction", "Interaction Engine.Default__Interaction")); }
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
			ScriptFunction OnReceivedNativeInputKey() { mixin(MGF("mOnReceivedNativeInputKey", "Function Engine.Interaction.OnReceivedNativeInputKey")); }
			ScriptFunction OnInitialize() { mixin(MGF("mOnInitialize", "Function Engine.Interaction.OnInitialize")); }
			ScriptFunction OnReceivedNativeInputChar() { mixin(MGF("mOnReceivedNativeInputChar", "Function Engine.Interaction.OnReceivedNativeInputChar")); }
			ScriptFunction OnReceivedNativeInputAxis() { mixin(MGF("mOnReceivedNativeInputAxis", "Function Engine.Interaction.OnReceivedNativeInputAxis")); }
			ScriptFunction Tick() { mixin(MGF("mTick", "Function Engine.Interaction.Tick")); }
			ScriptFunction PostRender() { mixin(MGF("mPostRender", "Function Engine.Interaction.PostRender")); }
			ScriptFunction Init() { mixin(MGF("mInit", "Function Engine.Interaction.Init")); }
			ScriptFunction Initialized() { mixin(MGF("mInitialized", "Function Engine.Interaction.Initialized")); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF("mNotifyGameSessionEnded", "Function Engine.Interaction.NotifyGameSessionEnded")); }
			ScriptFunction NotifyPlayerAdded() { mixin(MGF("mNotifyPlayerAdded", "Function Engine.Interaction.NotifyPlayerAdded")); }
			ScriptFunction NotifyPlayerRemoved() { mixin(MGF("mNotifyPlayerRemoved", "Function Engine.Interaction.NotifyPlayerRemoved")); }
		}
	}
	@property final auto ref
	{
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnInitialize__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedNativeInputChar__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedNativeInputAxis__Delegate'!
		// ERROR: Unsupported object class 'DelegateProperty' for the property named '__OnReceivedNativeInputKey__Delegate'!
	}
final:
	bool OnReceivedNativeInputKey(int ControllerId, ScriptName Key, UObject.EInputEvent EventType, float* AmountDepressed = null, bool* bGamepad = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(UObject.EInputEvent*)&params[12] = EventType;
		if (AmountDepressed !is null)
			*cast(float*)&params[16] = *AmountDepressed;
		if (bGamepad !is null)
			*cast(bool*)&params[20] = *bGamepad;
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
	bool OnReceivedNativeInputAxis(int ControllerId, ScriptName Key, float Delta, float DeltaTime, bool* bGamepad = null)
	{
		ubyte params[28];
		params[] = 0;
		*cast(int*)params.ptr = ControllerId;
		*cast(ScriptName*)&params[4] = Key;
		*cast(float*)&params[12] = Delta;
		*cast(float*)&params[16] = DeltaTime;
		if (bGamepad !is null)
			*cast(bool*)&params[20] = *bGamepad;
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
