.class Lcom/instabug/library/c$q;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$q;->a:Lcom/instabug/library/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$q;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->n(Lcom/instabug/library/c;)Lcom/instabug/library/m/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/m/f;->a()Lio/reactivex/Completable;

    move-result-object v1

    iget-object v2, p0, Lcom/instabug/library/c$q;->a:Lcom/instabug/library/c;

    .line 2
    invoke-static {v2}, Lcom/instabug/library/c;->n(Lcom/instabug/library/c;)Lcom/instabug/library/m/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/m/f;->b()Lio/reactivex/Completable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->andThen(Lio/reactivex/CompletableSource;)Lio/reactivex/Completable;

    move-result-object v1

    .line 3
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Completable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object v1

    sget-object v2, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/functions/Action;

    const-string v3, "InstabugDelegate"

    .line 4
    invoke-static {v3}, Lcom/instabug/library/util/InstabugSDKLogger;->errorConsumer(Ljava/lang/String;)Lio/reactivex/functions/Consumer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/c;->a(Lcom/instabug/library/c;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
