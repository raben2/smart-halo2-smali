.class public final Lio/grpc/InternalChannelz$ChannelTrace;
.super Ljava/lang/Object;
.source "InternalChannelz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/InternalChannelz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelTrace"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/InternalChannelz$ChannelTrace$Event;,
        Lio/grpc/InternalChannelz$ChannelTrace$Builder;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field public final creationTimeNanos:J

.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/InternalChannelz$ChannelTrace$Event;",
            ">;"
        }
    .end annotation
.end field

.field public final numEventsLogged:J


# direct methods
.method private constructor <init>(JJLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Lio/grpc/InternalChannelz$ChannelTrace$Event;",
            ">;)V"
        }
    .end annotation

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-wide p1, p0, Lio/grpc/InternalChannelz$ChannelTrace;->numEventsLogged:J

    .line 488
    iput-wide p3, p0, Lio/grpc/InternalChannelz$ChannelTrace;->creationTimeNanos:J

    .line 489
    iput-object p5, p0, Lio/grpc/InternalChannelz$ChannelTrace;->events:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(JJLjava/util/List;Lio/grpc/InternalChannelz$1;)V
    .locals 0

    .line 481
    invoke-direct/range {p0 .. p5}, Lio/grpc/InternalChannelz$ChannelTrace;-><init>(JJLjava/util/List;)V

    return-void
.end method
