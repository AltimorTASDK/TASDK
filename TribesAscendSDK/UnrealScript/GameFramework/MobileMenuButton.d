module UnrealScript.GameFramework.MobileMenuButton;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobilePlayerInput;
import UnrealScript.GameFramework.MobileMenuScene;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuButton : MobileMenuObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class GameFramework.MobileMenuButton")); }
	private static __gshared MobileMenuButton mDefaultProperties;
	@property final static MobileMenuButton DefaultProperties() { mixin(MGDPC("MobileMenuButton", "MobileMenuButton GameFramework.Default__MobileMenuButton")); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitMenuObject;
			ScriptFunction mRenderObject;
			ScriptFunction mRenderCaption;
		}
		public @property static final
		{
			ScriptFunction InitMenuObject() { mixin(MGF("mInitMenuObject", "Function GameFramework.MobileMenuButton.InitMenuObject")); }
			ScriptFunction RenderObject() { mixin(MGF("mRenderObject", "Function GameFramework.MobileMenuButton.RenderObject")); }
			ScriptFunction RenderCaption() { mixin(MGF("mRenderCaption", "Function GameFramework.MobileMenuButton.RenderCaption")); }
		}
	}
	@property final auto ref
	{
		UObject.LinearColor CaptionColor() { mixin(MGPC("UObject.LinearColor", 208)); }
		ScriptString Caption() { mixin(MGPC("ScriptString", 196)); }
		UObject.LinearColor ImageColor() { mixin(MGPC("UObject.LinearColor", 180)); }
		MobileMenuObject.UVCoords ImagesUVs() { mixin(MGPC("MobileMenuObject.UVCoords", 140)); }
		Texture2D Images() { mixin(MGPC("Texture2D", 132)); }
	}
final:
	void InitMenuObject(MobilePlayerInput pPlayerInput, MobileMenuScene pScene, int ScreenWidth, int ScreenHeight)
	{
		ubyte params[16];
		params[] = 0;
		*cast(MobilePlayerInput*)params.ptr = pPlayerInput;
		*cast(MobileMenuScene*)&params[4] = pScene;
		*cast(int*)&params[8] = ScreenWidth;
		*cast(int*)&params[12] = ScreenHeight;
		(cast(ScriptObject)this).ProcessEvent(Functions.InitMenuObject, params.ptr, cast(void*)0);
	}
	void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
	void RenderCaption(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderCaption, params.ptr, cast(void*)0);
	}
}
