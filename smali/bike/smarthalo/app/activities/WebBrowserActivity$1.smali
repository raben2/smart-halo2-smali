.class Lbike/smarthalo/app/activities/WebBrowserActivity$1;
.super Landroid/webkit/WebChromeClient;
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

    .line 56
    iput-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$1;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 58
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$1;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 59
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$1;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lbike/smarthalo/app/activities/WebBrowserActivity$1;->this$0:Lbike/smarthalo/app/activities/WebBrowserActivity;

    invoke-static {p1}, Lbike/smarthalo/app/activities/WebBrowserActivity;->access$000(Lbike/smarthalo/app/activities/WebBrowserActivity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method
