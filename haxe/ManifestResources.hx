package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["tutorial"] = rootPath + "manifest/tutorial.json";
		Assets.libraryPaths["week1"] = rootPath + "manifest/week1.json";
		Assets.libraryPaths["week2"] = rootPath + "manifest/week2.json";
		Assets.libraryPaths["week3"] = rootPath + "manifest/week3.json";
		Assets.libraryPaths["week4"] = rootPath + "manifest/week4.json";
		Assets.libraryPaths["week5"] = rootPath + "manifest/week5.json";
		Assets.libraryPaths["week6"] = rootPath + "manifest/week6.json";
		Assets.libraryPaths["week7"] = rootPath + "manifest/week7.json";
		Assets.libraryPaths["sm"] = rootPath + "manifest/sm.json";
		data = '{"name":null,"assets":"aoy4:pathy38:assets%2Fdata%2Fbopeebojohn%2F0.offsety4:sizei1y4:typey6:BINARYy2:idR1y7:preloadtgoR0y51:assets%2Fdata%2Fbopeebojohn%2Fbopeebojohn-easy.jsonR2i3916R3y4:TEXTR5R7R6tgoR0y51:assets%2Fdata%2Fbopeebojohn%2Fbopeebojohn-hard.jsonR2i4144R3R8R5R9R6tgoR0y46:assets%2Fdata%2Fbopeebojohn%2Fbopeebojohn.jsonR2i467860R3R8R5R10R6tgoR0y42:assets%2Fdata%2Fbopeebojohn%2Fmodchart.luaR2i515R3R8R5R11R6tgoR0y33:assets%2Fdata%2Fbrazil%2F0.offsetR2i1R3R4R5R12R6tgoR0y41:assets%2Fdata%2Fbrazil%2Fbrazil-easy.jsonR2i519294R3R8R5R13R6tgoR0y41:assets%2Fdata%2Fbrazil%2Fbrazil-hard.jsonR2i538591R3R8R5R14R6tgoR0y41:assets%2Fdata%2Fbrazil%2Fbrazil-hell.jsonR2i560090R3R8R5R15R6tgoR0y40:assets%2Fdata%2Fbrazil%2Fbrazil-lol.jsonR2i560092R3R8R5R16R6tgoR0y36:assets%2Fdata%2Fbrazil%2Fbrazil.jsonR2i525748R3R8R5R17R6tgoR0y37:assets%2Fdata%2Fbrazil%2FDialogue.txtR2i204R3R8R5R18R6tgoR0y37:assets%2Fdata%2Fbrazil%2Fmodchart.luaR2i1985R3R8R5R19R6tgoR0y32:assets%2Fdata%2Fbusta%2F0.offsetR2i1R3R4R5R20R6tgoR0y39:assets%2Fdata%2Fbusta%2Fbusta-easy.jsonR2i510354R3R8R5R21R6tgoR0y39:assets%2Fdata%2Fbusta%2Fbusta-hard.jsonR2i516960R3R8R5R22R6tgoR0y39:assets%2Fdata%2Fbusta%2Fbusta-hell.jsonR2i535979R3R8R5R23R6tgoR0y38:assets%2Fdata%2Fbusta%2Fbusta-lol.jsonR2i535984R3R8R5R24R6tgoR0y34:assets%2Fdata%2Fbusta%2Fbusta.jsonR2i511844R3R8R5R25R6tgoR0y36:assets%2Fdata%2Fbusta%2FDialogue.txtR2i306R3R8R5R26R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i202R3R8R5R27R6tgoR0y28:assets%2Fdata%2Fcontrols.txtR2i324R3R8R5R28R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R8R5R29R6tgoR0y36:assets%2Fdata%2FfreeplaySonglist.txtR2i91R3R8R5R30R6tgoR0y33:assets%2Fdata%2FgfVersionList.txtR2i37R3R8R5R31R6tgoR0y37:assets%2Fdata%2Fhbfs%2Fhbfs-easy.jsonR2i517995R3R8R5R32R6tgoR0y37:assets%2Fdata%2Fhbfs%2Fhbfs-hard.jsonR2i517995R3R8R5R33R6tgoR0y32:assets%2Fdata%2Fhbfs%2Fhbfs.jsonR2i517995R3R8R5R34R6tgoR0y50:assets%2Fdata%2Fif-you-feel-my-love%2FDialogue.txtR2i152R3R8R5R35R6tgoR0y67:assets%2Fdata%2Fif-you-feel-my-love%2Fif-you-feel-my-love-easy.jsonR2i544301R3R8R5R36R6tgoR0y67:assets%2Fdata%2Fif-you-feel-my-love%2Fif-you-feel-my-love-hard.jsonR2i544301R3R8R5R37R6tgoR0y67:assets%2Fdata%2Fif-you-feel-my-love%2Fif-you-feel-my-love-hell.jsonR2i544301R3R8R5R38R6tgoR0y66:assets%2Fdata%2Fif-you-feel-my-love%2Fif-you-feel-my-love-lol.jsonR2i544301R3R8R5R39R6tgoR0y62:assets%2Fdata%2Fif-you-feel-my-love%2Fif-you-feel-my-love.jsonR2i544301R3R8R5R40R6tgoR0y50:assets%2Fdata%2Fif-you-feel-my-love%2Fmodchart.luaR2i1642R3R8R5R41R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i1260R3R8R5R42R6tgoR0y35:assets%2Fdata%2Fjohnroll%2F0.offsetR2i1R3R4R5R43R6tgoR0y39:assets%2Fdata%2Fjohnroll%2FDialogue.txtR2i236R3R8R5R44R6tgoR0y45:assets%2Fdata%2Fjohnroll%2Fjohnroll-easy.jsonR2i534722R3R8R5R45R6tgoR0y45:assets%2Fdata%2Fjohnroll%2Fjohnroll-hard.jsonR2i547472R3R8R5R46R6tgoR0y45:assets%2Fdata%2Fjohnroll%2Fjohnroll-hell.jsonR2i582249R3R8R5R47R6tgoR0y44:assets%2Fdata%2Fjohnroll%2Fjohnroll-lol.jsonR2i678745R3R8R5R48R6tgoR0y40:assets%2Fdata%2Fjohnroll%2Fjohnroll.jsonR2i539647R3R8R5R49R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i123R3R8R5R50R6tgoR0y33:assets%2Fdata%2FnoteStyleList.txtR2i12R3R8R5R51R6tgoR0y36:assets%2Fdata%2Foldbrazil%2F0.offsetR2i1R3R4R5R52R6tgoR0y40:assets%2Fdata%2Foldbrazil%2FDialogue.txtR2i197R3R8R5R53R6tgoR0y40:assets%2Fdata%2Foldbrazil%2Fmodchart.luaR2i286R3R8R5R54R6tgoR0y47:assets%2Fdata%2Foldbrazil%2Foldbrazil-easy.jsonR2i3915R3R8R5R55R6tgoR0y47:assets%2Fdata%2Foldbrazil%2Foldbrazil-hard.jsonR2i4143R3R8R5R56R6tgoR0y42:assets%2Fdata%2Foldbrazil%2Foldbrazil.jsonR2i4047R3R8R5R57R6tgoR0y35:assets%2Fdata%2Foldbusta%2F0.offsetR2i1R3R4R5R58R6tgoR0y39:assets%2Fdata%2Foldbusta%2FDialogue.txtR2i227R3R8R5R59R6tgoR0y45:assets%2Fdata%2Foldbusta%2Foldbusta-easy.jsonR2i3914R3R8R5R60R6tgoR0y45:assets%2Fdata%2Foldbusta%2Foldbusta-hard.jsonR2i4142R3R8R5R61R6tgoR0y40:assets%2Fdata%2Foldbusta%2Foldbusta.jsonR2i4046R3R8R5R62R6tgoR0y38:assets%2Fdata%2Foldjohnroll%2F0.offsetR2i1R3R4R5R63R6tgoR0y42:assets%2Fdata%2Foldjohnroll%2FDialogue.txtR2i272R3R8R5R64R6tgoR0y51:assets%2Fdata%2Foldjohnroll%2Foldjohnroll-easy.jsonR2i3917R3R8R5R65R6tgoR0y51:assets%2Fdata%2Foldjohnroll%2Foldjohnroll-hard.jsonR2i511140R3R8R5R66R6tgoR0y46:assets%2Fdata%2Foldjohnroll%2Foldjohnroll.jsonR2i4049R3R8R5R67R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i300R3R8R5R68R6tgoR0y29:assets%2Fdata%2FstageList.txtR2i65R3R8R5R69R6tgoR0y35:assets%2Fdata%2Ftutorial%2F0.offsetR2i1R3R4R5R70R6tgoR0y39:assets%2Fdata%2Ftutorial%2Fmodchart.luaR2i622R3R8R5R71R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R8R5R72R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i6335R3R8R5R73R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hell.jsonR2i519312R3R8R5R74R6tgoR0y44:assets%2Fdata%2Ftutorial%2Ftutorial-lol.jsonR2i519322R3R8R5R75R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R8R5R76R6tgoR0y29:assets%2Fdata%2FweekNames.txtR2i49R3R8R5R77R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i133325R3y5:IMAGER5R78R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i42116R3R8R5R80R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i30294R3R79R5R81R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i2032R3R8R5R82R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.pngR2i2469649R3R79R5R83R6tgoR0y49:assets%2Fimages%2Fcampaign_menu_UI_characters.xmlR2i22622R3R8R5R84R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pdnR2i394382R3R8R5R85R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.pngR2i401871R3R79R5R86R6tgoR0y42:assets%2Fimages%2FFNF_main_menu_assets.xmlR2i4755R3R8R5R87R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i1221436R3R79R5R88R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4259R3R8R5R89R6tgoR0y30:assets%2Fimages%2FiconGrid.pngR2i292798R3R79R5R90R6tgoR0y36:assets%2Fimages%2FKadeEngineLogo.pngR2i295644R3R79R5R91R6tgoR0y42:assets%2Fimages%2FKadeEngineLogoBumpin.pngR2i1138792R3R79R5R92R6tgoR0y42:assets%2Fimages%2FKadeEngineLogoBumpin.xmlR2i2187R3R8R5R93R6tgoR0y39:assets%2Fimages%2FKadeEngineLogoOld.pngR2i118097R3R79R5R94R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R79R5R95R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i592724R3R79R5R96R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2177R3R8R5R97R6tgoR0y28:assets%2Fimages%2FmenuBG.pdnR2i92029R3R8R5R98R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i54674R3R79R5R99R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i55033R3R79R5R100R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i55016R3R79R5R101R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i54585R3R79R5R102R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R79R5R103R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R79R5R104R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R79R5R105R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R79R5R106R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R79R5R107R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R79R5R108R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R79R5R109R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R79R5R110R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R79R5R111R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R79R5R112R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R79R5R113R6tgoR0y36:assets%2Fimages%2Fstepmania-icon.pngR2i7161R3R79R5R114R6tgoR0y43:assets%2Fimages%2Fstorymenu%2Fold_week1.pngR2i6261R3R79R5R115R6tgoR0y43:assets%2Fimages%2Fstorymenu%2Fold_week2.pngR2i6517R3R79R5R116R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek0.pngR2i7056R3R79R5R117R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i9127R3R79R5R118R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR2i9846R3R79R5R119R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR2i7148R3R79R5R120R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek4.pngR2i6262R3R79R5R121R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek5.pngR2i6440R3R79R5R122R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek6.pngR2i8345R3R79R5R123R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek7.pngR2i9127R3R79R5R124R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R79R5R125R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4875R3R8R5R126R6tgoR2i3685843R3y5:MUSICR5y31:assets%2Fmusic%2FfreakyMenu.mp3y9:pathGroupaR128hR6tgoR2i17762R3R127R5y32:assets%2Fsounds%2FcancelMenu.mp3R129aR130hR6tgoR2i91950R3R127R5y33:assets%2Fsounds%2FconfirmMenu.mp3R129aR131hR6tgoR2i17762R3R127R5y32:assets%2Fsounds%2FscrollMenu.mp3R129aR132hR6tgoR0y46:assets%2Fvideos%2FdaWeirdVid%2FdontDelete.webmR2i10965R3R4R5R133R6tgoR0y48:mods%2FintroMod%2F_append%2Fdata%2FintroText.txtR2i20R3R8R5R134goR0y18:mods%2FmodList.txtR2i8R3R8R5R135goR0y17:mods%2Freadme.txtR2i90R3R8R5R136goR0y21:do%20NOT%20readme.txtR2i4326R3R8R5R137R6tgoR0y11:LICENSE.txtR2i11407R3R8R5R138R6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R8R5R139R6tgoR2i14656R3y4:FONTy9:classNamey31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i75864R3R140R141y29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i2114R3R127R5y26:flixel%2Fsounds%2Fbeep.mp3R129aR146y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R127R5y28:flixel%2Fsounds%2Fflixel.mp3R129aR148y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R147R129aR146R147hgoR2i33629R3R150R5R149R129aR148R149hgoR2i15744R3R140R141y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R140R141y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i519R3R79R5R155R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R79R5R156R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R79R5R157R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R79R5R158R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R79R5R159R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R79R5R160R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R79R5R161R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R79R5R162R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R79R5R163R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R79R5R164R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R79R5R165R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R79R5R166R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R79R5R167R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R79R5R168R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R79R5R169R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R79R5R170R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R79R5R171R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R79R5R172R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R79R5R173R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R79R5R174R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R79R5R175R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R79R5R176R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R79R5R177R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R79R5R178R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R79R5R179R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R79R5R180R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R79R5R181R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R79R5R182R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R79R5R183R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R8R5R184R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R8R5R185R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R8R5R186R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_hell_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_lol_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_brazil_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_hell_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_lol_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_busta_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_gfversionlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_hell_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_lol_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_hell_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_lol_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_notestylelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_dialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_0_offset extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_modchart_lua extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hell_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_lol_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_weeknames_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogoold_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_stepmania_icon_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_old_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_old_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_daweirdvid_dontdelete_webm extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebojohn_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebojohn_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_brazil_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_busta_busta_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_busta_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_busta_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_hbfs_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_if_you_feel_my_love_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_if_you_feel_my_love_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_johnroll_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_brazil_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_busta_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_johnroll_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_caroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_christmasoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixel_deadoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixeloffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_dadoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizewhitty_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizewhitty_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_caroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_christmasoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_pixeloffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_caroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_christmasoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsteroffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_nogirlfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_nogirlfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parents_christmasoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picooffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_angryoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpaioffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spiritoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spookyoffsets_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_pdn extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_housebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_housepoles_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_houseroad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_johnportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_johnportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_johnportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_johnportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_dialoguebad_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_meme__1__mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_meme__2__mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clap_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_meme_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_snap_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_portraits_johnportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_portraits_johnportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_dialoguebad_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_dialoguebad_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_portraits_johnportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_portraits_johnportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_arrowends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_arrows_pixels_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialoguebad_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week7_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sm_how_to_add_sm_files_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_intromod__append_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_modlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__mods_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__license_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week7_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_sm_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/data/bopeebojohn/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebojohn/bopeebojohn-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebojohn/bopeebojohn-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebojohn/bopeebojohn.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_bopeebojohn_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebojohn/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebojohn_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/brazil-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/brazil-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/brazil-hell.json") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_hell_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/brazil-lol.json") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_lol_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/brazil.json") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_brazil_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/brazil/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_brazil_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_busta_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/busta-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/busta-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/busta-hell.json") @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_hell_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/busta-lol.json") @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_lol_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/busta.json") @:noCompletion #if display private #end class __ASSET__assets_data_busta_busta_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/busta/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_busta_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/controls.txt") @:noCompletion #if display private #end class __ASSET__assets_data_controls_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplaySonglist.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaysonglist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/gfVersionList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_gfversionlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hbfs/hbfs-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hbfs/hbfs-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/hbfs/hbfs.json") @:noCompletion #if display private #end class __ASSET__assets_data_hbfs_hbfs_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/if-you-feel-my-love-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/if-you-feel-my-love-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/if-you-feel-my-love-hell.json") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_hell_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/if-you-feel-my-love-lol.json") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_lol_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/if-you-feel-my-love.json") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_if_you_feel_my_love_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/if-you-feel-my-love/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_if_you_feel_my_love_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/johnroll-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/johnroll-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/johnroll-hell.json") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_hell_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/johnroll-lol.json") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_lol_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/johnroll/johnroll.json") @:noCompletion #if display private #end class __ASSET__assets_data_johnroll_johnroll_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/noteStyleList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_notestylelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/oldbrazil-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/oldbrazil-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbrazil/oldbrazil.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbrazil_oldbrazil_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbusta/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbusta/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbusta/oldbusta-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbusta/oldbusta-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldbusta/oldbusta.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldbusta_oldbusta_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldjohnroll/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldjohnroll/Dialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_dialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldjohnroll/oldjohnroll-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldjohnroll/oldjohnroll-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/oldjohnroll/oldjohnroll.json") @:noCompletion #if display private #end class __ASSET__assets_data_oldjohnroll_oldjohnroll_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/stageList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/0.offset") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_0_offset extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/modchart.lua") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_modchart_lua extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hell.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hell_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-lol.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_lol_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/weekNames.txt") @:noCompletion #if display private #end class __ASSET__assets_data_weeknames_txt extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_characters.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_characters.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_characters_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.pdn") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/FNF_main_menu_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/FNF_main_menu_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_fnf_main_menu_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/iconGrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_icongrid_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/KadeEngineLogo.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/KadeEngineLogoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/KadeEngineLogoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/KadeEngineLogoOld.png") @:noCompletion #if display private #end class __ASSET__assets_images_kadeenginelogoold_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menuBG.pdn") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/stepmania-icon.png") @:noCompletion #if display private #end class __ASSET__assets_images_stepmania_icon_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/old_week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_old_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/old_week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_old_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week0.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week4.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week5.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week6.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week7.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/videos/daWeirdVid/dontDelete.webm") @:noCompletion #if display private #end class __ASSET__assets_videos_daweirdvid_dontdelete_webm extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebojohn/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebojohn_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebojohn/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebojohn_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/brazil/Brazil.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_brazil_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/brazil/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/brazil/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_brazil_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/busta/busta.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_busta_busta_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/busta/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_busta_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/busta/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_busta_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/hbfs/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_hbfs_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/if-you-feel-my-love/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_if_you_feel_my_love_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/if-you-feel-my-love/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_if_you_feel_my_love_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/johnroll/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/johnroll/johnroll.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_johnroll_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/johnroll/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_johnroll_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbrazil/Brazil.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_brazil_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbrazil/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbrazil/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbrazil_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbusta/Busta.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_busta_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbusta/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldbusta/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldbusta_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldjohnroll/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldjohnroll/Johnroll.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_johnroll_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/oldjohnroll/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_oldjohnroll_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/backspace.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/backspace.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backspace_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bf-carOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_caroffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-christmasOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_christmasoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-pixel-deadOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixel_deadoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bf-pixelOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bf_pixeloffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/bfOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/CAT.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/CAT.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/CAT.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_cat_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/CIRCLE.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/CIRCLE.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/CIRCLE.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_circle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/dadOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_dadoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/FUNSIZEJOHN.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/FUNSIZEJOHN.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/FUNSIZEJOHN.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizejohn_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/FUNSIZEWHITTY.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizewhitty_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/FUNSIZEWHITTY.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_funsizewhitty_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf-carOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_caroffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf-christmasOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_christmasoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gf-pixelOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_pixeloffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/JOHN.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/JOHN.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/JOHN.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_john_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/JOHNinsane.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/JOHNinsane.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/JOHNinsane.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johninsane_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/JOHNmad.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/JOHNmad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/JOHNmad.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_johnmad_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/mom-carOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_caroffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/momOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/monster-christmasOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_christmasoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/monsterOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsteroffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/nogirlfriend.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_nogirlfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/nogirlfriend.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_nogirlfriend_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/parents-christmasOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_parents_christmasoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/picoOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picooffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/senpai-angryOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_angryoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/senpaiOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpaioffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/spiritOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spiritoffsets_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/spookyOffsets.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spookyoffsets_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/UNFAIRJOHN.pdn") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_pdn extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/UNFAIRJOHN.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/UNFAIRJOHN.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_unfairjohn_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/housebg.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_housebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/housepoles.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_housepoles_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/houseroad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_houseroad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/lol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lol_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lose.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lose.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lose_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/portraits/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/portraits/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/portraits/gfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/portraits/gfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_gfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/portraits/johnPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_johnportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/portraits/johnPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_portraits_johnportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/restart.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_restart_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/screencapTierImage.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_screencaptierimage_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/speech_bubble_talking.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble_talking.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_talking_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/johnPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_johnportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/johnPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_johnportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/week54prototype.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_week54prototype_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/zzzzzzzz.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_zzzzzzzz_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/dialoguebad.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_dialoguebad_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd-meme (1).mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_meme__1__mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd-meme (2).mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_meme__2__mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/CLAP.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clap_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-meme.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_meme_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/SNAP.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_snap_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/tutorial/tutorial_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_tutorial_tutorial_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/portraits/johnPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_portraits_johnportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/portraits/johnPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_portraits_johnportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/week1/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week1/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week1_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/week1/music/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/music/dialoguebad.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_dialoguebad_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week1_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week1/week1_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week1_week1_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/halloween_bg.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/halloween_bg.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week2/week2_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week3/images/philly/behindTrain.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/city.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/sky.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/street.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/train.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win0.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win1.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win2.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win3.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win4.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends lime.graphics.Image {}
@:keep @:file("assets/week3/week3_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/bgLimo.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/bgLimo.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/dumb.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/fastCarLol.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoDancer.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDancer.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoDrive.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDrive.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoOverlay.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limooverlay_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoSunset.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/week4_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bgEscalator.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bgWalls.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bottomBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bottomBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/christmasTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/christmasWall.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmaswall_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilBG.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/fgSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/santa.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/santa.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/upperBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/upperBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week5/week5_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/music/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/dialoguebad.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_dialoguebad_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/week6_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/portraits/johnPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_portraits_johnportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/portraits/johnPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_portraits_johnportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/pixelUI/arrowEnds.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_arrowends_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/arrows-pixels.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_arrows_pixels_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/week7/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week7/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week7_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:file("assets/week7/music/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/dialoguebad.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_dialoguebad_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week7_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week7/week6_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week7_week6_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/sm/HOW TO ADD SM FILES.txt") @:noCompletion #if display private #end class __ASSET__assets_sm_how_to_add_sm_files_txt extends haxe.io.Bytes {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("LICENSE") @:noCompletion #if display private #end class __ASSET__license_txt extends haxe.io.Bytes {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,9,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,3,3/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
