module UnrealScript.UDKBase.UDKGameInteraction;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.UIInteraction;

extern(C++) interface UDKGameInteraction : UIInteraction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class UDKBase.UDKGameInteraction")()); }
	private static __gshared UDKGameInteraction mDefaultProperties;
	@property final static UDKGameInteraction DefaultProperties() { mixin(MGDPC!(UDKGameInteraction, "UDKGameInteraction UDKBase.Default__UDKGameInteraction")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mShouldProcessUIInput;
			ScriptFunction mClearUIInputBlocks;
			ScriptFunction mBlockUIInput;
			ScriptFunction mNotifyGameSessionEnded;
		}
		public @property static final
		{
			ScriptFunction ShouldProcessUIInput() { mixin(MGF!("mShouldProcessUIInput", "Function UDKBase.UDKGameInteraction.ShouldProcessUIInput")()); }
			ScriptFunction ClearUIInputBlocks() { mixin(MGF!("mClearUIInputBlocks", "Function UDKBase.UDKGameInteraction.ClearUIInputBlocks")()); }
			ScriptFunction BlockUIInput() { mixin(MGF!("mBlockUIInput", "Function UDKBase.UDKGameInteraction.BlockUIInput")()); }
			ScriptFunction NotifyGameSessionEnded() { mixin(MGF!("mNotifyGameSessionEnded", "Function UDKBase.UDKGameInteraction.NotifyGameSessionEnded")()); }
		}
	}
	@property final auto ref int BlockUIInputSemaphore() { mixin(MGPC!(int, 348)()); }
final:
	bool ShouldProcessUIInput()
	{
		ubyte params[4];
		params[] = 0;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShouldProcessUIInput, params.ptr, cast(void*)0);
		return *cast(bool*)params.ptr;
	}
	void ClearUIInputBlocks()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ClearUIInputBlocks, cast(void*)0, cast(void*)0);
	}
	void BlockUIInput(bool bBlock)
	{
		ubyte params[4];
		params[] = 0;
		*cast(bool*)params.ptr = bBlock;
		(cast(ScriptObject)this).ProcessEvent(Functions.BlockUIInput, params.ptr, cast(void*)0);
	}
	void NotifyGameSessionEnded()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.NotifyGameSessionEnded, cast(void*)0, cast(void*)0);
	}
}
