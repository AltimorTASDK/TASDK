module UnrealScript.GameFramework.SeqEvent_HudRender;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Engine.SequenceEvent;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.HUD;

extern(C++) interface SeqEvent_HudRender : SequenceEvent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.SeqEvent_HudRender")()); }
	private static __gshared SeqEvent_HudRender mDefaultProperties;
	@property final static SeqEvent_HudRender DefaultProperties() { mixin(MGDPC!(SeqEvent_HudRender, "SeqEvent_HudRender GameFramework.Default__SeqEvent_HudRender")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mRegisterEvent;
			ScriptFunction mRender;
		}
		public @property static final
		{
			ScriptFunction RegisterEvent() { mixin(MGF!("mRegisterEvent", "Function GameFramework.SeqEvent_HudRender.RegisterEvent")()); }
			ScriptFunction Render() { mixin(MGF!("mRender", "Function GameFramework.SeqEvent_HudRender.Render")()); }
		}
	}
	@property final
	{
		auto ref
		{
			ScriptArray!(UObject) Targets() { mixin(MGPC!("ScriptArray!(UObject)", 256)()); }
			float AuthoredGlobalScale() { mixin(MGPC!("float", 272)()); }
		}
		bool bIsActive() { mixin(MGBPC!(268, 0x1)()); }
		bool bIsActive(bool val) { mixin(MSBPC!(268, 0x1)()); }
	}
final:
	void RegisterEvent()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.RegisterEvent, cast(void*)0, cast(void*)0);
	}
	void Render(Canvas TargetCanvas, HUD TargetHud)
	{
		ubyte params[8];
		params[] = 0;
		*cast(Canvas*)params.ptr = TargetCanvas;
		*cast(HUD*)&params[4] = TargetHud;
		(cast(ScriptObject)this).ProcessEvent(Functions.Render, params.ptr, cast(void*)0);
	}
}
