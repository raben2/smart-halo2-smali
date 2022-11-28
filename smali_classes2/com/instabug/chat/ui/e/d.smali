.class Lcom/instabug/chat/ui/e/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "AnnotationPresenter.java"

# interfaces
.implements Lcom/instabug/chat/ui/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/chat/ui/e/b;",
        ">;",
        "Lcom/instabug/chat/ui/e/a;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/chat/ui/e/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/chat/ui/e/b;->k()V

    .line 6
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/instabug/chat/ui/e/d$a;

    invoke-direct {v2, p0, v0}, Lcom/instabug/chat/ui/e/d$a;-><init>(Lcom/instabug/chat/ui/e/d;Lcom/instabug/chat/ui/e/b;)V

    invoke-static {p1, p2, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->saveBitmap(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/content/Context;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    :cond_0
    return-void
.end method
