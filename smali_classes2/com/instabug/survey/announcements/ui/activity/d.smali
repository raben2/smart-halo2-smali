.class public Lcom/instabug/survey/announcements/ui/activity/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "AnnouncementPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/announcements/ui/activity/b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/survey/announcements/ui/activity/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method

.method private c(Lcom/instabug/survey/d/c/a;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/instabug/survey/announcements/cache/AnnouncementCacheManager;->updateAnnouncement(Lcom/instabug/survey/d/c/a;)V

    .line 3
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/instabug/survey/d/d/b;->c()Lcom/instabug/survey/d/d/b;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/d/d/b;->b(J)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/b;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Lcom/instabug/survey/announcements/ui/activity/d$a;

    invoke-direct {v1, p0, p1, v0}, Lcom/instabug/survey/announcements/ui/activity/d$a;-><init>(Lcom/instabug/survey/announcements/ui/activity/d;Lcom/instabug/survey/d/c/a;Lcom/instabug/survey/announcements/ui/activity/b;)V

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->doOnBackground(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/d/c/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->v()V

    .line 11
    invoke-direct {p0, p1}, Lcom/instabug/survey/announcements/ui/activity/d;->c(Lcom/instabug/survey/d/c/a;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/announcements/ui/activity/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_1

    .line 5
    sget-object v2, Lcom/instabug/survey/ui/f;->SECONDARY:Lcom/instabug/survey/ui/f;

    invoke-static {v1, v2}, Lcom/instabug/survey/e/b;->a(Landroid/app/Activity;Lcom/instabug/survey/ui/f;)I

    move-result v1

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/b;->a(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {v0, v1}, Lcom/instabug/survey/announcements/ui/activity/b;->b(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/instabug/survey/d/c/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/instabug/survey/d/c/a;->w()V

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/survey/announcements/ui/activity/d;->c(Lcom/instabug/survey/d/c/a;)V

    :cond_0
    return-void
.end method
