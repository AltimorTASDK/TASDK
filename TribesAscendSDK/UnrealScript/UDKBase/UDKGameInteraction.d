module UnrealScript.UDKBase.UDKGameInteraction;

import ScriptClasses;
import UnrealScript.Engine.UIInteraction;

extern(C++) interface UDKGameInteraction : UIInteraction
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class UDKBase.UDKGameInteraction")); }
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
			ScriptFunction ShouldProcessUIInput() { return mShouldProcessUIInput ? mShouldProcessUIInput : (mShouldProcessUIInput = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameInteraction.ShouldProcessUIInput")); }
			ScriptFunction ClearUIInputBlocks() { return mClearUIInputBlocks ? mClearUIInputBlocks : (mClearUIInputBlocks = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameInteraction.ClearUIInputBlocks")); }
			ScriptFunction BlockUIInput() { return mBlockUIInput ? mBlockUIInput : (mBlockUIInput = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameInteraction.BlockUIInput")); }
			ScriptFunction NotifyGameSessionEnded() { return mNotifyGameSessionEnded ? mNotifyGameSessionEnded : (mNotifyGameSessionEnded = ScriptObject.Find!(ScriptFunction)("Function UDKBase.UDKGameInteraction.NotifyGameSessionEnded")); }
		}
	}
	@property final auto ref int BlockUIInputSemaphore() { return *cast(int*)(cast(size_t)cast(void*)this + 348); }
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
