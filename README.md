<h1 align="center">「🔑」 About Mantra</h1>

<p align="center"><img src="assets/banner.png"></p>

The tool in question was created in Go and its main objective is to search for API keys in JavaScript files and HTML pages.

It works by checking the source code of web pages and script files for strings that are identical or similar to API keys. These keys are often used for authentication to online services such as third-party APIs and are confidential and should not be shared publicly.

By using this tool, developers can quickly identify if their API keys are leaking and take steps to fix the problem before they are compromised. Furthermore, the tool can be useful for security officers, who can use it to verify that applications and websites that use external APIs are adequately protecting their keys.

In summary, this tool is an efficient and accurate solution to help secure your API keys and prevent sensitive information leaks.

## Help
![](assets/help.png)

## Usage
![](assets/usage1.png)

## Install

From go:

```
go install github.com/Brosck/mantra@latest
```

From source code:

```
git clone https://github.com/Brosck/mantra
cd mantra
make
./build/mantra-amd64-linux -h
```

## Buy me a coffee?

<a href="https://pixgg.com/MrEmpy" target="_blank">
  <img src="https://pixgg.com/img/logo-darkmode.046d3b61.svg" height="30" widght="30">
</a>
</br>
</br>
<a href="https://www.buymeacoffee.com/mrempy" target="_blank">
  <img src="https://play-lh.googleusercontent.com/aMb_Qiolzkq8OxtQZ3Af2j8Zsp-ZZcNetR9O4xSjxH94gMA5c5gpRVbpg-3f_0L7vlo" height="50" widght="50">
</a>
