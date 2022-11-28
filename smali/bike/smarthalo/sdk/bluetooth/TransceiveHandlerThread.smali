.class public Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;
.super Landroid/os/HandlerThread;
.source "TransceiveHandlerThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransceiveHandlerThread"


# instance fields
.field private isInitializing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized isInitializing()Z
    .locals 1

    monitor-enter p0

    .line 31
    :try_start_0
    iget-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLooperPrepared()V
    .locals 2

    .line 20
    sget-object v0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->TAG:Ljava/lang/String;

    const-string v1, "Transceiver Handler Thread looper is prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing:Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 26
    :try_start_0
    iput-boolean v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing:Z

    .line 27
    invoke-super {p0}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
