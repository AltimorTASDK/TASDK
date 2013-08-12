module UnrealScript.Engine.TriggeredPath;

import ScriptClasses;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TriggeredPath : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class Engine.TriggeredPath")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mOnToggle;
			ScriptFunction mSpecialHandling;
			ScriptFunction mSuggestMovePreparation;
		}
		public @property static final
		{
			ScriptFunction OnToggle() { return mOnToggle ? mOnToggle : (mOnToggle = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggeredPath.OnToggle")); }
			ScriptFunction SpecialHandling() { return mSpecialHandling ? mSpecialHandling : (mSpecialHandling = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggeredPath.SpecialHandling")); }
			ScriptFunction SuggestMovePreparation() { return mSuggestMovePreparation ? mSuggestMovePreparation : (mSuggestMovePreparation = ScriptObject.Find!(ScriptFunction)("Function Engine.TriggeredPath.SuggestMovePreparation")); }
		}
	}
	@property final
	{
		@property final auto ref Actor MyTrigger() { return *cast(Actor*)(cast(size_t)cast(void*)this + 696); }
		bool bOpen() { return (*cast(uint*)(cast(size_t)cast(void*)this + 692) & 0x1) != 0; }
		bool bOpen(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 692) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 692) &= ~0x1; } return val; }
	}
final:
	void OnToggle(SeqAct_Toggle inAction)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = inAction;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
	Actor SpecialHandling(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialHandling, params.ptr, cast(void*)0);
		return *cast(Actor*)&params[4];
	}
	bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
