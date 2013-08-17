module UnrealScript.Engine.AnimNodeSequenceBlendByAim;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeSequenceBlendBase;

extern(C++) interface AnimNodeSequenceBlendByAim : AnimNodeSequenceBlendBase
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.AnimNodeSequenceBlendByAim")()); }
	private static __gshared AnimNodeSequenceBlendByAim mDefaultProperties;
	@property final static AnimNodeSequenceBlendByAim DefaultProperties() { mixin(MGDPC!(AnimNodeSequenceBlendByAim, "AnimNodeSequenceBlendByAim Engine.Default__AnimNodeSequenceBlendByAim")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mCheckAnimsUpToDate;
		public @property static final ScriptFunction CheckAnimsUpToDate() { mixin(MGF!("mCheckAnimsUpToDate", "Function Engine.AnimNodeSequenceBlendByAim.CheckAnimsUpToDate")()); }
	}
	@property final auto ref
	{
		ScriptName AnimName_RD() { mixin(MGPC!("ScriptName", 436)()); }
		ScriptName AnimName_RC() { mixin(MGPC!("ScriptName", 428)()); }
		ScriptName AnimName_RU() { mixin(MGPC!("ScriptName", 420)()); }
		ScriptName AnimName_CD() { mixin(MGPC!("ScriptName", 412)()); }
		ScriptName AnimName_CC() { mixin(MGPC!("ScriptName", 404)()); }
		ScriptName AnimName_CU() { mixin(MGPC!("ScriptName", 396)()); }
		ScriptName AnimName_LD() { mixin(MGPC!("ScriptName", 388)()); }
		ScriptName AnimName_LC() { mixin(MGPC!("ScriptName", 380)()); }
		ScriptName AnimName_LU() { mixin(MGPC!("ScriptName", 372)()); }
		UObject.Vector2D AngleOffset() { mixin(MGPC!("UObject.Vector2D", 364)()); }
		UObject.Vector2D VerticalRange() { mixin(MGPC!("UObject.Vector2D", 356)()); }
		UObject.Vector2D HorizontalRange() { mixin(MGPC!("UObject.Vector2D", 348)()); }
		UObject.Vector2D PreviousAim() { mixin(MGPC!("UObject.Vector2D", 340)()); }
		UObject.Vector2D Aim() { mixin(MGPC!("UObject.Vector2D", 332)()); }
	}
	final void CheckAnimsUpToDate()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckAnimsUpToDate, cast(void*)0, cast(void*)0);
	}
}
