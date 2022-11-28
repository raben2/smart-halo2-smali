.class Lbike/smarthalo/app/activities/WebBrowserActivity$2;
.super Landroid/webkit/WebViewClient;
.source "WebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/WebBrowserActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/WebBrowserActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$2;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$2;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$2;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$2;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
