module UnrealScript.Engine.Ladder;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.NavigationPoint;
import UnrealScript.Engine.LadderVolume;
import UnrealScript.Engine.Pawn;

extern(C++) interface Ladder : NavigationPoint
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.Ladder")); }
	private static __gshared Ladder mDefaultProperties;
	@property final static Ladder DefaultProperties() { mixin(MGDPC("Ladder", "Ladder Engine.Default__Ladder")); }
	static struct Functions
	{
		private static __gshared ScriptFunction mSuggestMovePreparation;
		public @property static final ScriptFunction SuggestMovePreparation() { mixin(MGF("mSuggestMovePreparation", "Function Engine.Ladder.SuggestMovePreparation")); }
	}
	@property final auto ref
	{
		Ladder LadderList() { mixin(MGPC("Ladder", 696)); }
		LadderVolume MyLadder() { mixin(MGPC("LadderVolume", 692)); }
	}
	final bool SuggestMovePreparation(Pawn Other)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Pawn*)params.ptr = Other;
		(cast(ScriptObject)this).ProcessEvent(Functions.SuggestMovePreparation, params.ptr, cast(void*)0);
		return *cast(bool*)&params[4];
	}
}
