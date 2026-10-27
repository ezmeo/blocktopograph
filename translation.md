# Help Improve Translation

We would like you to help translate the app into your spoken language.

Well, before we get started, you may want to learn a bit about the `xml` file format which our translation files use.
You can just think it as an ordinary text file so you can skip the section if it bored you.

# XML File Format

To be simple, you are only supposed to translate texts between a `<string>` and `</string>` things. Suppose the English version is:

```xml
<string name="meow">Meow~</string>
```

You're supposed to translate it to:

```xml
<string name="meow">喵~</string>
```

But **not**:

```xml
<string name="喵">喵~</string>
```

And if there are `a href` or `xliff` things that are wrapped in `<` and `>` you should keep them as-is.
But don't worry, even if you messed them, we will still accept the translation and have them recovered.

To learn more, [google it](https://www.google.com/?q=xml%20format).

You may want an advanced text editor like [Notepad++](https://notepad-plus-plus.org/) other than your PC's default notepad app.

## Confirm Existing Translation

Right click [here](https://github.com/ezmeo/blocktopograph/tree/main/app/src/main/res) and open in new tab.
In the list of folders you can see folders with names like "values-[xx]" where [xx] would be language or locale code,
e.g. "zh-rCN" for "Chinese Simplified (Mainland China)" and "ru" for "Russian". For a list of such thing, just google.
If there is a folder for your language then within the folder there would be a `strings.xml` within,
which is a translation file of your language. 

If any translation should be improved,
you can either :

* Download the file and edit offline
* or fork the repository if you've worked on Github before and know how to.

## Create New Translations

If you did not find your language folder then :

* [This file](https://github.com/ezmeo/blocktopograph/blob/main/app/src/main/res/values/strings.xml) is the English version. You can [download it](https://github.com/ezmeo/blocktopograph/raw/main/app/src/main/res/values/strings.xml) and edit offline.
* Fork the repository and do the localization if you are an Android dev.

## Submission

If you have downloaded and edited offline, create a pull request.

Note that :

1. You **don't** have to translate everything before submitting.
2. Better clarify what language it is in, and if it's newly created.

Ahh, no one will be looking at this, right?
Maybe.
