.class Lcom/instabug/bug/view/reporting/c$d;
.super Ljava/lang/Object;
.source "BaseReportingPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/c;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/instabug/library/model/State$Action;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/c$d;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/library/model/State$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$d;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/c;)I

    .line 2
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$d;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->h(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$d;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->i(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    .line 4
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$d;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v0, p1}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V

    :cond_0
    const-string p1, "State Building finished action"

    .line 6
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/instabug/bug/StateCreatorEventBus;->release()V

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
    check-cast p1, Lcom/instabug/library/model/State$Action;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/c$d;->a(Lcom/instabug/library/model/State$Action;)V

    return-void
.end method
