module UnrealScript.Engine.TriggeredPath;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Pawn;
import UnrealScript.Engine.Actor;

extern(C++) interface TriggeredPath : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.TriggeredPath")()); }
	private static __gshared TriggeredPath mDefaultProperties;
	@property final static TriggeredPath DefaultProperties() { mixin(MGDPC!(TriggeredPath, "TriggeredPath Engine.Default__TriggeredPath")()); }
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
			ScriptFunction OnToggle() { mixin(MGF!("mOnToggle", "Function Engine.TriggeredPath.OnToggle")()); }
			ScriptFunction SpecialHandling() { mixin(MGF!("mSpecialHandling", "Function Engine.TriggeredPath.SpecialHandling")()); }
			ScriptFunction SuggestMovePreparation() { mixin(MGF!("mSuggestMovePreparation", "Function Engine.TriggeredPath.SuggestMovePreparation")()); }
		}
	}
	@property final
	{
		@property final auto ref Actor MyTrigger() { mixin(MGPC!("Actor", 696)()); }
		bool bOpen() { mixin(MGBPC!(692, 0x1)()); }
		bool bOpen(bool val) { mixin(MSBPC!(692, 0x1)()); }
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
