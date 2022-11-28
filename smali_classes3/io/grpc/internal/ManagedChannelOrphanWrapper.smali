.class final Lio/grpc/internal/ManagedChannelOrphanWrapper;
.super Lio/grpc/internal/ForwardingManagedChannel;
.source "ManagedChannelOrphanWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;

.field private static final refqueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private static final refs:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->refqueue:Ljava/lang/ref/ReferenceQueue;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->refs:Ljava/util/concurrent/ConcurrentMap;

    .line 37
    const-class v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lio/grpc/ManagedChannel;)V
    .locals 2

    .line 43
    sget-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->refqueue:Ljava/lang/ref/ReferenceQueue;

    sget-object v1, Lio/grpc/internal/ManagedChannelOrphanWrapper;->refs:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    return-void
.end method

.method constructor <init>(Lio/grpc/ManagedChannel;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ManagedChannel;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper;",
            ">;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            "Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lio/grpc/internal/ForwardingManagedChannel;-><init>(Lio/grpc/ManagedChannel;)V

    .line 52
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;-><init>(Lio/grpc/internal/ManagedChannelOrphanWrapper;Lio/grpc/ManagedChannel;Ljava/lang/ref/ReferenceQueue;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .line 31
    sget-object v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public shutdown()Lio/grpc/ManagedChannel;
    .locals 2

    .line 57
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->access$002(Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;Z)Z

    .line 58
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clear()V

    .line 59
    invoke-super {p0}, Lio/grpc/internal/ForwardingManagedChannel;->shutdown()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public shutdownNow()Lio/grpc/ManagedChannel;
    .locals 2

    .line 64
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->access$002(Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;Z)Z

    .line 65
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelOrphanWrapper;->phantom:Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelOrphanWrapper$ManagedChannelReference;->clear()V

    .line 66
    invoke-super {p0}, Lio/grpc/internal/ForwardingManagedChannel;->shutdownNow()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method
