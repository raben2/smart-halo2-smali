.class public Lcom/instabug/featuresrequest/ui/b/c/f;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "FeaturesListPresenter.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/b/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/featuresrequest/ui/b/c/d;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/b/c/c;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/featuresrequest/ui/b/c/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Lcom/instabug/featuresrequest/ui/b/b;


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/d;Lcom/instabug/featuresrequest/ui/b/b;Z)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/b/c/d;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    .line 4
    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    .line 5
    invoke-virtual {p2}, Lcom/instabug/featuresrequest/ui/b/b;->d()I

    move-result v2

    .line 6
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->g()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v5, p3

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/b;IZZZZ)V

    .line 9
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->l()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/b/c/f;)Lcom/instabug/featuresrequest/ui/b/c/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/instabug/featuresrequest/network/service/FeaturesRequestVoteService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    new-instance v1, Lcom/instabug/featuresrequest/ui/b/c/f$b;

    invoke-direct {v1, p0}, Lcom/instabug/featuresrequest/ui/b/c/f$b;-><init>(Lcom/instabug/featuresrequest/ui/b/c/f;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->c()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v1, p1}, Lcom/instabug/featuresrequest/ui/b/b;->a(I)Lcom/instabug/featuresrequest/d/b;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/instabug/featuresrequest/ui/b/c/d;->d(Lcom/instabug/featuresrequest/d/b;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/instabug/featuresrequest/ui/b/c/b;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0, p1}, Lcom/instabug/featuresrequest/ui/b/b;->a(I)Lcom/instabug/featuresrequest/d/b;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Lcom/instabug/featuresrequest/d/b;)V

    .line 76
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(I)V

    .line 77
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->i()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->b(I)V

    .line 78
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->d()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(J)V

    .line 79
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/b;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/instabug/featuresrequest/ui/b/c/b;->a(Ljava/lang/Boolean;)V

    .line 80
    invoke-virtual {p2, p1}, Lcom/instabug/featuresrequest/ui/b/c/b;->b(Lcom/instabug/featuresrequest/d/b;)V

    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 1

    .line 62
    sget-object v0, Lcom/instabug/featuresrequest/d/b$b;->USER_UN_VOTED:Lcom/instabug/featuresrequest/d/b$b;

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/d/b;->a(Lcom/instabug/featuresrequest/d/b$b;)V

    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/instabug/featuresrequest/cache/a;->a(Lcom/instabug/featuresrequest/d/b;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 68
    :goto_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->k()V

    .line 69
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/b/c/d;->f()V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/ui/b/b;IZZZZ)V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/instabug/featuresrequest/g/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v1, v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->b(Z)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/network/service/b;->a()Lcom/instabug/featuresrequest/network/service/b;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v8, Lcom/instabug/featuresrequest/ui/b/c/f$a;

    invoke-direct {v8, p0, p6, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/f;ZLcom/instabug/featuresrequest/ui/b/b;)V

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 10
    invoke-virtual/range {v2 .. v8}, Lcom/instabug/featuresrequest/network/service/b;->a(Landroid/content/Context;IZZZLcom/instabug/library/network/Request$Callbacks;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-nez p2, :cond_2

    return-void

    .line 56
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/b;->c()I

    move-result p1

    if-nez p1, :cond_3

    .line 57
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/b/c/d;->w()V

    goto :goto_0

    .line 59
    :cond_3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/b/c/d;->u()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_1

    .line 13
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->hidePoweredByFooter()V

    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->showPoweredByFooter()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/instabug/featuresrequest/d/b;)V
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
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->k()V

    .line 8
    invoke-static {}, Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;->getInstance()Lcom/instabug/featuresrequest/eventbus/FeatureRequestsEventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz p1, :cond_0

    .line 10
    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/b/c/d;->f()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->e()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->k()V

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->g()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->h()V

    .line 4
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v2}, Lcom/instabug/featuresrequest/ui/b/b;->d()I

    move-result v3

    .line 5
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->g()Z

    move-result v5

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->G()Z

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    .line 6
    invoke-virtual/range {v1 .. v7}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/b;IZZZZ)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/b/b;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->b()V

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->k()V

    .line 6
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    .line 7
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->g()Z

    move-result v5

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->G()Z

    move-result v6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    .line 8
    invoke-virtual/range {v1 .. v7}, Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/b;IZZZZ)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->c()I

    move-result v0

    if-nez v0, :cond_2

    .line 12
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->n()V

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->w()V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->i()V

    .line 19
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->C()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    .line 2
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/b/c/d;->b(Z)V

    .line 7
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/network/NetworkManager;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->n()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->w()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->z()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v0, "FeaturesListPresenter"

    const-string v1, "View is null or not visible"

    .line 15
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/b/c/d;->b(Z)V

    .line 5
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->w()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    sget v2, Lcom/instabug/featuresrequest/R$string;->feature_requests_error_state_title:I

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/b/c/d;->d(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->a:Lcom/instabug/featuresrequest/ui/b/c/d;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/b/c/d;->u()V

    :goto_0
    return-void
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/b/c/f;->g()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->a()V

    return-void
.end method
