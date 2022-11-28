.class Lcom/instabug/bug/view/reporting/c$c;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/c$c;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$c;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->b(Lcom/instabug/bug/view/reporting/c;)I

    .line 3
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$c;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->f(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/bug/view/reporting/c$c;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {p1}, Lcom/instabug/bug/view/reporting/c;->g(Lcom/instabug/bug/view/reporting/c;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/bug/view/reporting/e;

    .line 5
    iget-object v0, p0, Lcom/instabug/bug/view/reporting/c$c;->a:Lcom/instabug/bug/view/reporting/c;

    invoke-static {v0, p1}, Lcom/instabug/bug/view/reporting/c;->a(Lcom/instabug/bug/view/reporting/c;Lcom/instabug/bug/view/reporting/e;)V

    :cond_0
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

    invoke-virtual {p0, p1}, Lcom/instabug/bug/view/reporting/c$c;->a(Ljava/lang/Throwable;)V

    return-void
.end method
