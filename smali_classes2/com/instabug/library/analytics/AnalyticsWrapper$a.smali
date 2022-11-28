.class Lcom/instabug/library/analytics/AnalyticsWrapper$a;
.super Lio/reactivex/observers/DisposableObserver;
.source "AnalyticsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/analytics/AnalyticsWrapper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/analytics/AnalyticsWrapper;


# direct methods
.method constructor <init>(Lcom/instabug/library/analytics/AnalyticsWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$a;->a:Lcom/instabug/library/analytics/AnalyticsWrapper;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SDK analytics is enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsWrapper"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$a;->a:Lcom/instabug/library/analytics/AnalyticsWrapper;

    invoke-static {p1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->access$000(Lcom/instabug/library/analytics/AnalyticsWrapper;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$a;->a:Lcom/instabug/library/analytics/AnalyticsWrapper;

    invoke-static {p1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->access$100(Lcom/instabug/library/analytics/AnalyticsWrapper;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/analytics/AnalyticsWrapper$a;->a:Lcom/instabug/library/analytics/AnalyticsWrapper;

    invoke-static {p1}, Lcom/instabug/library/analytics/AnalyticsWrapper;->access$200(Lcom/instabug/library/analytics/AnalyticsWrapper;)V

    :goto_0
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnalyticsWrapper"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/library/analytics/AnalyticsWrapper$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
