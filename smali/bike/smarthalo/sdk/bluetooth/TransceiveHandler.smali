.class public Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;
.super Ljava/lang/Object;
.source "TransceiveHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransceiveHandler"

.field private static final TRANSCEIVE_HANDLER_THREAD_NAME:Ljava/lang/String; = "transceive_handler_thread"


# instance fields
.field private innerHandler:Landroid/os/Handler;

.field private transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 38
    new-instance v0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    const-string v1, "transceive_handler_thread"

    invoke-direct {v0, v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    .line 39
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->start()V

    .line 41
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v1}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->innerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object p1, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->TAG:Ljava/lang/String;

    const-string v0, "Handler thread is dead, restarting connection"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->initialize()V

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->isInitializing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->innerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public quit()V
    .locals 1

    .line 25
    iget-object v0, p0, Lbike/smarthalo/sdk/bluetooth/TransceiveHandler;->transceiveHandlerThread:Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;

    invoke-virtual {v0}, Lbike/smarthalo/sdk/bluetooth/TransceiveHandlerThread;->quitSafely()Z

    return-void
.end method
