module UnrealScript.Engine.AnimNodeSequenceBlendByAim;

import ScriptClasses;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.AnimNodeSequenceBlendBase;

extern(C++) interface AnimNodeSequenceBlendByAim : AnimNodeSequenceBlendBase
{
	public @property final auto ref ScriptName AnimName_RD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 436); }
	public @property final auto ref ScriptName AnimName_RC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 428); }
	public @property final auto ref ScriptName AnimName_RU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 420); }
	public @property final auto ref ScriptName AnimName_CD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 412); }
	public @property final auto ref ScriptName AnimName_CC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 404); }
	public @property final auto ref ScriptName AnimName_CU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 396); }
	public @property final auto ref ScriptName AnimName_LD() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 388); }
	public @property final auto ref ScriptName AnimName_LC() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 380); }
	public @property final auto ref ScriptName AnimName_LU() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 372); }
	public @property final auto ref UObject.Vector2D AngleOffset() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 364); }
	public @property final auto ref UObject.Vector2D VerticalRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 356); }
	public @property final auto ref UObject.Vector2D HorizontalRange() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 348); }
	public @property final auto ref UObject.Vector2D PreviousAim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 340); }
	public @property final auto ref UObject.Vector2D Aim() { return *cast(UObject.Vector2D*)(cast(size_t)cast(void*)this + 332); }
	final void CheckAnimsUpToDate()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[11050], cast(void*)0, cast(void*)0);
	}
}
