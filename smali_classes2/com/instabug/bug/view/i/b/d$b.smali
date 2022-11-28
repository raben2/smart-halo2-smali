.class Lcom/instabug/bug/view/i/b/d$b;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/i/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/i/b/d;Lcom/instabug/bug/view/i/b/b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/bug/view/i/b/d$b;->a:Lcom/instabug/bug/view/i/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string p1, "VisualUserStepPreviewPresenter"

    const-string v0, "FIle not found to be previewed"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/i/b/d$b;->a:Lcom/instabug/bug/view/i/b/b;

    invoke-interface {p1}, Lcom/instabug/bug/view/i/b/b;->j()V

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
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/i/b/d$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
