module UnrealScript.Engine.SpriteComponent;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Texture2D;
import UnrealScript.Engine.PrimitiveComponent;

extern(C++) interface SpriteComponent : PrimitiveComponent
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class Engine.SpriteComponent")()); }
	private static __gshared SpriteComponent mDefaultProperties;
	@property final static SpriteComponent DefaultProperties() { mixin(MGDPC!(SpriteComponent, "SpriteComponent Engine.Default__SpriteComponent")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mSetSprite;
			ScriptFunction mSetUV;
			ScriptFunction mSetSpriteAndUV;
		}
		public @property static final
		{
			ScriptFunction SetSprite() { mixin(MGF!("mSetSprite", "Function Engine.SpriteComponent.SetSprite")()); }
			ScriptFunction SetUV() { mixin(MGF!("mSetUV", "Function Engine.SpriteComponent.SetUV")()); }
			ScriptFunction SetSpriteAndUV() { mixin(MGF!("mSetSpriteAndUV", "Function Engine.SpriteComponent.SetSpriteAndUV")()); }
		}
	}
	@property final
	{
		auto ref
		{
			float VL() { mixin(MGPC!(float, 512)()); }
			float V() { mixin(MGPC!(float, 508)()); }
			float UL() { mixin(MGPC!(float, 504)()); }
			float U() { mixin(MGPC!(float, 500)()); }
			float ScreenSize() { mixin(MGPC!(float, 496)()); }
			Texture2D Sprite() { mixin(MGPC!(Texture2D, 488)()); }
		}
		bool bIsScreenSizeScaled() { mixin(MGBPC!(492, 0x1)()); }
		bool bIsScreenSizeScaled(bool val) { mixin(MSBPC!(492, 0x1)()); }
	}
final:
	void SetSprite(Texture2D NewSprite)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSprite, params.ptr, cast(void*)0);
	}
	void SetUV(int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = NewU;
		*cast(int*)&params[4] = NewUL;
		*cast(int*)&params[8] = NewV;
		*cast(int*)&params[12] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetUV, params.ptr, cast(void*)0);
	}
	void SetSpriteAndUV(Texture2D NewSprite, int NewU, int NewUL, int NewV, int NewVL)
	{
		ubyte params[20];
		params[] = 0;
		*cast(Texture2D*)params.ptr = NewSprite;
		*cast(int*)&params[4] = NewU;
		*cast(int*)&params[8] = NewUL;
		*cast(int*)&params[12] = NewV;
		*cast(int*)&params[16] = NewVL;
		(cast(ScriptObject)this).ProcessEvent(Functions.SetSpriteAndUV, params.ptr, cast(void*)0);
	}
}
