module UnrealScript.GameFramework.SeqEvent_HudRenderText;

import ScriptClasses;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.GameFramework.SeqEvent_HudRender;
import UnrealScript.Engine.Font;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRenderText : SeqEvent_HudRender
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { return mStaticClass ? mStaticClass : (mStaticClass = ScriptObject.Find!(ScriptClass)("Class GameFramework.SeqEvent_HudRenderText")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRender;
			ScriptFunction mGetObjClassVersion;
		}
		public @property static final
		{
			ScriptFunction Render() { return mRender ? mRender : (mRender = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqEvent_HudRenderText.Render")); }
			ScriptFunction GetObjClassVersion() { return mGetObjClassVersion ? mGetObjClassVersion : (mGetObjClassVersion = ScriptObject.Find!(ScriptFunction)("Function GameFramework.SeqEvent_HudRenderText.GetObjClassVersion")); }
		}
	}
	enum ETextDrawMethod : ubyte
	{
		DRAW_CenterText = 0,
		DRAW_WrapText = 1,
		DRAW_MAX = 2,
	}
	@property final auto ref
	{
		SeqEvent_HudRenderText.ETextDrawMethod TextDrawMethod() { return *cast(SeqEvent_HudRenderText.ETextDrawMethod*)(cast(size_t)cast(void*)this + 308); }
		ScriptString DisplayText() { return *cast(ScriptString*)(cast(size_t)cast(void*)this + 296); }
		Vector DisplayLocation() { return *cast(Vector*)(cast(size_t)cast(void*)this + 284); }
		UObject.Color DisplayColor() { return *cast(UObject.Color*)(cast(size_t)cast(void*)this + 280); }
		Font DisplayFont() { return *cast(Font*)(cast(size_t)cast(void*)this + 276); }
	}
final:
	void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
	static int GetObjClassVersion()
	{
		ubyte params[4];
		params[] = 0;
		StaticClass.ProcessEvent(Functions.GetObjClassVersion, params.ptr, cast(void*)0);
		return *cast(int*)params.ptr;
	}
}
