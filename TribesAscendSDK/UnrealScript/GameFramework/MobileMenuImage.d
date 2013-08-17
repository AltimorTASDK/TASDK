module UnrealScript.GameFramework.MobileMenuImage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Canvas;
import UnrealScript.Core.UObject;
import UnrealScript.Engine.Texture2D;
import UnrealScript.GameFramework.MobileMenuObject;

extern(C++) interface MobileMenuImage : MobileMenuObject
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class GameFramework.MobileMenuImage")()); }
	private static __gshared MobileMenuImage mDefaultProperties;
	@property final static MobileMenuImage DefaultProperties() { mixin(MGDPC!(MobileMenuImage, "MobileMenuImage GameFramework.Default__MobileMenuImage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mRenderObject;
		public @property static final ScriptFunction RenderObject() { mixin(MGF!("mRenderObject", "Function GameFramework.MobileMenuImage.RenderObject")()); }
	}
	enum MenuImageDrawStyle : ubyte
	{
		IDS_Normal = 0,
		IDS_Stretched = 1,
		IDS_Tile = 2,
		IDS_MAX = 3,
	}
	@property final auto ref
	{
		UObject.LinearColor ImageColor() { mixin(MGPC!(UObject.LinearColor, 160)()); }
		MobileMenuObject.UVCoords ImageUVs() { mixin(MGPC!(MobileMenuObject.UVCoords, 140)()); }
		MobileMenuImage.MenuImageDrawStyle ImageDrawStyle() { mixin(MGPC!(MobileMenuImage.MenuImageDrawStyle, 136)()); }
		Texture2D Image() { mixin(MGPC!(Texture2D, 132)()); }
	}
	final void RenderObject(Canvas pCanvas)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Canvas*)params.ptr = pCanvas;
		(cast(ScriptObject)this).ProcessEvent(Functions.RenderObject, params.ptr, cast(void*)0);
	}
}
