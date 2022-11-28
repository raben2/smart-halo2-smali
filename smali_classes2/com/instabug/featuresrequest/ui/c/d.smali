.class public Lcom/instabug/featuresrequest/ui/c/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "FeaturesRequestsDetailsPresenter.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/c/b;
.implements Lcom/instabug/featuresrequest/e/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/featuresrequest/ui/c/c;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/c/b;",
        "Lcom/instabug/featuresrequest/e/b/b<",
        "Lcom/instabug/featuresrequest/d/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/featuresrequest/ui/c/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/featuresrequest/e/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/c/c;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/c/c;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    .line 4
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/featuresrequest/e/b/a;->a(Landroid/content/Context;)Lcom/instabug/featuresrequest/e/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/c/d;->b:Lcom/instabug/featuresrequest/e/b/a;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private b(Lcom/instabug/featuresrequest/d/b;)V
    .locals 1

    .line 5
    sget-object v0, Lcom/instabug/featuresrequest/d/b$b;->USER_UN_VOTED:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    .line 7
    :try_start_0
    invoke-static {p1}, Lcom/instabug/featuresrequest/cache/a;->a(Lcom/instabug/featuresrequest/d/b;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/c/d;->b()V

    .line 12
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Lcom/instabug/featuresrequest/d/b;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/d/b$b;->USER_VOTED_UP:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    .line 3
    :try_start_0
    invoke-static {p1}, Lcom/instabug/featuresrequest/cache/a;->a(Lcom/instabug/featuresrequest/d/b;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 7
    :goto_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/c/d;->b()V

    .line 8
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/c/c;->E()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->b:Lcom/instabug/featuresrequest/e/b/a;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0, p1, p2, p0}, Lcom/instabug/featuresrequest/e/b/a;->a(JLcom/instabug/featuresrequest/e/b/b;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->b(I)V

    .line 7
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/c/d;->b(Lcom/instabug/featuresrequest/d/b;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1, v1}, Lcom/instabug/featuresrequest/d/b;->a(Z)V

    .line 10
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->b(I)V

    .line 11
    invoke-direct {p0, p1}, Lcom/instabug/featuresrequest/ui/c/d;->c(Lcom/instabug/featuresrequest/d/b;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/ui/c/c;->b(Lcom/instabug/featuresrequest/d/b;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/g;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/g;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/g;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/ui/c/c;->a(Lcom/instabug/featuresrequest/d/g;)V

    .line 20
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/c/c;->s()V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/c/d;->a:Lcom/instabug/featuresrequest/ui/c/c;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/c/c;->d()V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/featuresrequest/d/g;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/c/d;->a(Lcom/instabug/featuresrequest/d/g;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
