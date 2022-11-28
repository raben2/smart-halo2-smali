.class Lio/grpc/internal/SharedResourceHolder$Instance;
.super Ljava/lang/Object;
.source "SharedResourceHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/SharedResourceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# instance fields
.field destroyTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field final payload:Ljava/lang/Object;

.field refcount:I


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/grpc/internal/SharedResourceHolder$Instance;->payload:Ljava/lang/Object;

    return-void
.end method
