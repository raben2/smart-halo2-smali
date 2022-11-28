.class Lcom/instabug/survey/announcements/ui/activity/d$a;
.super Ljava/lang/Object;
.source "AnnouncementPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/announcements/ui/activity/d;->c(Lcom/instabug/survey/d/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/a;

.field final synthetic b:Lcom/instabug/survey/announcements/ui/activity/b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/announcements/ui/activity/d;Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/announcements/ui/activity/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->a:Lcom/instabug/survey/d/c/a;

    iput-object p3, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->b:Lcom/instabug/survey/announcements/ui/activity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->a:Lcom/instabug/survey/d/c/a;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->p()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->deleteAnnouncementAssets()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->b:Lcom/instabug/survey/announcements/ui/activity/b;

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->b:Lcom/instabug/survey/announcements/ui/activity/b;

    .line 5
    invoke-interface {v2}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    invoke-static {v0, v1}, Lcom/instabug/survey/announcements/network/InstabugAnnouncementSubmitterService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/survey/announcements/ui/activity/d$a;->b:Lcom/instabug/survey/announcements/ui/activity/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/b;->a(Z)V

    return-void
.end method
