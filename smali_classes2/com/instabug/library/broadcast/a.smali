.class public Lcom/instabug/library/broadcast/a;
.super Landroid/content/BroadcastReceiver;
.source "SDKInvokedBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/broadcast/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/library/broadcast/a$a;


# direct methods
.method public constructor <init>(Lcom/instabug/library/broadcast/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/instabug/library/broadcast/a;->a:Lcom/instabug/library/broadcast/a$a;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "SDKInvokedBroadcast"

    const-string v0, "onReceive"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "SDK invoking state"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 4
    iget-object p2, p0, Lcom/instabug/library/broadcast/a;->a:Lcom/instabug/library/broadcast/a$a;

    invoke-interface {p2, p1}, Lcom/instabug/library/broadcast/a$a;->onSDKInvoked(Z)V

    :cond_0
    return-void
.end method
