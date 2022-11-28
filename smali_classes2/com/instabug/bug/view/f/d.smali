.class Lcom/instabug/bug/view/f/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "AnnotationPresenter.java"

# interfaces
.implements Lcom/instabug/bug/view/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/bug/view/f/b;",
        ">;",
        "Lcom/instabug/bug/view/f/a;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/f/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/bug/view/f/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/instabug/bug/view/f/b;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/instabug/bug/view/f/b;->n()V

    :cond_1
    :goto_0
    return-void
.end method
