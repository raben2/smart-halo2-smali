.class public Lcom/instabug/featuresrequest/ui/e/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "AddNewFeaturePresenter.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/featuresrequest/ui/e/b;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/e/a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/featuresrequest/ui/e/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/e/b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/e/b;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/e/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/ui/e/b;->a(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/e/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/ui/e/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setEnteredEmail(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setEnteredUsername(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->o()V

    .line 8
    new-instance v0, Lcom/instabug/featuresrequest/d/b;

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/user/UserManagerWrapper;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPushNotificationToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/instabug/featuresrequest/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v1}, Lcom/instabug/featuresrequest/ui/e/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v1}, Lcom/instabug/featuresrequest/ui/e/b;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/d/b;->d(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v1}, Lcom/instabug/featuresrequest/ui/e/b;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/d/b;->c(Ljava/lang/String;)V

    .line 13
    :try_start_0
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-static {}, Lcom/instabug/featuresrequest/network/service/a;->a()Lcom/instabug/featuresrequest/network/service/a;

    move-result-object v1

    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instabug/featuresrequest/ui/e/d$a;

    invoke-direct {v3, p0, v0}, Lcom/instabug/featuresrequest/ui/e/d$a;-><init>(Lcom/instabug/featuresrequest/ui/e/d;Lcom/instabug/featuresrequest/d/b;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/instabug/featuresrequest/network/service/a;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/b;Lcom/instabug/library/network/Request$Callbacks;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JsonException while sending featureRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AddNewFeaturePresenter"

    invoke-static {v2, v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    const-string v1, "Something went wrong"

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/e/b;->c(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/e/b;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/e/b;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    .line 3
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/e/d;->e()V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d;->a:Lcom/instabug/featuresrequest/ui/e/b;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/e/b;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/instabug/featuresrequest/ui/e/d;->e()V

    :cond_2
    :goto_1
    return-void
.end method
