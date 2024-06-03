import 'package:flutter/material.dart';
import 'package:re_highlight/styles/a11y-dark.dart';
import 'package:re_highlight/styles/a11y-light.dart';
import 'package:re_highlight/styles/agate.dart';
import 'package:re_highlight/styles/an-old-hope.dart';
import 'package:re_highlight/styles/androidstudio.dart';
import 'package:re_highlight/styles/arduino-light.dart';
import 'package:re_highlight/styles/arta.dart';
import 'package:re_highlight/styles/ascetic.dart';
import 'package:re_highlight/styles/atom-one-dark-reasonable.dart';
import 'package:re_highlight/styles/atom-one-dark.dart';
import 'package:re_highlight/styles/atom-one-light.dart';
import 'package:re_highlight/styles/brown-paper.dart';
import 'package:re_highlight/styles/codepen-embed.dart';
import 'package:re_highlight/styles/color-brewer.dart';
import 'package:re_highlight/styles/dark.dart';
import 'package:re_highlight/styles/default.dart';
import 'package:re_highlight/styles/devibeans.dart';
import 'package:re_highlight/styles/docco.dart';
import 'package:re_highlight/styles/far.dart';
import 'package:re_highlight/styles/felipec.dart';
import 'package:re_highlight/styles/foundation.dart';
import 'package:re_highlight/styles/github-dark-dimmed.dart';
import 'package:re_highlight/styles/github-dark.dart';
import 'package:re_highlight/styles/github.dart';
import 'package:re_highlight/styles/gml.dart';
import 'package:re_highlight/styles/googlecode.dart';
import 'package:re_highlight/styles/gradient-dark.dart';
import 'package:re_highlight/styles/gradient-light.dart';
import 'package:re_highlight/styles/grayscale.dart';
import 'package:re_highlight/styles/hybrid.dart';
import 'package:re_highlight/styles/idea.dart';
import 'package:re_highlight/styles/intellij-light.dart';
import 'package:re_highlight/styles/ir-black.dart';
import 'package:re_highlight/styles/isbl-editor-dark.dart';
import 'package:re_highlight/styles/isbl-editor-light.dart';
import 'package:re_highlight/styles/kimbie-dark.dart';
import 'package:re_highlight/styles/kimbie-light.dart';
import 'package:re_highlight/styles/lightfair.dart';
import 'package:re_highlight/styles/lioshi.dart';
import 'package:re_highlight/styles/magula.dart';
import 'package:re_highlight/styles/mono-blue.dart';
import 'package:re_highlight/styles/monokai-sublime.dart';
import 'package:re_highlight/styles/monokai.dart';
import 'package:re_highlight/styles/night-owl.dart';
import 'package:re_highlight/styles/nnfx-dark.dart';
import 'package:re_highlight/styles/nnfx-light.dart';
import 'package:re_highlight/styles/nord.dart';

enum CodeTheme {
  a11Dark('A11Y Dark', a11YDarkTheme),
  a11Light('A11Y Light', a11YLightTheme),
  agate('Agate', agateTheme),
  anOldHope('An Old Hope', anOldHopeTheme),
  androidStudio('Android Studio', androidstudioTheme),
  arduinoLight("Arduino Light", arduinoLightTheme),
  arta("Arta", artaTheme),
  ascetic("Ascetic", asceticTheme),
  atomOneDarkResonable("Atom One Dark Resonable", atomOneDarkReasonableTheme),
  atomOneDark("Atom One Dark", atomOneDarkTheme),
  atomOneLight("Atom One Light", atomOneLightTheme),
  brownPaper("Brown Paper", brownPaperTheme),
  codePenEmbed("CodePen Embed", codepenEmbedTheme),
  colorBrewer("Color Brewer", colorBrewerTheme),
  dark("Dark", darkTheme),
  defaultT("Default", defaultTheme),
  devibeans("Devibeans", devibeansTheme),
  docco("Docco", doccoTheme),
  far("Far", farTheme),
  felipec("Felipec", felipecTheme),
  foundation("Foundation", foundationTheme),
  githubDarkDimmed("GitHub Dark Dimmed", githubDarkDimmedTheme),
  githubDark("GitHub Dark", githubDarkTheme),
  github("GitHub", githubTheme),
  gml("Gml", gmlTheme),
  googleCode("Google Code", googlecodeTheme),
  gradientDark("Gradient Dark", gradientDarkTheme),
  gradientLight("Gradient Light", gradientLightTheme),
  grayscale("Grayscale", grayscaleTheme),
  hybrid("Hybrid", hybridTheme),
  idea("IDEA", ideaTheme),
  intellijLight("IntelliJ Light", intellijLightTheme),
  irBlack("Ir Black", irBlackTheme),
  isblEditorDark("Isbl Editor Dark", isblEditorDarkTheme),
  isblEditorLigh("Isbl Editor Light", isblEditorLightTheme),
  kimbieDark("Kimbie Dark", kimbieDarkTheme),
  kimbieLight("Kimbie Light", kimbieLightTheme),
  lightFair("Lightfair", lightfairTheme),
  lioshi("Lioshi", lioshiTheme),
  magula("Magula", magulaTheme),
  monoBlue("Mono Blue", monoBlueTheme),
  monokaiSublime("Monokai Sublime", monokaiSublimeTheme),
  monokai("Monokai", monokaiTheme),
  nightOwl("Night Owl", nightOwlTheme),
  nnfxDark("Nnfx Dark", nnfxDarkTheme),
  nnfxLight("Nnfx Light", nnfxLightTheme),
  nord("Nord", nordTheme),
	// TODO: ADD THEMES?
  ;

  const CodeTheme(this.label, this.style);
  final String label;
  final Map<String, TextStyle> style;
}
