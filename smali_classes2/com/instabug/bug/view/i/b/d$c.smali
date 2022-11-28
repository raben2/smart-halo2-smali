.class Lcom/instabug/bug/view/i/b/d$c;
.super Ljava/lang/Object;
.source "VisualUserStepPreviewPresenter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/i/b/d;->e(Ljava/lang/String;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/i/b/d;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/view/i/b/d$c;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/bug/view/i/b/d$c;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->decryptBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/bug/view/i/b/d$c;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
