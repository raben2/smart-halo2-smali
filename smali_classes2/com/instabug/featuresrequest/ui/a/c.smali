.class public Lcom/instabug/featuresrequest/ui/a/c;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "AddCommentPresenter.java"

# interfaces
.implements Lcom/instabug/featuresrequest/e/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/featuresrequest/ui/a/a;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/instabug/featuresrequest/e/b/b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instabug/featuresrequest/e/b/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/instabug/featuresrequest/ui/a/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/a/a;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/featuresrequest/ui/a/a;

    iput-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

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

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/c;->a:Lcom/instabug/featuresrequest/e/b/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/a/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/a/a;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    invoke-virtual {p0}, Lcom/instabug/featuresrequest/ui/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/a/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/d;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setEnteredUsername(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/a/a;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/core/InstabugCore;->setEnteredEmail(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/a/a;->A()V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->a:Lcom/instabug/featuresrequest/e/b/a;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p1, p0}, Lcom/instabug/featuresrequest/e/b/a;->a(Lcom/instabug/featuresrequest/d/d;Lcom/instabug/featuresrequest/e/b/b;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/a/c;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz p1, :cond_0

    .line 13
    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/a/a;->D()V

    .line 14
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/a/a;->m()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getEnteredUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/a/a;->a(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/featuresrequest/ui/a/a;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->b()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/a/a;->y()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/a/a;->onCloseButtonClicked()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/a/a;->D()V

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/c;->b:Lcom/instabug/featuresrequest/ui/a/a;

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/a/a;->F()V

    :cond_0
    return-void
.end method
