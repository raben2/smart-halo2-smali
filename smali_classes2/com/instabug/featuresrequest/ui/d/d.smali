.class public Lcom/instabug/featuresrequest/ui/d/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "FeaturesMainPresenter.java"

# interfaces
.implements Lcom/instabug/featuresrequest/ui/d/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/featuresrequest/ui/d/b;",
        ">;",
        "Lcom/instabug/featuresrequest/ui/d/a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/featuresrequest/ui/d/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instabug/featuresrequest/ui/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/featuresrequest/ui/d/b;

    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/d/d;->a:Lcom/instabug/featuresrequest/ui/d/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/d;->a:Lcom/instabug/featuresrequest/ui/d/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/d/b;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/d/d;->a:Lcom/instabug/featuresrequest/ui/d/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/instabug/featuresrequest/ui/d/b;->l()V

    :cond_0
    return-void
.end method
