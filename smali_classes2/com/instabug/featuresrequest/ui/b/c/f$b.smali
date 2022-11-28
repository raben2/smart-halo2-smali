.class Lcom/instabug/featuresrequest/ui/b/c/f$b;
.super Ljava/lang/Object;
.source "FeaturesListPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/featuresrequest/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/b/c/f;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/featuresrequest/d/b;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    iget-object p1, p1, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/b;->b()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a:Lcom/instabug/featuresrequest/ui/b/c/f;

    iget-object p1, p1, Lcom/instabug/featuresrequest/ui/b/c/f;->b:Lcom/instabug/featuresrequest/ui/b/b;

    .line 2
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/instabug/featuresrequest/ui/b/c/f$b$a;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/ui/b/c/f$b$a;-><init>(Lcom/instabug/featuresrequest/ui/b/c/f$b;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$b;->a(Lcom/instabug/featuresrequest/d/b;)V

    return-void
.end method
