.class Lcom/instabug/bug/view/reporting/c$b;
.super Ljava/lang/Object;
.source "BaseReportingPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/c;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/bug/k/b/c$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/c$b;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/bug/k/b/c$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$b;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v0}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/c;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive a view hierarchy inspection action, action value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseReportingPresenter"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/instabug/bug/k/b/c$b;->COMPLETED:Lcom/instabug/bug/k/b/c$b;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/instabug/bug/k/b/c$b;->FAILED:Lcom/instabug/bug/k/b/c$b;

    if-ne p1, v0, :cond_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$b;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->c(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$b;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->e(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    .line 8
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$b;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v0, p1}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V

    :cond_1
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
    check-cast p1, Lcom/instabug/bug/k/b/c$b;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/c$b;->a(Lcom/instabug/bug/k/b/c$b;)V

    return-void
.end method
