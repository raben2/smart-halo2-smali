.class public abstract Lcom/instabug/library/network/BaseNetworkTask;
.super Ljava/lang/Object;
.source "BaseNetworkTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/network/BaseNetworkTask$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseNetworkTask"


# instance fields
.field private context:Landroid/content/Context;

.field private taskProcessor:Lcom/instabug/library/network/BaseNetworkTask$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/network/BaseNetworkTask;->context:Landroid/content/Context;

    .line 4
    iget-object p1, p0, Lcom/instabug/library/network/BaseNetworkTask;->taskProcessor:Lcom/instabug/library/network/BaseNetworkTask$a;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lcom/instabug/library/network/BaseNetworkTask$a;

    invoke-direct {p1, p0}, Lcom/instabug/library/network/BaseNetworkTask$a;-><init>(Lcom/instabug/library/network/BaseNetworkTask;)V

    iput-object p1, p0, Lcom/instabug/library/network/BaseNetworkTask;->taskProcessor:Lcom/instabug/library/network/BaseNetworkTask$a;

    .line 7
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/instabug/library/network/BaseNetworkTask;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/network/BaseNetworkTask;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/BaseNetworkTask;->context:Landroid/content/Context;

    return-object v0
.end method

.method public abstract onHandleTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract onTaskCancelled()V
.end method

.method public abstract onTaskFinished()V
.end method
