.class Lcom/instabug/survey/d/a$a;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/d/a;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/d/a$a;->a:Lcom/instabug/survey/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->getReadyToBeSend()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instabug/survey/d/a$a;->a:Lcom/instabug/survey/d/a;

    .line 3
    invoke-static {v0}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/d/a$a;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instabug/survey/d/a$a;->a:Lcom/instabug/survey/d/a;

    .line 5
    invoke-static {v2}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {v0, v1}, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
