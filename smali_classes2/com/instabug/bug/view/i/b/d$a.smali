.class Lcom/instabug/bug/view/i/b/d$a;
.super Ljava/lang/Object;
.source "VisualUserStepPreviewPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/i/b/d;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/i/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/i/b/d;Lcom/instabug/bug/view/i/b/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/view/i/b/d$a;->a:Lcom/instabug/bug/view/i/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/i/b/d$a;->a:Lcom/instabug/bug/view/i/b/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/instabug/bug/view/i/b/b;->a(Z)V

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/b/d$a;->a:Lcom/instabug/bug/view/i/b/b;

    invoke-interface {v0, p1}, Lcom/instabug/bug/view/i/b/b;->b(Landroid/graphics/Bitmap;)V

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
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/i/b/d$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
