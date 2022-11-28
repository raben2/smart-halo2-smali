.class Lcom/instabug/library/k/b$b;
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
        "Ljava/lang/Throwable;",
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
    iput-object p1, p0, Lcom/instabug/library/k/b$b;->b:Lcom/instabug/library/k/b;

    iput-object p2, p0, Lcom/instabug/library/k/b$b;->a:Lcom/instabug/library/k/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/instabug/library/k/b;

    const-string v1, "Screenshot capture failed"

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/k/b$b;->a:Lcom/instabug/library/k/d/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/instabug/library/k/d/a;->a(Ljava/lang/Throwable;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/k/b$b;->b:Lcom/instabug/library/k/b;

    iget-object v0, p0, Lcom/instabug/library/k/b$b;->a:Lcom/instabug/library/k/d/a;

    invoke-static {p1, v0}, Lcom/instabug/library/k/b;->a(Lcom/instabug/library/k/b;Lcom/instabug/library/k/d/a;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/k/b$b;->b:Lcom/instabug/library/k/b;

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
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/library/k/b$b;->a(Ljava/lang/Throwable;)V

    return-void
.end method
