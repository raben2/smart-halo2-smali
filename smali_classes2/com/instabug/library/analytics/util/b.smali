.class public Lcom/instabug/library/analytics/util/b;
.super Lcom/instabug/library/core/eventbus/EventBus;
.source "AnalyticsStateDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/eventbus/EventBus<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/instabug/library/analytics/util/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/instabug/library/core/eventbus/EventBus;-><init>()V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/analytics/util/b;->getInstance()Lcom/instabug/library/analytics/util/b;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/instabug/library/analytics/util/b;
    .locals 2

    const-class v0, Lcom/instabug/library/analytics/util/b;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/instabug/library/analytics/util/b;->a:Lcom/instabug/library/analytics/util/b;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/instabug/library/analytics/util/b;

    invoke-direct {v1}, Lcom/instabug/library/analytics/util/b;-><init>()V

    sput-object v1, Lcom/instabug/library/analytics/util/b;->a:Lcom/instabug/library/analytics/util/b;

    .line 4
    :cond_0
    sget-object v1, Lcom/instabug/library/analytics/util/b;->a:Lcom/instabug/library/analytics/util/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
