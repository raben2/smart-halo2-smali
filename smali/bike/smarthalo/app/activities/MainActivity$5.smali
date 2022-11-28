.class Lbike/smarthalo/app/activities/MainActivity$5;
.super Landroid/webkit/WebViewClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/MainActivity;->loadNewFeaturePage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/MainActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/MainActivity;)V
    .locals 0

    .line 809
    iput-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$5;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 812
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$5;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lbike/smarthalo/app/activities/MainActivity;->toggleNewFeaturesPageVisibility(Z)V

    .line 813
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$5;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/MainActivity;->access$500(Lbike/smarthalo/app/activities/MainActivity;)Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    move-result-object p1

    invoke-interface {p1}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->onNewFeaturePageShown()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 818
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$5;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/MainActivity;->access$500(Lbike/smarthalo/app/activities/MainActivity;)Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;

    move-result-object p1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/presenterContracts/MainPresenterContract$Presenter;->isFeatureShowCaseUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 821
    :cond_0
    iget-object p1, p0, Lbike/smarthalo/app/activities/MainActivity$5;->this$0:Lbike/smarthalo/app/activities/MainActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Lbike/smarthalo/app/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
