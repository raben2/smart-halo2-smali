.class public Lbike/smarthalo/app/activities/WebBrowserActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WebBrowserActivity.java"


# static fields
.field public static final FORCE_DESKTOP_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

.field public static final TAG:Ljava/lang/String; = "WebBrowserActivity"

.field public static final WEB_BROWSER_ACTIVITY_FORCE_DESKTOP_INTENT:Ljava/lang/String; = "desktop"

.field public static final WEB_BROWSER_ACTIVITY_TITLE_INTENT:Ljava/lang/String; = "title"

.field public static final WEB_BROWSER_ACTIVITY_URL_INTENT:Ljava/lang/String; = "url"


# instance fields
.field private progressDialog:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private navigateBack()V
    .locals 1

    .line 100
    iget-object v0, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->finish()V

    :goto_0
    return-void
.end method

.method public static startActivity(Landroid/content/Context;IIZ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-static {p0, p1, p2, p3}, Lbike/smarthalo/app/activities/WebBrowserActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "url"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "title"

    .line 126
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "desktop"

    .line 127
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d002f

    .line 40
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->setContentView(I)V

    .line 41
    invoke-static {p0}, Lbike/smarthalo/app/helpers/SHDialogHelper;->showLoading(Landroid/app/Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->progressDialog:Landroid/app/ProgressDialog;

    .line 43
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 44
    :goto_0
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHToolbarHelper;->initToolbar(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V

    .line 45
    invoke-static {p0}, Lbike/smarthalo/app/helpers/ActivityHelper;->initializeStatusBar(Landroid/app/Activity;)V

    const p1, 0x7f0a05ce

    .line 47
    invoke-virtual {p0, p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    .line 48
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "desktop"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const-string v0, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 56
    :cond_1
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lbike/smarthalo/app/activities/WebBrowserActivity$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/WebBrowserActivity$1;-><init>(Lbike/smarthalo/app/activities/WebBrowserActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 66
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    new-instance v0, Lbike/smarthalo/app/activities/WebBrowserActivity$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/activities/WebBrowserActivity$2;-><init>(Lbike/smarthalo/app/activities/WebBrowserActivity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    invoke-virtual {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lbike/smarthalo/app/activities/WebBrowserActivity;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 80
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->navigateBack()V

    const/4 p1, 0x1

    return p1

    .line 87
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lbike/smarthalo/app/activities/WebBrowserActivity;->navigateBack()V

    const/4 p1, 0x1

    return p1

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
