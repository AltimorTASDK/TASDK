module UnrealScript.Engine.CoverGroup;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.SeqAct_Toggle;
import UnrealScript.Engine.Actor;
import UnrealScript.Engine.Info;

extern(C++) interface CoverGroup : Info
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class Engine.CoverGroup")); }
	private static __gshared CoverGroup mDefaultProperties;
	@property final static CoverGroup DefaultProperties() { mixin(MGDPC("CoverGroup", "CoverGroup Engine.Default__CoverGroup")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mEnableGroup;
			ScriptFunction mDisableGroup;
			ScriptFunction mToggleGroup;
			ScriptFunction mOnToggle;
		}
		public @property static final
		{
			ScriptFunction EnableGroup() { mixin(MGF("mEnableGroup", "Function Engine.CoverGroup.EnableGroup")); }
			ScriptFunction DisableGroup() { mixin(MGF("mDisableGroup", "Function Engine.CoverGroup.DisableGroup")); }
			ScriptFunction ToggleGroup() { mixin(MGF("mToggleGroup", "Function Engine.CoverGroup.ToggleGroup")); }
			ScriptFunction OnToggle() { mixin(MGF("mOnToggle", "Function Engine.CoverGroup.OnToggle")); }
		}
	}
	enum ECoverGroupFillAction : ubyte
	{
		CGFA_Overwrite = 0,
		CGFA_Add = 1,
		CGFA_Remove = 2,
		CGFA_Clear = 3,
		CGFA_Cylinder = 4,
		CGFA_MAX = 5,
	}
	@property final auto ref
	{
		ScriptArray!(Actor.ActorReference) CoverLinkRefs() { mixin(MGPC("ScriptArray!(Actor.ActorReference)", 476)); }
		float AutoSelectHeight() { mixin(MGPC("float", 492)); }
		float AutoSelectRadius() { mixin(MGPC("float", 488)); }
	}
final:
	void EnableGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.EnableGroup, cast(void*)0, cast(void*)0);
	}
	void DisableGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.DisableGroup, cast(void*)0, cast(void*)0);
	}
	void ToggleGroup()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ToggleGroup, cast(void*)0, cast(void*)0);
	}
	void OnToggle(SeqAct_Toggle Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(SeqAct_Toggle*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.OnToggle, params.ptr, cast(void*)0);
	}
}
