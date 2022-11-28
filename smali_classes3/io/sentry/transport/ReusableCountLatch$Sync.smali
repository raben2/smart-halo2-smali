.class final Lio/sentry/transport/ReusableCountLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "ReusableCountLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/ReusableCountLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x52da2cdc2aea927aL


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 167
    invoke-virtual {p0, p1}, Lio/sentry/transport/ReusableCountLatch$Sync;->setState(I)V

    return-void
.end method

.method static synthetic access$000(Lio/sentry/transport/ReusableCountLatch$Sync;)I
    .locals 0

    .line 163
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/sentry/transport/ReusableCountLatch$Sync;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->decrement()V

    return-void
.end method

.method static synthetic access$200(Lio/sentry/transport/ReusableCountLatch$Sync;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->increment()V

    return-void
.end method

.method private decrement()V
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Lio/sentry/transport/ReusableCountLatch$Sync;->releaseShared(I)Z

    return-void
.end method

.method private getCount()I
    .locals 1

    .line 171
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    return v0
.end method

.method private increment()V
    .locals 2

    .line 176
    :cond_0
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 178
    invoke-virtual {p0, v0, v1}, Lio/sentry/transport/ReusableCountLatch$Sync;->compareAndSetState(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method


# virtual methods
.method public tryAcquireShared(I)I
    .locals 0

    .line 190
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public tryReleaseShared(I)Z
    .locals 2

    .line 197
    :cond_0
    invoke-virtual {p0}, Lio/sentry/transport/ReusableCountLatch$Sync;->getState()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 202
    invoke-virtual {p0, p1, v1}, Lio/sentry/transport/ReusableCountLatch$Sync;->compareAndSetState(II)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
