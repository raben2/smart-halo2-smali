.class Lcom/instabug/library/k/b$a;
.super Ljava/lang/Object;
.source "InstaCapture.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/k/b;->b(Lcom/instabug/library/k/d/a;)Lio/reactivex/disposables/Disposable;
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
.field final synthetic a:Lcom/instabug/library/k/d/a;

.field final synthetic b:Lcom/instabug/library/k/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/k/b$a;->b:Lcom/instabug/library/k/b;

    iput-object p2, p0, Lcom/instabug/library/k/b$a;->a:Lcom/instabug/library/k/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/k/b$a;->a:Lcom/instabug/library/k/d/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/instabug/library/k/d/a;->a(Landroid/graphics/Bitmap;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/k/b$a;->b:Lcom/instabug/library/k/b;

    iget-object v0, p0, Lcom/instabug/library/k/b$a;->a:Lcom/instabug/library/k/d/a;

    invoke-static {p1, v0}, Lcom/instabug/library/k/b;->a(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/k/b$a;->b:Lcom/instabug/library/k/b;

    invoke-static {p1}, Lcom/instabug/library/k/b;->a(Lcom/instabug/library/k/b;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/library/k/b$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
